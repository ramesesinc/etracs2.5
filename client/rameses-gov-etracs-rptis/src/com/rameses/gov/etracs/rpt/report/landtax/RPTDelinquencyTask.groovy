package com.rameses.gov.etracs.rpt.report.landtax;


import com.rameses.rcp.common.*;
import com.rameses.rcp.annotations.*;
import com.rameses.osiris2.client.*;


class RPTDelinquencyTask implements Runnable
{
    def svc;
    def entity;
    def oncomplete;
    def updateStatus;
    def cancelled;
    
    public void run(){
        cancelled = false; 
        
        svc.cleanup(entity.barangay);
        
        def list = svc.getOpenLedgersByBarangay(entity.barangay);
        for (int i = 0; i < list.size(); i++){
            if (cancelled ) 
                break;
            
            try{
                def ledger = list[i];
                updateStatus(ledger);
                svc.buildDelinquency(ledger, entity.currentdate);
            }
            catch(e){
                println 'Error Ledger Rebuild ' + e.message;
            }
        }    
        
        if (!cancelled)
            oncomplete();
    }
    
}