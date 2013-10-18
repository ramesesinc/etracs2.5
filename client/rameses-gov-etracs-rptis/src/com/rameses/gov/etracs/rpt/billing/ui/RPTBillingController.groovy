package com.rameses.gov.etracs.rpt.billing.ui;


import com.rameses.rcp.common.*
import com.rameses.rcp.annotations.*
import com.rameses.osiris2.client.*
import com.rameses.osiris2.reports.*
import java.rmi.server.UID;


public class RPTBillingController  
{
    @Binding
    def binding
            
    @Caller
    def caller;
    
    @Service("RPTBillingService")
    def svc;

    @Service("ReportParameterService")
    def reportSvc;
    
    @Service('LGUService')
    def lguSvc 
    
    def mode;
    def parsedate;
    def bill;
    
    String title = 'Realty Tax Billing'
    
    void init() {
        mode = 'init'
        bill = svc.initBill()
    }
    
    def back() {
        mode = 'init'
        return 'default' 
    }
    
    def getLookupTaxpayer() {
        return InvokerUtil.lookupOpener('entity:lookup', [
            onselect : {
                bill.taxpayer = it;
                clearLoadedProperties();
            },
                
            onempty : {
                bill.taxpayer = null;
                clearLoadedProperties();
            }
        ] )
    }
    
    void buildBillReportInfo(){
        bill.forprinting = true;
        def selectedItems = items.findAll{it.bill == true}
        if (selectedItems){
            bill.ledgerids.clear();
            bill.ledgerids.addAll(selectedItems.objid);
        }
        bill = svc.generateBill( bill )
        report.viewReport()
    }
    
    void printBill() {
        buildBillReportInfo()
        ReportUtil.print( report.report, true )
    }
    
    def previewBill() {
        buildBillReportInfo()
        mode = 'view'
        return 'preview'
    }
                      
    def reportpath = 'com/rameses/gov/etracs/rpt/report/billing/'
            
    def report = [
        getReportName : { return reportpath + 'rptbilling.jasper' },
        getSubReports  : {
            return [
                new SubReport('RPTBillingLedger', reportpath + 'rptbillingledger.jasper'),
                new SubReport('RPTBillingLedgerItem', reportpath + 'rptbillingledgeritem.jasper'),
            ] as SubReport[]
        },
        getReportData : { return bill },
        getParameters : { return reportSvc.getStandardParameter() }
    ] as ReportModel
    
    List getQuarters() {
        return  [1,2,3,4]
    }
    
    List getRpuTypes(){
        return ['land', 'bldg', 'mach', 'planttree', 'misc']
    }
    
    
    List getBarangays(){
        return lguSvc.lookupBarangays([:])
    }
    
    
    
    
    
    def items = []
            
    def listHandler = [
        fetchList : { return items },
    ] as EditorListModel
            
                
    void selectAll(){
        items.each{
            it.bill = true;
            listHandler.reload();
        }
    }
    
    
    void deselectAll(){
        items.each{
            it.bill = false;
            listHandler.reload();
        }
    }
    
    void loadProperties(){
        if (!bill.taxpayer) {
            throw new Exception('Taxpayer is required.')
        }
        bill.ledgerids.clear();
        items = svc.loadProperties(bill).each{ it.bill = true }
        listHandler.reload();
    }
    
    void clearLoadedProperties(){
        items.clear()
        listHandler.reload()
    }
    
    
}