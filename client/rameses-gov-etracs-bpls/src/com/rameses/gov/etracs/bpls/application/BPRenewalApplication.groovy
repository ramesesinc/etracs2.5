package com.rameses.gov.etracs.bpls.application;
import com.rameses.rcp.common.*
import com.rameses.rcp.annotations.*
import com.rameses.osiris2.client.*
import com.rameses.osiris2.common.*
import com.rameses.rulemgmt.constraint.*;
import com.rameses.rulemgmt.*;
import java.rmi.server.*;

class BPRenewalApplication extends AbstractNewBPApplication {

    @Service("BusinessRenewalService")
    def renewalSvc;

    def query = [:];
    def selectedApplication;

    def renewalModel = [
        fetchList: {    
            return renewalSvc.getList(query);
        }
    ] as BasicListModel;

    void doSearch() {
        renewalModel.reload();
    }

    def openApplicationForRenewal() {
        if(!selectedApplication)
            throw new Exception("Please select an application");
        entity = renewalSvc.open([objid:selectedApplication.objid]);
    }

   


}