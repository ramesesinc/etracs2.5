package com.rameses.gov.etracs.rpt.consolidation.ui;
        
import com.rameses.rcp.annotations.* 
import com.rameses.rcp.common.* 
import com.rameses.osiris2.client.*
import com.rameses.osiris2.common.*
import com.rameses.gov.etracs.rpt.common.RPTUtil;
import com.rameses.util.MapBeanUtils;

public class ConsolidationController extends PageFlowController
{

    @Binding
    def binding;
    
    @Service('ConsolidationService')
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
    def consolidation;
    def rp;
    def rpu;
    
    
    def init(){
        consolidation = svc.initConsolidation();
        rp = [:]
        rpu = [:]
        mode = MODE_CREATE 
        return super.signal('init')
    }
    
    
    def open(){
        consolidation= svc.openConsolidation( entity.objid );
        svc.createNewlyCreatedAffectedRpus(consolidation);
        loadItems()
        mode = MODE_READ;
        return super.signal('open');
    }
    
    
    void loadItems(){
        consolidatedlands = svc.getConsolidatedLands(consolidation.objid)
        affectedrpus = svc.getAffectedRpus(consolidation.objid)
        landListHandler?.load();
        affectedrpuListHandler.load();
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
        consolidation = svc.openConsolidation(consolidation.objid);
        mode = MODE_READ;
    }
    
    void save(){
        if (mode == MODE_CREATE)
            consolidation = svc.createConsolidation(consolidation);
        else 
            consolidation = svc.updateConsolidation(consolidation);
        mode = MODE_READ;
    }    
   
    
    void delete(){
        svc.deleteConsolidation(consolidation);
    }
    
    

    /*-----------------------------------------------------
     * 
     * WORKFLOW ACTIONS
     *
     *----------------------------------------------------*/
    void initRealProperty(){
        rp.ry = consolidation.ry
        rp.putAll(svc.initRealProperty(rp))
        rpu = svc.initRpu(rp)
        consolidation.newrpu = rpu;
    }
    
    
    void validateRpu(){
        rpu.putAll(svc.validateRpu(rpu))
    }
    
    void submitForApproval(){
        consolidation = svc.submitForApproval(consolidation);
        loadItems();
    }
    
    
    void approveConsolidation() {
        consolidation = svc.approveConsolidation(consolidation);
        loadItems();
    }


    void disapproveConsolidation() {
        consolidation = svc.disapproveConsolidation(consolidation);
        loadItems();
    }

    

    void submitToProvince() {
        consolidation = svc.submitToProvince(consolidation);
        loadItems();
    }

   
    void disapproveSubmitToProvince() {
        consolidation = svc.disapproveSubmitToProvince(consolidation);
        loadItems();
    }


    void approveSubmittedToProvince(){
        consolidation = svc.approveSubmittedToProvince(consolidation);
        loadItems();
    }
    
    
    void disapproveSubmittedToProvince(){
        consolidation = svc.disapproveSubmittedToProvince(consolidation);
        loadItems();
    }
    
    
    void approveByProvince() {
        consolidation = svc.approveByProvince(consolidation);
        loadItems();
    }


    void disapproveByProvince() {
        consolidation = svc.disapproveByProvince(consolidation);
        loadItems();
    }
    
    
    /*-----------------------------------------------------
     * 
     * SUBDIVIDED LAND SUPPORT
     *  
     *----------------------------------------------------*/
    
    def consolidatedlands;
    def selectedLand;
    
    def getLookupFaas(){
        return InvokerUtil.lookupOpener('faas:lookup', [
            onselect : { 
                selectedLand.faas = it;
                selectedLand.rpuid = it.rpuid;
                selectedLand.rpid  = it.realpropertyid;
                selectedLand.landfaasid = it.objid;
                        
                selectedLand.rpu = [
                    fullpin      : it.fullpin,
                    totalareasqm : it.totalareasqm,
                    totalareaha  : it.totalareaha,
                ];
            },
                
            onempty : {
                selectedLand.faas = null;
                selectedLand.rpu  = null;
                selectedLand.landfaasid = null;
            }
        ])
    }
     
    def landListHandler = [
        getRows : { return 25 },
            
        createItem : { return [
            consolidationid : consolidation.objid,
        ]},
                
        fetchList : { return consolidatedlands },
                
        validate : {li ->
            def item = li.item;
            svc.validateConsolidatedLand(item)
        },
                
        onAddItem : { item ->
            item.objid = RPTUtil.generateId('CI')
            svc.saveConsolidatedLand(item);
            affectedrpus = svc.getAffectedRpus(consolidation.objid)
            affectedrpuListHandler.load();
            consolidatedlands.add(item);
        },
                
        onRemoveItem : { item ->
            if (MsgBox.confirm('Delete selected item?')){
                svc.deleteConsolidatedLand(item);
                consolidatedlands.remove(item);
                removeAffectedRpu(item);
                return true;
            }
            return false;
        }
    ] as EditorListModel
            
    void removeAffectedRpu(item){
        def removedrpus = affectedrpus.findAll{it.landfaasid == item.landfaasid};
        affectedrpus.removeAll(removedrpus);
        affectedrpuListHandler.load();
    }
                
                
    
    
    /*-----------------------------------------------------
     * 
     * AFFECTED RPUS SUPPORT
     *
     *----------------------------------------------------*/
    def affectedrpus;
    def selectedAffectedRpu;
    
    def affectedrpuListHandler = [
        getRows : { return 25 },
            
        fetchList : { return affectedrpus },
                
        onColumnUpdate : {arpu, colname ->
            if (colname == 'newpin'){
                validateNewPin(arpu)
            }
        },
                
        validate : { li -> 
            def arpu = li.item;
            RPTUtil.required('New TD No.', arpu.newtdno);
            RPTUtil.required('New Suffix', arpu.newsuffix)
            RPTUtil.required('Memoranda', arpu.memoranda)
            svc.saveAffectedRpu(arpu);
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
    
        
    def getLookupTaxpayer(){
        return InvokerUtil.lookupOpener('rpttaxpayer:lookup',[
            onselect : { 
                consolidation.taxpayer = [
                    objid : it.taxpayerid,
                    name  : it.taxpayername,
                    address : it.taxpayeraddress,
                ];
                consolidation.owner = [
                    name  : it.taxpayername,
                    address : it.taxpayeraddress,
                ];
            },
            onempty  : { 
                consolidation.taxpayer = null;
                consolidation.owner    = null;
            } 
        ])
    }
    
    
    /*===============================================
     *
     * EDITABILITY SUPPORT
     *
     *===============================================*/
    
        
    boolean getAllowEdit() {
        if ( mode == MODE_READ) return false;
        if ( consolidation.state == 'FORREVIEW' ) return false;
        if ( consolidation.state == 'FORPROVAPPROVAL' ) return false;
        if ( consolidation.state == 'CURRENT' ) return false;
        if ( consolidation.state == 'CANCELLED' ) return false;
        return true;
    }
    
    
    List getQuarters(){
        return [1,2,3,4]
    }
    
    
    def getTotalareasqm(){
        return sum('totalareasqm')
    }
    
    def getTotalareaha(){
        return sum('totalareaha')
    }
    
    def sum(field){
        def total = 0.0;
        consolidatedlands.each{
            total += it.rpu[field];
        }
        return total;
    }
    
    List getTitleTypes(){ 
         return LOV.RPT_TITLE_TYPES*.key
    }
    
    List getBarangays(){
        return svc.getBarangays();
    }
    
    def getOpener() {
        return InvokerUtil.lookupOpener('landrpu:open', [rpu:rpu, lguid:consolidation.lguid])
    }
     
}