package com.rameses.gov.etracs.rpt.subdivision.ui;
        
import com.rameses.rcp.annotations.* 
import com.rameses.rcp.common.* 
import com.rameses.osiris2.client.*
import com.rameses.osiris2.common.*
import com.rameses.gov.etracs.rpt.common.RPTUtil;
import com.rameses.util.MapBeanUtils;

public class SubdivisionController extends PageFlowController
{

    @Binding
    def binding;
    
    @Service('SubdivisionService')
    def svc 
            
    @Invoker
    def invoker 
    
    
    @FormId
    def formId;
    
    @FormTitle
    def formTitle;
           
    def entity;
    
    def sections;
    def selectedSection;
    
    def messages = [];
        
    def init(){
        formTitle = 'Subdivision (New)'
        entity =  [objid:RPTUtil.generateId('SD')]
        return super.signal('init')
    }
    
    
    def open(){
        initOpen()
        return super.signal('open');
    }
    
    void initOpen(){
        entity = svc.openSubdivision(entity.objid);
        loadSections();
        formId = entity.txnno;
        formTitle = 'SD: ' + entity.txnno;
    }
    
    
    void loadSections(){
        sections = InvokerUtil.lookupOpeners('subdivision:info', [entity:entity, svc:svc])
        if (sections){
            selectedSection = sections[0];
        }
    }
    
    
    void delete(){
        svc.deleteSubdivision(entity);
    }
    
    /*-----------------------------------------------------
     * 
     * WORKFLOW ACTIONS
     *
     *----------------------------------------------------*/
    void createSubdivision(){
        entity =   svc.createSubdivision(entity)
        initOpen();
    }
    
    
    void submitForApproval(){
        entity =  svc.submitForApproval(entity);
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
    
    void approveSubdivision() {
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

    
    
    void disapproveSubdivision() {
        checkMessages();
        entity =  svc.disapproveSubdivision(entity);
    }

    
    void submitForTaxmapping(){
        checkMessages();
        entity = svc.submitForTaxmapping(entity);
    }
    
    void submitForAppraisal(){
        checkMessages();
        entity = svc.submitForAppraisal(entity);
    }

    void submitToProvince() {
        checkMessages();
        entity =  svc.submitToProvince(entity);
    }

   
    void disapproveSubmitToProvice() {
        checkMessages();
        entity =  svc.disapproveSubmitToProvice(entity);
    }


    void approveSubmittedToProvince(){
        checkMessages();
        entity =  svc.approveSubmittedToProvince(entity)
    }
    
    
    void disapproveSubmittedToProvince(){
        checkMessages();
        entity =  svc.disapproveSubmittedToProvince(entity)
    }
    
    
    void approveByProvince() {
        checkMessages();
        entity =  svc.approveByProvince(entity);
    }


    void disapproveByProvince() {
        checkMessages();
        entity =  svc.disapproveByProvince(entity);
    }
    
    
    
    
    /*===============================================
     * Lookup Support
     *===============================================*/
    def getLookupFaas() {
        return InvokerUtil.lookupOpener('faas:lookup', [:])
    }
    
    
        
    
    
    void addMessage(msg){
        messages << msg;
    }
    
    
    void clearMessages(type){
        messages.removeAll( messages.findAll{it.type == type} )
    }
    

    void checkMessages(){
        if (messages)
            throw new Exception(messages[0].msg);
    }   
    
    
    
}



public class ApproveSubdivisionTask implements Runnable{
    def svc;
    def entity;
    def oncomplete;
    def onerror;
    def showinfo;

    public void run(){
        try{
            showinfo('Initializing');
            svc.initApproveSubdivisionAsync(entity);
            showinfo(' .... Done\n');
        
            showinfo('Assigning new TD No. to Subdivided Lands and Affected RPUs');
            svc.assignNewTdNos(entity);
            showinfo(' .... Done\n');
            
            
            showinfo('Processing Subdivided Lands\n');
            svc.getSubdividedLands(entity.objid).each{ land ->
                if ( ! land.newfaasid) {
                    showinfo('Creating new Land FAAS for TD No. ' + land.newtdno );
                    svc.createSubdividedLandFaasRecord(entity, land);
                    showinfo(' .... Done\n');
                }
            }
            
            showinfo('Processing Affected RPUs\n');
            svc.getAffectedRpus(entity.objid).each{ arpu ->
                if ( ! arpu.newfaasid) {
                    showinfo('Creating new Affected RPU FAAS for TD No. ' + arpu.newtdno );
                    svc.createAffectedRpuFaasRecord(entity, arpu);
                    showinfo(' .... Done\n');
                }
            }
            
            showinfo('Subdivision Approval')
            svc.approveSubdivisionAsync(entity);
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