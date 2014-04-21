package com.rameses.gov.etracs.rpt.faas.ui;

import com.rameses.rcp.annotations.* 
import com.rameses.rcp.common.* 
import com.rameses.osiris2.client.*
import com.rameses.osiris2.common.*
import com.rameses.gov.etracs.rpt.common.RPTUtil;

class FaasDataCaptureInitController
{
    @Binding
    def binding;
    
    @Service('FAASService')
    def svc;
    
    @Service('BarangayLookupService')
    def brgySvc;
    
    
    String title = 'Data Capture FAAS Initial Information';
    
    def entity = [:]
    
    def pinTypes = ['new', 'old']
    def rpuTypes;
    def txnTypes;
    
    
    @PropertyChangeListener
    def listener = [
        'entity.rputype' : {
            entity.barangay = null;
            entity.suffix = null;
            if (entity.rputype == 'land')
                entity.suffix = 0
            entity.isection = null;
            entity.iparcel = null;
        },
        
        'entity.pintype' :{
            entity.isection = null;
            entity.iparcel = null;
        },
        
        'entity.*' : { buildPin(); }
    ]
    
                
    void afterInit(){}
    
    void init(){
        entity.ry = svc.getCurrentRy()
        entity.rputype = 'land';
        entity.suffix = 0;
        entity.datacapture = true;
        rpuTypes = svc.getRpuTypes();
        txnTypes = svc.getTxnTypes();
        afterInit();
    }
    
    
    def process(){
        def faas = svc.initCapture(entity);
        return InvokerUtil.lookupOpener('faas_DC:create', [entity:faas])
    }
    
    
    def getLookupBarangay(){
        return InvokerUtil.lookupOpener('barangay:lookup', [
            onselect: { 
                entity.barangay = brgySvc.getById(it.objid)
                entity.rp = null;
                buildPin();
            },
            onempty : { entity.barangay = null },
        ])
    }
    
    
    def getLookupRealProperty(){
        return InvokerUtil.lookupOpener('realproperty:lookup', [
            onselect: { 
                entity.rp = it; 
                entity.barangay = brgySvc.getById(entity.rp.barangayid);
                entity.isection = RPTUtil.toInteger(entity.rp.section);
                entity.iparcel = RPTUtil.toInteger(entity.rp.parcel);
                buildPin();
            },
            onempty : { entity.rp = null; },
        ])
    }
    
    void buildPin(){
        RPTUtil.buildPin(entity);
        binding?.refresh('entity.pin');
    }
    
}