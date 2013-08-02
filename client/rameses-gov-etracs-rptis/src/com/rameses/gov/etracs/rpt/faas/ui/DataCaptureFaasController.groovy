package com.rameses.gov.etracs.rpt.faas.ui;


import com.rameses.rcp.annotations.* 
import com.rameses.rcp.common.* 
import com.rameses.osiris2.client.*
import com.rameses.osiris2.common.*

class DataCaptureController extends com.rameses.gov.etracs.rpt.faas.ui.AbstractFaasController
{
    @Service('FAASService')
    def svc;
    
    def getService(){ return svc }
    
    
    boolean allowEditOwner = true;
    boolean allowEditPin = true;
    

    def initCapture(){
        initinfo = [suffix:0, ry: svc.getCurrentRy(),]
        return super.signal('dcinit')
    }

    void initDataCaptureFaas() {
        faas = service.initDataCaptureFaas( initinfo )
        mode = MODE_CREATE;
    }


}      