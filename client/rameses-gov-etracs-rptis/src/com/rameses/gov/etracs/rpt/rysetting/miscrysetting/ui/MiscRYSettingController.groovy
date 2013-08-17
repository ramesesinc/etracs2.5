package com.rameses.gov.etracs.rpt.rysetting.miscrysetting.ui;
        
import com.rameses.rcp.annotations.*
import com.rameses.rcp.common.*
import com.rameses.osiris2.client.*
import com.rameses.osiris2.common.*;
import com.rameses.gov.etracs.rpt.common.*

public class MiscRYSettingController extends com.rameses.gov.etracs.rpt.rysetting.RYSettingPageFlowController
{
    @Service('MiscRYSettingService')
    def svc;
    
            
    public def getService(){ return svc; }
    public String getSettingType(){ return 'misc'; }
    public String getSettingTitle(){return 'Miscellaneous Item Revision Setting'; }
    public String getPrefixId(){ return 'MRY'; }
    
    
    void loadItems() {
        assessLevels    = svc.getAssessLevels(entity.objid)
        miscItemValues  = svc.getMiscItemValues(entity.objid)
    }
    
    
    /*---------------------------------------------------------------------
    *
    * MiscItemValue Support
    *
    ---------------------------------------------------------------------*/
    def selectedMiscItem 
    def miscItemValues = []
    
    def getLookupEditor() {
        def varlist = svc.variableList.collect{ it.param_name }
        return null;
        // return InvokerUtil.lookupOpener('formula_editor', [onselect:{}, variableList:varlist])
    }
    
    def getLookupMiscItem(){
        return InvokerUtil.lookupOpener('miscitem:lookup',[
            onselect: { item ->
                selectedMiscItem.miscitem = item
            },
            onempty: {
                selectedMiscItem.miscitem = null
            }
        ])
    }
    
    def miscItemListHandler = [
        getRows    : { return 50 },
            
        createItem : { return [
            objid : RPTUtil.generateId('MI'),
            miscrysettingid : entity.objid,
        ]},
            
        getColumns : { return [
            new Column(caption:'Code', type:'lookup', handler:lookupMiscItem, editable:true, expression:'#{item.miscitem.code}',  maxWidth:80),
            new Column(name:'miscitem.name', caption:'Name'),
            new Column(name:'expr', caption:'Computation Expression', editable:true ),
            //TODO: Formula Editor
            //new Column(name:'expr', caption:'Computation Expression', editable:true, type:'lookup', handler:lookupEditor  ),
        ]},
                
        validate : { li -> 
            def miv = li.item
            required( miv.miscitem, 'Code')
            required( miv.expr, 'Computation Expression')
            checkDuplicate(miv)
            svc.saveMiscItemValue( miv )
        },
                
        fetchList    : { return miscItemValues },
    ] as EditorListModel
                
    void checkDuplicate(miv){
            def data = miscItemValues.find{it.miscitem.objid == miv.miscitem.objid && it.objid != miv.objid }
            if (data)
                throw new Exception("Duplicate item is not allowed.")
    }
    
        
    
    /*---------------------------------------------------------------------
    *
    * Create Records Support
    *
    ---------------------------------------------------------------------*/
    Map createEntity() {
        return [
            objid       : RPTUtil.generateId('MRY'),
            ry          : null,
        ]
    }
        
    Map createAssessLevel() {
        return [ 
            objid           : RPTUtil.generateId('AL'),
            miscrysettingid : entity.objid,
            fixrate         : true,
            rate            : 0.0,
            ranges          : [],
        ]
    }
    
    Map createAssessLevelRange() {
        return [ 
            objid               : RPTUtil.generateId('ALR'),
            miscassesslevelid   : selectedAssessLevel.objid,
            miscrysettingid     : entity.objid,
            mvfrom  : null,
            mvto    : null,
            rate    : 0.0,
        ]
    }
}

