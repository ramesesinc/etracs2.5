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
    def params = [memoranda:'REVISED PURSUANT TO SECTION 219 OF RA 7160.'];
    def processing = false;
    def cancelled = false;
    def msg;
            
    String title = 'Batch General Revision'
    def counter = [success:0, error:0]
            
    def batchTask = null
            
    void init() {
        processing = false;
        cancelled = false;
        rylist = grSvc.getRyList(null, null,null)   
    }         
            
    void revise() {
        if( !MsgBox.confirm("Revise all faas? ")) return;
        
        def landfaasids = svc.getFaasIdForRevision(params.newry.ry, params.barangay?.objid)
        batchTask = new BatchGRTask(svc:svc, params:params, items:landfaasids, cancelled:cancelled, oncomplete:oncomplete, onrevise:onrevise);
        Thread t = new Thread(batchTask);
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
        batchTask.cancelled = true;
    }
    
}

public class BatchGRTask implements Runnable{
    // ExecutorService executor;

    def svc;
    def params;
    def items;
    def cancelled;
    def oncomplete;
    def onrevise;

    public void run(){
        for(int i=0; i<items.size(); i++) {
            if (cancelled) break;
            try{
                params.objid= items[i].objid;
                def retval = svc.reviseFaas(params);
                onrevise(retval);
            }
            catch(err){
                err.printStackTrace();
            }
        }
        oncomplete()
    }
}

