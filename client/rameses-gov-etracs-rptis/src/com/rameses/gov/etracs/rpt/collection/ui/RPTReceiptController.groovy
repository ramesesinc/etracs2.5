package com.rameses.gov.etracs.rpt.collection.ui;


import com.rameses.rcp.common.*;
import com.rameses.rcp.annotations.*;
import com.rameses.osiris2.client.*;
import com.rameses.osiris2.common.*;
import com.rameses.osiris2.reports.*;
import com.rameses.gov.etracs.rpt.common.*;


class RPTReceiptController
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
    
    def entity;
    def mode;
    def payoption;
    def bill;
    def advanceyear;
            
    
    
    def init(){
        entity = [
            objid   : RPTUtil.generateId('R'),
            state   : 'OPEN',
            txndate : null,
            amount  : 0.0,
        ]
        
        bill = billSvc.initBill();
        
        mode = MODE_INIT;
        payoption = PAY_OPTION_ALL;
        return 'init'
    }
    
    
    /*-----------------------------------------------------------------
     *
     * INIT PAGE SUPPORT
     *
     -----------------------------------------------------------------*/
    def lookupTaxpayer = InvokerUtil.lookupOpener('entity:lookup', [
            onselect    : {
                entity.taxpayer = it;
                bill.taxpayer = it;
                entity.payorname = it.name;
                entity.payoraddress = it.address;
                entity.paidby = it.name;
                entity.paidbyaddress = it.address;
                binding.refresh('entity.taxpayer.*|entity.paidby.*');
            }
    ]);
    
    
    def process(){
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
    
    def save(){
        if (MsgBox.confirm('Save receipt?')){
            buildRptItems();
            entity.amount = entity.rptitems.total.sum();
            entity = svc.createReceipt(entity);
            mode = MODE_READ;
            return 'view';
        }
        return null;
    }
    
    void buildRptItems(){
        entity.rptitems = []
        bill.ledgers.each{ ledger ->
            if (ledger.pay) {
                ledger.items.each{ item ->
                    item.rptledgeritemid = item.objid;
                    item.rptreceiptid = entity.objid;
                    item.rptledgerid = ledger.objid;
                    item.objid = RPTUtil.generateId('RI');
                    item.partial = false;
                }
                entity.rptitems += ledger.items
            }
        }
        
        if (!entity.rptitems)
            throw new Exception('There are no items selected for payment.')
    }
    
    
    def voidReceipt(){
        if (MsgBox.confirm('Void receipt?')){
            svc.voidReceipt(entity);
            return init();
        }
        return null;
    }
    
    
    def previewReceipt(){
        report.viewReport();
        return 'preview';
    }
    
    
    def reportPath = 'com/rameses/gov/etracs/rpt/collection/ui/'
    
    def report = [
        getReportName : { return reportPath + 'AF56.jasper'}, 
        getReportData : { return entity },
        getSubReports : { 
            return [
                new SubReport('AF56Item', reportPath + 'AF56Item.jasper'),
            ] as SubReport[]
        },
        getParameters : { return  paramSvc.getStandardParameter() },
    ] as ReportModel
    
    
    
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
    }
    
    
    
    
    void fullPayment(){
        def xbill = billSvc.generateBillByLedgerId(selectedItem.objid);
        selectedItem.putAll(xbill.ledger[0])
        listHandler.load();
    }
    
    def partialPayment(){
        return InvokerUtil.lookupOpener('rptpartialpayment:open', [
                
            amount : selectedItem.total,
                
            onpartial : { partial ->
                selectedItem.putAll( billSvc.computePartialPayment(selectedItem, partial) );
                listHandler.load();
            },
        ])
    }
            
}

