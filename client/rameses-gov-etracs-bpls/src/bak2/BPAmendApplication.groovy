package com.rameses.gov.etracs.bpls.application;
import com.rameses.rcp.common.*
import com.rameses.rcp.annotations.*
import com.rameses.osiris2.client.*
import com.rameses.osiris2.common.*
import com.rameses.rulemgmt.constraint.*;
import com.rameses.rulemgmt.*;
import java.rmi.server.*;

class BPAmendApplication extends AbstractNewBPApplication {

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
    }

    def updateAssessmentInfo() {
        def mentity = [:];
        mentity.putAll( entity );
        mentity.apptype = 'RENEW';
        mentity.lobs = entity.lobs.findAll{ it.assessmenttype != 'RENEW' }
        mentity.appinfos = entity.apinfos;
        mentity.assessmentinfos = entity.assessmentinfos;

        return InvokerUtil.lookupOpener( "bpapplicationinfo:edit", [
            entity: mentity, 
            initial: 'info',
            service: assessmentRuleSvc,
            initialInfos: entity.appinfos.collect{it},
            existingInfos: entity.assessmentinfos,
            title: 'Assessment Information for Amend',
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