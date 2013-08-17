package com.rameses.gov.etracs.rpt.annotation.ui;
        
import com.rameses.rcp.annotations.* 
import com.rameses.rcp.common.* 
import com.rameses.osiris2.client.*
import com.rameses.osiris2.common.*
import com.rameses.gov.etracs.rpt.common.RPTUtil;
import com.rameses.util.MapBeanUtils;

public class FAASAnnotationController extends PageFlowController
{

    @Binding
    def binding;
    
    @Service('FAASAnnotationService')
    def svc 
            
    @Invoker
    def invoker 
    
    def MODE_CREATE = 'create';
    def MODE_EDIT   = 'edit';
    def MODE_READ   = 'read';
    
    def STATE_INTERIM     = 'INTERIM';
    def STATE_FORAPPROVAL = 'FORAPPROVAL';
    def STATE_APPROVED    = 'APPPROVED';
    def STATE_CANCELLED   = 'CANCELLED';
    
    
    def faas;
    def mode;
    def entity;
    
    
    def init(){
        mode = MODE_CREATE
        return super.signal('init')
    }
    
    
    def open(){
        entity = svc.openAnnotation(entity.objid)
        mode = MODE_READ;
        return super.signal('open');
    }
    
    def getLookupFaas() {
        return InvokerUtil.lookupOpener('faas:lookup', [:])
    }
    
    
    List getAnnotationTypes(){
        return svc.getAnnotationTypes()
    }
    
    boolean getAllowEdit(){
        if ( entity.state == STATE_APPROVED ||
             entity.state == STATE_CANCELLED )
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
            entity = svc.createAnnotation(entity)
        else 
            entity = svc.updateAnnotation(entity)
        mode = MODE_READ;
    }    
   
    
    void delete(){
        svc.deleteAnnotation(entity)
    }
    
    

    /*-----------------------------------------------------
     * 
     * WORKFLOW ACTIONS
     *
     *----------------------------------------------------*/
    void initAnnotation(){
        entity = svc.initAnnotation(faas);
    }
    
    
    void submitAnnotationForApproval(){
        entity = svc.submitAnnotationForApproval(entity);
    }
    
    
    void disapproveAnnotation(){
        entity = svc.disapproveAnnotation(entity)
    }
    
    
    void approveAnnotation() {
        entity = svc.approveAnnotation(entity);
    }

    
}