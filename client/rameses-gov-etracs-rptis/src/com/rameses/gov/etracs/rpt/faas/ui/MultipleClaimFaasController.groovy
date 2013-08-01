package com.rameses.gov.etracs.rpt.faas.ui;


import com.rameses.rcp.annotations.* 
import com.rameses.rcp.common.* 
import com.rameses.osiris2.client.*
import com.rameses.osiris2.common.*
import com.rameses.gov.etracs.rpt.common.RPTUtil;

class MultipleClaimController extends com.rameses.gov.etracs.rpt.faas.controller.AbstractFaasController
{
    @Service('FAASService')
    def svc;
    
    
    def getService(){ return svc }
    
    
    boolean multipleClaim = true;
    boolean allowEditOwner = true;
    boolean allowEditPin = true;
    boolean AllowEditPrevInfo = true;
    
    

    def initMultipleClaim(){
        initinfo = [
            suffix      : 0, 
            ry          : svc.getCurrentRy(),
        ]
        return super.signal('mcinit')
    }

    void initMultipleClaimFaas() {
        initinfo.txntype = initTxnType()
        faas = service.initMultipleClaimFaas( initinfo )
        mode = MODE_CREATE;
    }
    
}        