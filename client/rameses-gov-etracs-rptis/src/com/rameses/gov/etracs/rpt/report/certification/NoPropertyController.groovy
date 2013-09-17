package com.rameses.gov.etracs.rpt.report.certification;


import com.rameses.rcp.annotations.*
import com.rameses.rcp.common.*
import com.rameses.osiris2.client.*
import com.rameses.osiris2.reports.*;

public class NoPropertyController extends com.rameses.gov.etracs.rpt.report.certification.AbstractCertificationController
{
    @Service('RPTCertificationNoPropertyService')
    def svc;
    
    def getService(){
        return svc;
    }
    
    String reportName = 'com/rameses/gov/etracs/rpt/report/certification/NoPropertyCertification.jasper'

    Map getParameters(){
        return [REPORTTITLE:'No Property']
    }
    
    
        
    def getLookupTaxpayer(){
        return InvokerUtil.lookupOpener('entity:lookup',[
            onselect : { 
                svc.checkExistingProperties(it.objid)
                entity.taxpayer = it;
                entity.requestedby = it.name;
                entity.requestedbyaddress = it.address;
            },
            onempty  : { 
                entity.taxpayer = null;
                entity.requestedby = null;
                entity.requestedbyaddress = null;
            },
        ])
    }
}