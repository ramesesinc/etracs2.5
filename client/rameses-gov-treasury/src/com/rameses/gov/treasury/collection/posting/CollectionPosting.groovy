package com.rameses.gov.treasury.collection.posting

import com.rameses.osiris2.common.*;
import com.rameses.rcp.common.*;
import com.rameses.rcp.annotations.*;
import com.rameses.osiris2.client.*;

class CollectionPostingService
{
    @Binding
    def binding;
    
    @Service('CollectionPostingService')
    def svc;
    
    def chartTypes = ['NGAS', 'SRE'];
    
    def MODE_INIT   = 'init';
    def MODE_CREATE = 'create';
    def MODE_READ   = 'read';
    
    def entity;
    def mode;
            
    public String getTitle(){
        return 'Collection Posting'
    }
            
    def init() {
        entity = [:];
        mode = MODE_INIT;
        return 'init';
    }
    
    void open(){
        entity = svc.open(entity);
        mode = MODE_READ;
    }
    
    
    def next(){
        entity = svc.init(entity);
        mode = MODE_CREATE;
        return 'default';
    }
    
    def back(){
        mode = MODE_INIT;
        return 'init';
    }
    
    
    void post(){
        if (MsgBox.confirm('Post collection?')){
            svc.post(entity);
            mode = MODE_READ;
        }
    }
    
    
    
    def depositListHandler = [
            fetchList : { return entity.deposits },
    ] as BasicListModel;
            
            
    def remittanceListHandler = [
            fetchList : { return entity.migratedremittances },
    ] as BasicListModel;
                    
                    
    def getTotalDeposit(){
        if (entity.deposits )
            return entity.deposits.amount.sum();
        return 0.0
    }
    
    
    def getTotalRemittance(){
        if (entity.migratedremittances )
            return entity.migratedremittances.amount.sum();
        return 0.0
    }
                    
    
}