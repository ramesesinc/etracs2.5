package com.rameses.gov.etracs.bpls;
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
    
    def infos = [];      //used for storing temp info 
    def formInfos = [];  //controls
    boolean hasMoreInfo = false;

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

    def selectLob;
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

    def infoModel = [
        fetchList: { o-> 
            entity.infos = sortInfos( entity.infos );
            return entity.infos; 
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

    //this is called when infos are needed.
    void loadInfos() {
        infos.clear();
        def result = service.execute(entity);
        //phase 0 is the looping phase.    
        if( result.phase != 0 ) {
            hasMoreInfo = false;
            entity.infos.addAll(result.infos);
            entity.requirements.addAll(result.requirements);
            infos.clear();
            infoModel.reload();
            requirementModel.reload();
        }
        else {
            hasMoreInfo = true;
            infos.addAll( result.infos );
            buildFormInfos();
        }
     }

     void calculateTaxfees() {
        def result = service.execute(entity);
        entity.taxfees = result.taxfees;
        //if(result.infos) entity.infos.addAll( result.infos );
        if(result.requirements) entity.requirements = result.requirements;
        infoModel.reload();
        taxfeeModel.reload();
        requirementModel.reload();
     }

    public def sortInfos(sinfos) {
        return sinfos.findAll{it.lob?.objid==null} + sinfos.findAll{ it.lob?.objid!=null }.sort{ it.lob.name };
    }

    public def buildFormInfos() {
        formInfos = [];
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
     }

     //routine to add editing infos to the entity.infos
     void addInfos() {
        entity.infos.addAll(infos);
        infos.clear();
     }

     void updateInfos() {
        infoModel.reload();
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