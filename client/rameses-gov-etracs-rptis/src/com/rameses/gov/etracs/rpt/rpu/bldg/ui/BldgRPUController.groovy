package com.rameses.gov.etracs.rpt.rpu.bldg.ui;

import com.rameses.rcp.annotations.* 
import com.rameses.rcp.common.* 
import com.rameses.osiris2.client.* 
import com.rameses.osiris2.common.* 
import com.rameses.gov.etracs.rpt.common.RPTUtil

public class BldgRPUController extends com.rameses.gov.etracs.rpt.rpu.ui.AbstractRPUController
{
    
    @Service('BldgRPUService')
    def svc;
    
    def loading;
    def setting;
    
    @PropertyChangeListener
    def listener = [
        'rpu.hasswornamount':{
            calculateAssessment();
        },
        'rpu.swornamount':{
            calculateAssessment();
        },
    ]
    
    void beforeInit(){
        initInfo();
    }
    
    void afterOpen(){
        initInfo();
    }
    
    
    /*---------------------------------------------------------
     *
     * MAIN FORM SUPPORT
     *
     ---------------------------------------------------------*/
    
    def getLookupBldgType(){
        return InvokerUtil.lookupOpener('bldgtype:lookup',[lguid:lguid, ry:rpu.ry])  
    }
    
    def getLookupBldgKindBucc(){
        return InvokerUtil.lookupOpener('bldgkindbucc:lookup',[bldgtype:rpu.bldgtype])  
    }
    
    
    def dtcompleted;
    def dtoccupied;
    def bldgage;
    def depreciation;
    def percentcompleted;
    def basevalue;
    def bldgtype;
    def bldgkindbucc;
    
    
    void initInfo(){
        loading = true;
        dtcompleted     = rpu.dtcompleted;
        dtoccupied      = rpu.dtoccupied;
        bldgage         = rpu.bldgage;
        depreciation    = rpu.depreciation;
        percentcompleted = rpu.percentcompleted;
        bldgtype        = rpu.bldgtype;
        bldgkindbucc    = rpu.bldgkindbucc;
        classification  = rpu.classification;
        basevalue       = rpu.basevalue;
        loadSetting();
        loading = false;
        binding?.refresh('depreciation')
    }
    
    
    void calculateAssessment() {
        if (loading) return 
        rpu.putAll( service.calculateAssessment(rpu) )
        initInfo();
        bldgUseListHandler.load()
        binding.refresh('.*');
    }
        
    
    void setDtcompleted(dtcompleted){
	this.dtcompleted = dtcompleted;
        rpu.dtcompleted = dtcompleted;
	calculateAssessment()
    }
    
    void setDtoccupied(dtoccupied){
        this.dtoccupied = dtoccupied;
        rpu.dtoccupied = dtoccupied;
        calculateAssessment()
    }
    
    void setBldgage(bldgage){
        this.bldgage = bldgage;
        rpu.bldgage = bldgage;
        calculateAssessment()
    }
    
    void setDepreciation(depreciation){
        this.depreciation = depreciation;
        rpu.depreciation = depreciation;
        calculateAssessment()
    }
    
    void setPercentcompleted(percentcompleted){
        this.percentcompleted = percentcompleted;
        rpu.percentcompleted = percentcompleted;
        calculateAssessment()
    }
    
    void setBldgtype(bldgtype){
        this.bldgtype = bldgtype;
        rpu.bldgtype = bldgtype;
        setBldgkindbucc(null);
        loadSetting()
        calculateAssessment()
    }
    
    void setBldgkindbucc(bldgkindbucc){
        this.bldgkindbucc = bldgkindbucc;
        rpu.bldgkindbucc = bldgkindbucc;
        basevalue = bldgkindbucc ? bldgkindbucc.basevalue : 0.0;
        calculateAssessment()
    }
    
    void setBasevalue(basevalue){
        validateBaseValue(basevalue);
        this.basevalue = basevalue;
        rpu.basevalue = basevalue;
    }
    
    void setClassification(classification){
        super.setClassification(classification)
        calculateAssessment()
    }
    
    void validateBaseValue(basevalue){
        if (rpu.bldgkindbucc?.btbasevaluetype == 'range') {
            def minvalue = rpu.bldgkindbucc.minbasevalue;
            def maxvalue = rpu.bldgkindbucc.maxbasevalue;
            if (basevalue < minvalue || basevalue > maxvalue) {
                def msg = "Base Value must be between $minvalue and $maxvalue."
                MsgBox.err(msg);
                binding.refresh('basevalue');
                throw new Exception(msg);
            }
        }
        basevalue = rpu.basevalue;
    }
    
    
    /*---------------------------------------------------------
     *
     * BLDG USE SUPPORT
     *
     ---------------------------------------------------------*/
    def selectedBldgUse;
    
    
    def getLookupBldgActualUse(){
        return InvokerUtil.lookupOpener('bldgactualuse:lookup', [lguid:lguid, ry:rpu.ry])
    }
    
    
    def bldgUseListHandler = [
        createItem : { return [
            bldgrpuid           : rpu.objid,
            basevalue           : rpu.basevalue,
            area                : 0.00,
            basemarketvalue     : 0.00,
            depreciation	: 0.00,
            depreciationvalue	: 0.00,
            adjustment		: 0.00,
            marketvalue		: 0.00,
            assesslevel		: 0.00,
            assessedvalue	: 0.00,
            floors              : [],
        ]},
            
        fetchList  : { return rpu.bldguses; },
        
        validate   : { li ->
            def bu = li.item;
            RPTUtil.required('Actual Use', bu.actualuse)
            if (bu.objid) calculateAssessment();
        },
                
        onAddItem  : { item -> 
            item.objid = RPTUtil.generateId('BU')
            rpu.bldguses.add( item ) 
        },
                
        onRemoveItem : { item ->
            if (MsgBox.confirm('Delete selected item?')) {
                if (! rpu._bldguses) rpu._bldguses = [];
                rpu.bldguses.remove(item);
                rpu._bldguses.add(item);
                calculateAssessment();
                return true;
            }
            return false;
        },
        
    ] as EditorListModel
    
                
    /*---------------------------------------------------------
     *
     * STRUCTURE SUPPORT
     *
     ---------------------------------------------------------*/
    def selectedStructure 
            
    def getLookupStructureMaterial(){
        return InvokerUtil.lookupOpener('structurematerial:lookup', [
            structureid : selectedStructure.structure.objid,
                
            onselect: {
                selectedStructure.material = it;
            },
                
            onempty: {
                selectedStructure.material = null;
            }
        ])
    }
        
    
    def structureListHandler = [
        fetchList : { return rpu.structures }
    ] as EditorListModel
    
    
            
    /*---------------------------------------------------------
     *
     * STRUCTURE SUPPORT
     *
     ---------------------------------------------------------*/
    
    def onupdateBldgUse = {
        calculateAssessment()
    }
    
    
    def viewFloorInfo(){
        return InvokerUtil.lookupOpener('bldgrpufloor:open', [
            allowEdit : allowEdit,
            onupdate  : onupdateBldgUse,
            rpu       : rpu,
            bldguse   : selectedBldgUse,
            lguid     : lguid,
        ])
    }
    
    
    def getAutoDepreciate(){
        return RPTUtil.isTrue(setting?.computedepreciationbasedonschedule)
    }
    
    void loadSetting(){
        setting = svc.getBldgRySetting(bldgtype?.bldgrysettingid)
    }
    
}