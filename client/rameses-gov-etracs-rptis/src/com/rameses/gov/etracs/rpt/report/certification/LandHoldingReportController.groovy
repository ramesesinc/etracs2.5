package com.rameses.gov.etracs.rpt.report.certification;


import com.rameses.rcp.annotations.*
import com.rameses.rcp.common.*
import com.rameses.osiris2.client.*
import com.rameses.osiris2.reports.*;

public class RPTCertificationsLandHoldingController extends com.rameses.gov.etracs.rpt.report.certification.AbstractCertificationController
{
    @Service('RPTCertificationLandHoldingService')
    def svc;
    
    
    def getService(){
        return svc;
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
        return [REPORTTITLE:'Land Holdings']
    }
}