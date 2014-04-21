package com.rameses.gov.etracs.rpt.faas.ui;
        
import com.rameses.rcp.annotations.* 
import com.rameses.rcp.common.* 
import com.rameses.osiris2.client.*
import com.rameses.osiris2.common.*
import com.rameses.gov.etracs.rpt.common.RPTUtil;

public abstract class AbstractFaasController extends PageFlowController
{

    @Binding
    def binding;
    
    @Invoker
    def invoker;
    
    @Service('FAASService')
    def service;
    
    def MODE_CREATE = 'create';
    def MODE_EDIT   = 'edit';
    def MODE_READ   = 'read';
    
    def STATE_INTERIM           = 'INTERIM';
    def STATE_FORAPPROVAL       = 'FORAPPROVAL';
    def STATE_FORPROVSUBMISSION = 'FORPROVSUBMISSION';
    def STATE_FORPROVAPPROVAL   = 'FORPROVAPPROVAL';
    def STATE_CURRENT           = 'CURRENT';
    def STATE_CANCELLED         = 'CANCELLED';
    
    def entityName = 'faas'
            
    def entity;
    def rp;
    def rpu;
    def mode;
    
        
    @FormId
    public String getFormId(){
        return 'FAAS : ' + entity?.tdno
    }
    

    /*=================================
     *
     * INIT TRANSACTION SUPPORT 
     *
     ==================================*/
    String getTxntitle(){
        return invoker.caption + ' Transaction'
    }
    
    
    void beforeInit(){}
    
    
    final def init(){
        beforeInit();
        rp = entity.rp;
        rpu = entity.rpu;
        mode = MODE_CREATE;
        return super.signal('new');
    }
    

    void afterOpen(){}
    
    
    final def open(){
        entity.rpu = null;
        entity.rp = null;
        entity = service.openFaas( entity );
        rp = entity.rp;
        rpu = entity.rpu;
        afterOpen();
        mode = MODE_READ;
        return super.signal('open');
    }
    
    
    /*-----------------------------------------------------
     * 
     * DOCUMENT SUPPORT 
     *
     *----------------------------------------------------*/
    void edit(){
        mode = MODE_EDIT;
    }
    
    
    void cancelEdit(){
        entity = service.openFaas(entity);
        rp = entity.rp;
        rpu = entity.rpu;
        mode = MODE_READ;
    }
    
    
    void save(){
        if (rp.isnew) throw new Exception('PIN requires verification.')
        if (rpu.isnew) throw new Exception('RPU requires verification.')
        if (mode == MODE_CREATE)
            entity = service.createFaas(entity);
        else 
            entity = service.updateFaas(entity);
        mode = MODE_READ;
    }
    

    
    void delete(){
        service.deleteFaas(entity);
    }

    

    /*-----------------------------------------------------
     * 
     * WORKFLOW ACTIONS
     *
     *----------------------------------------------------*/
    
    void submitFaasForApproval(){
        entity = service.submitForApproval( entity );
    }
    
    
    void approveFaas() {
        entity = service.approveFaas( entity );
    }


    void disapproveFaas() {
        entity = service.disapproveFaas( entity );
    }


    void submitFaasToProvince() {
        entity = service.submitFaasToProvince( entity );
    }


    void approveFaasSubmissionToProvince() {
        entity = service.approveFaasSubmissionToProvince( entity );
    }
    
    
    void disapproveFaasSubmissionToProvince() {
        entity = service.disapproveFaasSubmissionToProvince( entity );
    }

    
    void approveFaasByProvince() {
        entity = service.approveFaasByProvince(entity);
    }


    void disapproveFaasByProvince() {
        entity = service.disapproveFaasByProvince( entity );
    }
    
    
    
    /*===============================================
     * Signatory Lookup Support
     *===============================================*/
            
    def getLookupAppraiser(){
        return InvokerUtil.lookupOpener('txnsignatory:lookup',[
            doctype : 'RPTAPPRAISER',
            onselect : { entity.appraiser.putAll(it)},
            onempty  : {clearSignatory(entity.appraiser)},
        ])
        
    }
    
    def getLookupRecommender(){
        return InvokerUtil.lookupOpener('txnsignatory:lookup',[
            doctype : 'RPTRECOMMENDER',
            onselect : { entity.recommender.putAll(it) },
            onempty  : { clearSignatory(entity.recommender)},
        ])
        
    }
    
    def getLookupTaxmapper(){
        return InvokerUtil.lookupOpener('txnsignatory:lookup',[
            doctype : 'RPTTAXMAPPER',
            onselect : { entity.taxmapper.putAll(it) },
            onempty  : { clearSignatory(entity.taxmapper) },
        ])
        
    }
    
    def getLookupApprover(){
        return InvokerUtil.lookupOpener('txnsignatory:lookup',[
            doctype : 'RPTAPPROVER',
            onselect : { entity.approver.putAll(it)},
            onempty  : { clearSignatory(entity.approver)},
        ])
        
    }
    
    void clearSignatoryInfo(signatory){
        signatory.personnelid = null;
        signatory.name = null;
        signatory.title = null;
    }
            
    def getLookupTaxpayer(){
        return InvokerUtil.lookupOpener('entity:lookup',[
            onselect : { 
                entity.taxpayer = it;
                entity.owner    = it;
            },
            onempty  : { 
                entity.taxpayer = null;
                entity.owner    = null;
            } 
        ])
    }
    
    
    
    /*===============================================
     *
     * EDITABILITY SUPPORT
     *
     *===============================================*/
    public boolean getMultipleClaim(){
        return false;
    }
        
    public boolean getAllowEditOwner() {
        return false;
    }
    
    public boolean getAllowEditPin() {
        return false;
    }
    
    boolean getEnableTdno() {
        if( entity.datacapture == 1 || entity.datacapture == true ) return true 
        if( entity.autonumber == false || entity.autonumber == 0) return true
        return false
    }
        
    boolean getAllowEdit() {
        if ( mode == MODE_READ) return false;
        if ( entity.state == 'FORREVIEW' ) return false;
        if ( entity.state == 'FORPROVAPPROVAL' ) return false;
        if ( entity.state == 'CURRENT' ) return false;
        if ( entity.state == 'CANCELLED' ) return false;
        return true;
    }
    
    boolean getAllowEditPinInfo() {
        if ( mode == MODE_READ) return false;
        if( rpu.rputype != 'land' ) return false;
        if( RPTUtil.isTrue(entity.datacapture)) return true;
        return getAllowEditPin()
    }
    
    boolean getAllowEditPrevInfo() {
        if ( mode == MODE_READ) return false;
        if( entity.state == 'FORPROVAPPROVAL' ) return false
        if( entity.state == 'CURRENT' ) return false
        if( entity.state == 'CANCELLED' ) return false
        if( entity.datacapture == false || entity.datacapture == 0) return false 
        return true 
    }
    
    
    
    
    /*===============================================
     *
     * RealProperty Support
     *
     *===============================================*/
    def onupdateRealProperty = {
        if (! rp ) rp = [:]
        entity.realpropertyid = it.objid;
        rp.putAll(it);
        buildFullPin();
        binding.refresh('rp.*|rpu.fullpin');
    }
    
    
    def viewRealProperty() {
        def allowModify = (rpu == null || rpu.rputype == 'land' ? true : false);
        def action = (mode == MODE_CREATE && (rp == null || rp.isnew == true) ? 'create' : 'open');
        def opener = InvokerUtil.lookupOpener('realproperty:' + action, [
            entity      : rp,
            allowCreate : false,
            autoCreate  : (mode == MODE_CREATE ? allowModify : false),
            allowDelete : false,
            allowEdit   : (mode == MODE_EDIT || mode == MODE_CREATE ? allowModify : false),
            autoEdit    : (mode == MODE_EDIT || mode == MODE_CREATE ? allowModify : false),
            allowEditPinInfo : allowEditPinInfo,
            oncreate : onupdateRealProperty,    
            onupdate : onupdateRealProperty,
        ])
        
        opener.target = 'popup';
        return opener;
    }
    
    void buildFullPin(){
        if (rpu){
            rpu.fullpin = rp.pin;
            if (rpu.rputype != 'land')
                rpu.fullpin += '-' + rpu.suffix;
        }
        
    }
    
    /*===============================================
     *
     * Assessment Support
     *
     *===============================================*/
     def onupdateRpu = {
        if (! rpu) rpu = [:];
        rpu.putAll(it);
        entity.rpuid = it.objid;
        binding.refresh('rpu.*');
     }
     
      def ondeleteRpu = {
         rpu = null;
         binding.refresh('rpu.*');
     }
     
     
     def viewAssessment(){
         if (rp.isnew) throw new Exception('PIN requires verification.')
         def allowEdit = getAllowEdit();
         rpu.dtappraised = entity.appraiser?.dtsigned;
         rpu.realpropertyid = rp?.objid;
         rpu.ry = rp?.ry;
         def opener = rpu.rputype + 'rpu:' + (rpu.isnew ? 'create' : 'open')
         def autoClose = (rpu.isnew || allowEdit ? true : false);
         return InvokerUtil.lookupOpener(opener, [
                    rpu         : rpu, 
                    lguid       : entity.lguid,
                    onupdate    : onupdateRpu,
                    ondelete    : ondeleteRpu,
                    allowEdit   : allowEdit,
                    datacapture : entity.datacapture,
                    autoClose   : autoClose,
                 ])
     }
    
    
    /*===============================================
     *
     * Support Methods
     *
     *===============================================*/
     
     List getTitleTypes(){ 
         return LOV.RPT_TITLE_TYPES*.key
     }
     
     
     List getRestrictions(){
         return LOV.RPT_FAAS_RESTRICTIONS*.key
     }
     
     
     List getQuarters() { 
         return [1,2,3,4];
     }
     
     
     def closeForm(){
         return '_close'
     }
     
     
     
    
    def getShowAnnotation(){
        return entity.annotated
    }
     
     /*
    def viewAnnotations(){
        return InvokerUtil.lookupOpener('faasannotionlisting:open', [annotations:annotations])
    }
      */
     
}