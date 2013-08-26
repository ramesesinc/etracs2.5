package com.rameses.gov.etracs.rpt.rpu.bldg.ui;

import com.rameses.rcp.annotations.* 
import com.rameses.rcp.common.* 
import com.rameses.osiris2.client.* 
import com.rameses.osiris2.common.* 
import com.rameses.gov.etracs.rpt.common.*;

public class BldgFloorAdjustmentController
{
    @Binding
    def binding
    
    @Service('BldgRPUService')
    def svc;
    
    def onupdate //handler 
    
    def lguid
    def rpu 
    def bldgfloor
    def allowEdit
    

    void open() {
    
    }
    
    def ok() {
        bldgfloor.adjustment = RPTUtil.sum(bldgfloor.additionals,"amount");
        bldgfloor.marketvalue += bldgfloor.adjustment
        if( onupdate) onupdate( bldgfloor )
        return '_close' 
    }
    
    
    /*-----------------------------------------------------------------
    * List Support 
    -----------------------------------------------------------------*/
    def selectedItem
    
    def getLookupAdditionalItem() {
        return InvokerUtil.lookupOpener('bldgadditionalitem:lookup', [ 
                lguid   : lguid, 
                ry      : rpu.ry,
                
                onselect : {
                    setParamsRefId(selectedItem, it.params);
                    selectedItem.additionalitem = it;
                    selectedItem.params  = it.params;
                    selectedItem.expr    = it.expr;
                    selectedItem.basevalue = rpu.basevalue;
                    selectedItem.amount  = svc.calculateAdditionalItemAmount(selectedItem);
                    paramListHandler.load();
                },
            ])
    }
    
    void setParamsRefId(item, params){
         params.each{param ->
            param.objid = RPTUtil.generateId('PRM');
            param.bldgflooradditionalid = item.objid;
            param.bldgrpuid = rpu.objid;
        }
     }
    
    def listHandler = [
        getRows      : { return 25 }, 
            
        fetchList    : { return bldgfloor.additionals },
            
        createItem : { return [
            objid       : RPTUtil.generateId('BFA'),
            bldgfloorid : bldgfloor.objid,
            bldgrpuid   : bldgfloor.bldgrpuid,
            amount      : 0.0,
        ]},
        
        validate     : { li -> 
            def item = li.item;
            RPTUtil.required('Code', item.additionalitem)
            checkDuplicate( item )
        },
                
        onAddItem    : { item -> 
            bldgfloor.additionals.add(item)
        },
                
        onRemoveItem : { item -> 
            if (MsgBox.confirm('Delete selected item?')){
                bldgfloor.additionals.remove(item)
                if (!rpu._additionals) rpu._additionals = [];
                rpu._additionals.add(item);
                return true;
            }
            return false;
        },
                
        
    ] as EditorListModel 
    
                
    void checkDuplicate( item ) {
        def items = bldgfloor.additionalitems.find{ it.additionalitem.objid == item.additionalitem.objid && it.objid != item.objid }
        if( items) throw new Exception('Duplicate item is not allowed.')    
    }
    
    /*--------------------------------------------------------------------
    * Parameter List Support
    --------------------------------------------------------------------*/
    def selectedParam
    
    def paramListHandler = [
        fetchList : { return selectedItem?.params },
    ] as BasicListModel
    
}
