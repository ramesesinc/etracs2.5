package com.rameses.gov.etracs.bpls.application;
import com.rameses.rcp.common.*
import com.rameses.rcp.annotations.*
import com.rameses.osiris2.client.*
import com.rameses.osiris2.common.*
import com.rameses.rulemgmt.constraint.*;
import com.rameses.rulemgmt.*;
import java.rmi.server.*;

class BPRetireApplication extends AbstractNewBPApplication {

    @Service("BusinessSearchForAmendmentService")
    def renewalSvc;

    def query = [:];
    def selectedApplication;
    def list = [];

    def renewalModel = [
        fetchList: {    
            return list;
        }
    ] as BasicListModel;

    void doSearch() {
        list = renewalSvc.getList(query);
        renewalModel.reload();
    }

    def openApplication() {
        if(!selectedApplication)
            throw new Exception("Please select an application");
        entity = renewalSvc.open([objid:selectedApplication.objid]);
        entity.apptype = 'RETIRE';
        entity.lobs.each {
            it.assessmenttype = 'RETIRE';
        }
    }

     def updateAssessmentInfo() {
        return InvokerUtil.lookupOpener( "bpapplicationinfo:edit", [
            entity: entity, 
            initial: 'info',
            service: assessmentRuleSvc,
            initialInfos: entity.appinfos.collect{it},
            existingInfos: entity.assessmentinfos,
            title: 'Assessment for Retirement',
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

}