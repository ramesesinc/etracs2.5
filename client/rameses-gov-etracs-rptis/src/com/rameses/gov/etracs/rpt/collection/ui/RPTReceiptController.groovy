package com.rameses.gov.etracs.rpt.collection.ui;


import com.rameses.rcp.common.*;
import com.rameses.rcp.annotations.*;
import com.rameses.osiris2.client.*;
import com.rameses.osiris2.common.*;
import com.rameses.osiris2.reports.*;
import com.rameses.gov.etracs.rpt.common.*;


class RPTReceiptController extends com.rameses.enterprise.treasury.cashreceipt.AbstractCashReceipt implements ViewHandler
{
    @Binding
    def binding;
    
    @Service('RPTReceiptService')
    def svc;
    
    @Service('RPTBillingService')
    def billSvc;
    
    @Service('ReportParameterService')
    def paramSvc 
    
    def MODE_INIT           = 'init';
    def MODE_CREATE         = 'create';
    def MODE_READ           = 'read';
    
    def PAY_OPTION_ALL      = 'all';
    def PAY_OPTION_BYLEDGER = 'byledger';
    def PAY_OPTION_ADVANCE  = 'advance';
    
    def mode;
    def payoption;
    def bill;
    def advanceyear;
    def openledgers;
    def itemsforpayment;
            
    
    
    void init(){
        super.init();
        itemsforpayment = [];
        entity.txntype = 'rptonline';
        entity.amount = 0.0;
        clearAllPayments();
        bill = billSvc.initBill(null);
        mode = MODE_INIT;
        payoption = PAY_OPTION_ALL;
    }
    
    
    /*-----------------------------------------------------------------
     *
     * INIT PAGE SUPPORT
     *
     -----------------------------------------------------------------*/
    
    def process(){
        RPTUtil.required("Payer", entity.payer);
        bill.taxpayer = entity.payer;
        if (payoption == PAY_OPTION_ADVANCE){
            bill.billtoyear = advanceyear;
        }
        
        if (payoption == PAY_OPTION_ALL){
            recalcBillingStatement();
            loadItems();
        }
            
        mode = MODE_CREATE;
        return 'main'
    }
    
    
    def getLookupLedger(){
        return InvokerUtil.lookupOpener('rptledger:lookup',[

            onselect : {ledger ->
                if (ledger.state != 'APPROVED')
                    throw new Exception('Only approve ledger is allowed.')
                if (bill.ledgers.find{it.objid == ledger.objid})
                    throw new Exception('Ledger has already been added.')
                loadItemByLedger(ledger.objid)
            },
        ])
    }
    
    public void validateBeforePost() {
        entity.rptitems = itemsforpayment.findAll{it.pay == true}
    }
    
    def selectedItem;
    
    def listHandler = [
        createItem : { return null },
            
        fetchList : { return itemsforpayment },
        
        onColumnUpdate : { item,colname ->
            if (colname == 'pay' && item.pay == false){
                item.amount = 0.0;
                bill.rptledgerid = item.rptledgerid;
                calcReceiptAmount();
            }
            else {
                if (colname == 'toyear') {
                    validateToYear(item);
                    bill.billtoyear = item.toyear;
                }
                else{ 
                    validateToQtr(item);
                    bill.billtoqtr = item.toqtr;
                }

                if (item.fromyear == item.toyear && item.toqtr < item.fromqtr)
                    item.toqtr = item.fromqtr 
                updateItemDue(item)
            }
            
        },
            
        validate : {li -> 
            validateToYear(li.item);
            validateToQtr(li.item);
        },
    ] as EditorListModel
                
                
    void recalcBillingStatement(){
        def ledgers = billSvc.loadProperties(bill);
        ledgers.each{
            billSvc.generateBillByLedgerId(it.objid)
        }
    }
                
    void loadItems(){
        bill.rptledgerid = null;
        bill.taxpayerid = bill.taxpayer.objid
        itemsforpayment = svc.getItemsForPayment(bill);
        listHandler.load();
        calcReceiptAmount();
    }
        
            
    void loadItemByLedger(rptledgerid){
        bill.rptledgerid = rptledgerid;
        billSvc.generateBillByLedgerId(rptledgerid);
        itemsforpayment += svc.getItemsForPayment(bill);
        listHandler.load();
        calcReceiptAmount();
    }

    void updateItemDue(item){
        item.partialled = false;
        bill.rptledgerid = item.rptledgerid;
        billSvc.generateBill(bill);
        def items = svc.getItemsForPayment(bill);
        if (items){
            item.putAll(items[0]);
        }
        listHandler.load();
        calcReceiptAmount();
    }
    
        
    void validateToYear(item){
        if (item.toyear < item.fromyear)
            throw new Exception('To Year must be greater than or equal to From Year.');
    }
        
    void validateToQtr(item){
        if (item.toyear == item.fromyear && item.toqtr < item.fromqtr)
            throw new Exception('To Quarter must be greater than or equalto From Quarter.')
    }
    
    
    
    
    void selectAll(){
        itemsforpayment.each{
            it.pay = true;
            it.partialled = false;
            if (payoption != PAY_OPTION_ALL){
                updateItemDue(it);
            }
        }
        if (payoption == PAY_OPTION_ALL) {
            loadItems();
        }
    }
    
    void deselectAll(){
        itemsforpayment.each{
            it.pay = false;
            it.partialled = false;
            it.amount = 0.0;
        }
        listHandler.load();
    }
    
    
    
    
    void fullPayment(){
        updateItemDue(selectedItem);
        selectedItem.partialled = false;
    }
    
    def partialPayment(){
        return InvokerUtil.lookupOpener('rptpartialpayment:open', [
                
            amount : selectedItem.amount,
                
            onpartial : { partial ->
                selectedItem.putAll( billSvc.computePartialPayment(selectedItem, partial) );
                listHandler.load();
                calcReceiptAmount();
                
                
            },
        ])
    }
    
    
    void calcReceiptAmount(){
        def paiditems = itemsforpayment.findAll{it.pay == true};
        entity.amount = 0.0;
        if (paiditems){
            entity.amount = paiditems.amount.sum();
        }
        updateBalances();
        binding.refresh('totalBasic|totalSef')
    }
    
    
    
    //viewhandler implementation
    void activatePage(binding, pagename){
        
    }
    
    void afterRefresh(binding, pagename){
        binding.requestFocus('ledger');
    }
    
    
    def printDetail(){
        return InvokerUtil.lookupOpener('rptreceipt:printdetail',[entity:entity])
    }
    
    
    def getTotalBasic(){
        return itemsforpayment.findAll{it.pay == true}.totalbasic.sum()
    }
    
    def getTotalSef(){
        return itemsforpayment.findAll{it.pay == true}.totalsef.sum()
    }
    
            
}

