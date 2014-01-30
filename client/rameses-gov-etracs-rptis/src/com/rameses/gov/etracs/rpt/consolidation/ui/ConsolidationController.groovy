package com.rameses.gov.etracs.rpt.consolidation.ui;
        
import com.rameses.rcp.annotations.* 
import com.rameses.rcp.common.* 
import com.rameses.osiris2.client.*
import com.rameses.osiris2.common.*
import com.rameses.gov.etracs.rpt.common.RPTUtil;
import com.rameses.util.MapBeanUtils;

public class ConsolidationController extends PageFlowController
{

    @Binding
    def binding;
    
    @Service('ConsolidationService')
    def svc 
            
    @Invoker
    def invoker 
    
    @FormId
    def formId;
    
    @FormTitle
    def formTitle;
    
    def appraiser = [:];
    def recommender = [:];
    def taxmapper = [:];
    def approver = [:];
    
    def entity;
    
    def sections;
    def selectedSection;
    
    def init(){
        formTitle = 'Consolidation (New)';
        entity = svc.initConsolidation();
        return super.signal('init')
    }
    
    
    def open(){
        initOpen();
        return super.signal('open');
    }
    
    
    void initOpen(){
        entity = svc.openConsolidation(entity.objid);
        loadSections();
        formId = 'CS: ' + entity.txnno;
        formTitle = formId;
    }
    
    
    void loadSections(){
        sections = InvokerUtil.lookupOpeners('consolidation:info', [entity:entity, svc:svc])
        if (sections){
            selectedSection = sections[0];
        }
    }
    
    
    void create(){
        entity = svc.createConsolidation(entity);
        initOpen();
    }
    
    void delete(){
        svc.deleteConsolidation(entity);
    }
    
    
    /*-----------------------------------------------------
     * 
     * WORKFLOW ACTIONS
     *
     *----------------------------------------------------*/
    
    void submitForTaxmapping(){
        entity = svc.submitForTaxmapping(entity);
    }
    
    
    void submitForAppraisal(){
        entity = svc.submitForAppraisal(entity);
    }
    
    
    void submitForApproval(){
        entity = svc.submitForApproval(entity);
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
    
    
    void approveConsolidation() {
        
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
    
    

    void disapproveConsolidation() {
        entity = svc.disapproveConsolidation(entity);
    }

    

    void submitToProvince() {
        entity = svc.submitToProvince(entity);
    }

   
    void disapproveSubmitToProvince() {
        entity = svc.disapproveSubmitToProvince(entity);
    }


    void approveSubmittedToProvince(){
        entity = svc.approveSubmittedToProvince(entity);
    }
    
    
    void disapproveSubmittedToProvince(){
        entity = svc.disapproveSubmittedToProvince(entity);
    }
    
    
    void approveByProvince() {
        entity = svc.approveByProvince(entity);
    }


    void disapproveByProvince() {
        entity = svc.disapproveByProvince(entity);
    }
    
}


public class ApproveConsolidationTask implements Runnable{
    def svc;
    def entity;
    def oncomplete;
    def onerror;
    def showinfo;

    public void run(){
        try{
            showinfo('Initializing');
            svc.initApproveConsolidationAsync(entity);
            showinfo(' .... Done\n');
        
            showinfo('Assigning new TD No. to Consolidated Land and Affected RPUs');
            entity.putAll( svc.assignNewTdNosAsync(entity) );
            showinfo(' .... Done\n');
            
            
            showinfo('Processing Consolidated Land ');
            if ( ! entity.newfaasid){
                showinfo('Creating new Consolidated Land FAAS for TD No. ' + entity.newtdno );
                entity.putAll( svc.createConsolidatedLandFaasAsync(entity))
            }
            showinfo(' .... Done\n\n');
                
            showinfo('Processing Affected RPUs\n');
            svc.getAffectedRpus(entity.objid).each{ arpu ->
                if ( ! arpu.newfaasid) {
                    showinfo('Creating new Affected RPU FAAS for TD No. ' + arpu.newtdno );
                    svc.createAffectedRpuFaasRecordAsync(entity, arpu);
                    showinfo(' .... Done\n');
                }
            }
            
            showinfo('Consolidation Approval')
            svc.approveConsolidationAsync(entity);
            entity.state = 'APPROVED';
            showinfo(' .... Done\n');
            
            oncomplete()
        }
        catch(e){
            onerror('\n\n' + e.message )
        }
    }
    
    void doSleep(){
        try{
            Thread.sleep(2000);
        }
        catch(e){
            ;
        }
    }
}