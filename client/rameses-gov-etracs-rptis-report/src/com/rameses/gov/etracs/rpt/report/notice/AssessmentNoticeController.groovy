package com.rameses.gov.etracs.rpt.report.notice;

import com.rameses.rcp.common.*;
import com.rameses.rcp.annotations.*;
import com.rameses.osiris2.common.*;
import com.rameses.osiris2.client.*;
import com.rameses.osiris2.reports.*;
import com.rameses.gov.etracs.rpt.common.*;

class AssessmentNoticeController
{
    @Binding
    def binding;
    
    @Service('ReportParameterService')
    def paramSvc;
    
    @Service('RPTAssessmentNoticeService')
    def svc;
    
    def MODE_CREATE = 'create';
    def MODE_READ   = 'read';
    def MODE_RECEIVE = 'receive';
    def MODE_PREVIEW = 'preview';
    
    def entity;
    def faas;
    def mode;
    def addoption = 'bytd';
    def lookup;
    def selectedItem;
    
    String title = 'Notice of Assessment'
    
    def init(){
        entity = [
            objid : RPTUtil.generateId('AN'),
            items : [],
        ];
        listHandler?.reload();
        mode = MODE_CREATE;
        return 'init'
    }
    
    void open(){
        entity = svc.openNotice(entity.objid)
        entity.items.each{it.included=true};
        mode = MODE_READ;        
    }
    
    
    def save(){
        if (MsgBox.confirm('Save notice?')){
            def includeditems = entity.items.findAll{ it.included == true};
            if (!includeditems) throw new Exception('At least one property must be included.');
            entity.items = includeditems;
            entity = svc.createNotice(entity);
            listHandler.load();
            mode = MODE_READ;
            return 'default'
        }
        return null;
    }
    
    def getLookupTaxpayer(){
        return InvokerUtil.lookupOpener('entity:lookup',[
                onselect : {
                    entity.taxpayer = it;
                    loadProperties();
                },
                onempty : {
                    entity.taxpayer = null;
                },
        ])
    }
    
    def getLookupFaas(){
        return InvokerUtil.lookupOpener('faas:lookup', [
            taxpayerid : entity.taxpayer.objid, 
            state      : 'CURRENT',
                
            onselect : { faas ->
                if (faas.state != 'CURRENT')
                    throw new Exception('FAAS is not current.')
                    
                if (! entity.items.find{it.faasid == faas.objid}) {
                    faas.faasid = faas.objid;
                    faas.barangay = faas.barangay.name 
                    faas.objid = RPTUtil.generateId('ANI');
                    faas.assessmentnoticeid = entity.objid;
                    faas.included = true; 
                    entity.items.add(faas);
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
            entity.items = svc.getApprovedFaasList(entity.taxpayer.objid)
            entity.items.each{
                it.assessmentnoticeid = entity.objid;
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
    
    
    void receive(){
        mode = MODE_RECEIVE;
        binding.focus('entity.receivedby')
    }
    
    void cancelReceive(){
        entity.receivedby = null;
        entity.dtdelivered = null;
        entity.remarks = null;
        mode = MODE_READ;
    }
    
    
    void receiveNotice(){
        if (MsgBox.confirm('Save notice receive information?')){
            entity.putAll(svc.receiveNotice(entity))
            mode = MODE_READ;
        }
    }
    
    def preview(){
        report.viewReport();
        mode = MODE_PREVIEW;
        return 'preview'
    }
    
    def back(){
        mode = MODE_READ;
        return 'default'
    }
    
    def reportpath = 'com/rameses/gov/etracs/rpt/report/notice/'
    def report = [
        getReportName : { return reportpath + 'notice.jasper' },
        getSubReports : { 
            return [
                new SubReport( 'NoticeItem', reportpath + 'noticeitem.jasper' ),
            ] as SubReport[]
        },
        getReportData : { return entity },
        getParameters : { paramSvc.getStandardParameter() }
    ] as ReportModel
}
