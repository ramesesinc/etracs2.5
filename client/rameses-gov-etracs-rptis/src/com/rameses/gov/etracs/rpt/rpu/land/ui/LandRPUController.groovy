package com.rameses.gov.etracs.rpt.rpu.land.ui;

import com.rameses.rcp.annotations.* 
import com.rameses.rcp.common.* 
import com.rameses.osiris2.client.* 
import com.rameses.osiris2.common.* 
import com.rameses.gov.etracs.rpt.common.RPTUtil

public class LandRPUController extends com.rameses.gov.etracs.rpt.rpu.ui.AbstractRPUController
{
    
    @Service('LandRPUService')
    def svc;
    
    @Service('Var')
    def varSvc;
    
    
    public def getService(){
        return svc 
    }
    
    
    /*----------------------------------------------
     * 
     * Main Form Support 
     *
     ---------------------------------------------- */
    def onupdateLandAdjustment = { 
        calculateAssessment();
    }

    def openLandValueAdjustments() {
        return InvokerUtil.lookupOpener('landvalueadjustment:open', [ lguid:lguid, rpu:rpu, onupdate:onupdateLandAdjustment ])
    }

    def openActualUseAdjustment() {
        return InvokerUtil.lookupOpener('landactualuseadjustment:open', [ lguid:lguid, rpu:rpu, landdetail:selectedLand, onupdate:onupdateLandAdjustment  ])
    }
   
    
    
    /*---------------------------------------------------------------
    *
    * LandDetail Support
    *
    ---------------------------------------------------------------*/
    def selectedLand;
    def subclass;
    
    def getLookupSubclass(){
        return InvokerUtil.lookupOpener('lcuvsubclass:lookup', [lguid:lguid, ry:rpu.ry, onselect:{
            selectedLand.subclass = it;
            selectedLand.unitvalue = it.unitvalue;
            selectedLand.basevalue = it.basevalue;
            selectedLand.specificclass = it.specificclass;
            selectedLand.putAll( svc.calculateLandDetailAssessment(selectedLand, rpu.ry) )
        }] )
    }
    
    def getLookupStripping(){
        def classification = selectedLand?.subclass?.classification;
        return InvokerUtil.lookupOpener('lcuvstripping:lookup', [lguid:lguid, ry:rpu.ry, classificationid:classification?.objid] )
    }
    
    def getLookupAssessLevel() {
        def classification = selectedLand?.subclass?.classification;
        return InvokerUtil.lookupOpener('landassesslevel:lookup', [lguid:lguid, ry:rpu.ry, classificationid:classification?.objid] )
    }
    
    boolean allowColumnAVEdit() {
        if ( ! RPTUtil.toBoolean(datacapture, false))
            return false;
        return RPTUtil.toBoolean(varSvc.faas_datacapture_allow_edit_av, false)
    }
    
    def getLandRpuColumns() {
        def columns = [
            new Column(caption:'SubClass*', type:'lookup', handler:'lookupSubclass',  expression:'#{item.subclass.code}', maxWidth:100, editable:true ),
            new Column(name:'specificclass.name', caption:'Specific Class', maxWidth:100 ),
            new Column(name:'taxable', caption:'Tax?', type:'boolean', maxWidth:50, editable:true ),
            new Column(name:'actualuse', caption:'Actual Use*', type:'lookup', handler:'lookupAssessLevel', expression:'#{item.actualuse.code}', maxWidth:100, editable:true, required:true ),
            new Column(name:'stripping', caption:'Strip', type:'lookup', handler:'lookupStripping', expression:'#{item.stripping.striplevel}', maxWidth:50, editable:true ),
            new Column(name:'area', caption:'Area*', type:'decimal', editable:true, maxWidth:100, typeHandler:new DecimalColumnHandler(scale:6, format:'#,##0.000000')),
            new Column(name:'unitvalue', caption:'Unit Value', type:'decimal', maxWidth:100),
            new Column(name:'basemarketvalue', caption:'Base Market Value', type:'decimal', maxWidth:100),
            new Column(name:'adjustment', caption:'Adjustment', type:'decimal', maxWidth:100),
            new Column(name:'marketvalue', caption:'Market Value', type:'decimal', maxWidth:100),
            new Column(name:'assesslevel', caption:'A.L.', type:'decimal', maxWidth:80),
        ]
        if ( allowColumnAVEdit() ) {
            columns.add( new Column(name:'assessedvalue', caption:'Assessed Value', type:'decimal', maxWidth:100, editable:true) )
        }
        else {
            columns.add( new Column(name:'assessedvalue', caption:'Assessed Value', type:'decimal', maxWidth:100) )
        }
        return columns 
    }
    
    def updateav = false 
    
    def landListHandler = [
        createItem     : { return createLandDetail() },
        getColumns     : { return getLandRpuColumns() },
                
        validate       : { li ->
            RPTUtil.required( 'Subclass', li.item.subclass)
            RPTUtil.required( 'Actual Use', li.item.actualuse)
            RPTUtil.required( 'Area', li.item.area )
            if (li.item.area <= 0.0 ) throw new Exception('Area must be greater than zero.')
        },
                
        onAddItem      : { item -> 
            item.objid = 'LD' + new java.rmi.server.UID()
            rpu.landdetails.add( item ) 
        },
                
        onRemoveItem   : { item -> 
            if( MsgBox.confirm( 'Delete selected item?' ) ) {
                rpu.landdetails.remove( item )
                if(!rpu._landdetails) 
                    rpu._landdetails = [];
                rpu._landdetails << item
                calculateAssessment()
            }
        },
                
        onColumnUpdate : { item, colName -> 
            updateav = false
            if ( colName == 'striplevel') 
                updateStrippingInfo( item )
            else if ( colName == 'assessedvalue' ) 
                updateav = true 
            else if ( colName == 'actualuse' || colName == 'taxable' )
                item.putAll( svc.calculateLandDetailAssessment(selectedLand, rpu.ry) )
        },
                
        fetchList : { 
            return rpu.landdetails  
        },
                
        onCommitItem  : {
            calculateAssessment()
        }
        
    ] as EditorListModel
    
    
    
    /*---------------------------------------------------------------
    *
    * PlantTree Support
    *
    ---------------------------------------------------------------*/
    def selectedPlantTree
    
    def getLookupTreeUnitValue(){
        return InvokerUtil.lookupOpener('planttreeunitvalue:lookup', [lguid:lguid, ry:rpu.ry, onselect:{
            selectedPlantTree.planttreeunitvalue = it;
            selectedPlantTree.planttree = it.planttree;
            selectedPlantTree.unitvalue = it.unitvalue;
        }] );
    }
    
    def getLookupPlantTreeAssessLevel(){
        return InvokerUtil.lookupOpener('planttreeassesslevel:lookup', [lguid:lguid, ry:rpu.ry] );
    }
    
    
    def planttreeListHandler = [
        createItem  : { 
            return createPlantTree() 
        },
            
        getColumns : { return [
            new Column(caption:'Code*', type:'lookup', handler:lookupTreeUnitValue, expression:'#{item.planttreeunitvalue.code}', editable:true, maxWidth:80),
            new Column(name:'planttree.name', caption:'Plant/Tree', maxWidth:120),
            new Column(name:'unitvalue', caption:'Unit Value', maxWidth:100, type:'decimal'),
            new Column(name:'actualuse', caption:'Actual Use*', maxWidth:100, type:'lookup', handler:'lookupPlantTreeAssessLevel', expression:'#{item.actualuse.code}', editable:true, maxWidth:80),
            new Column(name:'productive', caption:'Productive*', maxWidth:100, type:'decimal', editable:true, format:'#,##0.####'),
            new Column(name:'nonproductive', caption:'NonProductive*', maxWidth:100, type:'decimal', editable:true, format:'#,##0.####' ),
            new Column(name:'basemarketvalue', caption:'Base Market Value', type:'decimal'),
            new Column(name:'adjustment', caption:'Adjustment', type:'decimal'),
            new Column(name:'marketvalue', caption:'Market Value', type:'decimal'),
            new Column(name:'assessedvalue', caption:'Assessed Value', type:'decimal'),
        ]},
                
        validate : { li ->
            RPTUtil.required('Code', li.item.planttreeunitvalue );
            RPTUtil.required('Actual Use', li.item.actualuse );
            RPTUtil.required('Productive', li.item.productive);
            RPTUtil.required('Non-Productive', li.item.nonproductive);
        },
                
        onAddItem : { item -> 
            item.objid = 'TP' + new java.rmi.server.UID()
            rpu.planttrees.add( item ) 
        },
                
        onRemoveItem : { item -> 
            if( MsgBox.confirm('Delete selected item?') ) {
                rpu.planttrees.remove( item )
                if (!rpu._planttrees) rpu._planttrees = [];
                rpu._planttrees.add(item)
                calculateAssessment()
            }
        },

        fetchList: { 
            return rpu.planttrees 
        },
                
        onCommitItem  : {
            calculateAssessment()
        }
                
    ] as EditorListModel
    


    /*----------------------------------------------
     * 
     * Support Methods
     *
     ---------------------------------------------- */
    
     Map createLandDetail() {
        return [
            landrpuid       : rpu.objid, 
            stripping       : [:],
            striprate       : 0.0,
            areasqm         : 0.0,
            areaha          : 0.0,
            basevalue       : 0.0,
            unitvalue       : 0.0,
            taxable         : true,
            basemarketvalue : 0.0,
            adjustment      : 0.0,
            landvalueadjustment : 0.0,
            actualuseadjustment : 0.0,
            marketvalue     : 0.0,
            assesslevel     : 0.0,
            assessedvalue   : 0.0,
            landadjustments : [],
            actualuseadjustments : [],
        ]
    }
    
    Map createPlantTree() {
        return [
            landrpuid       : rpu.objid, 
            planttreeunitvalue : [:],
            planttree          : [:],
            productive      : 0.0,
            nonproductive   : 0.0, 
            unitvalue       : 0.0,
            basemarketvalue : 0.0,
            adjustment      : 0.0,
            adjustmentrate  : 0.0,
            marketvalue     : 0.0,
            assesslevel     : 0.0,
            assessedvalue   : 0.0,
        ]   
    }

}