package com.rameses.gov.etracs.rpt.faasupdate.ui;
        
import com.rameses.rcp.annotations.* 
import com.rameses.rcp.common.* 
import com.rameses.osiris2.client.*
import com.rameses.osiris2.common.*
import com.rameses.gov.etracs.rpt.common.RPTUtil;
import com.rameses.util.MapBeanUtils;

public class FAASUpdateController extends PageFlowController
{

    @Binding
    def binding;
    
    @Service('FAASUpdateService')
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
            objid : RPTUtil.generateId('UF'),
            state : 'DRAFT',
            faas  :  [:],
            rp    : [:],
        ]
    }
    
    
    def open(){
        entity = svc.openFaasUpdate(entity.objid)
        mode = MODE_READ;
        return super.signal('open');
    }
    
    def getLookupFaas() {
        return InvokerUtil.lookupOpener('faas:lookup', [
            onselect: {faas -> 
                entity.tdno = faas.tdno 
                entity.faasid = faas.objid
                entity.putAll(svc.initPrevInfo(entity))
            },
            onempty:{
                entity.tdno = null;
                entity.faasid =null;
                entity.putAll(svc.initPrevInfo(entity))
            }
        ])
    }
    
        
    
    def getLookupTaxpayer(){
        return InvokerUtil.lookupOpener('rpttaxpayer:lookup',[
            onselect : { 
                entity.faas.putAll( it );
                entity.faas.ownername      = it.taxpayername;
                entity.faas.owneraddress   = it.taxpayeraddress;
            },
            onempty  : { 
                entity.faas.taxpayerid        = null;
                entity.faas.taxpayername      = null;
                entity.faas.taxpayeraddress   = null;
                entity.faas.ownername         = null;
                entity.faas.owneraddress      = null;
            } 
        ])
    }
    
    
     List getTitleTypes(){ 
         return LOV.RPT_TITLE_TYPES*.key
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
            entity = svc.createFaasUpdate(entity)
        else 
            entity = svc.updateFaasUpdate(entity)
        mode = MODE_READ;
    }    
   
    
    void delete(){
        svc.deleteFaasUpdate(entity)
    }
    
    

    /*-----------------------------------------------------
     * 
     * WORKFLOW ACTIONS
     *
     *----------------------------------------------------*/
    void submitForApproval(){
        entity = svc.submitForApproval(entity);
    }
    
    
    void disapproveFaasUpdate(){
        entity = svc.disapproveFaasUpdate(entity)
    }
    
    
    void approveFaasUpdate() {
        entity = svc.approveFaasUpdate(entity);
    }

    
}