package com.rameses.gov.etracs.rpt.rysetting.planttreerysetting.ui;

import com.rameses.rcp.annotations.*
import com.rameses.rcp.common.*
import com.rameses.osiris2.client.*;
import com.rameses.gov.etracs.rpt.common.*;
        

public class PlantTreeRYSettingController  extends com.rameses.gov.etracs.rpt.rysetting.RYSettingPageFlowController
{
    @Service('PlantTreeRYSettingService')
    def svc
    
        
    public def getService(){ return svc; }
    public String getSettingType(){ return 'planttree'; }
    public String getSettingTitle(){ return 'Plant/Tree Revision Setting'; }
    public String getPrefixId(){ return 'PTRY'; }
    
    
    public void loadItems(){
        assessLevels = svc.getAssessLevels(entity.objid);
        plantTrees   = svc.getPlantTrees();
    }
    
    /*---------------------------------------------------------------------
    *
    * AssessLevel Support
    *
    ---------------------------------------------------------------------*/
    def assessLevels = []
    def selectedAssessLevel
    
    def assessLevelListHandler = [
        createItem : { return createAssessLevel() },
        getRows    : { return 50 },
                
        getColumns : { return [
            new Column(name:'code', caption:'Code*', maxWidth:60, editable:true ),
            new Column(name:'name', caption:'Name*', editable:true ),
            new Column(name:'rate', caption:'Rate*', type:'decimal', editable:true ),
        ]},
                
        validate : { li -> 
            def al = li.item
            required(al.code, 'Code')
            required(al.name, 'Name')
            validateRate( al.rate )
            checkDuplicate( assessLevels, 'Code', 'code', al.objid, al.code )
            checkDuplicate( assessLevels, 'Name', 'name', al.objid, al.name )
            svc.saveAssessLevel( al ) 
        },
                
        onRemoveItem : { item -> 
            if( MsgBox.confirm('Remove item?' ) ) {
                svc.deleteAssessLevel( item )
                assessLevels.remove( item )
                return true;
            }
            return false;
        },
                
        onAddItem      : { item -> assessLevels.add( item ) },
        fetchList      : { return assessLevels },
    ] as EditorListModel
    
    
    
    /*---------------------------------------------------------------------
    *
    * PlantTreeUnit Support
    *
    ---------------------------------------------------------------------*/
    def plantTrees = [] 
    def selectedPlantTree
    def selectedValue
    def unitValueTitle 
    
    void setSelectedPlantTree( selectedPlantTree ) {
        this.selectedPlantTree = selectedPlantTree
        unitValues.clear()
        unitValueTitle = 'Please select a Plant or Tree.'
        if( selectedPlantTree ) {
            unitValues = svc.getUnitValues( entity.objid, selectedPlantTree.objid )
            unitValueTitle = selectedPlantTree.name 
        }
        unitvalueListHandler.load()
    }
    
    
    def planttreeListHandler  = [
        getRows    : { return 50 },
        getColumns : { return [
            new Column( name:'code', caption:'Code', maxWidth:80 ),
            new Column( name:'name', caption:'Plant/Tree' ),
        ]},
        fetchList    : { return plantTrees },
    ] as BasicListModel
    
    
    /*---------------------------------------------------------------------
    *
    * PlantTreeUnitValue Support
    *
    ---------------------------------------------------------------------*/
    List unitValues = []
    
    def unitvalueListHandler = [
        createItem : { return createUnitValue() },
        getRows    : { return 50 },
        getColumns : { return [
            new Column(name:'code', caption:'Code*', maxWidth:60, editable:true ),
            new Column(name:'name', caption:'Name*', editable:true ),
            new Column(name:'unitvalue', caption:'Unit Value*', type:'decimal', editable:true ),
        ]},
                
        validate : { li -> 
            def uv = li.item 
            required(uv.code, 'Code')
            required(uv.name, 'Name')
            checkDuplicate( unitValues, 'Code', 'code', uv.objid, uv.code )
            checkDuplicate( unitValues, 'Name', 'name', uv.objid, uv.name )
            svc.saveUnitValue( uv )
        },
                
        onRemoveItem   : { uv ->
            if( MsgBox.confirm('Remove item?' ) ) {
                svc.deleteUnitValue( uv ) 
                unitValues.remove( uv )
                return true;
            }
            return false;
        },
                
        onAddItem      : { item -> unitValues.add( item ) },
        fetchList      : { return unitValues },
    ] as EditorListModel
    
    
    /*---------------------------------------------------------------------
    *
    * Create Records Support
    *
    ---------------------------------------------------------------------*/
    Map createEntity() {
        return [
            objid       : RPTUtil.generateId('TRY'),
            state       : 'DRAFT',
            ry          : null,
            applyagriadjustment : 0,
        ]
    }
    
    Map createAssessLevel() {
        return [ 
            objid     : RPTUtil.generateId('AL'),
            planttreerysettingid  : entity.objid,
            code      : null,
            name      : null,
            rate      : 0.0,
        ]
    }
    
    Map createUnitValue() {
        return [
            objid                   : RPTUtil.generateId('BT'),
            planttreerysettingid    : entity.objid, 
            planttree_objid         : selectedPlantTree.objid,
            code                    : null,
            name                    : null,
            unitvalue               : 0.0,
        ]
    }
    
}