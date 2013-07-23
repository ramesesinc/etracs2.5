package com.rameses.gov.etracs.treasury.collection.af.controllers;

import com.rameses.rcp.common.*;
import com.rameses.rcp.annotations.*;
import com.rameses.osiris2.client.*;
import com.rameses.osiris2.common.*;
import com.rameses.osiris2.reports.*;
import java.rmi.server.UID;
import com.rameses.util.*;

class RIVTxnController extends PageFlowController
{
    @Binding
    def binding

    @Service('RIVMasterService')
    def svc

    @Service('ReportParameterService')
    def paramsSvc

    @Service('UserListService')
    def userSvc
    
    @Service('Var')
    def var

    def entity
    def prevEntity
    def mode = 'view'
    def type = 'PURCHASE'
    def selectedRivItem
    def listModelHandler

    Map createEntity() {
        def afo = getAFO()
        return [
            objid       : 'R'+new UID(),
            state       : "DRAFT",
            type        : type,
            requestedby : [
                objid   : (OsirisContext.env.USERID? OsirisContext.env.USERID : 'SYSTEM' ),
                name    : (OsirisContext.env.USERNAME? OsirisContext.env.USERNAME : 'SYSTEM' ),
                title   : (OsirisContext.env.JOBTITLE? OsirisContext.env.JOBTITLE : 'SYSTEM' )
            ],
            treasuryname: 'LGU ' + var.lgu_name,
            lgu         : var.lgu_name,
            approvedby  : [
                objid   : afo?.objid,
                name    : afo?.name,
                title   : afo?.title
            ],
            items  : [],
        ];
    }

    public String getTitle()
    {
        String text = "Title";
        if( listModelHandler ) text = listModelHandler.invoker.caption;
        if ("create".equals(mode))
            return text + " New";
        if ("edit".equals(mode)) 
            return text + " Edit";
        return text;
    }
    
    void init() {
        if( listModelHandler ) type = listModelHandler.type;
        create();
        super.start();
    }
    
    void create() {
        entity = createEntity();
        mode = 'create';
        binding?.focus('entity.info.treasuryname');
        itemHandler.load();
    }
    
    void open() {
        if( listModelHandler ) type = listModelHandler.type;
        entity = svc.open(entity);
        prevEntity = entity
        mode = 'view';
        super.start();
    }
    
    void edit() {
        mode = "edit";
        binding?.focus('entity.info.treasuryname');
    }
    
    def cancel() {
        if( prevEntity ) entity = prevEntity;
        else entity = createEntity();
        mode = 'view';
        binding.refresh('entity.*');
        itemHandler.load();
    }
    
    void save() {
        if( entity.items.length == 0 ) throw new Exception("At least 1 item is requested.");
        if( mode == "create")
            entity = svc.create( entity );
        else
            entity = svc.update( entity );
        def oldmode = mode;
        mode = "view";
        if ( listModelHandler ) {
            entity.requestedby_name = entity.requestedby.name
            if ("edit".equals(oldmode))
                listModelHandler.handleUpdate(entity);
            else if ("create".equals(oldmode))
                listModelHandler.handleInsert(entity);
        }
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

    def getAFO() {
        if( type == 'COLLECTION' ) {
            def afos = userSvc.getUsersByRole('AFO')
            if( afos ) { return afos[0] }
        }
        return null
    }

    def getLookupRequester() {
        def opener = InvokerUtil.lookupOpener("user:lookup", [onselect:{ entity.requestedby = it; }]);
        opener.caption = "Lookup Requester";
        return opener;
    }

    def getLookupApprover() {
        def opener = InvokerUtil.lookupOpener("user:lookup", [onselect:{ entity.approvedby = it; }]);
        opener.caption = "Lookup Approver";
        return opener;
    }
    
    def lookupAf = InvokerUtil.lookupOpener("af:lookup",[onselect:{ af ->
            def dup = entity.items.find{ it.af.objid == af.objid }
            if( dup ) throw new Exception("Duplicate entry for AF No. ${af.objid} not allowed.");
            selectedRivItem.af = af
        }]);

    def itemHandler = [
        getRows    : { return 20; },
        getColumns : {
            return [
                new Column(caption:"AF No.*", minWidth:60, editable:true, type:'lookup', handler:lookupAf, expression:'#{af.objid}' ),
                new Column(name:"requestedqty", caption:"Requested Qty.*", minWidth:100, editable:true, type:"integer"),
                new Column(name:"issuedqty", caption:"Issued Qty.", minWidth:100, type:"integer"),
            ];
        },
        fetchList    : { return entity.items; },
        createItem   : { 
            return [
                 objid: "I"+new UID(),
                 requestedqty: 0, 
                 issuedqty: 0,
                 rivid: entity.objid
            ]; 
        },
        validate: { listItem ->
            def item = listItem.item
            if( !item.af.objid ) throw new Exception("AF No. is required.");
            if( item.requestedqty <= 0 ) throw new Exception("Requested Qty. must be greater than zero.");
        },
        onAddItem: { item -> 
            if( !entity._add ) entity._add = [];
            entity._add.add(item);
            entity.items.add( item );
        },
        onRemoveItem : { item -> 
            //if( mode == "view" ) return false;
            if( MsgBox.confirm("Remove selected item?") ) {
                if( !entity._remove ) entity._remove = [];
                entity._remove(item);
                entity.items.remove( item );
            }
        },
    ] as SubListModel;

    /************************************************
    **Report Support
    ************************************************/

    def reportRIV =[
        getReportName : { return 'com/rameses/gov/etracs/treasury/collection/reports/ReportRIV.jasper' },
        getSubReports : { 
            return [
                new SubReport( 'ReportRIVItem', 'com/rameses/gov/etracs/treasury/collection/reports/ReportRIVItem.jasper' ),
            ] as SubReport[]
        },
        getReportData : { return entity },
        getParameters : { paramsSvc.getStandardParameter( env.USERNAME ); }
    ] as ReportModel;
    
    def reportRIS =[
        getReportName : { return 'com/rameses/gov/etracs/treasury/collection/reports/ReportRIS.jasper' },
        /*getSubReports : { 
            return [
                new SubReport( 'ReportRISItem', 'com/rameses/gov/etracs/treasury/collection/reports/ReportRISItem.jasper' ),
            ] as SubReport[]
        },*/
        getReportData : { return entity },
        /*getParameters : { paramsSvc.getStandardParameter( env.USERNAME ); }*/
    ] as ReportModel;

    def reportName = "RIV";
    def getReport() {
        println 'report name->'+reportName
        if("RIV".equals(reportName))
            return reportRIV
        else {
            def r = InvokerUtil.lookupOpener('ris:report', [:])
            r.handle.setReportData(entity);
            r.handle.setParameters(paramsSvc.getStandardParameter( env.USERNAME ))
            println r.handle;
            println r.handle.viewReport();
            println 'passing'
            //return reportRIS
        }
        
    }

    def viewRIV() {
        // for report data
        entity.rivtxnno = entity.txnno
        entity.rivtxndate = entity.txndate.toString()
        
        reportName = "RIV"
        report.viewReport();
    }

    def viewRIS() {
        // for report data
        entity.rivtxnno = entity.txnno
        entity.rivtxndate = entity.txndate.toString()
        
        reportName = "RIS"
        
        def r = InvokerUtil.lookupOpener('ris:report', [:])
        r.handle.setReportData(entity);
        r.handle.setParameters(paramsSvc.getStandardParameter( env.USERNAME ))
        println r.handle.getReportData();
        println 'ris->'+r.handle;
        //println 'view report->'+r.handle.getReport();
        //println 'passing'
        return r.handle.viewReport()
    }
}