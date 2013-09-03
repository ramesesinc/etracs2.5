package com.rameses.gov.etracs.rpt.ledger.ui;


import com.rameses.rcp.common.*
import com.rameses.rcp.annotations.*
import com.rameses.osiris2.common.*
import com.rameses.osiris2.client.*
import com.rameses.osiris2.reports.*
import com.rameses.gov.etracs.rpt.common.RPTUtil;


public class RPTLedgerController
{
    @FormTitle
    @FormId
    def formTitle
    
    @Binding
    def binding
    
    @Service("RPTLedgerService")
    def svc;
    
    def entity
    def ledger 
    def mode 

    def STATE_PENDING = 'PENDING'
    def STATE_APPROVED = 'APPROVED'

    def MODE_READ   = 'read'
    def MODE_EDIT   = 'edit'
        
    
    String getTitle(){
        return 'Realty Tax Ledger'
    }
    
    void open(){
        mode    = MODE_READ
        ledger  = svc.openLedger(entity)
        loadItems()
    }
    
    void loadItems(){
        debits   = svc.getLedgerItems(ledger.objid)
        credits = svc.getLedgerCredits(ledger.objid)
        debitListHandler.load();
        paymentListHandler.load();
    }

    void cancel(){
        open()
        historyListHandler.load()
        debitListHandler.load()
        paymentListHandler.load()
    }

    void edit(){
        mode = MODE_EDIT
    }

    void save(){
        mode = MODE_READ
    }

    void approve(){
        if (MsgBox.confirm('Approve ledger?')) {
            ledger = svc.approveLedger(ledger)
            loadItems();
        }
    }



    /*--------------------------------------------------------------
    *
    * FAAS HISTORY  SUPPORT 
    *
    --------------------------------------------------------------*/
    def selectedItem 

    def historyListHandler = [
        fetchList  : { return ledger.faases},

    ] as BasicListModel


    def onaddHandler = { item ->
        svc.saveLedgerFaas( item )
        ledger.faases.add( item )
        historyListHandler.load() 
    }

    def addFaas() {
        return InvokerUtil.lookupOpener('rptledgerfaas:create',[svc:svc, onaddHandler:onaddHandler, ledger:ledger] )
    }
    
    def onupdateHandler = { item ->
        svc.saveLedgerFaas( item )
        binding.refresh('selectedItem')
    }
    
    def editFaas() {
        if( ! selectedItem ) return 
        if( RPTUtil.isTrue(selectedItem.systemcreated) ) {
            throw new Exception('System posted item is not editable.')
        }
        return InvokerUtil.lookupOpener('rptledgerfaas:edit',[svc:svc, onupdateHandler:onupdateHandler, ledger:ledger, ledgerfaas:selectedItem])
    }
    
    void removeFaas() {
        if( ! selectedItem ) return 
        if( RPTUtil.isTrue(selectedItem.systemcreated) ) {
            throw new Exception( 'Cannot delete a system created entry.' )
        }
        if( MsgBox.confirm( 'Remove last item?' )) {
            svc.removeLedgerFaas( ledger.faases.last() )
            ledger.faases.remove( ledger.faases.last())
            historyListHandler.load()
        }
    }


    /*--------------------------------------------------------------
    *
    * LEDGER DEBITS  SUPPORT 
    *
    --------------------------------------------------------------*/
    def debits

    def debitListHandler = [
        fetchList : { return debits }
    ] as BasicListModel


    /*--------------------------------------------------------------
    *
    * CREDIT LIST  SUPPORT 
    *
    --------------------------------------------------------------*/
    def credits 
    def selectedPayment

    def paymentListHandler = [
        fetchList : { return credits }
    ] as BasicListModel

    
    def getBasic(){
        if (debits){
            return debits.sum{ it.basic - it.basicpaid}
        }
        return 0.0; 
    }
    
    def getBasicint(){
        if (debits){
            return debits.sum{ it.basicint }
        }
        return 0.0; 
    }
    
    def getBasicdisc(){
        if (debits){
            return debits.sum{ it.basicdisc}
        }
        return 0.0; 
    }
    
    def getTotalBasic(){
        if (debits){
            return debits.sum{ it.basic - it.basicpaid + it.basicint - it.basicdisc }
        }
        return 0.0; 
    }
    
    def getSef(){
        if (debits){
            return debits.sum{ it.sef - it.sefpaid}
        }
        return 0.0; 
    }
    
    def getSefint(){
        if (debits){
            return debits.sum{ it.sefint }
        }
        return 0.0; 
    }
    
    def getSefdisc(){
        if (debits){
            return debits.sum{ it.sefdisc}
        }
        return 0.0; 
    }
    
    def getTotalSef(){
        if (debits){
            return debits.sum{ it.sef - it.sefpaid + it.sefint - it.sefdisc }
        }
        return 0.0;
    }
}

