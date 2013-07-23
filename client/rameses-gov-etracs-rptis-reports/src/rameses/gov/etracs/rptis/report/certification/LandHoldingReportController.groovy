package rameses.gov.etracs.rptis.reports;


import com.rameses.rcp.annotations.*
import com.rameses.rcp.common.*
import com.rameses.osiris2.client.*
import com.rameses.osiris2.reports.*;

public class RPTCertificationsLandHoldingController 
{
    @Service('ReportParameterService')
    def svcParams;

    @Service('RPTCertificationsService')
    def svc;

    @Service('DateService')
    def dtSvc;

    @Binding 
    def binding;

    def certification = [:];
    def list = [];
    def mode = '_default';
    def taxpayer;

    void init() {
        certification.certifiedby = svcParams.getStandardParameter( OsirisContext.env.USERNAME ).ASSESSORNAME;
        certification.certifiedbytitle = svcParams.getStandardParameter( OsirisContext.env.USERNAME ).ASSESSORTITLE;
        certification.byauthority = svcParams.getStandardParameter( OsirisContext.env.USERNAME ).ASSESSOROFFICETITLE
        certification.purpose = "whatever legal purposes it may serve him/her"; 
        certification.serverDate = new java.sql.Date( dtSvc.serverDate.getTime() );
        certification.caption = 'Land Holding'
    }

    def getLookupEntity(){
        return InvokerUtil.lookupOpener("entity.lookup", [:] );
    }

    void setTaxpayer( entity ){
        if( entity ){
            taxpayer = entity;
            certification.taxpayerid = entity.objid;
            certification.taxpayername = entity.entityname;
            certification.requestedby = entity.entityname;
            certification.taxpayerno = entity.entityno;
            certification.taxpayeraddress = entity.entityaddress;
            binding.refresh("certification.*");
       }
    }

    public void setOfficialuse( o ){
        certification.official = o;
        certification.orno = ( o ) ? 'Official Use' : '';
        certification.ordate = ( o ) ? null : certification.serverDate;
        certification.oramount = ( o ) ? 0.0 : 0.0;
        certification.stampamount = ( o ) ? 0.0 : 0.0;
    }

    public def getOfficialuse(){
        return certification.official;
    }

    def report =[
        getReportName : { 'etracs2/rpt/report/certifications/landholding/LandHoldingCertification.jasper' },
        getSubReports : {
            return [
                new SubReport('LandHoldingCertificationItem', 'etracs2/rpt/report/certifications/landholding/LandHoldingCertificationItem.jasper'),
                new SubReport('FootNoteItem', 'etracs2/rpt/report/certifications/landholding/FootNoteItem.jasper'),
            ] as SubReport[]
        },
        getReportData : { return certification; },
        getParameters : { svcParams.getStandardParameter( OsirisContext.env.USERNAME ); }
    ] as ReportModel;

    public def doPreview(){
        report.viewReport();
        mode = "_default";

        return "preview";
    }

    public def doSave(){
        certification.putAll( svc.fetchDataLandHolding(certification) );
        certification.putAll( svc.doSave( certification ));
        mode = 'certified'; 
        return doPreview()
    }

    @Close
    public def doClose(){
        mode = '_default';
        certification = [:];
        taxpayer = null;
        init()
        return '_close';
    }

}