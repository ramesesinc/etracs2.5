package com.rameses.gov.etracs.rpt.report.certification;


import com.rameses.rcp.annotations.*
import com.rameses.rcp.common.*
import com.rameses.osiris2.client.*
import com.rameses.osiris2.reports.*;

public class NoEncumbranceController extends com.rameses.gov.etracs.rpt.report.certification.AbstractCertificationController
{
    @Service('RPTCertificationNoEncumbranceService')
    def svc;
    
    boolean certbytd = true;
    
    def getService(){
        return svc;
    }
    
    String reportName = 'com/rameses/gov/etracs/rpt/report/certification/NoEncumbrance.jasper'

    Map getParameters(){
        return [REPORTTITLE:'No Encumbrance']
    }
}