package com.rameses.enterprise.entity.groovy;

import com.rameses.rcp.common.*
import com.rameses.rcp.annotations.*
import com.rameses.osiris2.client.*
import com.rameses.osiris2.common.*

public abstract class AbstractEntityController
{
    @Binding
    def binding
    
    @Service('EntityMasterService')
    def svc

    def listModelHandler
    def mode = "view" ;
    def entity;
    def prevEntity;

    abstract def getService();
    def getCreateFocusComponent() { return 'entity.objid'; }
    def getEditFocusComponent() { return 'entity.objid'; }
    def createEntity() { return [:]; }
    
    public void init() {
        entity = createEntity();
        entity.contacts = []
        entity._deletedContacts = []
        entity.cards = [];
        entity._deletedCards = []
        binding?.refresh('entity.*')
        binding?.focus( createFocusComponent )
        mode = "create";
    }

    public void edit() {
        binding?.refresh('entity.*')
        binding?.focus( createFocusComponent )
        mode = "edit";
    }
    
    public void cancel() {
        open( prevEntity );
        mode = "view";
    }
    
    public void save() {
        if( mode == 'create' ) {
            entity = service.create( entity );
        } 
        else if( mode == 'edit' ) {
            entity = service.update( entity );
        }
        String oldMode = mode
        mode = "view";
        if( listModelHandler ) {
            if("edit".equals(oldMode)) {
                listModelHandler.handleUpdate( entity )
            }
            else if("create".equals(oldMode)) {
                listModelHandler.handleInsert( entity )
            }
        }
    }
    
    public void delete() {
        if( MsgBox.confirm("Delete record?") ) {
            service.delete( entity );
            mode = "view";
        }
    }
    
    public void open( entity ) {
        prevEntity = entity
        this.entity = service.open( entity );
        if( ! this.entity) {
            init()
        }
    }
    
    /*===============================================================================================
     * Contact Support 
     *=============================================================================================*/
    
    def onaddContact = { contact ->
        if (! entity.contacts) entity.contacts = []
        checkDuplicateContact( contact )
        contact._isnew = true 
        entity.contacts.add( contact )
        contactListHandler.load()
    }
    
    void checkDuplicateContact( contact ){
        def dup = entity.contacts.find{ it.contacttype == contact.contacttype && it.contact == contact.contact}
        if( dup ) throw new Exception('Contact information already exists.')
    }
    
    def addContact() {
        return InvokerUtil.lookupOpener('contact:create', [addHandler:onaddContact] )
    }
    
    def contactListHandler = [
        getColumns : { return [
            new Column(name:'contacttype', caption:'Type'),
            new Column(name:'contact', caption:'Contact'),
        ]},
        fetchList  : { return entity.contacts },
        onRemoveItem : { item -> 
            if( MsgBox.confirm('Remove selected contact?') ) {
                entity.contacts.remove( selectedContact )
                if( ! entity._deletedContacts ) {
                    entity._deletedContacts = []
                }
                entity._deletedContacts.add( selectedContact )
            }
        }
    ] as SubListModel

    /*===============================================================================================
     * Card Support 
     *=============================================================================================*/
    
    def onaddCard = { card -> 
        if( ! entity.cards ) entity.cards = []
        checkDuplicateCard( card)
        card._isnew = true 
        entity.cards.add( card )
        cardListHandler.load()
    }
    
    void checkDuplicateCard( card){
        def dup = entity.cards.find{ it.cardtype == card.cardtype && it.cardno == card.cardno}
        if( dup ) throw new Exception('ID Card already exists.')
    }
    
    def addCard() {
        return InvokerUtil.lookupOpener('card:create', [addHandler:onaddCard] )
    }
    
    def cardListHandler = [
        getColumns : { return [
            new Column(name:'cardtype', caption:'Type'),
            new Column(name:'cardno', caption:'Card No.'),
            new Column(name:'expiry', caption:'Expiry'),
        ]},
        fetchList  : { return entity.cards },
        onRemoveItem : { item -> 
            if( MsgBox.confirm('Remove selected ID Card?') ) {
                entity.cards.remove( selectedCard )
                if( ! entity._deletedCards ) {
                    entity._deletedCards = []
                }
                entity._deletedCards.add( selectedCard )
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
        fetchList : {
            return svc.getMappingList( entity.objid )
        }
    ] as SubListModel

    boolean getAllowMapping() {
        return true 
    }
}