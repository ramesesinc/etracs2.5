package com.rameses.gov.etracs.bpls.application;
import com.rameses.rcp.common.*
import com.rameses.rcp.annotations.*
import com.rameses.osiris2.client.*
import com.rameses.osiris2.common.*
import com.rameses.rulemgmt.constraint.*;
import com.rameses.rulemgmt.*;
import java.rmi.server.*;

class BPApplication extends PageFlowController {

    @Binding
    def binding;

    def entity = [lobs:[], taxfees:[], requirements:[], infos:[]];
    def officeTypes = LOV.BUSINESS_OFFICE_TYPES;
    def orgTypes = LOV.ORG_TYPES;
    def lobAssessmentTypes = ["RENEW", "RETIRE"];

    def appTypes = LOV.BUSINESS_APP_TYPES;
    def txnmodes = ["ONLINE", "CAPTURE"];
    def selectedLob;
    def step;

    void initNew() {
        step = "new";
	entity = [:];
        entity.objid = "BPAPP"+new UID();
        entity.state = "draft";
        entity.infos = [];
        entity.taxfees = [];
        entity.requirements = [];
        entity.lobs = [];
        lobModel.reload();
        requirementModel.reload();
        infoModel.reload();
        taxfeeModel.reload();
    }
    
    @PropertyChangeListener
    def listener = [
        "entity.orgtype" : { o->
            entity.owner = null;
            entity.orgtypename = orgTypes.find{ it.key == o}?.value;
        }
    ]

    def getLookupOwners() {
        if( !entity.orgtype ) {
            MsgBox.err("Please select an orgtype first.");
            return null;
        }    
        return InvokerUtil.lookupOpener( "entity:lookup", [
            "query.orgtype": entity.orgtype,
            onselect: { o->
                entity.owner = o;
                binding.refresh("entity.owner.address");
            }
        ]);
    }
    
    def lobModel = [
        fetchList: { o->
            return entity.lobs;
        },
    ] as EditorListModel;

    def sortInfos(sinfos) {
        def list = sinfos.findAll{it.lob?.objid==null && it.attribute.category==null};
        list = list + sinfos.findAll{it.lob?.objid==null && it.attribute.category!=null}.sort{ it.attribute.caption + it.attribute.sortorder };
        list = list + sinfos.findAll{ it.lob?.objid!=null }.sort{ it.lob.name + it.attribute.sortorder }; 
        return list;
    }

    def infoModel = [
        fetchList: { o-> 
            return sortInfos(entity.infos); 
        }
    ] as BasicListModel;
            
    def taxfeeModel = [
        fetchList: { o-> return entity.taxfees  },
        onOpenItem: { o,col->
            MsgBox.alert( o._taxfees );
        },
       
    ]as EditorListModel;

    def requirementModel = [
        fetchList: { o-> return entity.requirements; }
    ] as BasicListModel;

    
    def popupReports(def inv) {
        def popupMenu = new PopupMenuOpener();
        def list = InvokerUtil.lookupOpeners( inv.properties.category, [entity:entity] );
        list.each {
            String states = it.properties.states;
            if(!states || entity.state.matches(states)) {
                popupMenu.add( it );
            }
        }
        return popupMenu;
    }
    
     def searchList;

     def searchListModel = [
        fetchList: { o->return searchList;}
     ] as BasicListModel;

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
             
    void removeLob() {
        if(!selectedLob) return;
        if(selectedLob.assessmenttype != "NEW" ) 
            throw new Exception("Only new lines of business can be removed");
        entity.lobs.remove(selectedLob);
    }
    
}