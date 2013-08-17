package com.rameses.gov.etracs.rpt.collection.ui;


import com.rameses.rcp.common.*;
import com.rameses.rcp.annotations.*;
import com.rameses.osiris2.client.*;
import com.rameses.osiris2.common.*;
import com.rameses.osiris2.reports.*;
import com.rameses.gov.etracs.rpt.common.*;


class RPTReceiptController extends com.rameses.enterprise.treasury.controllers.AbstractCashReceipt
{
    @Binding
    def binding;
    
    @Service('RPTReceiptService')
    def svc;
    
    @Service('ReportParameterService')
    def paramSvc 
    
    @Service('RPTBillingService')
    def billSvc
    
    def MODE_INIT = 'init';
    def MODE_CREATE = 'create';
    def MODE_READ   = 'read';
    
    def PAY_OPTION_ALL = 'all';
    def PAY_OPTION_BYLEDGER = 'byledger';
    
    def mode;
    def payoption;
    def bill;
    def advanceyear;
            
    
    
    void init(){
        super.init();
        clearAllPayments();
        entity.amount = 0.0;
        bill = billSvc.initBill();
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
        if (bill.advancepayment){
            bill.billtoyear = advanceyear;
        }
        
        bill.putAll(bill.taxpayer)
        def openledgercount = billSvc.getOpenLedgerCount(bill)
        
        payoption = PAY_OPTION_BYLEDGER;
        if (openledgercount <= 5){
            payoption = PAY_OPTION_ALL;
            generateBill();
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
                
                def xbill = billSvc.generateBillByLedgerId(ledger.objid);
                bill.ledgers.addAll( xbill.ledgers )
                listHandler.load();
            },
        ])
    }
    
    public void validateBeforePost() {
        buildRptItems();
        createReceiptItems();
    }
    
    void createReceiptItems(receipt){
        entity.items = []
        entity.rptitems.each{ item ->
            entity.items += createItem(entity.objid, item.objid, item.basicacct, item.basic - item.basicdisc, buildRemarks(item))
            if (item.basicint > 0.0){
                    entity.items += createItem(entity.objid, item.objid, item.basicintacct, item.basicint, buildRemarks(item))
            }
            entity.items += createItem(entity.objid, item.objid, item.sefacct, item.sef - item.sefdisc, buildRemarks(item))
            if (item.sefint > 0.0){
                    entity.items += createItem(entity.objid, item.objid, item.sefintacct, item.sefint, buildRemarks(item))
            }
        }
    }
    
    def createItem(receiptid, itemid, acct, amount, remarks){
        return [
            objid 	: RPTUtil.generateId('RI'),
            receiptid	: receiptid,
            item        : acct,
            amount      : amount,
            remarks     : remarks,
        ]
    }
    
    def buildRemarks(item){
        if ( item.qtr == 0)
                return item.year 
        return item.qtr +'qtr, ' + item.year 
    }
    
    void buildRptItems(){
        entity.rptitems = []
        bill.ledgers.each{ ledger ->
            if (ledger.pay) {
                ledger.items.each{ item ->
                    def oldid = item.objid;
                    item.objid = RPTUtil.generateId('RI');
                    item.rptledgeritemid = oldid;
                    item.rptreceiptid = entity.objid;
                    item.rptledgerid = ledger.objid;
                    item.partial = false;
                }
                entity.rptitems += ledger.items
            }
        }
        
        if (!entity.rptitems)
            throw new Exception('There are no items selected for payment.')
    }
    
    def selectedItem;
    
    def listHandler = [
        fetchList : { return bill.ledgers },
        
        onColumnUpdate : { item,colname ->
            if (colname == 'pay' && item.pay == false){
                item.total = 0.0 
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
                generateBill()
            }
            
        },
            
        validate : {li -> 
            validateToYear(li.item);
            validateToQtr(li.item);
        },
    ] as EditorListModel
                
                
    void generateBill(){
        bill = billSvc.generateBill(bill);
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
        bill.ledgers.each{
            it.pay = true;
            it.partialled = false;
        }
        generateBill();
    }
    
    void deselectAll(){
        bill.ledgers.each{
            it.pay = false;
            it.partialled = false;
            it.total = 0.0;
        }
        listHandler.load();
        calcReceiptAmount();
    }
    
    
    
    
    void fullPayment(){
        def xbill = billSvc.generateBillByLedgerId(selectedItem.objid);
        selectedItem.putAll(xbill.ledger[0])
        listHandler.load();
        calcReceiptAmount();
    }
    
    def partialPayment(){
        return InvokerUtil.lookupOpener('rptpartialpayment:open', [
                
            amount : selectedItem.total,
                
            onpartial : { partial ->
                selectedItem.putAll( billSvc.computePartialPayment(selectedItem, partial) );
                listHandler.load();
                calcReceiptAmount();
            },
        ])
    }
    
    
    void calcReceiptAmount(){
        def paiditems = bill.ledgers.findAll{it.pay == true};
        entity.amount = 0.0;
        if (paiditems){
            entity.amount = paiditems.total.sum();
            updateBalances();
        }
    }
    
    
            
}

