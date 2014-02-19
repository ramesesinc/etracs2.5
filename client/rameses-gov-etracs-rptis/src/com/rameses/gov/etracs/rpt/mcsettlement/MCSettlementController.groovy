package com.rameses.gov.etracs.rpt.mcsettlement;
        
import com.rameses.rcp.annotations.* 
import com.rameses.rcp.common.* 
import com.rameses.osiris2.client.*
import com.rameses.osiris2.common.*
import com.rameses.gov.etracs.rpt.common.RPTUtil;
import com.rameses.util.MapBeanUtils;

public class MCSettlementController extends PageFlowController
{

    @Binding
    def binding;
    
            
    @Service('RPTTaskService')
    def taskSvc;
    
    @Service('MCSettlementService')
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
        formTitle = 'Multiple Claim Settlement (New)'
        entity =  [objid:RPTUtil.generateId('MS')]
        return super.signal('init')
    }
    
    
    def open(){
        initOpen()
        return super.signal('open');
    }
    
    
    void initOpen(){
        entity = svc.open(entity.objid);
        loadSections();
        formId = entity.txnno;
        formTitle = 'Multiple Claim Settlement: ' + entity.txnno;
    }
      
    void loadSections(){
        sections = InvokerUtil.lookupOpeners('mcsettlement:info', [entity:entity, svc:svc])
        if (sections){
            selectedSection = sections[0];
        }
    }    
    
    
    def getLookupFaas(){
        return InvokerUtil.lookupOpener('faas:lookup',[
            onselect : {
                if (it.rputype != 'land')
                    throw new Exception('Only Land RPU is allowed.')
                if (it.state != 'CURRENT')
                    throw new Exception('Only Current FAAS is allowed.')
                
                entity.prevfaas = it;
            },
                
            onempty : {
                entity.prevfaas = null;
            }
        ])
    }

    /*-----------------------------------------------------
     * 
     * DOCUMENT SUPPORT 
     *
     *----------------------------------------------------*/   
    
    void delete(){
        svc.deleteEntity(entity);
    }
    


    /*-----------------------------------------------------
     * 
     * WORKFLOW ACTIONS
     *
     *----------------------------------------------------*/
    void create(){
        entity =  svc.create(entity);
        initOpen();
    }
    
    
    void submitForTaxmapping(){
        checkMessages();
        entity = svc.submitForTaxmapping(entity);
        loadSections();
    }
    
    void submitForAppraisal(){
        checkMessages();
        entity = svc.submitForAppraisal(entity);
        loadSections();
    }    
    
    void submitForApproval(){
        checkMessages();
        entity = svc.submitForApproval(entity);
        loadSections();
    }
    
    
    void approve() {
        checkMessages();
        entity = svc.approve(entity);
        loadSections();
    }
    

    void disapprove() {
        checkMessages();
        entity = svc.disapprove(entity);
        loadSections();
    }

    

    void submitToProvince() {
        checkMessages();
        entity = svc.submitToProvince(entity);
        loadSections();
    }

   
    void disapproveSubmitToProvice() {
        checkMessages();
        entity = svc.disapproveSubmitToProvice(entity);
        loadSections();
    }


    void approveSubmittedToProvince(){
        checkMessages();
        entity = svc.approveSubmittedToProvince(entity)
        loadSections();
    }
    
    
    void disapproveSubmittedToProvince(){
        checkMessages();
        entity = svc.disapproveSubmittedToProvince(entity)
        loadSections();
    }
    
    
    void approveByProvince() {
        checkMessages();
        entity = svc.approveByProvince(entity);
        loadSections();
    }


    void disapproveByProvince() {
        checkMessages();
        entity = svc.disapproveByProvince(entity);
        loadSections();
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
    
    

    
    void assignTaxmapper(){
        doAssignTask('fortaxmapping')
    }
    
    void assignAppraiser(){
        doAssignTask('forappraisal')
    }
    
    void assignApprover(){
        doAssignTask('forapproval')
    }
    
    void doAssignTask(newaction){
        def task = taskSvc.findCurrentTask(entity.objid);
        task.action = newaction;
        task.msg = '';
        taskSvc.createNextUserTask(task);
        initOpen();
    }    
    
        
}
