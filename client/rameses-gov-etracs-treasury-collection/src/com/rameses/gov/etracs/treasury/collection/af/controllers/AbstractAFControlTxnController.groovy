package com.rameses.gov.etracs.treasury.collection.af.controllers;

import com.rameses.rcp.common.*;
import com.rameses.rcp.annotations.*;
import com.rameses.osiris2.client.*;
import com.rameses.osiris2.common.*;
import com.rameses.util.*;
import java.rmi.server.UID;

public abstract class AbstractAFControlTxnController
{
    @Binding
    def binding

    @Service('UserListService')
    def userSvc

    def af
    def aftype
    def mode
    def afcontrol
    def oncreate
    def collector
    def aflist
    def collectorlist
    def qtyreceived
    def qtyissued
    def startseries

    def navActions
    def formActions
    def styleRules
    def modelist = LOV.AFCONTROL_MODE

    public abstract def getAftype()
    
    void init() {
        mode = 'create'
        title = 'New '+title
        afcontrol = [ objid: 'AF'+new UID() ]
    }

    void create(){
        afcontrol.collector = collector
        afcontrol.afid = af.properties.afid
        afcontrol.aftype = af.properties.aftype
        afcontrol.serieslength = (af.properties.serieslength? af.properties.serieslength:'')
        afcontrol = svc.create( afcontrol )
        if( oncreate ) oncreate( afcontrol )
        mode = 'view' 
    }

    void approve() {
        if( MsgBox.confirm('Approve record?') ) {
            afcontrol = svc.approve( afcontrol )
            mode = 'view'
        }
    }

    void open() {
        EntityUtil.fieldToMap(afcontrol)
        collector = collectorlist.find{ it.objid == afcontrol.collector.objid }
        af = aflist.find{ it.properties.objid == afcontrol.afid }
        mode = 'view'
    }

    List getCollectorlist() {
        if( !collectorlist ) collectorlist = userSvc.getCollectorList()
        return collectorlist
    }
    
    void setCollectorlist( List collectorlist ) {
        this.collectorlist = collectorlist
    }

    List getAflist() {
        if( !aflist ) aflist = InvokerUtil.lookupOpeners('collection:form',[:]);
        return aflist.findAll{ it.properties.aftype == aftype }
    }
    
    void setAflist( List aflist ) {
        this.aflist = aflist
    }

    def getQtyreceived() { return this.qtyreceived }
    def getQtyissued() { return this.qtyissued }
    def getStartseries() { return this.startseries }
    
    void setQtyreceived( qtyreceived ) { this.qtyreceived = qtyreceived }
    void setQtyissued( qtyissued ) { this.qtyissued = qtyissued }
    void setStartseries( startseries ) { this.startseries = startseries }
}