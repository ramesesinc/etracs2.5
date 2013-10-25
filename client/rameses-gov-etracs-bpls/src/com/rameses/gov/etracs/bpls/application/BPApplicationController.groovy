package com.rameses.gov.etracs.bpls.application;

import com.rameses.rcp.annotations.*
import com.rameses.rcp.common.*
import com.rameses.osiris2.client.*
import com.rameses.osiris2.common.*
import java.rmi.server.*

class BPApplicationController extends PageFlowController {

    @Binding
    def binding;

    def entity = [lobs:[]];
    def officeTypes = LOV.BUSINESS_OFFICE_TYPES;
    def orgTypes = LOV.BUSINESS_ORG_TYPES;
    def lobAssessmentTypes = ["RENEW", "RETIRE"];

    def formInfos = [];
    def infos;

    def getLookupPermitees() {
        return InvokerUtil.lookupOpener( "entity:lookup", [
            onselect: { o->
                entity.permitee = o;
                entity.businessaddress = o.address;
                binding.refresh("entity.businessaddress");
            }
        ]);
    }
            
    def getLookupLob() {
        return InvokerUtil.lookupOpener( "lob:lookup", [
            onselect: { o->
                if(entity.lobs.find{ it.lobid == o.objid }!=null) 
                    throw new Exception("Item already added");
                def m = [:];
                m.objid = "BPLOB"+new UID();
                m.lobid = o.objid;
                m.name = o.name;
                m.classification = o.classification;
                m.assessmenttype = "NEW";
                entity.lobs << m; 
                lobModel.reload();
                binding.focus("lob");
            }
        ]);
    }
            
    def lobModel = [
        fetchList: { o->
            return entity.lobs;
        },
        onRemoveItem: { o->
            if(o.assessmenttype != "NEW" ) 
                throw new Exception("Only new lines of business can be removed");
            entity.lobs.remove(o);
        }
    ] as EditorListModel;

    def infoModel = [
        fetchList: { o-> return entity.infos; }
    ] as BasicListModel;
            
    def taxfeeModel = [
        fetchList: { o-> return entity.taxfees; }
    ]as BasicListModel;

    void buildFormInfos() {
        formInfos.clear();
        infos.each {x->
            def i = [
                type:x.attribute.datatype, 
                caption:x.attribute.caption, 
                categoryid:x.lob?.objid, 
                name:x.attribute.name, 
                bean: x,
                properties: [:]
            ];
            //fix the datatype
            x.datatype = x.attribute.datatype;
            x.required = true;
            if(x.datatype.indexOf("_")>0) {
                x.datatype = x.datatype.substring(0, x.datatype.indexOf("_"));
            }
            if(i.type == "boolean") {
                i.type = "checkbox";
            }
            else if(i.type == "string_array") {
                i.type = "combo";
                i.itemsObject = x.attribute.arrayvalues;
            }
            formInfos << i;
        }
    }

    def formPanel = [
        getCategory: { lobid->
            if(!lobid) return "";
            return entity.lobs.find{ it.lobid == lobid }?.name
        },
        updateBean: {name,value,item->
            item.bean.value = value;
        },
        getControlList: {
            return formInfos;
        }
    ] as FormPanelModel;

}