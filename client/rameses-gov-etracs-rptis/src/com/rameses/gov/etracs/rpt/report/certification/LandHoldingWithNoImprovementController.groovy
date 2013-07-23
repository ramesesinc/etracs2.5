package rameses.gov.etracs.rptis.reports;


import com.rameses.rcp.annotations.*
import com.rameses.rcp.common.*
import com.rameses.osiris2.client.*
import com.rameses.osiris2.reports.*;

public class LandHoldingWithNoImprovementController extends com.rameses.gov.etracs.rpt.report.certification.AbstractCertificationController
{
    @Service('RPTCertificationLandHoldingService')
    def svc;
    
    
    def getService(){
        return svc;
    }
    
    def save(){
        return svc.createLandHoldingWithNoImprovement(entity)
    }
    
    def reportPath = 'com/rameses/gov/etracs/rpt/report/certification/'
    String reportName = reportPath + 'LandHoldingCertification.jasper'

    SubReport[] getSubReports() {
        return [
            new SubReport('LandHoldingCertificationItem', reportPath + 'LandHoldingCertificationItem.jasper'),
            new SubReport('FootNoteItem', reportPath + 'FootNoteItem.jasper'),
        ] as SubReport[]
    }
    
    Map getParameters(){
        return [REPORTTITLE:'Land Holding with No Improvements']
    }
}