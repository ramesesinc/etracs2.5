package com.rameses.gov.etracs.bpls;
import com.rameses.rcp.common.*
import com.rameses.rcp.annotations.*
import com.rameses.osiris2.client.*
import com.rameses.osiris2.common.*
import com.rameses.rulemgmt.constraint.*;
import com.rameses.rulemgmt.*;
import java.rmi.server.*;

class FormInfo {
    
    public static def sortInfos(infos) {
        //sort the infos
        return infos.findAll{it.lob==null} + infos.findAll{ it.lob!=null }.sort{ it.lob };
    }

    public static def buildFormInfos(infos) {
        def formInfos = [];
        infos.each {x->
            def i = [
                type:x.attribute.datatype, 
                caption:x.attribute.caption, 
                categoryid:x.lob?.objid, 
                name:x.attribute.name, 
                bean: x,
                properties: [:],
                value: x.value
            ];
            //fix the datatype
            x.datatype = x.attribute.datatype;
            if(x.datatype.indexOf("_")>0) {
                x.datatype = x.datatype.substring(0, x.datatype.indexOf("_"));
            }
            if(i.type == "boolean") {
                i.type = "subform";
                i.handler = "bpassessment:yesno";
                i.properties = [item:x];
            }
            else if(i.type == "string_array") {
                i.type = "combo";
                i.itemsObject = x.attribute.arrayvalues;
            }
            formInfos << i;
        }
        return formInfos;
     }
     

}