package com.rameses.gov.etracs.rpt.faas.ui;


import com.rameses.rcp.annotations.* 
import com.rameses.rcp.common.* 
import com.rameses.osiris2.client.*
import com.rameses.osiris2.common.*
import com.rameses.gov.etracs.rpt.common.RPTUtil;

class GeneralRevisionFaasController extends com.rameses.gov.etracs.rpt.faas.ui.AbstractFaasController
{
    @Service('FAASService')
    def svc;
    
    @Service('GeneralRevisionService')
    def grSvc;
    
    
    def getService(){ return svc }
    
    
    boolean allowEditOwner = true;
    boolean allowEditPin = true;
    

    def initGeneralRevision(){
        initinfo = [:]
        return super.signal('grinit')
    }

    void initGeneralRevisionFaas() {
        initinfo.txntype = initTxnType()
        faas = grSvc.initGeneralRevision( initinfo )
        mode = MODE_CREATE;
    }
    
    
    List getRyList(){
        return grSvc.getRyList(initinfo.faas.lguid, initinfo.faas.ry, initinfo.faas.rputype );
    }
}        