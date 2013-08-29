package com.rameses.gov.etracs.rpt.faas.ui;
        
import com.rameses.rcp.common.*;
import com.rameses.rcp.annotations.*;
import com.rameses.osiris2.client.*
import java.rmi.server.UID

public class BatchGRController 
{
    @Binding
    def binding;
    
    @Service("BatchGRService")
    def svc
            
    @Service("GeneralRevisionService")
    def grSvc
            
     @Service("LGUService")
     def lguSvc 
    
    def mode = "init"
    def rylist;
    def memoranda
    def newry;
    def barangay;
            
    String title = 'Batch General Revision'
            
    void init() {
        mode = "init"
        rylist = grSvc.getRyList(null, null,null)   
    }         
            
    void revise() {
        if( !MsgBox.confirm("Revise all faas? ")) return;
        
        mode="revise"
        def landfaasids = svc.getLandFaasIdForRevision(newry.ry, barangay?.objid)
        
        landfaasids.each{
            def params = [objid:it.objid, newry:newry.ry, memoranda:memoranda]
            svc.reviseLandFaas(params)
        }
        
        MsgBox.alert('General Revision successfully processed.')
        
    }
    
    def getBarangays(){
        
        return lguSvc.lookupBarangays([:])
    }
    
    void cancel() {
        mode="init"
    }
    
}