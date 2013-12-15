package com.rameses.gov.etracs.bpls.application;
import com.rameses.rcp.common.*
import com.rameses.rcp.annotations.*
import com.rameses.osiris2.client.*
import com.rameses.osiris2.common.*
import com.rameses.rulemgmt.constraint.*;
import com.rameses.rulemgmt.*;
import java.rmi.server.*;

class AbstractNewBPApplication extends AbstractBPApplication {

    void init() {
        entity.appinfos.clear();
        entity.assessmentinfos.clear();
    	entity = [:];
        entity.objid = "BPAPP"+new UID();
        entity.state = "draft";
        entity.taxfees = [];
        entity.requirements = [];
        entity.lobs = [];
        lobModel.reload();
        requirementModel.reload();
        appInfoModel.reload();
        assessmentInfoModel.reload();
    }
    
     def selectedRequirement;

     def editRequirement() {
        if(selectedRequirement?.type) {
            try {
             def opener = InvokerUtil.lookupOpener( "bprequirement:" + selectedRequirement.type, [
                entity:selectedRequirement,
                handler: { o->
                    selectedRequirement.putAll(o);
                    selectedRequirement.status = "completed";
                    requirementModel.reload();
                }]);
              return opener;  
            }
            catch(Exception e) {;}
        }
     }

   
    def openApplication() {
        return  InvokerUtil.lookupOpener( "bpapplication:open", [entity: entity] );
    }

    void saveCreate() {
        if( !entity.lobs ) {
            throw new Exception("Please provide at least one line of business. Click on Add Line of Business Info");
        }
        if( !entity.appinfos) {
            throw new Exception("Please provide at least app information. Click on Edit Info");
        }
        if( !entity.assessmentinfos) {
            throw new Exception("Please provide at least assessment information. Click on Edit Info");
        }

        entity = appSvc.create( entity );
        entity.state = 'info';
     }

}