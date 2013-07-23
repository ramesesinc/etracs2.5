package com.rameses.gov.etracs.rpt.rpu.misc.ui;

import com.rameses.rcp.annotations.* 
import com.rameses.rcp.common.* 
import com.rameses.osiris2.client.* 
import com.rameses.osiris2.common.* 
import com.rameses.gov.etracs.rpt.common.RPTUtil

public class MiscRPUController extends com.rameses.gov.etracs.rpt.rpu.ui.AbstractRPUController
{
    
    @Service('MiscRPUService')
    def svc;
    
    public def getService(){
        return svc 
    }
    
    void initOpen(){
        actualuse = rpu.actualuse
    }
    
    void refreshAssessment(){
        listHandler.refresh(true)
    }
    
    
    /*-------------------------------------------------------------
     *
     * MAIN PAGE
     *
     ------------------------------------------------------------- */
     def selectedItem;
     def actualuse;
     
     void setActualuse(actualuse){
         this.actualuse = actualuse;
         rpu.actualuse = actualuse;
         calculateAssessment()
     }
     
     
     def getLookupMiscItemValue(){
         return InvokerUtil.lookupOpener('miscitemvalue:lookup', [
             lguid : lguid,
             ry    : rpu.ry,
             
             onselect : { miv ->
                setParamsRefId(selectedItem, miv.params)
                selectedItem.miv = miv;
                selectedItem.params = miv.params
                selectedItem.miscitem = miv.miscitem;
                selectedItem.expr = miv.expr;
                selectedItem.basemarketvalue = svc.calculateExpression(selectedItem)
             }
         ])
     }
     
     void setParamsRefId(item, params){
         params.each{param ->
            param.miscrpuitemid = item.objid;
            param.miscrpuid = rpu.objid;
        }
     }
     
     
     def listHandler = [
         getRows : { return 25 },
             
         fetchList : { return rpu.items },
             
         createItem : { return [
            miscrpuid           : rpu.objid,
            depreciation        : 0.0,
            depreciatedvalue    : 0.0,
            basemarketvalue     : 0.0,
            marketvalue         : 0.0,
            assesslevel         : 0.0,
            assessedvalue       : 0.0,
         ]},
                 
         validate : { li ->
             def item = li.item 
             RPTUtil.required('Misc Item', item.miv)
             RPTUtil.required('Depreciation', item.depreciation)
             checkDuplicate(item)
             if (item.objid){
                calculateAssessment()
             }
         },
                 
         onAddItem : { item ->
            item.objid = RPTUtil.generateId('MI')
            setParamsRefId(item, item.params)
            rpu.items.add(item)
            calculateAssessment()
         },
         
         onRemoveItem : { item ->
             if (MsgBox.confirm('Delete selected item')) {
                 rpu.items.remove(item);
                 if (!rpu._items) rpu._items = [];
                 rpu._items.add(item);
                 calculateAssessment()
                 return true;
             }
             return false;
         }
             
     ] as EditorListModel
     
     
     void checkDuplicate(item){
        def data = rpu.items.find{ (it.objid != item.objid || item.objid == null) && it.miv.objid == item.miv.objid }
        if( data ) throw new Exception( 'Duplicate item is not allowed.' )
     }
     
     
     def getActualuseList(){
         return svc.getMiscAssessLevels([lguid:lguid, ry:rpu.ry]);
     }
     
     
         
}