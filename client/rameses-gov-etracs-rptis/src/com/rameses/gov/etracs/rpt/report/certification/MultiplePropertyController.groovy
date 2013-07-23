package rameses.gov.etracs.rptis.reports;


import com.rameses.rcp.annotations.*
import com.rameses.rcp.common.*
import com.rameses.osiris2.client.*
import com.rameses.osiris2.reports.*;

public class MultiplePropertyController extends com.rameses.gov.etracs.rpt.report.certification.AbstractCertificationController
{
    @Service('RPTCertificationMultipleSevice')
    def svc;
    
    
    def getService(){
        return svc;
    }
    
    def reportPath = 'com/rameses/gov/etracs/rpt/report/certification/'
    String reportName = reportPath + 'MultiplePropertyCertification.jasper'

    SubReport[] getSubReports() {
        return [
            new SubReport('MultiplePropertyCertificationItem', reportPath + 'MultiplePropertyCertificationItem.jasper'),
            new SubReport('FootNoteItem', reportPath + '/FootNoteItem.jasper'),
        ] as SubReport[]
    }
    
}