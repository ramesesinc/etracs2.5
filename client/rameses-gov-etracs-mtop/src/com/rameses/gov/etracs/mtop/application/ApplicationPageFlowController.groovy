package com.rameses.gov.etracs.mtop.application;
        
import com.rameses.rcp.annotations.*
import com.rameses.rcp.common.*
import com.rameses.osiris2.client.*
import com.rameses.osiris2.common.*
import java.rmi.server.UID

public class ApplicationPageFlowController extends PageFlowController
{
    @Binding
    def binding

    @Service('MTOPMakeListService')
    def makeSvc

    @Service('MTOPModelListService')
    def modelSvc

    @Service('MTOPApplicationTxnService')
    def svc
            
    def MODE_CREATE = 'create';
    def MODE_VIEW   = 'view';
    def MODE_EDIT   = 'edit';
    def mode = MODE_VIEW;
    
    def make
    def model
    def franchise
    def route
    def application = [:]

    def makeList = []
    def modelList = []

    def init() {
        svc.checkAvailableFranchise()
        application = initializeApplication()
        application.objid = 'MTOP' + new UID()
        
        return super.start("init")
    }

    void next() {
        if( application.txntype == 'NEW' || application.txnmode == 'CAPTURE') {
            application.franchiseid = franchise.objid
            application.franchiseno = franchise.franchiseno
        } else {
            application = svc.evaluateTxn( application )
            make = getMakeList().find{ it.objid == application.makeid }
            model = getModelList().find{ it.objid == application.modelid }
        }
            
        mode = MODE_CREATE
    }

    void save() {
        if( application.txnmode == 'CAPTURE' && ! application.txnno )
            throw new Exception( 'Application No. is required.' )

        if( mode != MODE_EDIT )
            application = svc.saveApplication( application )
        else
            application = svc.updateApplication( application )

        mode = MODE_VIEW
    }
    
    def oldApp = [:]
    def oldModelList = []
            
    void edit() {
        oldApp.putAll( application )
        oldModelList = modelList
        mode = MODE_EDIT
    }
    
    void cancel() {
        application.putAll( oldApp )
        modelList = oldModelList
        make = makeList.find{ it.objid == application.makeid }
        model = modelList.find{ it.objid == application.modelid }

        mode = MODE_VIEW
    }
    
    void delete() {
        svc.delete( [objid:application.objid] )
        application = initializeApplication()
        franchise = [:]
        make = [:]
        model = [:]
    }

    void submitForAssessment() {
        application = svc.submitForAssessment( [objid:application.objid] )
    }
    
    void cancelAssessment() {
        application = svc.cancelAssessment( [objid:application.objid] )
    }
    
    void submitForApproval() {
        application = svc.submitForApproval( getParams() )
    }
    
    void approve() {
        application = svc.approveApplication( getParams() )
    }
    
    def getParams() {
        return [objid:application.objid, taxfeelist:application.taxfeelist]
    }
    
    def getTotalAssessment() {
        def total = 0.0
        application.taxfeelist?.each { total += it.amount }
        return total
    }
    
    def taxfeeListHandler = [
        getColumns  : {
            return [
                new Column(name:"accttitle", caption:"Account", width:300),
                new Column(name:"amount", caption:"Amount")
            ]
        },
        fetchList   : { application.taxfeelist }
    ] as SubListModel
    
    void setMake( make ) {
        this.make          = make
        application.makeid = make.objid
        application.make   = make.name
        model              = [:]
    }

    void setModel( model ) {
        this.model          = model
        application.modelid = model.objid
        application.model   = model.name
        application.unittype    = model.unittype
    }
    
    def getLookupOwner() {
        def onselectOwner = {
            application.owner = it
            binding.refresh('application.owner.address')
        }
        
        return InvokerUtil.lookupOpener('individual:lookup', [onselect:onselectOwner])
    }
    
    def lookupRoute = InvokerUtil.lookupOpener('route:lookup', [onselect:{ application.route = it }])
    
    List getAvailableFranchiseList() {
        return svc.getAvailableFranchiseList()
    }

    List getMakeList() {
        if( ! makeList ) makeList = makeSvc.getApprovedList()
        return makeList
    }

    List getModelList() {
        if( make )
            modelList = modelSvc.getListByMake( make )
            
        return modelList
    }
}