package com.rameses.gov.etracs.rpt.consolidation.ui;

import com.rameses.rcp.annotations.* 
import com.rameses.rcp.common.* 
import com.rameses.osiris2.client.*
import com.rameses.osiris2.common.*
import com.rameses.util.*;
import com.rameses.common.*;
import com.rameses.gov.etracs.rpt.common.RPTUtil;
import com.rameses.util.MapBeanUtils;


public class ApproveConsolidationTask implements Runnable{
    def svc;
    def entity;
    def oncomplete;
    def onerror;
    def showinfo;

    public void run(){
        try{
            showinfo('Initializing');
            svc.initApproveConsolidationAsync(entity);
            showinfo(' .... Done\n');
        
            showinfo('Assigning new TD No. to Consolidated Land and Affected RPUs');
            entity.putAll( svc.assignNewTdNosAsync(entity) );
            showinfo(' .... Done\n');
            
            
            showinfo('Processing Consolidated Land ');
            if ( ! entity.newfaasid){
                showinfo('Creating new Consolidated Land FAAS for TD No. ' + entity.newtdno );
                entity.putAll( svc.createConsolidatedLandFaasAsync(entity))
            }
            showinfo(' .... Done\n\n');
                
            showinfo('Processing Affected RPUs\n');
            svc.getAffectedRpus(entity.objid).each{ arpu ->
                if ( ! arpu.newfaasid) {
                    showinfo('Creating new Affected RPU FAAS for TD No. ' + arpu.newtdno );
                    svc.createAffectedRpuFaasRecordAsync(entity, arpu);
                    showinfo(' .... Done\n');
                }
            }
            
            showinfo('Consolidation Approval')
            svc.approveConsolidationAsync(entity);
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