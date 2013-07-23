package com.rameses.gov.etracs.rpt.rpu.mach.ui;

import com.rameses.rcp.annotations.* 
import com.rameses.rcp.common.* 
import com.rameses.osiris2.client.* 
import com.rameses.osiris2.common.* 
import com.rameses.gov.etracs.rpt.common.RPTUtil

public class MachRPUController extends com.rameses.gov.etracs.rpt.rpu.ui.AbstractRPUController
{
    
    @Service('MachRPUService')
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
     
     def getLookupActualUse(){
         return InvokerUtil.lookupOpener('machassesslevel:lookup', [
             lguid    : lguid,
             ry       : rpu.ry,
         ])
     }
     
     def listHandler = [
         getRows   : { return 25 },
             
         fetchList : { return rpu.machuses },
                 
         createItem : { return [
            machrpuid		: rpu.objid,
            actualuse_objid	: null,
            basemarketvalue	: 0.0,
            marketvalue		: 0.0,
            assesslevel		: 0.0,
            assessedvalue	: 0.0,
            machines            : [],
         ]},
                 
         validate  : { li ->
             def mu = li.item;
             RPTUtil.required('Actual Use', mu.actualuse)
             if (mu.objid){
                 calculateAssessment()
             }
         },
                 
         onAddItem : { mu ->
            mu.objid = RPTUtil.generateId('MU');
            rpu.machuses.add(mu);
         },
         
         onRemoveItem :{ mu ->
            if (MsgBox.confirm('Delete selected item?')){
                rpu.machuses.remove(mu);
                if (!rpu._machuses) 
                    rpu._machuses = [];
                rpu._machuses.add(mu)
                calculateAssessment();
                return true;
            }
            return false;
         },
         
     ] as EditorListModel 
     
                 
     def onupdateMachUse = {
        calculateAssessment();
        listHandler.load();
     }
                 
     def viewMachines(){
        return InvokerUtil.lookupOpener('machuse:open', [
                svc         : svc,
                rpu         : rpu, 
                machuse     : selectedItem, 
                allowEdit   : allowEdit,
                onupdate    : onupdateMachUse,
                lguid       : lguid,
        ]);
     }
     
}