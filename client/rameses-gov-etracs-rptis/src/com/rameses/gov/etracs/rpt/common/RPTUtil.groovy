package com.rameses.gov.etracs.rpt.common;

import java.math.BigDecimal;

class RPTUtil
{
    
    
    public static def sum( list, field  ) {
        def total = list."$field".sum()
        if (total == null) total = 0.0
        return total
    }

    
    public static def generateId(prefix){
        return prefix + new java.rmi.server.UID();
    }
    
    public static void required( caption, value ) {
        def msg = caption + ' is required.'
        if ( value == null ) throw new Exception(msg)
        if ( !(value instanceof Number)  && !value) throw new Exception( msg )
    }
    
    public static boolean isTrue(value){
        return toBoolean(value, false) == true
    }
    
    public static boolean toBoolean(value, defvalue){
        if (value == null) 
            return defvalue;

        if (value instanceof Boolean) 
            return value;

        if ('1/y/yes/t/true'.indexOf(value.toString()) >= 0 ) 
            return true;
        
        return false;
    }
    
    public static def toDecimal(value){
        if (value instanceof BigDecimal ) 
            return;
        return new BigDecimal(value.toString())
    }
    
    public static def toInteger(value){
        if (value instanceof Integer)
            return value;
        def bd = new BigDecimal(value.toString())
        return bd.intValue();
    }
}
