package com.rameses.gov.etracs.bpls.application;
import com.rameses.rcp.common.*
import com.rameses.rcp.annotations.*
import com.rameses.osiris2.client.*
import com.rameses.osiris2.common.*
import com.rameses.rulemgmt.constraint.*;
import com.rameses.rulemgmt.*;
import java.rmi.server.*;

class BPApplication extends PageFlowController {
    
    @Service("BPAssessmentService")
    def service;

    @Binding
    def binding;

    def entity = [lobs:[], taxfees:[], requirements:[], infos:[]];
    def officeTypes = LOV.BUSINESS_OFFICE_TYPES;
    def orgTypes = LOV.ORG_TYPES;
    def lobAssessmentTypes = ["RENEW", "RETIRE"];

    def appTypes = LOV.BUSINESS_APP_TYPES;
    def txnmodes = ["ONLINE", "CAPTURE"];
    def selectedLob;


    void initNew() {
	entity = [:];
        entity.objid = "BPAPP"+new UID();
        entity.state = "new";
        entity.infos = [];
        entity.taxfees = [];
        entity.requirements = [];
        entity.lobs = [];
    }
    
    @PropertyChangeListener
    def listener = [
        "entity.orgtype" : { o->
            entity.permitee = null;
        }
    ]

    def getLookupPermitees() {
        if( !entity.orgtype ) {
            MsgBox.err("Please select an orgtype first.");
            return null;
        }    
        return InvokerUtil.lookupOpener( "entity:lookup", [
            "query.orgtype": entity.orgtype,
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
    ] as EditorListModel;

    void removeLob() {
        if(!selectedLob) return;
        if(selectedLob.assessmenttype != "NEW" ) 
            throw new Exception("Only new lines of business can be removed");
        entity.lobs.remove(selectedLob);
    }

    def sortInfos(sinfos) {
        return sinfos.findAll{it.lob?.objid==null} + sinfos.findAll{ it.lob?.objid!=null }.sort{ it.lob.name };
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

    def getInfo() {
        def opener = InvokerUtil.lookupOpener("bpapplication:info", [
            entity: entity, 
            handler: { infos, reqs ->
                //after updating make sure to clean up taxes and fees too.
                entity.infos = infos;
                entity.requirements = reqs;
                entity.taxfees.clear();    
                infoModel.reload();
                requirementModel.reload();
                taxfeeModel.reload();
            }
        ]);    
        opener.target = "popup";
        return opener;
    }

    def getTaxFees() {
        def result = service.execute(entity);
        entity.taxfees = result.taxfees;
        taxfeeModel.reload();
    }

     void clearInfos() {
        entity.infos.clear();
        entity.requirements.clear();
        entity.taxfees.clear();
        infoModel.reload();
        taxfeeModel.reload();
        requirementModel.reload();
     }

     void validateInitialInfo() {
        if( !entity.lobs)
            throw new Exception("Please provide at least one line of business");
     }
     
}