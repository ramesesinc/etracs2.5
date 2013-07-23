package com.rameses.gov.etracs.rpt.cancelledfaas.ui;
        
import com.rameses.rcp.annotations.* 
import com.rameses.rcp.common.* 
import com.rameses.osiris2.client.*
import com.rameses.osiris2.common.*
import com.rameses.gov.etracs.rpt.common.RPTUtil;
import com.rameses.util.MapBeanUtils;

public class CancelledFAASController extends PageFlowController
{

    @Binding
    def binding;
    
    @Service('CancelledFAASService')
    def svc 
            
    @Invoker
    def invoker 
    
    def MODE_CREATE = 'create';
    def MODE_EDIT   = 'edit';
    def MODE_READ   = 'read';
    
    def STATE_DRAFT       = 'DRAFT';
    def STATE_FORAPPROVAL = 'FORAPPROVAL';
    def STATE_APPROVED    = 'APPPROVED';
    
    
    def mode;
    def entity;
    
    
    def init(){
        createEntity()
        mode = MODE_CREATE
        return super.signal('init')
    }
    
    def createEntity(){
        entity = [
            objid : RPTUtil.generateId('CF'),
            state : 'DRAFT',
        ]
    }
    
    
    def open(){
        entity = svc.openCancelledFaas(entity.objid)
        entity.reason = cancelReasons.find{it.objid == entity.reason.objid}
        mode = MODE_READ;
        return super.signal('open');
    }
    
    def getLookupFaas() {
        return InvokerUtil.lookupOpener('faas:lookup', [:])
    }
    
    
    List getCancelReasons(){
        return svc.getCancelReasons()
    }
    
    boolean getAllowEdit(){
        if ( entity.state == STATE_APPROVED  )
                return false;
        if (mode == MODE_READ )
                return false;
        return true 
    }
    
    

    /*-----------------------------------------------------
     * 
     * DOCUMENT SUPPORT 
     *
     *----------------------------------------------------*/
    def oldEntity 
            
    void edit(){
        oldEntity = MapBeanUtils.copy(entity)
        mode = MODE_EDIT;
    }
    
    
    void cancelEdit(){
        if (oldEntity){
            entity.putAll(oldEntity)
        }
        oldEntity = null
        mode = MODE_READ;
    }
    
    void save(){
        if (mode == MODE_CREATE)
            entity = svc.createCancelledFaas(entity)
        else 
            entity = svc.updateCancelledFaas(entity)
        mode = MODE_READ;
    }    
   
    
    void delete(){
        svc.deleteCancelledFaas(entity)
    }
    
    

    /*-----------------------------------------------------
     * 
     * WORKFLOW ACTIONS
     *
     *----------------------------------------------------*/
    void submitForApproval(){
        entity = svc.submitForApproval(entity);
    }
    
    
    void disapproveFaasCancellation(){
        entity = svc.disapproveFaasCancellation(entity)
    }
    
    
    void approveFaasCancellation() {
        entity = svc.approveFaasCancellation(entity);
    }

    
}