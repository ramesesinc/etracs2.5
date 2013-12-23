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
    
    def MODE_CREATE = 'create';
    def MODE_EDIT   = 'edit';
    def MODE_READ   = 'read';
    
    def STATE_INTERIM           = 'INTERIM';
    def STATE_FORAPPROVAL       = 'FORAPPROVAL';
    def STATE_FORPROVSUBMISSION = 'FORPROVSUBMISSION';
    def STATE_FORPROVAPPROVAL   = 'FORPROVAPPROVAL';
    def STATE_CURRENT           = 'CURRENT';
    def STATE_CANCELLED         = 'CANCELLED';
    
    
    def appraiser = [:];
    def recommender = [:];
    def taxmapper = [:];
    def approver = [:];
    
    def mode;
    def entity;
    def subdivision;
    
    
    def init(){
        subdivision = [objid:RPTUtil.generateId('SD')]
        initSignatoryVars();
        return super.signal('init')
    }
    
    
    def open(){
        subdivision= svc.openSubdivision( entity.objid );
        subdividedLands = svc.getSubdividedLands(subdivision.objid)
        affectedrpus = svc.getAffectedRpus(subdivision.objid);
        initSignatoryVars();
        mode = MODE_READ;
        return super.signal('open');
    }
    
    
    def viewMotherFaas(){
        def txntype = subdivision.motherfaas.txntype.objid
        if ( RPTUtil.toBoolean(subdivision.motherfaas.datacapture, false) == true ){
            txntype = 'DC' 
        }
        def opener = 'faas_' + txntype + ':open'
        return InvokerUtil.lookupOpener(opener, [entity:[objid:subdivision.motherfaasid]]);
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
        subdivision = svc.openSubdivision(subdivision.objid);
        mode = MODE_READ;
    }
    
    void save(){
        saveSignatoryInfo();
        if (mode == MODE_CREATE)
            subdivision = svc.createSubdivision(subdivision);
        else 
            subdivision = svc.updateSubdivision(subdivision);
        mode = MODE_READ;
        editinfo = false;
    }    
   
    
    void delete(){
        svc.deleteSubdivision(subdivision);
    }
    
    

    /*-----------------------------------------------------
     * 
     * WORKFLOW ACTIONS
     *
     *----------------------------------------------------*/
    void createSubdivision(){
        subdivision =  svc.createSubdivision(subdivision)
        subdividedLands = [];
        affectedrpus = []
    }
    
    
    void submitForApproval(){
        subdivision = svc.submitForApproval(subdivision);
    }
    
    
    void approveSubdivision() {
        subdivision = svc.approveSubdivision(subdivision);
    }


    void disapproveSubdivision() {
        subdivision = svc.disapproveSubdivision(subdivision);
    }

    

    void submitToProvince() {
        subdivision = svc.submitToProvince(subdivision);
    }

   
    void disapproveSubmitToProvice() {
        subdivision = svc.disapproveSubmitToProvice(subdivision);
    }


    void approveSubmittedToProvince(){
        subdivision = svc.approveSubmittedToProvince(subdivision)
    }
    
    
    void disapproveSubmittedToProvince(){
        subdivision = svc.disapproveSubmittedToProvince(subdivision)
    }
    
    
    void approveByProvince() {
        subdivision = svc.approveByProvince(subdivision);
    }


    void disapproveByProvince() {
        subdivision = svc.disapproveByProvince(subdivision);
    }
    
    
    /*-----------------------------------------------------
     * 
     * SUBDIVIDED LAND SUPPORT
     *  
     *----------------------------------------------------*/
    
    def subdividedLands;
    def selectedLand;
    boolean editinfo = false;
    
                
    def getLookupTaxpayer(){
        return InvokerUtil.lookupOpener('entity:lookup',[
            onselect : { 
                selectedLand.taxpayer = it;
                selectedLand.owner    = it;
            },
            onempty  : { 
                selectedLand.taxpayer = null;
                selectedLand.owner    = null;
            } 
        ])
    }
    
     
    def landListHandler = [
        getRows : { return 50 },
            
        fetchList : { return subdividedLands },
                
        onRemoveItem : { item ->
            if (MsgBox.confirm('Delete selected item?')){
                svc.deleteSubdividedLand(item);
                subdividedLands.remove(item);
                removeAffectedRpuReference(item);
                return true;
            }
            return false;
        }
    ] as EditorListModel
            
    void removeAffectedRpuReference(sland){
        def arpus = affectedrpus.findAll{it.subdividedlandid == sland.objid}
        arpus.each{ arpu ->
            arpu.subdividedlandid = null;
            arpu.itemno = null;
            svc.saveAffectedRpu(arpu)
        }
    }
                
                
    def addSubdividedLand(){
        return InvokerUtil.lookupOpener('subdividedland:create', [
            subdivision : subdivision,
            svc         : svc,
                
            onadd : { sland ->
                sland.itemno = subdividedLands.size() + 1;
                svc.createSubdividedLand(sland);
                subdividedLands.add(sland);
                landListHandler.load()
                binding.refresh('totalareasqm|totalareaha|selectedLand.*');
            }
        ])
    }
    
    
    def editSubdividedLand(){
        return InvokerUtil.lookupOpener('subdividedland:open', [
            subdivision : subdivision,
            subdividedland : selectedLand,
            svc         : svc,
                
            onupdate : { sland ->
                svc.updateSubdividedLand(sland);
                landListHandler.refresh(true)
                binding.refresh('totalareasqm|totalareaha|selectedLand.*');
            }
        ])
    }
                
               
    
    
    def oldlandinfo = [:]
            
    void editLandInfo(){
        oldlandinfo = MapBeanUtils.copy(selectedLand)
        editinfo = true;
    }
    
    
    void updateLandInfo(){
        RPTUtil.required('New TD No.', selectedLand.newtdno);
        RPTUtil.required('Memoranda', selectedLand.memoranda);
        svc.updateSubdividedLand(selectedLand);
        landListHandler.refresh();
        editinfo = false;
    }
    
    
    void cancelLandInfo(){
        selectedLand.putAll(oldlandinfo);
        landListHandler.refresh();
        binding.refresh('selectedLand.*');
        editinfo = false;
    }
    
    
    
    
    
    /*-----------------------------------------------------
     * 
     * AFFECTED RPUS SUPPORT
     *
     *----------------------------------------------------*/
    def affectedrpus;
    def selectedAffectedRpu;
    
    def affectedrpuListHandler = [
        getRows : { return 250 },
            
        fetchList : { return affectedrpus },
                
        onColumnUpdate : {arpu, colname ->
            if (colname == 'newpin'){
                validateNewPin(arpu)
            }
        },
                
        validate : { li -> 
            def arpu = li.item;
            RPTUtil.required('New PIN', arpu.newpin);
            RPTUtil.required('New TD No.', arpu.newtdno);
            RPTUtil.required('New Suffix', arpu.newsuffix)
            RPTUtil.required('Memoranda', arpu.memoranda)
            validateNewPin(arpu)
            svc.saveAffectedRpu(arpu);
        }
        
    ] as EditorListModel 
            
            
    void validateNewPin(arpu){
        def sland = subdividedLands.find{ it.newpin == arpu.newpin }
        if (!sland) throw new Exception('PIN entered is invalid. The PIN does not exist on the list of Subdivided Lands. ' + arpu.newpin)
        arpu.itemno = sland.itemno;
        arpu.subdividedlandid = sland.objid;
        arpu.newrpid = sland.newrpid;
    }
     
    
    
    
    /*===============================================
     * Lookup Support
     *===============================================*/
    def getLookupFaas() {
        return InvokerUtil.lookupOpener('faas:lookup', [:])
    }
    
    
    
    /*===============================================
     *
     * EDITABILITY SUPPORT
     *
     *===============================================*/
    
        
    boolean getAllowEdit() {
        if ( mode == MODE_READ) return false;
        if ( subdivision.state == 'FORREVIEW' ) return false;
        if ( subdivision.state == 'FORPROVAPPROVAL' ) return false;
        if ( subdivision.state == 'CURRENT' ) return false;
        if ( subdivision.state == 'CANCELLED' ) return false;
        return true;
    }
    
    
    List getQuarters(){
        return [1,2,3,4]
    }
    
    
    def getTotalareasqm(){
        return RPTUtil.sum(subdividedLands, "areasqm")
    }
    
    def getTotalareaha(){
        return RPTUtil.sum(subdividedLands, "areaha")
    }
     
 
    
    
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
 
    
    void initSignatoryVars(){
        appraiser = subdivision.signatories.find{it.type == 'appraiser'};
        recommender = subdivision.signatories.find{it.type == 'recommender'};
        taxmapper = subdivision.signatories.find{it.type == 'taxmapper'};
        approver = subdivision.signatories.find{it.type == 'approver'};
        appraiser = (appraiser ? appraiser : [:])
        recommender = (recommender ? recommender : [:])
        taxmapper = (taxmapper ? taxmapper : [:])
        approver = (approver ? approver : [:])
        
    }
    
        
    void saveSignatoryInfo(){
        subdivision.signatories.find{it.type == 'appraiser'}?.putAll(appraiser);
        subdivision.signatories.find{it.type == 'recommender'}?.putAll(recommender);
        subdivision.signatories.find{it.type == 'taxmapper'}?.putAll(taxmapper);
        subdivision.signatories.find{it.type == 'approver'}?.putAll(approver);
    }
 
    

    
}