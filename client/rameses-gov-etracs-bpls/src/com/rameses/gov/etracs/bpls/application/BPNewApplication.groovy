package com.rameses.gov.etracs.bpls.application;
import com.rameses.rcp.common.*
import com.rameses.rcp.annotations.*
import com.rameses.osiris2.client.*
import com.rameses.osiris2.common.*
import com.rameses.rulemgmt.constraint.*;
import com.rameses.rulemgmt.*;
import java.rmi.server.*;

class BPNewApplication extends AbstractNewBPApplication {

     @Service("BusinessNameVerificationService")
     def nameSvc;
             
     def searchNamePass = true;
     def dirty = false;
             
     def initNew() {
        init();
        entity.apptype = 'NEW';
        entity.txnmode = 'ONLINE';
     }

     def start() {
        initNew();
        return  super.start("create");
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

     /******************************************************************
     * for verifying the business name
     ******************************************************************/
     void checkBusinessName() {
         searchList  = nameSvc.getList(entity.tradename); 
         if(searchList) {
            searchNamePass = false;
            searchListModel.reload();
         }
         else {
            searchNamePass = true;
         }
     }
             

     void save() {
        appSvc.update( entity );
     }
     //*****************************************************************

     def validateClose() {
        if(dirty) {
            MsgBox.alert("data is dirty");
            throw new com.rameses.util.BreakException();
        }    
     }

    
     def searchList;

     def searchListModel = [
        fetchList: { o->return searchList;}
     ] as BasicListModel;


    
}