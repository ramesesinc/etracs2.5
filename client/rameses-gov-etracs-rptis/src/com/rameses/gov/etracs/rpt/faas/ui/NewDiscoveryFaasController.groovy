package com.rameses.gov.etracs.rpt.faas.ui;


import com.rameses.rcp.annotations.* 
import com.rameses.rcp.common.* 
import com.rameses.osiris2.client.*
import com.rameses.osiris2.common.*
import com.rameses.gov.etracs.rpt.common.RPTUtil;

class NewDiscoveryController extends com.rameses.gov.etracs.rpt.faas.ui.AbstractFaasController
{
    @Service('FAASService')
    def svc;
    
    
    def getService(){ return svc }
    
    
    boolean allowEditOwner = true;
    boolean allowEditPin = true;
    

    def initNewDiscovery(){
        initinfo = [
            suffix      : 0, 
            ry          : svc.getCurrentRy(),
        ]
        return super.signal('ndinit')
    }

    void initNewDiscoveryFaas() {
        initinfo.txntype = initTxnType()
        faas = service.initNewDiscoveryFaas( initinfo )
        mode = MODE_CREATE;
    }
    
    
    def onupdateBackTaxes = {
        binding.refresh('faas.backtaxyrs')
    }
    
    def viewBackTaxes(){
        return InvokerUtil.lookupOpener("backtax:open", 
                [faas       : faas, 
                 svc        : svc, 
                 mode       : mode, 
                 onupdate   : onupdateBackTaxes, 
                allowEdit   : allowEdit,
                ]
        )
    }
    

}        