package com.rameses.gov.etracs.rpt.consolidation.ui;
        
import com.rameses.rcp.annotations.* 
import com.rameses.rcp.common.* 
import com.rameses.osiris2.client.*
import com.rameses.osiris2.common.*
import com.rameses.util.*;
import com.rameses.common.*;
import com.rameses.gov.etracs.rpt.common.*;
import com.rameses.util.MapBeanUtils;

public class ConsolidationController extends com.rameses.gov.etracs.rpt.task.RPTWorkflowController
{

    
    @Service('ConsolidationService')
    def svc;
    
    String formTitlePrefix = 'CS';
        
    
    
    
    public def getService(){ 
        return svc; 
    }
    
    public def getSections(){
        return InvokerUtil.lookupOpeners('consolidation:info', [entity:entity, svc:svc])
    }
    
    
    public String getDocName(){ 
        return 'Consolidation';
    }
    
    public String getFileType(){
        return 'consolidation';
    }
    
    public String getWorkflowCode(){
        return 'CS';
    }
    
    public String getReferenceNo(){
        return entity.txnno;
    }
    
    
    
    public def openEntity(){
        return svc.openConsolidation(entity.objid)
    }
    
    public void deleteEntity(){
        svc.deleteConsolidation(entity);
    }
    
    public void approveEntity(){
        approve();
    }
    
    public void disapproveEntity(){
        entity = svc.disapproveConsolidation(entity);
    }
    
    
    
    void create(){
        entity = svc.createConsolidation(entity);
        initOpen();
    }
    
            
    void afterInit(){
        formTitle = 'Consolidation (New)';
        entity.objid = RPTUtil.generateId('CS');
        entity.putAll(svc.initConsolidation());
    }
    
    
    void afterOpen(){
        formId = entity.txnno;
        formTitle = 'CS: ' + entity.txnno;
    }
    
    
        
    void beforeSubmit(){
        svc.validateSubmit(entity);
    }
        
    
    
    def approveTask = null;
    def info;
    def processing = false;
    def haserror = false;
    
    
    def oncomplete = {
        haserror = false;
        processing = false;
        approveTask = null;
        binding.refresh();
    }
    
    def onerror = {
        haserror = true;
        processing = false;
        approveTask = null;
        showinfo('ERROR: ' + it)
    }
    
    def showinfo = { msg ->
        info += msg;
        binding.refresh('info');
    }
    
    
    void approve() {
        
        svc.validate(entity);
        
        info = '';
        processing = true;
        approveTask = new ApproveConsolidationTask(
                    svc             : svc, 
                    entity          : entity,
                    oncomplete      : oncomplete,
                    showinfo        : showinfo,
                    onerror         : onerror,
                );
        Thread t = new Thread(approveTask);
        t.start();
        
    }

    
    void checkErrors(){
        if (processing)
            throw new Exception('Consolidation Approval is ongoing.');
    }
    
    void checkFinish(){
        if (haserror)
            throw new Exception('Approval cannot be completed due to errors. Fix errors before finishing the transaction.')
        if (processing)
            throw new Exception('Consolidation Approval is ongoing.');
        initOpen();
    }
    
}
