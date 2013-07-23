package com.rameses.enterprise.entity.controllers;

import com.rameses.rcp.common.*
import com.rameses.rcp.annotations.*
import com.rameses.osiris2.client.*
import com.rameses.util.JaroWinkler;
import com.rameses.rcp.framework.TaskManager;

class EntityReconcileTxnController 
{
    @Binding
    def binding

    @Service('EntityReconcileMasterService')
    def svc
    
    @Service('EntityReconcileListService')
    def listSvc

    def mode 
    def entity 
    int numChars = 2
    double weightThreshold = 88.0

    def selectedMatchItem
    def selectedReconciledItem
    def matchList = []
    def reconciledList = []
    def taskmgr 
    def reconciletask
    def msg 

    void init() {
        entity = null
        matchList = []
        reconciledList = []
        mode = 'create' 
    }

    void initCreate(){
        init()
        matchListHandler.load()
        reconciledListHandler.load()
    }

    def oncomplete = { retval ->
        msg = null
        if ( retval.status == 'error' ){
            MsgBox.alert( retval.msg )
            mode = 'create' 
            binding.refresh('.*')
        }
        else {
            MsgBox.alert('Entities has been successfully reconciled.')
            binding.refresh('msg')
        }        
    }

    void doReconcile() {
        if( ! reconciledList ) throw new Exception('At least one reconciled entity is required.')
        if ( MsgBox.confirm('Reconcile selected entity?') ) {
            reconciletask = new ReconcileTask( svc:svc, entity:entity, reconciledList:reconciledList, oncomplete:oncomplete)
            taskmgr = new TaskManager()
            taskmgr.addTask( reconciletask )
            taskmgr.start()
            msg  = 'Please wait while entities are being reconciled.'
            mode = 'view'
            binding.refresh('msg')
        }
    }

    void searchMatch() {
        if( numChars < 1 ) throw new Exception('No. of Characters must be greater than one.')
        def searchtext = getEntitySearchCriteria()
        def list = listSvc.getListForReconcile( [searchtext:searchtext, objid:entity.objid] )
        if( !list ) throw new Exception('There are no matching entity records.')

        cleanUp()
        def wtThreshold = weightThreshold / 100.0 
        JaroWinkler jw = new JaroWinkler( weightThreshold, numChars)
        list.each{
            def wt = jw.compare( entity.name, it.name )
            if( wt  >= wtThreshold) {
                it.weight = (int)( wt * 100)
                matchList.add( it )
            }
        }
        matchList.sort{a, b -> (a.weight <=> b.weight) * -1 }
        matchListHandler.load()
    }

    def getEntitySearchCriteria() {
        if( ! entity ) throw new Exception('Entity to Reconcile is required.')
        def search = ''
        def index = entity.name.indexOf(',')
        if( entity.type == 'individual' && index >= 0 ) {
            def lastname = entity.name.substring(0, index)
            def firstname = entity.name.substring(index, entity.name.length())
            firstname = firstname.replaceAll(/[^a-zA-Z]/, '')
            search = lastname.substring(0, numChars) + '%, ' + firstname.substring(0, numChars)
        }
        else {
            search = entity.name.substring( 0, numChars )
        }
        println '='*50 
        println 'Search -> ' + search
        return search
    }

    void cleanUp() {
        matchList.clear()
        reconciledList.clear()
        matchListHandler.load()
        reconciledListHandler.load()
    }

    void addSelectedMatchItem() {
        if( selectedMatchItem ) {
            reconciledList.add( selectedMatchItem )
            matchList.remove( selectedMatchItem )
            matchListHandler.load()
            reconciledListHandler.load()
        }
    }

    void removeSelectedReconciledItem(){
        if( selectedReconciledItem ) {
            reconciledList.remove( selectedReconciledItem )
            matchList.add( selectedReconciledItem )
            matchListHandler.load()
            reconciledListHandler.load()
        }
    }

    def matchListHandler = [
        getRows      : { return 50 },
        getColumns   : { return [
            new Column(name:'entityno', caption:'#', width:80),
            new Column(name:'name', caption:'Name', width:300),
            new Column(name:'address', caption:'Addres', width:300),
            new Column(name:'weight', caption:'%', width:40),
        ]},
        fetchList : { return matchList },
    ] as SubListModel 

    def reconciledListHandler = [
        getRows      : { return 50 },
        getColumns   : { return [
            new Column(name:'entityno', caption:'#', width:80),
            new Column(name:'name', caption:'Name', width:300),
            new Column(name:'address', caption:'Addres', width:300),
            new Column(name:'weight', caption:'%', width:40),
        ]},
        fetchList : { return reconciledList },
    ] as SubListModel


    def onselect = {
        entity = it
        cleanUp()
    }

    def getLookupEntity() {
        return InvokerUtil.lookupOpener('entity.lookup', [onselect:onselect])
    }


    @Close
    public void closeForm() {
        if( reconciletask ) {
            reconciletask.setCancelled( true )
            reconciletask.setEnded( true )
            taskmgr.removeTask( reconciletask )
            taskmgr.stop()
        }
    }

}

class ReconcileTask extends com.rameses.rcp.common.Task {
    def svc 
    def entity
    def reconciledList 
    def oncomplete          //handler 

    def ended = false 
    def cancelled = false 

    public boolean accept() {
       return !ended && !cancelled 
    }

    public boolean isEnded() {
        return ended || cancelled 
    }

    public void execute() {
        def retval = svc.reconcile( [entity:entity, reconciledList:reconciledList] )
        if( oncomplete ) oncomplete( retval )
        ended = true
    }
}