package com.rameses.gov.etracs.rpt.report.landtax;


import com.rameses.rcp.common.*;
import com.rameses.rcp.annotations.*;
import com.rameses.osiris2.client.*;


class RPTDelinquencyTask implements Runnable
{
    def svc;
    def currentdate;
    def oncomplete;
    def updateStatus;
    def cancelled;
    
    public void run(){
        cancelled = false; 
        
        svc.cleanup();
        
        def barangays = svc.getBarangayList();
        
        barangays.each{ barangay ->
            def list = svc.getOpenLedgersByBarangay(barangay);
            for (int i = 0; i < list.size(); i++){
                if (cancelled ) 
                    break;

                try{
                    def ledger = list[i];
                    updateStatus(ledger);
                    svc.buildDelinquency(ledger, currentdate);
                }
                catch(e){
                    println 'Error Ledger Rebuild ' + e.message;
                }
            }    
        }
        
        if (!cancelled)
            oncomplete();
    }
    
}