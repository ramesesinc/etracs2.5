package com.rameses.gov.etracs.rpt.common;

import com.rameses.rcp.annotations.* 
import com.rameses.rcp.common.* 
import com.rameses.osiris2.client.*
import com.rameses.osiris2.common.*
import com.rameses.util.*;
import com.rameses.common.*;
import com.rameses.gov.etracs.rpt.common.RPTUtil;
import com.rameses.util.MapBeanUtils;

abstract class RPTWorkflowController extends PageFlowController
{
    
    @Binding
    def binding;
    
    
    @Service('RPTTaskService')
    def taskSvc;
            
    @Invoker
    def invoker 
    
    @FormId
    def formId;
    
    @FormTitle
    def formTitle;
           
    
    String formTitlePrefix = 'D: ';
    
    def entity;
    def sections;
    def selectedSection;
    
    def messages = [];
        
    
    
    abstract def getService();
    abstract def getSections();
    abstract def openEntity();
    abstract void deleteEntity();
    abstract void approveEntity();
    abstract void disapproveEntity();
    
    
    
    void afterInit(){}
    
    final def init(){
        entity = [objid:RPTUtil.generateId('D')]
        afterInit();
        return super.signal('init')
    }
    
    
    void afterOpen(){}
    
    final def open(){
        initOpen();
        return super.signal('open');
    }
    
    final void initOpen(){
        entity = openEntity();
        loadSections();
        formId = entity.txnno;
        formTitle = formTitlePrefix + entity.txnno;
        afterOpen();
    }
    
    void delete(){
        deleteEntity();
    }
    
        
    final void loadSections(){
        sections = getSections();
        if (sections){
            selectedSection = sections[0];
        }
    }
    
    /*-----------------------------------------------------
     * 
     * WORKFLOW ACTIONS
     *
     *----------------------------------------------------*/
    boolean pass = false;
    
    final void doDisapprove( handler){
        pass = false;
        checkMessages();
        Modal.show('rpttask:disapprove', [handler:handler, title:'Disapproval Information']);
        if (!pass) throw new BreakException();
        initOpen();
    }   
    
    
    void submitForTaxmapping(){
        checkMessages();
        entity = service.submitForTaxmapping(entity);
        loadSections();
    }
    
    void disapproveForTaxmapping(){
        def handler = { msg ->
            entity._disapprovemsg = msg 
            entity = service.disapproveForTaxmapping(entity);
            pass = true;
        };
        doDisapprove(handler);
    }    
    
    
    void submitForTaxmappingApproval(){
        checkMessages();
        entity = service.submitForTaxmappingApproval(entity);
        loadSections();
    }
    
    
    void disapproveForTaxmappingApproval(){
        def handler = { msg ->
            entity._disapprovemsg = msg 
            entity = service.disapproveForTaxmappingApproval(entity);
            pass = true;
        };
        doDisapprove(handler);
    }    
    
    
    void submitForExamination(){
        checkMessages();
        entity = service.submitForExamination(entity);
        loadSections();
    }

    
    void disapproveForExamination(){
        def handler = { msg ->
            entity._disapprovemsg = msg 
            entity = service.disapproveForExamination(entity);
            pass = true;
        };
        doDisapprove(handler);
    }
    
    
    void submitForAppraisal(){
        checkMessages();
        entity = service.submitForAppraisal(entity);
        loadSections();
    }
    
    
    void disapproveForAppraisal(){
        def handler = { msg ->
            entity._disapprovemsg = msg 
            entity = service.disapproveForAppraisal(entity);
            pass = true;
        };
        doDisapprove(handler);
    }
    

    void submitForAppraisalApproval(){
        checkMessages();
        entity = service.submitForAppraisalApproval( entity );
        loadSections();
    }
    
        
    void disapproveForAppraisalApproval(){
        def handler = { msg ->
            entity._disapprovemsg = msg 
            entity = service.disapproveForAppraisalApproval(entity);
            pass = true;
        };
        doDisapprove(handler);
    }
    
    void submitForAssistantApproval(){
        checkMessages();
        entity = service.submitForAssistantApproval( entity );
        loadSections();
    }
    
    
    void disapproveForAssistantApproval(){
        def handler = { msg ->
            entity._disapprovemsg = msg 
            entity = service.disapproveForAssistantApproval(entity);
            pass = true;
        };
        doDisapprove(handler);
    }    
    
    
    void submitForApproval(){
        checkMessages();
        entity =  service.submitForApproval(entity);
        loadSections();
    }
    
    
    void approve(){
        checkMessages();
        entity = approveEntity();
        loadSections();
    }
    
    void disapprove(){
        checkMessages();
        entity = disapproveEntity();
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
    
    
    
    void assignTaskToMe(){
        taskSvc.assignTaskToMe(entity.objid)
        initOpen();
    }
}
