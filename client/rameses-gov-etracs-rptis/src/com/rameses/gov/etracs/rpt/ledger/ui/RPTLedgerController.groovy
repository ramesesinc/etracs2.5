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
    
    @Service('RPTBillingService')
    def billSvc;
    
    def entity
    def ledger 
    def mode 

    def STATE_PENDING = 'PENDING'
    def STATE_APPROVED = 'APPROVED'

    def MODE_READ   = 'read'
    def MODE_EDIT   = 'edit'
            
    String getTitle(){
        return 'Realty Tax Ledger (' + entity.state + ')'
    }
    
    def getFormActions(){
        return InvokerUtils.lookupOpeners('rptledger:formActions', [entity:entity])
    }
    
    void open(){
        mode    = MODE_READ
        ledger  = svc.openLedger(entity)
        loadItems()
    }
    
    void loadItems(){
        debits   = svc.getLedgerBillItems(ledger.objid)
        credits = svc.getLedgerCredits(ledger.objid)
        debitListHandler.reload();
        paymentListHandler.reload();
    }

    void cancel(){
        open()
        historyListHandler.reload()
        debitListHandler.reload()
        paymentListHandler.reload()
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
        historyListHandler.reload() 
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
            historyListHandler.reload()
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
            return debits.sum{ it.basic}
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
            return debits.sum{ it.basic + it.basicint - it.basicdisc }
        }
        return 0.0; 
    }
    
    def getSef(){
        if (debits){
            return debits.sum{ it.sef}
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
            return debits.sum{ it.sef + it.sefint - it.sefdisc }
        }
        return 0.0;
    }
    
    
    def printBill(){
        def bill = billSvc.initBill(entity.objid);
        bill.taxpayer = entity.taxpayer
        return InvokerUtil.lookupOpener('rptbill:print', [bill:bill])
    }
    
    
    def capturePayment(){
        return InvokerUtil.lookupOpener('rptledger:capture', [
            ledger : ledger,
            
            onadd  : { payment ->
                svc.postCapturedPayment(payment)
                ledger.lastyearpaid = payment.toyear;
                ledger.lastqtrpaid  = payment.toqtr;
                open();
                binding.refresh('.*');
            }
        ])
    }
    
    def fixLedger(){
        return InvokerUtil.lookupOpener('rptledger:formActions', [
            entity : entity,
                
            svc    : svc, 
                
            oncomplete : {
                open();
                entity.lastyearpaid = it.lastyearpaid;
                entity.lastqtrpaid = it.lastqtrpaid;
                binding.refresh('.*')
            }
        ])
    }
    
    def fixLedgerFaas(){
        if (!selectedItem) 
            throw new Exception('Ledger FAAS to fix is required.')
            
        return InvokerUtil.lookupOpener('rptledger:fixledgerfaas', [
            entity : selectedItem,
                
            svc    : svc, 
                
            oncomplete : {
                if (it.toqtr == null) it.toqtr = 0
                selectedItem.putAll(it);
                debitListHandler.refreshSelectedItem();
                open();
                entity.lastyearpaid = it.lastyearpaid;
                entity.lastqtrpaid = it.lastqtrpaid;
                binding.refresh('.*')
            }
        ])
    }
        
    def changeState(){
        return InvokerUtil.lookupOpener('rptledger:changestate', [
            entity : entity,
                
            svc    : svc, 
                
            oncomplete : {
                entity.state = it.state
                binding.refresh('.*')
            }
        ])
    }
    
    def generateNotice(){
        return InvokerUtil.lookupOpener('rptledger:nod', [
            entity : entity,
        ])
    }
}

