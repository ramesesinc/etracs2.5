package com.rameses.gov.etracs.treasury.collection.af.controllers;

import com.rameses.rcp.common.*;
import com.rameses.rcp.annotations.*;
import com.rameses.osiris2.client.*;
import com.rameses.osiris2.common.*;
import java.rmi.server.UID;
import com.rameses.util.*;

class IRAFTxnController extends PageFlowController 
{
    @Binding
    def binding;

    @Service('IRAFMasterService')
    def svc;

    @Service('RIVMasterService')
    def rivSvc

    @Service('DateService')
    def dateSvc;

    def entity;
    def prevEntity;
    def mode = 'view';
    def listModelHandler;
    def selectedIssuedItem;
    def selectedRequestedItem;
    
    def lookupRiv = InvokerUtil.lookupOpener('riv:lookup', [onselect:{ riv ->
            svc.checkIRAFByRIV(riv);
            entity.riv = rivSvc.open(riv);
            entity.txnno = '';
            if( entity.riv.type != 'PURCHASE' ) entity.txnno = 'AUTO-GENERATED';
            entity.requesteditems = [];
            entity.issueditems = [];
            entity.riv.items.each{ rivitem ->
                rivitem.receivedqty = 0;
                rivitem.stubfrom = 1;
                entity.requesteditems.add(rivitem);
            }
            binding.refresh();
            requestedItemsHandler.rebuildColumns();
            requestedItemsHandler.load();
            issuedItemsHandler.rebuildColumns();
            issuedItemsHandler.load();
        }]);

    String getTitle() {
        String text = "Title"
        if( listModelHandler ) text = listModelHandler.invoker.getCaption();
        if ("create".equals(getMode()))
          return text + " (New)";
        if ("edit".equals(getMode())) {
          return text + " (Edit)";
        }
        return text;
    }

    void init() {
        create();
        super.start();
    }

    void create() {
        entity = createEntity();
        mode = 'create';
        binding?.focus('riv');
    }

    Map createEntity() {
        return [
            objid:'IRAF'+new UID(),
            state:'DRAFT',
            preparedby: [
                objid   : (OsirisContext.env.USERID? OsirisContext.env.USERID:'SYSTEM'),
                name    : (OsirisContext.env.USERNAME? OsirisContext.env.USERNAME:'SYSTEM'),
                title   : (OsirisContext.env.JOBTITLE? OsirisContext.env.JOBTITLE:'SYSTEM')
            ],
            txndate     : dateSvc.serverDate,
            txnno       : '',
            requesteditems: [],
            issueditems: []
        ];
    }
        
    void save(){
        if( entity.riv.type == 'PURCHASE' ) {
            if( entity.issueditems.size() == 0 ) 
                throw new Exception("At least 1 item to be received is required.");
        } 
        else {
            if( !entity.requesteditems.find{ it.receivedqty > 0 } ) 
                throw new Exception("At least 1 requested item to be received is required.");
        }
        if( mode == "create")
            entity = svc.create( entity );
        else
            entity = svc.update( entity );
        def oldmode = mode;
        mode = "view";
        if ( listModelHandler ) {
            entity.riv_requestedby_name = entity.riv.requestedby.name
            if ("edit".equals(oldmode))
                listModelHandler.handleUpdate(entity);
            else if ("create".equals(oldmode))
                listModelHandler.handleInsert(entity);
        }
    }

    void open() {
        entity = svc.open(entity);
        println entity.riv;
        prevEntity = entity
        mode = 'view';
        super.start();
    }

    void edit() {
        mode = "edit";
        binding?.focus('riv');
    }
    
    def cancel() {
        if( prevEntity ) entity = prevEntity;
        else entity = createEntity();
        mode = 'view';
        binding.refresh('entity.*');
        requestedItemsHandler.load();
        issuedItemsHandler.load();
    }
    
    void approve() {
        if( MsgBox.confirm("You are about to approve this document. Continue?") ) {
            entity = svc.approve( entity );
            binding?.refresh('entity.*');
        }
    }
    
    def delete() {
        if( MsgBox.confirm("You are about to delete this document. Continue?") ) {
            svc.delete( entity );
            if( listModelHandler ) listModelHandler.handleRemove(entity);
        }
    }

    def requestedItemsHandler = [
        getRows         : { return 10; },
        getColumns      : { return requestedItemsColumns; },
        onColumnUpdate  : { item, colName -> validate(item, colName); },
        fetchList       : { return entity.requesteditems; }
    ] as SubListModel;

    Column[] getRequestedItemsColumns() {
        List columns = [
            new Column(name:"af.objid", caption:"AF No.", minWidth:60),
            new Column(name:"requestedqty", caption:"Requested Qty.", type:"integer"),
            new Column(name:"issuedqty", caption:"Issued Qty.", type:"integer")
        ];
        if( entity.riv?.type == 'PURCHASE' )
            columns.add( new Column(name:"receivedqty", caption:"Received Qty.", type:"integer"));
        else columns.add(new Column(name:"receivedqty", caption:"Received Qty.", editable:"true", type:"integer"));
        columns.add(new Column(name:"stubfrom", caption:"Stub No.", type:"integer", editable:"true"));
        return columns as Column[];
    }

    void validate( item, colName ) {
        if( colName == 'receivedqty' ) {
            if( item.requestedqty < item.receivedqty )
                throw new Exception("Received Qty. exceeds in the quantity requested.");
        }
    }

    def issuedItemsHandler = [
        getRows     : { return 10; },
        getColumns  : { return issuedItemsColumns; },
        fetchList   : { return entity.issueditems },
        onRemoveItem: { item -> 
            if( MsgBox.confirm("Remove selected item?") ) {
                def reqitem = entity.requesteditems.find{ it.af.objid == item.af.objid };
                if( mode != 'create' ) reqitem.receivedqty -= item.receivedqty;
                entity.issueditems.remove( item );
            }
        }
    ] as SubListModel;
    
    Column[] getIssuedItemsColumns() {
        def columns = [new Column(name:"af.objid", caption:"AF No.")];
        if( entity.riv?.type == 'PURCHASE' )
            columns.add(new Column(name:"receivedqty", caption:"Received Qty."));
        else columns.add(new Column(name:"stubno", caption:"Stub No."));
        columns.addAll([
            new Column(name:"prefix", caption:"Prefix"),
            new Column(name:"startseries", caption:"Start Series", format:"#", type:"integer"),
            new Column(name:"endseries", caption:"End Series", format:"#", type:"integer"),
            new Column(name:"suffix", caption:"Suffix")
        ]);
        return columns;
    }

    def addPurchaseItem() {
        def handler = { item ->
            def reqitem = entity.requesteditems.find{ it.af.objid == item.af.objid };
            if( item.af.type == 'serial' ) {
                def sameAfList = entity.issueditems.findAll{ it.af.objid == item.af.objid && it.prefix == item.prefix && it.suffix == item.suffix };
                sameAfList.each{ ritem->
                    def err = false;
                    ritem.prefix = ritem.prefix? ritem.prefix:'';
                    ritem.suffix = ritem.suffix? ritem.suffix:'';
                    if( item.startseries >= ritem.startseries && item.startseries <= ritem.endseries ) err = true;
                    if( item.endseries >= ritem.startseries && item.endseries <= ritem.endseries ) err = true;
                    if( err ) throw new Exception("There is an overlapping in series for Item ${ritem.prefix} ${ritem.startseries} - ${ritem.endseries} ${ritem.suffix}");
                }
            }
            reqitem.receivedqty += item.receivedqty;
            if( !entity.issueditems ) entity.issueditems = [];
            item.objid = 'IRAF-ITM'+new UID();
            entity.issueditems.add(item);
            issuedItemsHandler.load();
            requestedItemsHandler.load();
        };
        return InvokerUtil.lookupOpener("irafpurchase:create", [iraf:entity, addItemHandler:handler] );
    }
}