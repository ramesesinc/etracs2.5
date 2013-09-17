package com.rameses.gov.etracs.rpt.report.certification;


import com.rameses.rcp.annotations.*
import com.rameses.rcp.common.*
import com.rameses.osiris2.client.*
import com.rameses.osiris2.reports.*;
import com.rameses.gov.etracs.rpt.common.*;

public abstract class AbstractCertificationController 
{
    @Service('ReportParameterService')
    def paramSvc;

    @Service('DateService')
    def dtSvc;
    
    @Binding 
    def binding;
    
    @Invoker
    def inv;

    def MODE_CREATE = 'create';
    def MODE_READ   = 'read';
    
    def entity;
    def mode;
    
    boolean certbytd = false
    
        
    abstract def getService();
    abstract String getReportName();
    
        
    def getReportData(){
        return entity;
    }
    
    SubReport[] getSubReports() {
        return null;
    }
    
    Map getParameters(){
        return [:];
    }

    
    def getTitle(){
        return 'Certification of ' + inv.caption 
    }
    
    def createEntity(){
        return [:]
    }
    
    def init() {
        entity = createEntity();
        entity.objid            = RPTUtil.generateId('RC');
        entity.opener           = inv.properties.opener ;
        entity.certifiedby      = paramSvc.standardParameter.ASSESSORNAME;
        entity.certifiedbytitle = paramSvc.standardParameter.ASSESSORTITLE;
        entity.purpose          = "whatever legal purposes it may serve him/her"; 
        entity.oramount         = 0.0;
        entity.stampamount      = 0.0;
        entity.official         = false;
        certbytd                = false;
        mode = MODE_CREATE;
        return 'default'
    }
    
    void initByTd(){
        init();
        certbytd = true;
    }
    
    def open(){
        entity = service.openCertification(entity.objid);
        mode = MODE_READ;
        return doPreview();
    }

    
    def getLookupTaxpayer(){
        return InvokerUtil.lookupOpener('entity:lookup',[
            onselect : { 
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
    
    
    def getLookupFaas(){
        return InvokerUtil.lookupOpener('faas:lookup',[
            onselect : { 
                if (it.state != 'CURRENT'){
                    throw new Exception('FAAS is not current.')
                }
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
    
    def officialuse = false;

    void setOfficialuse( officialuse ){
        this.officialuse = officialuse;
        entity.official = officialuse;
        entity.orno = ( officialuse ) ? 'Official Use' : '';
        entity.ordate = ( officialuse ) ? null : entity.serverDate;
        entity.oramount = ( officialuse ) ? 0.0 : entity.oramount;
        entity.stampamount = ( officialuse ) ? 0.0 : entity.stampamount;
    }


    def report =[
        getReportName : { return getReportName() },
        getSubReports : { return getSubReports() },
        getReportData : { return getReportData() },
        getParameters : { paramSvc.getStandardParameter() + getParameters(); }
    ] as ReportModel;

    
    def save(){
        return service.createCertification( entity )
    }
    
    public def doSave(){
        def retval = null
        if (MsgBox.confirm('Save certification?')) {
            entity.putAll(save());
            mode = MODE_READ;
            retval = doPreview();
        }
        return retval;
    }
    
    
    def doPreview(){
        report.viewReport();
        return "preview";
    }

}