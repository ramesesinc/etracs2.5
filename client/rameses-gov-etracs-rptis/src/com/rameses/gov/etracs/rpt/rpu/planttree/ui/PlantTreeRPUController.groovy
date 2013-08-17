package com.rameses.gov.etracs.rpt.rpu.planttree.ui;

import com.rameses.rcp.annotations.* 
import com.rameses.rcp.common.* 
import com.rameses.osiris2.client.* 
import com.rameses.osiris2.common.* 
import com.rameses.gov.etracs.rpt.common.RPTUtil

public class PlantTreeRPUController extends com.rameses.gov.etracs.rpt.rpu.ui.AbstractRPUController
{
    
    @Service('PlantTreeRPUService')
    def svc;
    
    
    public def getService(){
        return svc 
    }
    
    
    /*-------------------------------------------------------------
     *
     * MAIN PAGE
     *
     ------------------------------------------------------------- */
     def selectedItem;
    
    void refreshAssessment(){
        listHandler.refresh(true);
    }
    
    def getLookupTreeUnitValue(){
        return InvokerUtil.lookupOpener('planttreeunitvalue:lookup', [lguid:lguid, ry:rpu.ry, onselect:{
            selectedItem.planttreeunitvalue = it;
            selectedItem.planttree = it.planttree;
            selectedItem.unitvalue = it.unitvalue;
        }] );
    }
    
    def getLookupPlantTreeAssessLevel(){
        return InvokerUtil.lookupOpener('planttreeassesslevel:lookup', [lguid:lguid, ry:rpu.ry] );
    }
     
     def listHandler = [
         getRows : { return 25 },
         
         fetchList : { return rpu.planttrees },
             
         createItem : { return createPlantTree() },
                 
         validate : { li -> 
             def pt = li.item 
             RPTUtil.required('Plant/Tree', pt.planttreeunitvalue);
             RPTUtil.required('Actual Use', pt.actualuse);
             RPTUtil.required('Productive', pt.productive);
             RPTUtil.required('Non-Productive', pt.nonproductive);
             if (pt.objid) {
                calculateAssessment();
             }
         },
                 
         onAddItem : { pt ->
             pt.objid = RPTUtil.generateId('PTD');
             rpu.planttrees.add(pt);
             calculateAssessment();
         },
                 
         onRemoveItem : {pt ->
             if (MsgBox.confirm('Delete selected item?')) {
                rpu.planttrees.remove(pt);
                if (!rpu._planttrees) rpu._planttrees = [];
                rpu._planttrees.add(pt);
                calculateAssessment();
                return true;
             }
             return false;
         }
                 
     ] as EditorListModel
                 
                 
                 
     def createPlantTree(){
        return [
            planttreerpuid  : rpu.objid,
            landrpuid       :  null,
            productive      : 0.0,
            nonproductive   : 0.0, 
            nonproductiveage  : 0.0,
            unitvalue       :  0.0,
            basemarketvalue : 0.0,
            adjustment      : 0.0,
            adjustmentrate  : 0.0,
            marketvalue     : 0.0,
            assesslevel     : 0.0,
            assessedvalue   : 0.0,
        ]
     }
             
}