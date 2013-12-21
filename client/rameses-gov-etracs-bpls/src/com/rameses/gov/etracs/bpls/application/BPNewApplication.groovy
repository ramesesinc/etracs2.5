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
     boolean hasLookup = false;
             
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
        hasLookup = true;
        return InvokerUtil.lookupOpener( "entity:lookup", [
            "query.orgtype": entity.orgtype,
            onselect: { o->
                entity.owner = o;
                binding.refresh("entity.owner.address");
            },
            onempty: {
                entity.owner = null;
                binding.refresh("entity.owner.address");
                hasLookup = false;
            }
        ]);
    }

    //this saves or adds owner
    def showOwner() {
        if(!entity.orgtype)
            throw new Exception("Please select an org type");
        String action = (entity.owner?.objid) ? ":open" : ":create";
        if(action == ":create" && !hasLookup )
            throw new Exception("Please attempt first a lookup before creating a new record");

        String openerName = (entity.orgtype=='SING'?'individual':'juridical')+'entity';
        if( entity.orgtype == 'SING' ) {
            def initial = [:];
            def sh = { o->
                entity.owner = [ objid:o.objid, name:o.name, address:o.address ];
                binding.refresh("entity.owner.*");
            }
            return InvokerUtil.lookupOpener( "individualentity"+action, [entity: entity.owner, initial:initial, saveHandler:sh] );
        }
        else {
            def initial = [:];
            initial.orgtype = entity.orgtype;
            def sh = { o->
                entity.owner = [ objid:o.objid, name:o.name, address:o.address ];
                binding.refresh("entity.owner.*");
            }
            return InvokerUtil.lookupOpener( "juridicalentity"+action, [entity: entity.owner, initial: initial, saveHandler:sh] );
        }
    }

    def copyBusinessName() {
        entity.tradename = entity.businessname;
        binding.refresh("entity.tradename");
    }

     /******************************************************************
     * for verifying the business name
     ******************************************************************/
     void checkBusinessName() {
         searchList  = nameSvc.getList(entity.businessname); 
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