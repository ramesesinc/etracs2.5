package com.rameses.gov.etracs.rpt.collection.ui;


import com.rameses.rcp.common.*;
import com.rameses.rcp.annotations.*;
import com.rameses.osiris2.client.*;
import com.rameses.osiris2.common.*;
import com.rameses.osiris2.reports.*;
import com.rameses.gov.etracs.rpt.common.*;


class RPTReceiptNoLedgerController extends com.rameses.enterprise.treasury.cashreceipt.AbstractCashReceipt 
{
    @Binding
    def binding;
    
    @Service('RPTReceiptService')
    def svc;
    
    @Service('RPTBillingService')
    def billSvc;
    
    @Service('ReportParameterService')
    def paramSvc 
    
    def MODE_CREATE         = 'create';
    def MODE_READ           = 'read';
        
    
    def ledgers;
    def selectedLedger;
    def bill;
    def mode;
    
    
    void init(){
        super.init();
        ledgers = [];
        entity.txntype = 'noledger';
        entity.amount = 0.0;
        clearAllPayments();
        bill = billSvc.initBill(null);
        mode = MODE_CREATE;
    }
    
    
    public void validateBeforePost() {
        entity.ledgers = ledgers
    }
    
    
    def listHandler = [
        fetchList : { return ledgers },
    ] as BasicListModel
    
   
    void calcReceiptAmount(){
        entity.amount = ledgers.amount.sum();
        if (entity.amount == null) 
            entity.amount = 0.0
        updateBalances();
        binding.refresh('totalBasic|totalSef')
    }
        
    def addLedger(){
        return InvokerUtil.lookupOpener('noledger:create', [
            bill        : bill,
            prevledger  : selectedLedger,
                
            onAdd       : {
                ledgers << it.ledger;
                listHandler.reload();
                calcReceiptAmount();
            },
        ])
    }
        
    
    def editLedger() {
        return InvokerUtil.lookupOpener('noledger:edit', [
            svc         : svc,
                
            billSvc     : billSvc,
                
            onUpdate    : {
                selectedItem.putAll(it.ledger)
                listHandler.reload();
                calcReceiptAmount();
            },
        ])
    }
    
    
    void removeLedger(){
        if ( MsgBox.confirm('Delete selected item?') ){
            ledgers.remove(selectedLedger);
            listHandler.reload();
            calcReceiptAmount();
        }
    }
    
    
    
    def printDetail(){
        return InvokerUtil.lookupOpener('rptreceipt:printdetail',[entity:entity])
    }
    

        
    
    def getTotalBasic(){
        return ledgers.basicnet.sum()
    }
    
    def getTotalSef(){
        return ledgers.sefnet.sum()
    }
    
    
}

