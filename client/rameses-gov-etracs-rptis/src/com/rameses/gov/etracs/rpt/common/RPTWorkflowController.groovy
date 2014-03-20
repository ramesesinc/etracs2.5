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
    
    
    @Service('RPTWorkflowService')
    def workflowSvc;
            
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
    
    abstract String getDocName();
    abstract String getFileType();
    abstract String getWorkflowCode();
    abstract String getReferenceNo();
    
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
    
    final def openResent(){
        taskSvc.closeUserNotification(entity.objid);
        return open();
    }
    
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
        sections = getSections().findAll{
            def vw = it.properties.visibleWhen;
            return  ((!vw)  ||  ExpressionResolver.getInstance().evalBoolean( vw, [entity:entity] ));
        }
        if (sections){
            sections.sort{a,b -> a.properties.index <=> b.properties.index }
            selectedSection = sections[0];
        }
    }
    
    /*-----------------------------------------------------
     * 
     * WORKFLOW ACTIONS
     *
     *----------------------------------------------------*/
    
    def createTask(wf){
        return [
            objid	: entity.objid,
            refno	: getReferenceNo(),
            docname 	: getDocName(),
            filetype	: getFileType(),
            action 	: wf.tostate,
            msg		: wf.message,
            signatory 	: wf.signatory,
            workflowid  : wf.workflowid,
        ]
    }
    
    void submit(){
        def params = [
            docname   : getDocName(),
            appliedto : getWorkflowCode(),
            fromstate : entity.taskaction,
        ];
        
        def wf = workflowSvc.findNext(params);
        def task = createTask(wf)
        taskSvc.createTaskAndNotifyGroup(task)
        entity.taskaction = task.action;
        initOpen();
    }
    
    
    
    boolean pass = false;
    
    final void doDisapprove( handler){
        pass = false;
        checkMessages();
        Modal.show('rpttask:disapprove', [entity:entity, handler:handler, taskSvc:taskSvc, title:'Disapproval Information']);
        if (!pass) throw new BreakException();
        initOpen();
    }   
    
    
    void disapprove(){
        checkMessages();
        def handler = { info ->
            //entity._disapprovemsg = info.msg;
            entity._disapproveinfo = info;
            taskSvc.disapproveTaskByObjid(entity.objid, info)
            pass = true;
        };
        doDisapprove(handler);
    }
    
    
    
    void doApproveEntity(){
        checkMessages();
        approveEntity();
        initOpen();
    }
    
    void doDisapproveEntity(){
        checkMessages();
        disapproveEntity();
        initOpen();
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
        taskSvc.assignTaskToMe([objid:entity.objid, action:entity.taskaction])
        initOpen();
    }
}
