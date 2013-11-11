package com.rameses.gov.etracs.bpls.application;
import com.rameses.rcp.common.*
import com.rameses.rcp.annotations.*
import com.rameses.osiris2.client.*
import com.rameses.osiris2.common.*
import com.rameses.rulemgmt.constraint.*;
import com.rameses.rulemgmt.*;
import java.rmi.server.*;

class BPApplicationRenew extends BPApplication {
    
    @Service("BPApplicationService")
    def appSvc;

     def query = [:];

     def selectedApplication;
     def searchList;
     void doSearch() {
        searchList = appSvc.getForRenewalList(query);
        renewalListModel.reload();
     }
     def renewalListModel = [
        fetchList: { o->return searchList;}
     ] as BasicListModel;
             
     void loadRecordForRenewal() {
        if(!selectedApplication) 
            throw new Exception("Please select an application to renew");
        entity = appSvc.loadRecordForRenewal(selectedApplication);    
     }
                 
}