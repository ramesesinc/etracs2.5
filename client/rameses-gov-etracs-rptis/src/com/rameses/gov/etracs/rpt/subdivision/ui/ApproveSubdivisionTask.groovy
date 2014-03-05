package com.rameses.gov.etracs.rpt.subdivision.ui;
        
import com.rameses.rcp.annotations.* 
import com.rameses.rcp.common.* 
import com.rameses.osiris2.client.*
import com.rameses.osiris2.common.*
import com.rameses.util.*;
import com.rameses.common.*;
import com.rameses.gov.etracs.rpt.common.RPTUtil;
import com.rameses.util.MapBeanUtils;


public class ApproveSubdivisionTask implements Runnable{
    def svc;
    def entity;
    def oncomplete;
    def onerror;
    def showinfo;
    
    public void run(){
        try{
            showinfo('Initializing');
            svc.initApproveSubdivisionAsync(entity);
            showinfo(' .... Done\n');
        
            showinfo('Assigning new TD No. to Subdivided Lands and Affected RPUs');
            svc.assignNewTdNos(entity);
            showinfo(' .... Done\n');
            
            
            showinfo('Processing Subdivided Lands\n');
            svc.getSubdividedLands(entity.objid).each{ land ->
                if ( ! land.newfaasid) {
                    showinfo('Creating new Land FAAS for TD No. ' + land.newtdno );
                    svc.createSubdividedLandFaasRecord(entity, land);
                    showinfo(' .... Done\n');
                }
            }
            
            showinfo('Processing Affected RPUs\n');
            svc.getAffectedRpus(entity.objid).each{ arpu ->
                if ( ! arpu.newfaasid) {
                    showinfo('Creating new Affected RPU FAAS for TD No. ' + arpu.newtdno );
                    svc.createAffectedRpuFaasRecord(entity, arpu);
                    showinfo(' .... Done\n');
                }
            }
            
            showinfo('Subdivision Approval')
            svc.approveSubdivisionAsync(entity);
            entity.state = 'APPROVED';
            showinfo(' .... Done\n');
            
            oncomplete()
        }
        catch(e){
            onerror('\n\n' + e.message )
        }
    }
    
    void doSleep(){
        try{
            Thread.sleep(2000);
        }
        catch(e){
            ;
        }
    }
}
 