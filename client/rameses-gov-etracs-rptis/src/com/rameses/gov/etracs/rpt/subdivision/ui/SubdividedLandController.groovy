package com.rameses.gov.etracs.rpt.subdivision.ui;


import com.rameses.rcp.annotations.* 
import com.rameses.rcp.common.* 
import com.rameses.osiris2.client.* 
import com.rameses.osiris2.common.*;
import com.rameses.gov.etracs.rpt.common.*;
        

public class SubdividedLandController 
{
    @Binding
    def binding
    
    def svc
    
    def onadd       //handler
    def onupdate    //handler
    
    def subdivision
    def subdividedland 
    def rp
    def rpu 
    def section = 0;
    def parcel  = 0;
    def step;  //rp, rpu
    
    def create() {
        subdividedland =  svc.initSubdividedLand( subdivision )
        rp = subdividedland.rp 
        rpu = subdividedland.rpu;
        step = 'rp'
        return 'rp'
    }
    
    def open() {
        if ( ! subdividedland.rpu ) {
            subdividedland.putAll(svc.openSubdividedLand(subdividedland.objid))
        }
        section = RPTUtil.toInteger( subdividedland.rp.section )
        parcel  = RPTUtil.toInteger( subdividedland.rp.parcel )
        rp = subdividedland.rp
        rpu = subdividedland.rpu 
        step = 'rp'
        return 'rp'
    }

    def validateRealProperty() {
        RPTUtil.required('Section', section);
        RPTUtil.required('Parcel', parcel);
        
        rp.section = section;
        rp.parcel  = parcel;
        rp.putAll( svc.buildPin(rp) )
        rpu.fullpin = rp.pin 
        step = 'rpu';
        return step;
    }
    
    
    def backToRealPropertyPage(){
        step = 'rp';
        return step;
    }
    
    def validateRpu(){
        step = 'info';
        return step;
    }
        
    
    def backToRpuPage(){
        step = 'rpu';
        return step;
    }
    
    def addLand() {
        updateSubdividedLandInfo()
        onadd(subdividedland)
        return close();
    }
    
    def updateLand() {
        updateSubdividedLandInfo()
        onupdate( subdividedland )
        return close()
    }
    
    void updateSubdividedLandInfo(){
        subdividedland.newpin  = rpu.fullpin 
        subdividedland.areasqm = rpu.totalareasqm
        subdividedland.areaha  = rpu.totalareaha;
        subdividedland.totalmv  = rpu.totalmv;
        subdividedland.totalav  = rpu.totalav
    }
    
    def getOpener() {
        return InvokerUtil.lookupOpener('landrpu:open', [rpu:rpu, lguid:subdivision.motherfaas.lguid])
    }

    def close(){
        return '_close'
    }
    
}
