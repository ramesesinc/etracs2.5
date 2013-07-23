package com.rameses.gov.etracs.rpt.rpu.bldg.ui;

import com.rameses.rcp.annotations.* 
import com.rameses.rcp.common.* 
import com.rameses.osiris2.client.* 
import com.rameses.osiris2.common.*;
import com.rameses.gov.etracs.rpt.common.RPTUtil;

public class BldgRPUFloorController
{
    @Binding
    def binding
    
    def allowEdit
    def onupdate //handler 
    def rpu 
    def bldguse
    def lguid 

            
    void init() {
    
    }
    
    
    def ok() {
        if( onupdate) onupdate( bldguse  )
        return close();
    }
    
    
    /*-----------------------------------------------------------------
    *
    * Main Page Support 
    *
    -----------------------------------------------------------------*/
    def selectedFloor
    
    def listHandler = [
        createItem : { return [
            objid           : RPTUtil.generateId('BF'),
            bldguseid       : bldguse.objid,
            bldgrpuid       : rpu.objid, 
            area            : 0.0,
            storeyrate      : 0.0,
            basevalue       : bldguse.basevalue,
            unitvalue       : 0.0,
            basemarketvalue : 0.0,
            adjustment      : 0.0,
            marketvalue     : 0.0,
            additionals     : [],
        ] },
            
        onAddItem : { floor -> 
            bldguse.floors.add(floor) 
        },
                
        validate : { li -> 
            def floor = li.item;
        },
                
        onRemoveItem : { floor -> 
            if (MsgBox.confirm('Delete selected floor?')){
                bldguse.floors.remove(floor)
                if (!rpu._floors) 
                    rpu._floors = []
                rpu._floors.add(floor)
                return true;
            }
            return false;
        },
                
        fetchList    : { 
            return bldguse.floors 
        }
        
    ] as EditorListModel 
    
        
    /*-----------------------------------------------------------------
    *
    * Floor Detail Support 
    *
    -----------------------------------------------------------------*/
    def onupdateFloorDetail = { additional ->
        binding.refresh('selectedFloor')
    }    
    
    def openFloorDetail() {
        return InvokerUtil.lookupOpener('bldgrpuflooradjustment:open', [lguid:lguid, allowEdit:allowEdit, rpu:rpu, bldgfloor:selectedFloor, onupdate:onupdateFloorDetail ])
    }
    
    
    
    /*-----------------------------------------------------------------
    *
    * Helper Methods 
    *
    -----------------------------------------------------------------*/
    def getTotalarea() {
        return bldguse.floors.area.sum()
    }
    
    
    def getTotaladjustment() {
        return bldguse.floors.adjustment.sum()
    }
    
    
    def close(){
        return '_close'
    }
}