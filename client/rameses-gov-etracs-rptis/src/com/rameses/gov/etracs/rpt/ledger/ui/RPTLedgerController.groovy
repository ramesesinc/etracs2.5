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
        debits   = svc.getLedgerItems(ledger.objid)
        credits = svc.getLedgerCredits(ledger.objid)
    }


    def getTotalBasic(){
        return ledger.basic + ledger.basicint - ledger.basicdisc 
    }

    def getTotalSef(){
        return ledger.sef + ledger.sefint - ledger.sefdisc 
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
            svc.approveLedger(ledger)
            ledger.state = STATE_APPROVED
            debits   = svc.getLedgerItems(ledger.objid)
            debitListHandler.load()
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

        
}

