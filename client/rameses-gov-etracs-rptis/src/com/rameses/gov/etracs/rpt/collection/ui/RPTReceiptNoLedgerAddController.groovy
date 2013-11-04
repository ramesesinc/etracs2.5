package com.rameses.gov.etracs.rpt.collection.ui;


import com.rameses.rcp.common.*;
import com.rameses.rcp.annotations.*;
import com.rameses.osiris2.client.*;
import com.rameses.osiris2.common.*;
import com.rameses.gov.etracs.rpt.common.*;


class RPTReceiptNoLedgerAddController
{
    @Binding
    def binding;
    
    @Service('RPTReceiptNoLedgerService')
    def svc;
            
    @Service('PropertyClassificationService')
    def propSvc;
    
    @Service('LGUService')
    def lguSvc;
    
    def onAdd;      //handler 
    def onUpdate;   //handler
    
    def MODE_CREATE = 'create';
    def MODE_EDIT   = 'edit';
    
    def mode;
    def entity;
    def bill;
    
    
    String getTitle(){
        if (mode == MODE_CREATE)
            return 'Realty Tax No Ledger (Add)'
        return 'Realty Tax No Ledger (Edit)'
    }
    
            
    
    void init(){
        entity       = [items:[]];
        bill.ledgers = []
        bill.ledgers << entity 
        mode         = MODE_CREATE;
    }
    
    
    void edit(){
        mode = MODE_EDIT;
    }
    
    def doClose(){
        if (MsgBox.confirm('Cancel entry?')){
            return '_close'
        }
        return null;
    }
    
    
    def doAdd(){
        if (MsgBox.confirm('Add ledger?')){
            if (onAdd ) onAdd(entity);
            return '_close';
        }
        return null;
    }
    
    
    def doUpdate(){
        if (MsgBox.confirm('Update ledger?')){
            if (onUpdate) onUpdate(entity);
            return '_close';
        }
        return null;
    }
    
    
    
    void calculateDue(){
        validateInfo();
        entity.ledger = svc.calculateDue(bill, entity)
        listHandler.reload();
        binding.refresh('entity.ledger.amount')
    }
    
    void validateInfo(){
        if (entity.fromyear <= 0)
            throw new Exception('From Year must be greater than zero.')
        if (entity.toyear <= 0)
            throw new Exception('To Year must be greater than zero.')
        if (entity.fromyear > entity.toyear)
            throw new Exception('From Year must be less than or equal to To Year.')
        if (entity.fromyear == entity.toyear && entity.fromqtr > entity.toqtr)
            throw new Exception('From Quarter must be less than or equal to To Quarter.')
    }
    
    
    
    
    def listHandler = [
        fetchList : { return entity.ledger?.items; },
        onCommitItem  : {item ->
            item.basicnet = item.basic + item.basicint - item.basicdisc;
            item.sefnet = item.sef + item.sefint - item.sefdisc;
            item.amount = item.basicnet + item.sefnet + item.firecode;
            entity.ledger.amount = entity.ledger.items.amount.sum();
            binding.refresh('entity.ledger.amount');
        }
    ] as EditorListModel
    
    
    
    def getQuarters(){
        return [1,2,3,4]
    }
    
    
    def getClassifications(){
        return propSvc.getList([:])
    }
    
    
    def getRputypes(){
        return ['land', 'bldg', 'mach', 'planttree', 'misc']
    }
    
    def getBarangays(){
        return lguSvc.lookupBarangays([:])
    }
    
    
    def getTxntypes(){
        return svc.getTxntypes();
    }
    
    
}

