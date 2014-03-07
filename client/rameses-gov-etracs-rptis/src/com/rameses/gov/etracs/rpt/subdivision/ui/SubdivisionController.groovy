package com.rameses.gov.etracs.rpt.subdivision.ui;
        
import com.rameses.rcp.annotations.* 
import com.rameses.rcp.common.* 
import com.rameses.osiris2.client.*
import com.rameses.osiris2.common.*
import com.rameses.util.*;
import com.rameses.common.*;
import com.rameses.gov.etracs.rpt.common.RPTUtil;
import com.rameses.util.MapBeanUtils;

public class SubdivisionController extends com.rameses.gov.etracs.rpt.common.RPTWorkflowController
{

    @Service('SubdivisionService')
    def svc;
    
    String formTitlePrefix = 'SD';
            
        
    void createSubdivision(){
        entity = svc.createSubdivision(entity);
        initOpen();
    }
    
    
    public def getService(){ 
        return svc; 
    }
    
    public def getSections(){
        return InvokerUtil.lookupOpeners('subdivision:info', [entity:entity, svc:svc])
    }
    
    
    
    public String getDocName(){ 
        return 'Subdivision';
    }
    
    public String getFileType(){
        return 'subdivision';
    }
    
    public String getWorkflowCode(){
        return 'SD';
    }
    
    public String getReferenceNo(){
        return entity.txnno;
    }
    
    
    
    public def openEntity(){
        return svc.openSubdivision(entity.objid)
    }
    
    public void deleteEntity(){
        svc.deleteSubdivision(entity);
    }
    
    public void approveEntity(){
        entity = svc.approveSubdivision(entity);
    }
    
    public void disapproveEntity(){
        entity = svc.disapproveSubdivision(entity);
    }
    
            
    void afterInit(){
        formTitle = 'Subdivision (New)'
        entity.objid = RPTUtil.generateId('SD')
    }
    
    
    void afterOpen(){
        formId = entity.txnno;
        formTitle = 'SD: ' + entity.txnno;
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
        checkMessages();
        info = '';
        processing = true;
        approveTask = new ApproveSubdivisionTask(
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
            throw new Exception('Subdivision Approval is ongoing.');
    }
    
    void checkFinish(){
        if (haserror)
            throw new Exception('Approval cannot be completed due to errors. Fix errors before finishing the transaction.')
        if (processing)
            throw new Exception('Subdivision Approval is ongoing.');
        initOpen();
    }

        
    
    /*===============================================
     * Lookup Support
     *===============================================*/
    def getLookupFaas() {
        return InvokerUtil.lookupOpener('faas:lookup', [:])
    }
        
}


