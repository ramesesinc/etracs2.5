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
    def invoker 
    
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
    def initinfo;
    def faas;
    def barangays;
    def mode;
    def annotations;
    
    
    def appraiser = [:];
    def recommender = [:];
    def taxmapper = [:];
    def approver = [:];
    
    @FormId
    public String getFormId(){
        return 'FAAS : ' + faas?.tdno
    }
    
    
    /*=================================
     *
     * ABSTRACT 
     *
     ==================================*/
    abstract def getService();
    

    /*=================================
     *
     * INIT TRANSACTION SUPPORT 
     *
     ==================================*/
    String getTxntitle(){
        return invoker.caption + ' Transaction'
    }
    
    
    def getLookupFaas() {
        return InvokerUtil.lookupOpener('faas:lookup', [
            onselect : {
                initinfo.faas = it;
            },
                
            onempty  : {
                initinfo.faas = null;
            }
        ])
    }
            
    def initTxn(){
        initinfo = [:]
        return super.signal('txninit')
    }
    
    def initTxnType(){
        def prop = invoker.properties;
        
        RPTUtil.required('Invoker txntypeid attribute', prop.txntypeid);
        RPTUtil.required('Invoker txntype attribute', prop.txntype);
        
        def newledger = RPTUtil.toBoolean( prop.newledger, false)
        def newrpu = RPTUtil.toBoolean( prop.newrpu, true)
        def newrp = RPTUtil.toBoolean( prop.newrealproperty, false)
        
        return [
            objid           : prop.txntypeid, 
            name            : prop.txntype, 
            newledger       : newledger, 
            newrpu          : newrpu,
            newrealproperty : newrp,
        ]
    }
        
    void initFaasTransaction() {
        RPTUtil.required('Property to process', initinfo.faas);
        initinfo.txntype = initTxnType()
        faas = service.initFaasTransaction( initinfo )
        initSignatoryVars();
        mode = MODE_CREATE;
    }
    
    
    void initOpen(){
    }
    
    def open(){
        faas = service.openFaas( entity.objid );
        entity = faas;
        annotations = svc.getAnnotations(faas.objid)
        initOpen();
        initSignatoryVars()
        mode = MODE_READ;
        return super.signal('open');
    }
    
    void initSignatoryVars(){
        appraiser = faas.signatories.find{it.type == 'appraiser'};
        recommender = faas.signatories.find{it.type == 'recommender'};
        taxmapper = faas.signatories.find{it.type == 'taxmapper'};
        approver = faas.signatories.find{it.type == 'approver'};
        appraiser = (appraiser ? appraiser : [:])
        recommender = (recommender ? recommender : [:])
        taxmapper = (taxmapper ? taxmapper : [:])
        approver = (approver ? approver : [:])
        
    }

    def getShowAnnotation(){
        return annotations.size() > 0
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
        faas = service.openFaas(faas.objid);
        mode = MODE_READ;
    }
    
    void save(){
        saveSignatoryInfo()
        if ( RPTUtil.isTrue(faas.datacapture) )
            saveCapture()
        else
            saveOnline()
    }    
   
    
    void saveCapture(){
        saveSignatoryInfo()
        if (mode == MODE_CREATE)
            faas = service.createFaas(faas);
        else 
            faas = service.updateFaas(faas);
        mode = MODE_READ;
    }
    
    
    void saveOnline(){
        saveSignatoryInfo()
        if (mode == MODE_CREATE)
            faas = service.createFaas(faas);
        else 
            faas = service.updateFaas(faas);
        mode = MODE_READ;
    }
    
    void saveSignatoryInfo(){
        faas.signatories.find{it.type == 'appraiser'}?.putAll(appraiser);
        faas.signatories.find{it.type == 'recommender'}?.putAll(recommender);
        faas.signatories.find{it.type == 'taxmapper'}?.putAll(taxmapper);
        faas.signatories.find{it.type == 'approver'}?.putAll(approver);
    }
    
    
    void delete(){
        service.deleteFaas(faas);
    }

    def viewAnnotations(){
        return InvokerUtil.lookupOpener('faasannotionlisting:open', [annotations:annotations])
    }
    

    /*-----------------------------------------------------
     * 
     * WORKFLOW ACTIONS
     *
     *----------------------------------------------------*/
    
    void submitFaasForApproval(){
        faas = service.submitFaasForApproval( faas );
    }
    
    
    void approveFaas() {
        faas = service.approveFaas( faas );
    }


    void disapproveFaas() {
        faas = service.disapproveFaas( faas );
    }


    void submitFaasToProvince() {
        faas = service.submitFaasToProvince( faas );
    }


    void approveFaasSubmissionToProvince() {
        faas = service.approveFaasSubmissionToProvince( faas );
    }
    
    
    void disapproveFaasSubmissionToProvince() {
        faas = service.disapproveFaasSubmissionToProvince( faas );
    }


    
    void approveFaasByProvince() {
        faas = service.approveFaasByProvince(faas);
    }


    void disapproveFaasByProvince() {
        faas = service.disapproveFaasByProvince( faas );
    }
    
    
    
    /*===============================================
     * Signatory Lookup Support
     *===============================================*/
    def selectedSignatory 
            
    def signatoryListHandler = [
        fetchList : { return faas.signatories }
    ] as EditorListModel
            
    def getLookupAppraiser(){
        return InvokerUtil.lookupOpener('txnsignatory:lookup',[
            doctype : 'RPTAPPRAISER',
            onselect : { updateSignatoryInfo(appraiser, it) },
            onempty  : { clearSignatoryInfo(appraiser) },
        ])
        
    }
    
    def getLookupRecommender(){
        return InvokerUtil.lookupOpener('txnsignatory:lookup',[
            doctype : 'RPTRECOMMENDER',
            onselect : { updateSignatoryInfo(recommender, it) },
            onempty  : { clearSignatoryInfo(recommender) },
        ])
        
    }
    
    def getLookupTaxmapper(){
        return InvokerUtil.lookupOpener('txnsignatory:lookup',[
            doctype : 'RPTTAXMAPPER',
            onselect : { updateSignatoryInfo(taxmapper, it) },
            onempty  : { clearSignatoryInfo(taxmapper) },
        ])
        
    }
    
    def getLookupApprover(){
        return InvokerUtil.lookupOpener('txnsignatory:lookup',[
            doctype : 'RPTAPPROVER',
            onselect : { updateSignatoryInfo(approver, it) },
            onempty  : { clearSignatoryInfo(approver) },
        ])
        
    }
    
    void updateSignatoryInfo(signatory, data){
        signatory.personnelid = data.objid;
        signatory.name = data.name;
        signatory.title = data.title;
    }
    
    void clearSignatoryInfo(signatory){
        signatory.personnelid = null;
        signatory.name = null;
        signatory.title = null;
    }
            
    def getLookupSignatory(){
         def doctype = 'RPT' + selectedSignatory.type.toUpperCase();
         return InvokerUtil.lookupOpener('txnsignatory:lookup',[
            doctype : doctype,
                 
            onselect : { 
                selectedSignatory.personnelid = it.objid;
                selectedSignatory.name = it.name;
                selectedSignatory.title = it.title;
            },
            onempty  : { 
                selectedSignatory.name = null;
                selectedSignatory.dtsigned = null;
                selectedSignatory.title = null;
            },
        ])
    }
    
    def getLookupTaxpayer(){
        return InvokerUtil.lookupOpener('entity:lookup',[
            onselect : { 
                faas.taxpayer = it;
                faas.owner    = it;
            },
            onempty  : { 
                faas.taxpayer = null;
                faas.owner    = null;
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
        if( faas.datacapture == 1 || faas.datacapture == true ) return true 
        if( faas.autonumber == false || faas.autonumber == 0) return true
        return false
    }
        
    boolean getAllowEdit() {
        if ( mode == MODE_READ) return false;
        if ( faas.state == 'FORREVIEW' ) return false;
        if ( faas.state == 'FORPROVAPPROVAL' ) return false;
        if ( faas.state == 'CURRENT' ) return false;
        if ( faas.state == 'CANCELLED' ) return false;
        return true;
    }
    
    boolean getAllowEditPinInfo() {
        if ( mode == MODE_READ) return false;
        if( faas.rpu.rputype != 'land' ) return false;
        if( RPTUtil.isTrue(faas.datacapture)) return true;
        return getAllowEditPin()
    }
    
    boolean getAllowEditPrevInfo() {
        if ( mode == MODE_READ) return false;
        if( faas.docstate == 'FORPROVAPPROVAL' ) return false
        if( faas.docstate == 'CURRENT' ) return false
        if( faas.docstate == 'CANCELLED' ) return false
        if( faas.datacapture == false || faas.datacapture == 0) return false 
        return true 
    }
    
    
    
    /*===============================================
     *
     * Assessment Support
     *
     *===============================================*/
     def onupdateRpu = {
        binding.refresh('faas.rpu.rp.*|faas.rpu.*')
     }
     
     
     def viewAssessment(){
         def allowEdit = getAllowEdit();
         if (allowEdit && !faas.txntype.newrpu) {
             allowEdit = false;
         }
         if (mode != MODE_CREATE){
             // faas.rpu = service.openRpu(faas.rpu.objid);
         }
         faas.rpu.dtappraised = appraiser?.dtsigned
         def opener = faas.rpu.rputype + 'rpu:open'
         return InvokerUtil.lookupOpener(opener, [
                    rpu         : faas.rpu, 
                    datacapture : faas.datacapture, 
                    lguid       : faas.lguid,
                    onupdate    : onupdateRpu,
                    allowEdit   : allowEdit,
                 ])
     }
    
    
    /*===============================================
     *
     * Support Methods
     *
     *===============================================*/
     
     
     List getPinTypes(){
         return ['new', 'old'];
     }
     
     List getTxnTypes(){
         return service.getTxnTypes();
     }
     
     List getRpuTypes(){
        return svc.getRpuTypes();
     }
    
     List getLgus(){
        return svc.getLgus();
     }

     
     List getBarangays(){
         if (!barangays)
             barangays = service.getBarangays([parentid:initinfo.lgu?.objid]);
         return  barangays;
     }
     
     
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
     
}