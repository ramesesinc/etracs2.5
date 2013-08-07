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
    
    @Service("RPTBillingService")
    def svc;

    @Service("ReportParameterService")
    def reportSvc;
    
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
        return InvokerUtil.lookupOpener('rpttaxpayer:lookup', [:] )
    }
    
    void buildBillReportInfo(){
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
    
}