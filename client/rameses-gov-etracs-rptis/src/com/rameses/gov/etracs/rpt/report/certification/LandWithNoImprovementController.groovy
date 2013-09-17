package com.rameses.gov.etracs.rpt.report.certification;


import com.rameses.rcp.annotations.*
import com.rameses.rcp.common.*
import com.rameses.osiris2.client.*
import com.rameses.osiris2.reports.*;

public class LandWithNoImprovementController extends com.rameses.gov.etracs.rpt.report.certification.AbstractCertificationController
{
    @Service('RPTCertificationLandService')
    def svc;
    
    boolean certbytd = true
    
            
    def getService(){
        return svc;
    }
    
    
    def save(){
        return svc.createLandWithNoImprovement( entity )
    }
       
    def reportPath = 'com/rameses/gov/etracs/rpt/report/certification/'
    String reportName = reportPath + 'LandWithNoImprovement.jasper'

    SubReport[] getSubReports() {
        return [
            new SubReport('LandItem', reportPath + 'LandWithNoImprovementItem.jasper'),
        ] as SubReport[]
    }

    Map getParameters(){
        return [REPORTTITLE:'Land with No Improvement']
    }
    
    
        
    def getLookupFaas(){
        return InvokerUtil.lookupOpener('faas:lookup',[
            onselect : { 
                if (it.state != 'CURRENT'){
                    throw new Exception('FAAS is not current.')
                }
                if (it.rputype != 'land')
                    throw new Exception('Selected FAAS is not Land. Only land property is allowed.')
                 
                svc.validateLandWithNoImprovement(it.objid)
                
                entity.faasid = it.objid;
                entity.tdno= it.tdno;
                entity.taxpayer = it.taxpayer;
                entity.requestedby = it.taxpayer.name;
                entity.requestedbyaddress = it.taxpayer.address;
            },
            onempty  : { 
                entity.faasid = null;
                entity.tdno= null;
                entity.taxpayer = null;
                entity.requestedby = null;
                entity.requestedbyaddress = null;
            },
        ])
    }
}