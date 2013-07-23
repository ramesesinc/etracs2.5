package rameses.gov.etracs.rptis.reports;


import com.rameses.rcp.annotations.*
import com.rameses.rcp.common.*
import com.rameses.osiris2.client.*
import com.rameses.osiris2.reports.*;

public class LatestAndExistingController extends com.rameses.gov.etracs.rpt.report.certification.AbstractCertificationController
{
    @Service('RPTCertificationLatestService')
    def svc;
    
    boolean certbytd = true
    
            
    def getService(){
        return svc;
    }
    
    def save(){
        return svc.createLatestAndExisting(entity)
    }
    
    String reportName = 'com/rameses/gov/etracs/rpt/report/certification/LatestAndExisting.jasper'

    Map getParameters(){
        return [REPORTTITLE:'Latest and Existing']
    }
}