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
    
    
    public static void buildPin(entity){       
        def newpin = new StringBuilder();
        
        def provcity = entity.barangay?.provcity;
        def munidistrict = entity.barangay?.munidistrict;
                
        if( provcity ) {
            newpin = provcity.indexno + '-';
        }
        else {
            newpin = '000-';
        }
            
        if( munidistrict ) {
            newpin += munidistrict.indexno + '-';
        }
        else {
            newpin += '00-';
        }
        
        
        if( entity.barangay && entity.barangay.oldindexno == null) {
            entity.barangay.oldindexno = entity.barangay.indexno ;
        }
        
        if( entity.barangay) {
            newpin += entity.barangay?.indexno + '-';
        }
        else {
            newpin += ( entity.pintype == 'new' ? '0000' : '000') + '-';
        }        
        
        
        def ssection = '';
        def sparcel = '';
        
        if( entity.isection > 0 ) {
            ssection = entity.isection.toString();
            ssection = ( entity.pintype == 'new' ? ssection.padLeft(3,'0') : ssection.padLeft(2,'0'));
            entity.section = ssection;
            newpin += ssection + '-';
        }
        else {
            ssection = ( entity.pintype == 'new' ? '000' : '00') ;
            newpin += ssection + '-';
        }
        
        if( entity.iparcel > 0 ) {
            sparcel = entity.iparcel.toString();
            sparcel = ( entity.pintype == 'new' ? sparcel.padLeft(2,'0') : sparcel.padLeft(3,'0'));
            entity.parcel = sparcel;
            newpin += sparcel;
        }
        else {
            sparcel = ( entity.pintype == 'new' ? '00' : '000');
            newpin += sparcel ;
        }
        
        entity.pin= newpin;
        entity.fullpin = newpin;
        
        if (entity.rputype != 'land'){
            if (validSuffix(entity))
                entity.fullpin += '-' + entity.suffix;
        }
        
        if (entity.claimno){
            entity.fullpin += '-' + entity.claimno
        }
        
        
    }
    
    static boolean validSuffix(entity){
        def valid = false;
        if (entity.rputype == 'land')
            valid = true;
        else if (entity.rputype == 'bldg' && entity.suffix >= 1001 && entity.suffix <= 1999)
            valid = true;
        else if (entity.rputype == 'mach' && entity.suffix >= 2001 && entity.suffix <= 2999)
            valid = true;
        else if (entity.rputype == 'planttree' && entity.suffix >= 3001 && entity.suffix <= 6999)
            valid = true;
        else if (entity.rputype == 'misc' && entity.suffix >= 7001 && entity.suffix <= 7999)
            valid = true;
        
        return valid;
    }
}
