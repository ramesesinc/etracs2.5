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
    
    boolean allowEditOwner = false;
    boolean allowEditPrevInfo = false;
    
    
    String getTitle(){
        def t = 'FAAS Information'
        def rputype = entity.rpu?.rputype;
        if ( rputype != null){
            if (rputype == 'land') 
                t = 'Land FAAS Information';
            if (rputype == 'bldg') 
                t = 'Building FAAS Information';
            if (rputype == 'mach') 
                t = 'Machine FAAS Information';
            if (rputype == 'planttree') 
                t = 'Plant/Tree FAAS Information';
            if (rputype == 'misc') 
                t = 'Miscellaneous FAAS Information';
        }
        return t;
    }
    
    
    void init(){
        entity.putAll(svc.openFaas(entity));
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