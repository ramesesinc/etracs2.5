package com.rameses.gov.etracs.rpt.common;

import com.rameses.rcp.common.*
import com.rameses.rcp.annotations.*
import com.rameses.osiris2.client.*;
import com.rameses.osiris2.common.*;

abstract class ExprLookupEditorController extends LookupController 
{
    def oncomplete;
    def params;
    def openers;
    
    abstract List fetchList(Map params);
    abstract def getVariables();
    abstract Column[] getColumns();
    
    
    Object doSelect(){
        buildParamList();
        if (params){
            return "info";
        }
        return close()
    }
              
    def buildParamList(){
        params = [];
        getVariables().each{
            def expr = selectedItem.item.expr;
            if (expr.indexOf(it.name) >= 0 ) {
                params << [param:it];
            }
        }
    }
    
    
    def infoListHandler = [
        fetchList : { return params },
            
        validate : { li ->
            def item = li.item;
            checkRange(item)
            setParamValue(item)
        }
    ] as EditorListModel
    
    void setParamValue(item){
        if (item.param.paramtype.toLowerCase().indexOf('integer') >= 0) 
            item.intvalue = RPTUtil.toInteger(item.value)
        else
            item.decimalvalue = RPTUtil.toDecimal(item.value)
    }

    void checkRange(item){
        if (item.param.paramtype.toLowerCase().startsWith('range')){
            if (value < item.minvalue || value > item.maxvalue){
                throw new Exception('Value must be between ' + item.minvalue + ' and ' + item.maxvalue + '.')
            }
        }
    }
    
    def close(){
        selectedItem.item.params = params;
        return super.doSelect();
    }
    
    def okInfo(){
        return close();
    }
    
    
    
    
    def buildOpeners(){
        def openers = [];
        params.each{ param->
            def openertype = 'handler:decimalvalue';
            if (param.paramtype.toLowerCase().indexOf('int') >= 0){
                openertype = 'handler:integervalue';
            }
            openers.add(InvokerUtil.lookupOpener(openertype, [param:param]));
        }
        println 'openers';
        println openers 
        return openers;
    }
    
    
    
}  

