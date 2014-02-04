package com.rameses.gov.etracs.rpt.faas.ui;

        
import com.rameses.rcp.annotations.* 
import com.rameses.rcp.common.* 
import com.rameses.osiris2.client.*
import com.rameses.osiris2.common.*
import com.rameses.gov.etracs.rpt.common.RPTUtil;

class FaasMainInfoController
{
    @Binding
    def binding;
    
    
    @Caller
    def caller;
    
    def svc;
    
    def MODE_READ = 'read';
    def MODE_EDIT = 'edit';
    
    def mode;
    
    def entity;
    def appraiser = [:];
    def recommender = [:];
    def taxmapper = [:];
    def approver = [:];
    
    boolean allowEditOwner = false;
    boolean allowEditPrevInfo = false;
    
    String title = 'FAAS Information';
    
    
    void init(){
        entity = svc.openFaas(entity);
        initSignatoryVars();
        mode = MODE_READ;
    }
    
    
    void edit(){
        caller.addMessage([type:'main', msg:'General Info is still in editing mode.']);
        mode = MODE_EDIT;
    }
    
    
    void save(){
        entity.putAll( svc.updateFaas(entity) );
        caller.clearMessages('main');
        mode = MODE_READ;
    }
    
    void refresh(){}
    
    
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
        appraiser = entity.signatories.find{it.type == 'appraiser'};
        recommender = entity.signatories.find{it.type == 'recommender'};
        taxmapper = entity.signatories.find{it.type == 'taxmapper'};
        approver = entity.signatories.find{it.type == 'approver'};
        appraiser = (appraiser ? appraiser : [:])
        recommender = (recommender ? recommender : [:])
        taxmapper = (taxmapper ? taxmapper : [:])
        approver = (approver ? approver : [:])
        
    }
    
        
    void saveSignatoryInfo(){
        entity.signatories.find{it.type == 'appraiser'}?.putAll(appraiser);
        entity.signatories.find{it.type == 'recommender'}?.putAll(recommender);
        entity.signatories.find{it.type == 'taxmapper'}?.putAll(taxmapper);
        entity.signatories.find{it.type == 'approver'}?.putAll(approver);
    }
 
    
    
    List getQuarters(){
        return [1,2,3,4]
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
    
    
    boolean getShowActions(){
        if (entity.state.matches('FORTAXMAPPING|CURRENT|CANCELLED')) return false;
        if (mode != MODE_READ) return false;
        return true;
    }
    
    
    boolean getAllowEdit(){
        if (entity.state == 'APPROVED') return false;
        if (mode == 'read') return false;
        return true;
    }
    
}