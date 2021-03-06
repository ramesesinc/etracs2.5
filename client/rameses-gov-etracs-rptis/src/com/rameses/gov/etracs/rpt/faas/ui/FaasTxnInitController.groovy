package com.rameses.gov.etracs.rpt.faas.ui;


import com.rameses.rcp.annotations.* 
import com.rameses.rcp.common.* 
import com.rameses.osiris2.client.*
import com.rameses.osiris2.common.*
import com.rameses.gov.etracs.rpt.common.RPTUtil;

class FaasTxnInitController
{
    @Binding
    def binding;
    
    @Invoker 
    def invoker 
    
    @Service('FAASService')
    def svc;
    
    def entity = [:]
    def txntitle;
    
    String getTitle(){
        return invoker.caption + ': Initial';
    }
    
    
    void afterInit(){}
    
    void init(){
        txntitle = invoker.caption;
        entity.txntype = svc.getTxnType(invoker.properties.txntype.toUpperCase());
        afterInit();
    }
    
    void afterLookupFaas(){}
    
    def getLookupFaas(){
        return InvokerUtil.lookupOpener('faas:lookup', [
            onselect: {
                if (it.state == 'CANCELLED')
                    throw new Exception('FAAS has already been cancelled.');
                if (it.state != 'CURRENT')
                    throw new Exception('Cannot process record. The FAAS is not yet current.')
                    
                 entity.faas = it;
                 afterLookupFaas()
            },
            
            enempty :{ entity.faas = null; }
        ])
    }
    
    
    def process(){
        entity = svc.initTransaction(entity);
        def opener = 'faas_' + entity.txntype.objid + ':create';
        return InvokerUtil.lookupOpener(opener, [entity:entity]);
    }
    

        
}