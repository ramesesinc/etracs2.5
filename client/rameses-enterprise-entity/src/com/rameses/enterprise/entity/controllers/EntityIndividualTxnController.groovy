package com.rameses.enterprise.entity.controllers;

import com.rameses.rcp.common.*
import com.rameses.rcp.annotations.*
import com.rameses.osiris2.client.*
import com.rameses.osiris2.common.*

public class EntityIndividualTxnController
{
    @Binding
    def binding

    @Service('EntityIndividualMasterService')
    def svc
    
    def listModelHandler
    def mode = "view" ;
    def entity;
    def oldEntity;
    def citizenshipList = LOV.CITIZENSHIP
    def genderList = LOV.GENDER
    def civilStatusList = LOV.CIVIL_STATUS
    def professionList = LOV.PROFESSION

    def formActions;
    def title = "Individual Entity";

    boolean showClose = true
    boolean allowMapping = true
    void init() {
        entity = createEntity();
        binding?.refresh('entity.*')
        binding?.focus( 'entity.lastname' )
        mode = "create";
    }

    def createEntity() {
        return [ 
            type:'individual', 
            objid:'E'+new java.rmi.server.UID(),
            cards: [],
            contacts: []
        ]
    }

    void edit() {
        binding?.refresh('entity.*')
        binding?.focus( 'entity.lastname' )
        mode = "edit";
    }
    
    def cancel() {
        mode = "view";
        if( oldEntity ) {
            entity = svc.open( oldEntity )
            cardListHandler.load()
            contactListHandler.load()
        }
        else return '_close'
    }
    
    void save() {
        if( mode == 'create' ) {
            entity = svc.create( entity );
        } 
        else if( mode == 'edit' ) {
            entity = svc.update( entity );
        }
        String oldMode = mode
        mode = "view";
        if( listModelHandler ) {
            if("edit".equals(oldMode))
                listModelHandler.handleUpdate( entity )
            else if("create".equals(oldMode)) 
                listModelHandler.handleInsert( entity )
        }
    }
    
    def delete() {
        if( MsgBox.confirm("Delete record?") ) {
            svc.delete( entity );
            if( listModelHandler ) listModelHandler.handleRemove( entity )
            mode = "view";
            return '_close'
        }
        if( !listModelHandler ) init()
    }
    
    void open() {
        oldEntity = entity
        this.entity = svc.open( entity );
        if( !this.entity) { init() }
    }
    

    /*===============================================================================================
     * Contact Support 
     *=============================================================================================*/
    def addContact() {
       def handler = { item ->
            if( !entity.contacts ) entity.contacts = []
            def duplicate = entity.contacts.find{ it.contacttype == item.contacttype && it.contact == item.contact}
                if( duplicate ) throw new Exception('Contact information already exists.')
                entity.contacts.add( item )
                contactListHandler.load()
        }
        return InvokerUtil.lookupOpener('contact:create', [addHandler:handler] )
    }
    
    def contactListHandler = [
        getColumns : { return [
            new Column(name:'contacttype', caption:'Type'),
            new Column(name:'contact', caption:'Contact'),
        ]},
        fetchList  : { return entity.contacts },
        onRemoveItem : { 
            if( MsgBox.confirm('Remove selected contact?') ) {
                entity.contacts.remove( it )
            }
        }
    ] as SubListModel

    /*===============================================================================================
     * Card Support 
     *=============================================================================================*/
    def addCard() {
        def handler = { item->
            if( !entity.cards ) entity.cards = []
            def duplicate = entity.cards.find{ it.cardtype == item.cardtype && it.cardno == item.cardno}
            if( duplicate ) throw new Exception('ID Card already exists.')
            entity.cards.add( item )
            cardListHandler.load()
        }
        return InvokerUtil.lookupOpener('card:create', [addHandler:handler] )
    }
    
    def cardListHandler = [
        getColumns : { return [
            new Column(name:'cardtype', caption:'Type'),
            new Column(name:'cardno', caption:'Card No.'),
            new Column(name:'expiry', caption:'Expiry'),
        ]},
        fetchList  : { return entity.cards },
        onRemoveItem : { 
            if( MsgBox.confirm('Remove selected ID Card?') ) {
                entity.cards.remove( it )
            }
        }
    ] as SubListModel

    /* ----------------------------------------------------------------
    *
    * Mapping Support
    *
    ------------------------------------------------------------------*/
    def showMapping() {
        listHandler.load()
        return 'mapping'
    }

    def getEntityinfo() {
        return 'Mapping information for ' + entity.name + ' (' + entity.entityno + ')'
    }

    void broadcastRequest() {
        /*if( MsgBox.confirm('Broadcast mapping request to all registered domain?') ) {
            svc.broadcastMappingRequest( entity )
        }*/
    }

    def listHandler = [
        getColumns : { return [
            new Column(name:'domainid', caption:'LGU No.' ),
            new Column(name:'domainname', caption:'LGU Name' ),
            new Column(name:'entityno', caption:'ID No.' ),
            new Column(name:'entityname', caption:'Name' ),
            new Column(name:'entityaddress', caption:'Address' ),
        ]},
        fetchList : { return svc.getMappingList( entity.objid ) }
    ] as SubListModel

    
}