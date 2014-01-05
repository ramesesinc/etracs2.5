package com.rameses.gov.etracs.bpls.application;
import com.rameses.rcp.common.*
import com.rameses.rcp.annotations.*
import com.rameses.osiris2.client.*
import com.rameses.osiris2.common.*
import com.rameses.rulemgmt.constraint.*;
import com.rameses.rulemgmt.*;
import java.rmi.server.*;

class AbstractBPApplication extends PageFlowController {

    @Binding
    def binding;

    @Service("BPInfoRuleService")
    def infoRuleSvc;

    @Service("BPAssessmentRuleService")
    def assessmentRuleSvc;

    @Service("BPApplicationService")
    def appSvc;

    def entity = [lobs:[], taxfees:[], requirements:[], appinfos:[], assessmentinfos:[]];
    def officeTypes = LOV.BUSINESS_OFFICE_TYPES;
    def orgTypes = LOV.ORG_TYPES;
    def lobAssessmentTypes = ["RENEW", "RETIRE"];

    String message;
    def appTypes = LOV.BUSINESS_APP_TYPES;
    def selectedLob;
    def step;
    boolean dirty = false;
    boolean lobUpdated = false;

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

    def requirementModel = [
        fetchList: { o-> return entity.requirements; }
    ] as BasicListModel;

    def appInfoModel = [
        fetchList: { o-> 
            return sortInfos(entity.appinfos); 
        }
    ] as BasicListModel;

    def assessmentInfoModel = [
        fetchList: { o-> 
            return sortInfos(entity.assessmentinfos); 
        }
    ] as BasicListModel;

    def taxfeeModel = [
        fetchList: { o-> return entity.taxfees  },
        onOpenItem: { o,col->
            MsgBox.alert( o._taxfees );
        },
    ]as EditorListModel;

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
                lobUpdated = true;
                binding.focus("lob");
            }
        ]);
    }
             
    void removeLob() {
        if(!selectedLob) return;
        if(selectedLob.assessmenttype != "NEW" ) 
            throw new Exception("Only new lines of business can be removed");
        entity.lobs.remove(selectedLob);
        lobUpdated = true;
    }

    void retireLOB() {
        if(!selectedLob) return;
        if(selectedLob.assessmenttype != "RENEW" ) 
            throw new Exception("Only renew lines of business can be retired");
        selectedLob.assessmenttype = 'RETIRE'    
        lobUpdated = true;
    }

    void unretireLOB() {
        if(!selectedLob) return;
        if(selectedLob.assessmenttype != "RETIRE" && selectedLob.assessmenttype != "RETIRED" ) 
            throw new Exception("Only retired lines of business can be unretired");
        selectedLob.assessmenttype = 'RENEW'    
        lobUpdated = true;
    }

    def updateAppInfo() {
        return InvokerUtil.lookupOpener( "bpapplicationinfo:edit", [
            entity: entity, 
            initial: 'info',
            service: infoRuleSvc,
            title: 'Business Information',
            existingInfos: entity.appinfos,
            handler:{ result ->
                entity.appinfos = result.infos;
                entity.requirements = result.requirements;
                appInfoModel.reload();
                requirementModel.reload();
                dirty = true;
            }
        ]);
     }

     def updateAssessmentInfo() {
        return InvokerUtil.lookupOpener( "bpapplicationinfo:edit", [
            entity: entity, 
            initial: 'info',
            service: assessmentRuleSvc,
            initialInfos: entity.appinfos.collect{it},
            existingInfos: entity.assessmentinfos,
            title: 'Assessment Information for ' + (entity.appyear?entity.appyear:' Current Year'),
            handler:{ result ->
                entity.assessmentinfos = result.infos.findAll{ it.infotype == 'assessment' };
                entity.requirements = result.requirements;
                assessmentInfoModel.reload();
                requirementModel.reload();
                entity.taxfees = [];
                taxfeeModel.reload();
                lobUpdated = false;
                dirty = true;
            }
        ]);
    }

    def verifyAppInfo() {
        if(!entity.appinfos) 
            throw new Exception("Please specify at least one info for business");
    }

    def verifyLOB() {
        if(!entity.lobs) 
            throw new Exception("Please specify at least one line of business");
    }

    def verifyAssessmentInfo() {
        if(lobUpdated)
            throw new Exception("Please run update assessment info again. Line of Business was updated.");
        if(!entity.assessmentinfos) 
            throw new Exception("Please specify at least one assessment information");
    }

    
    
}