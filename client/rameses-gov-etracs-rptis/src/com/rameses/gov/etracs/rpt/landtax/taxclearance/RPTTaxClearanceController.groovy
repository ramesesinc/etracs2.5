package com.rameses.gov.etracs.rpt.landtax.taxclearance;

import com.rameses.rcp.common.*;
import com.rameses.rcp.annotations.*;
import com.rameses.osiris2.client.*;
import com.rameses.osiris2.common.*;
import com.rameses.osiris2.reports.*;

import com.rameses.gov.etracs.rpt.common.*;

class RPTTaxClearanceController
{
    @Binding
    def binding;
    
    @Service('ReportParameterService')
    def paramSvc;
    
    @Service('RPTTaxClearanceService')
    def svc;
    
    
    def MODE_CREATE = 'create';
    def MODE_PREVIEW = 'preview';
    
    def entity;
    def mode;
    def addoption = 'bytd';
    def lookup;
    def taxpayer;
    def selectedItem;
    
    String title = 'Realty Tax Clearance'
    
    def init(){
        entity = svc.initClearance()
        mode = MODE_CREATE;
        return 'default'
    }
    
    def open(){
        entity = svc.openClearance(entity.objid)
        return preview();
    }
    
    def save(){
        if (MsgBox.confirm('Save clearance?')){
            def includeditems = entity.items.findAll{ it.included == true};
            if (!includeditems) throw new Exception('At least one property must be included.');
            entity.items = includeditems;
            entity = svc.createClearance(entity);
            mode = MODE_PREVIEW;
            return preview();
        }
        return null;
    }
    
    def getLookupTaxpayer(){
        return InvokerUtil.lookupOpener('rpttaxpayer:lookup',[
                onselect : {
                    entity.taxpayer = it;
                    entity.requestedby = it.name;
                    entity.requestedbyaddress = it.address;
                    binding.refresh('entity.taxpayer.*|entity.requested.*')
                    loadProperties();
                },
                onempty : {
                    entity.taxpayer = null;
                    entity.requestedby = null;
                    entity.requestedbyaddress = null;
                    entity.items = [];
                    listHandler.load();
                    binding.refresh('entity.taxpayeraddress|entity.requested.*')
                },
        ])
    }
    
    def getLookupLedger(){
        return InvokerUtil.lookupOpener('rptledger:lookup', [
            taxpayerid : entity.taxpayerid,
            state      : 'APPROVED',
                
            onselect : { ledger ->
                if (! entity.items.find{it.faasid == ledger.faasid}) {
                    ledger.refid   = ledger.objid
                    ledger.barangay = ledger.barangay.name;
                    ledger.rptcertificationid = entity.objid;
                    ledger.included = true; 
                    entity.items.add(ledger);
                    listHandler.load();
                }
            },
        ])
    }
    
    def listHandler = [
        fetchList : { return entity.items },
    ] as EditorListModel
    
    
    void setAddoption(addoption){
        this.addoption = addoption;
        loadProperties();
    }
    
    
    void loadProperties(){
        if (addoption == 'all'){
            entity.items = svc.getClearedLedgers(entity)
            entity.items.each{
                it.rptcertificationid = entity.objid;
                it.included = true;
            }
            listHandler.load();
        }
    }
    
    
    
    void selectAll(){
        entity.items.each{
            it.included = true;
        }
        listHandler.load();
    }
    
    void deselectAll(){
        entity.items.each{
            it.included = false;
        }
        listHandler.load();
    }
    
    
    def preview(){
        report.viewReport();
        mode = MODE_PREVIEW;
        return 'preview'
    }
    
    def reportpath = 'com/rameses/gov/etracs/rpt/landtax/taxclearance/'
    def report = [
        getReportName : { return reportpath + 'taxclearance.jasper' },
        getSubReports : { 
            return [
                new SubReport( 'taxclearanceitem', reportpath + 'taxclearanceitem.jasper' ),
                new SubReport( 'taxclearanceitempayment', reportpath + 'taxclearanceitempayment.jasper' ),
            ] as SubReport[]
        },
        getReportData : { return entity },
        getParameters : { paramSvc.getStandardParameter() }
    ] as ReportModel
            
            
            
    List getQuarters(){
        return [1,2,3,4]
    }
}
