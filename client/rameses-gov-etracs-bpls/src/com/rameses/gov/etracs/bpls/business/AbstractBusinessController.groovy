package com.rameses.gov.etracs.bpls.business;

import com.rameses.rcp.annotations.*
import com.rameses.rcp.common.*
import com.rameses.osiris2.client.*
import com.rameses.osiris2.common.*
import java.rmi.server.*

class AbstractBusinessController  {

    @Binding
    def binding;

    def entity = [lobs:[]];
    def officeTypes = LOV.BUSINESS_OFFICE_TYPES;
    def orgTypes = LOV.BUSINESS_ORG_TYPES;

    def getLookupPermitees() {
        return InvokerUtil.lookupOpener( "entity:lookup", [
            onselect: { o->
                entity.permitee = o;
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
            entity.lobs.remove(o);
        }
    ] as EditorListModel;


}