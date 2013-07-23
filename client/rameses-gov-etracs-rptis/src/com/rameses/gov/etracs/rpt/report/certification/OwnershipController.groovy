package rameses.gov.etracs.rptis.reports;


import com.rameses.rcp.annotations.*
import com.rameses.rcp.common.*
import com.rameses.osiris2.client.*
import com.rameses.osiris2.reports.*;

public class OwnershipController extends com.rameses.gov.etracs.rpt.report.certification.AbstractCertificationController
{
    @Service('RPTCertificationOwnershipService')
    def svc;
    
    boolean certbytd = true
    
            
    def getTitle(){
        return 'Certificate of Ownership'
    }
    
    def getService(){
        return svc;
    }
    
    def save(){
        return svc.createCertification(entity)
    }
    
    String reportName = 'com/rameses/gov/etracs/rpt/report/certification/Ownership.jasper'

    Map getParameters(){
        return [REPORTTITLE:'Certificate of Ownership']
    }
}