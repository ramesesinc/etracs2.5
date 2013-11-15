package com.rameses.gov.etracs.bpls.application;
import com.rameses.rcp.common.*
import com.rameses.rcp.annotations.*
import com.rameses.osiris2.client.*
import com.rameses.osiris2.common.*
import com.rameses.rulemgmt.constraint.*;
import com.rameses.rulemgmt.*;
import java.rmi.server.*;

class BPApplicationExtended extends BPApplication {
    
    @Service("BPApplicationService")
    def appSvc;

     def query = [:];

     def selectedApplication;
     def searchList;
     def selectedRequirement;

     /*
     void doSearch() {
        searchList = appSvc.getForRenewalList(query);
        renewalListModel.reload();
     }
     */

     def searchListModel = [
        fetchList: { o->return searchList;}
     ] as BasicListModel;
             
     void loadRecordForRenewal() {
        if(!selectedApplication) 
            throw new Exception("Please select an application to renew");
        entity = appSvc.loadRecordForRenewal(selectedApplication);    
     }
         
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
        

     def popupReports(def inv) {
        def popupMenu = new PopupMenuOpener();
        def list = InvokerUtil.lookupOpeners( inv.properties.category, [entity:entity] );
        list.each{
            popupMenu.add( it );
        }
        return popupMenu;
    }

    void updateBalances() {
        def taxfees = entity.taxfees;
        entity.total_tax = taxfees.findAll{ it.taxfeetype == 'TAX'}.sum{it.amount};
        if(!entity.total_tax) entity.total_tax = 0.0;
        entity.total_regfee = taxfees.findAll{ it.taxfeetype == 'REGFEE'}.sum{it.amount};
        if(!entity.total_regfee) entity.total_regfee = 0.0;
        entity.total_othercharge = taxfees.findAll{ it.taxfeetype == 'OTHERCHARGE'}.sum{it.amount};
        if(!entity.total_othercharge) entity.total_othercharge = 0.0;
        entity.total = entity.total_tax + entity.total_regfee + entity.total_othercharge;
     }

    void assess() {
        def unedited = entity.infos.findAll{ it.value == null };
        if( unedited ) 
            throw new Exception("Some info(s) are not filled up. Please complete" ); 
        if(!infoLoaded)
            throw new Exception("Info is not updated. You need to run get info again");
        def result = appSvc.assess(entity);
        entity.taxfees = result.taxfees;
        entity.putAll( result.totals );
        taxfeeModel.reload();
        updateBalances();
        binding.refresh();
     }

}