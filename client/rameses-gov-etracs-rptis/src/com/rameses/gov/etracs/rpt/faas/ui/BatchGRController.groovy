package com.rameses.gov.etracs.rpt.faas.ui;
        
import com.rameses.rcp.common.*;
import com.rameses.rcp.annotations.*;
import com.rameses.osiris2.client.*
import java.rmi.server.UID;
import java.util.concurrent.ExecutorService
import java.util.concurrent.Executors

public class BatchGRController 
{
    @Binding
    def binding;
    
    @Service("BatchGRService")
    def svc
            
    @Service("GeneralRevisionService")
    def grSvc
            
     @Service("LGUService")
     def lguSvc 
    
    
    def rylist;
    def params = [:];
    def processing = false;
    def cancelled = false;
    def msg;
            
    String title = 'Batch General Revision'
    def counter = [success:0, error:0]
            
    void init() {
        processing = false;
        cancelled = false;
        rylist = grSvc.getRyList(null, null,null)   
    }         
            
    void revise() {
        if( !MsgBox.confirm("Revise all faas? ")) return;
        
        def landfaasids = svc.getLandFaasIdForRevision(params.newry.ry, params.barangay?.objid)
        
        Thread t = new Thread(new BatchGRTask(svc:svc, params:params, items:landfaasids, cancelled:cancelled, oncomplete:oncomplete, onrevise:onrevise));
        t.start();
        
        processing = true;
    }
    
    
    def oncomplete = {
        msg = 'Successfully Processed: ' + counter.success + '  Errors: ' + counter.error;
        processing = false;
        binding.refresh();
    }
    
    def onrevise = {
        counter.success += it.success;
        counter.error += it.error;
        msg = 'Successfully Processed: ' + counter.success + '  Errors: ' + counter.error;
        binding.refresh('msg');
    }
    
    def getBarangays(){
        return lguSvc.lookupBarangays([:])
    }
    
    void cancel() {
        processing = false;
        cancelled = true;
    }
    
}

public class BatchGRTask implements Runnable{
    ExecutorService executor;

    def svc;
    def params;
    def items;
    def cancelled;
    def oncomplete;
    def onrevise;

    public void run(){
        executor = Executors.newFixedThreadPool(1)

        for(int i=0; i<items.size(); i++) {
            if (cancelled) break;
            params.objid= items[i].objid;
            def task = new ReviseFaasTask(svc:svc, params:params, onrevise:onrevise)
            executor.execute(task)
        }

        executor.shutdown()
        while( ! executor.isTerminated()){
        }
        oncomplete()
    }
}


public class ReviseFaasTask implements Runnable {
    def svc;
    def params;
    def onrevise;

    public void run(){
        def retval = svc.reviseLandFaas(params);
        onrevise(retval);
    }
}        


