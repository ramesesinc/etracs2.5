package com.rameses.gov.etracs.rpt.entity.ui;
        
import com.rameses.rcp.annotations.* 
import com.rameses.rcp.common.* 
import com.rameses.osiris2.client.*
import com.rameses.osiris2.common.*
import com.rameses.gov.etracs.rpt.common.RPTUtil;
import com.rameses.util.MapBeanUtils;

public class ResectionController extends PageFlowController
{

    @Binding
    def binding;
    
    @Service('ResectionService')
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
    
    
    def mode;
    def entity;
    def sections;
    def affectedlands;
    def affectedimprovements;
    
    def init(){
        entity = [objid:RPTUtil.generateId('RS'), newsectioncount:2]
        return super.signal('init')
    }
    
    
    def open(){
        entity = svc.openResection( entity.objid );
        initItems();
        mode = MODE_READ;
        return super.signal('open');
    }
    
    void initItems(){
        sections = svc.getResectionItems(entity.objid)
        def items = svc.getResectionAffectedRpus(entity.objid)
        affectedlands = items.findAll{it.rputype == 'land'}
        affectedimprovements = items.findAll{it.rputype != 'land'}
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
        entity = svc.openResection(entity.objid);
        mode = MODE_READ;
    }
    
    void save(){
        if (mode == MODE_CREATE)
            entity = svc.createResection(entity);
        else 
            entity = svc.updateResection(entity);
        mode = MODE_READ;
    }    
   
    
    void delete(){
        svc.deleteResection(entity);
    }
    
    

    /*-----------------------------------------------------
     * 
     * WORKFLOW ACTIONS
     *
     *----------------------------------------------------*/
    void initResection(){
        entity =  svc.initResection(entity);
        initItems();
        mode = MODE_EDIT;
    }
    
    
    void submitForApproval(){
        entity = svc.submitForApproval(entity);
    }
    
    
    void approveResection() {
        entity = svc.approveResection(entity);
    }


    void disapproveResection() {
        entity = svc.disapproveResection(entity);
    }

    

    void submitToProvince() {
        entity = svc.submitToProvince(entity);
    }

   
    void disapproveSubmitToProvice() {
        entity = svc.disapproveSubmitToProvice(entity);
    }


    void approveSubmittedToProvince(){
        entity = svc.approveSubmittedToProvince(entity)
    }
    
    
    void disapproveSubmittedToProvince(){
        entity = svc.disapproveSubmittedToProvince(entity)
    }
    
    
    void approveByProvince() {
        entity = svc.approveByProvince(entity);
    }


    void disapproveByProvince() {
        entity = svc.disapproveByProvince(entity);
    }
    
    
    /*-----------------------------------------------------
     * 
     * INIT PAGE SUPPORT
     *  
     *----------------------------------------------------*/
    List getBarangays(){
        return svc.getBarangays();
    }
    
            
     /*-----------------------------------------------------
     * 
     * SECTIONS SUPPORT
     *  
     *----------------------------------------------------*/
    def selectedSection;
            
    def sectionListHandler = [
        fetchList : { return sections },
        validate  : { li ->
            def item = li.item;
            item.putAll(svc.saveSection(entity, item));
        },
    ] as EditorListModel
            
    
    /*-----------------------------------------------------
     * 
     * AFFECTED LAND SUPPORT
     *  
     *----------------------------------------------------*/
    def selectedLand;
            
    def landListHandler = [
        fetchList : { return affectedlands },
        
        onColumnUpdate : { item, colname ->
            if (colname == 'newsection'){
                def section = sections.find{it.newsection == item.newsection}
                if (!section){
                    throw new Exception('Invalid section. Section must be one of the new sections defined.')
                }
                section.landcount++;
                section.putAll(svc.saveSection(entity, section));
                sectionListHandler.refresh();
            }
            buildNewPin(item);
            def impv = affectedimprovements.find{it.prevrpid == item.prevrpid}
            if (impv){
                impv.newsection = item.newsection;
                impv.newparcel = item.newparcel;
                impv.newpin = item.newpin;
                affectedrpuListHandler.refresh();
                impv.putAll(svc.saveAffectedRpu(impv));
            }
        },
            
        validate  : { li ->
            def item = li.item;
            RPTUtil.required('New Section', item.newsection);
            RPTUtil.required('New Parcel', item.newparcel);
            RPTUtil.required('New TD No.', item.newtdno);
            RPTUtil.required('Memoranda', item.memoranda);
            item.putAll(svc.saveAffectedRpu(item));
        },
    ] as EditorListModel
            
                
    void buildNewPin(item){
        item.newpin = entity.barangaypin;
        if (item.newsection)
            item.newpin += '-' + item.newsection;
        if (item.newparcel)
            item.newpin += '-' + item.newparcel;
        if (item.newsuffix != null && item.newsuffix > 0) {
            item.newpin += '-' + item.newsuffix;
        }
    }
                
    /*-----------------------------------------------------
     * 
     * AFFECTED RPUS SUPPORT
     *
     *----------------------------------------------------*/
    def selectedAffectedRpu;
        
    def affectedrpuListHandler = [
        fetchList : { return affectedimprovements },

        onColumnUpdate : { item, colname ->
            RPTUtil.required('New Section', item.newsection);
            RPTUtil.required('New Parcel', item.newparcel);
            if (colname == 'newsuffix'){
                svc.validateSuffix(item.rputype, item.newsuffix)
            }
            buildNewPin(item);
        },
        
        validate : { li -> 
            def item = li.item;
            RPTUtil.required('New Suffix', item.newsuffix);
            RPTUtil.required('New TD No.', item.newtdno);
            RPTUtil.required('Memoranda', item.memoranda);
            item.putAll(svc.saveAffectedRpu(item));
        }
        
    ] as EditorListModel 
            

    /*===============================================
     * Lookup Support
     *===============================================*/
    def getLookupAppraiser(){
        return InvokerUtil.lookupOpener('rptofficer:lookup',[role:'APPRAISER']);
    }
    
    
    def getLookupRecommender(){
        return InvokerUtil.lookupOpener('rptofficer:lookup',[role:'RECOMMENDER']);
    }
    
    
    def getLookupTaxmapper(){
        return InvokerUtil.lookupOpener('rptofficer:lookup',[role:'TAXMAPPER']);
    }
    
    def getLookupApprover(){
        return InvokerUtil.lookupOpener('rptofficer:lookup',[role:'APPROVER']);
    }
    
    
    
    
    /*===============================================
     *
     * EDITABILITY SUPPORT
     *
     *===============================================*/
    
        
    boolean getAllowEdit() {
        if ( mode == MODE_READ) return false;
        if ( entity.state == 'FORREVIEW' ) return false;
        if ( entity.state == 'FORPROVAPPROVAL' ) return false;
        if ( entity.state == 'CURRENT' ) return false;
        if ( entity.state == 'CANCELLED' ) return false;
        return true;
    }
    
    
    List getQuarters(){
        return [1,2,3,4]
    }
    
     
}