package com.rameses.gov.etracs.bpls.application;
import com.rameses.rcp.common.*
import com.rameses.rcp.annotations.*
import com.rameses.osiris2.client.*
import com.rameses.osiris2.common.*
import com.rameses.rulemgmt.constraint.*;
import com.rameses.rulemgmt.*;
import java.rmi.server.*;

class BPApplication extends AbstractBPApplication {

    @FormTitle
    String windowTitle;
        
    @FormId
    def windowId;

    def barcodeid;
    def step;
    

    def _initOpen() {
        windowTitle = entity.appno;
        windowId = entity.objid;
        entity.orgtypename = orgTypes.find{ it.key == entity.orgtype}?.value;
        appInfoModel.reload();
        assessmentInfoModel.reload();
        return super.start("open");
    }

    def startOpen() {
        entity = appSvc.open([objid:entity.objid]);
        return _initOpen(); 
    }
             
     //used by barcode
    def startOpenByAppno() {
        entity = appSvc.openByAppno([appno:barcodeid]);
        return _initOpen();
    }

    def updateLOB() {
        return InvokerUtil.lookupOpener("bpapplicationinfo:updatelob", [entity:entity,
            handler:{ lobs->
                entity.lobs = lobs;
                lobUpdated = true;
                lobModel.reload();
            }
        ]);
    }

  
    
     /******************************************************************
     * invoked during assessment
     ******************************************************************/
    def updateAssessmentInfo() {
        if( entity.laterenewals ) {
            return InvokerUtil.lookupOpener( "bpapplicationinfo:laterenewal", [ 
                lateRenewalYears: entity.laterenewals,
                entity:entity,
                assessmentRuleSvc: assessmentRuleSvc
            ] );
        }
        else {
            return super.updateAssessmentInfo();
        }
    }


     void calculateTaxfee() {
        if(entity.taxfees==null) entity.taxfees = [];
        entity.taxfees.clear();
        def unedited = entity.assessmentinfos.findAll{ it.value == null };
        if( unedited ) 
            throw new Exception("Some info(s) are not filled up. Please complete" ); 
        def result = appSvc.assess(entity);    
        entity.taxfees = result.taxfees;
        entity.total_tax = result.totals.total_tax;
        entity.total_regfee = result.totals.total_regfee;
        entity.total_othercharge = result.totals.total_othercharge;
        entity.total = result.totals.total;
        taxfeeModel.reload();
        binding.refresh("entity.total.*");
     }
             
            
     /******************************************************************
     * WORKFLOW
     ******************************************************************/
     void submitForAssessment() {
        if(dirty) throw new Exception("Please save the application first");
        verifyLOB();
        verifyAssessmentInfo();
        entity = appSvc.submitForAssessment(entity);
     }
             
     void submitForApproval() {
        if(dirty) throw new Exception("Please save the application first");
        verifyLOB();
        verifyAssessmentInfo();
        entity = appSvc.submitForApproval(entity);
     }
             
     void approve() {
        if(dirty) throw new Exception("Please save the application first");
        verifyLOB();
        verifyAssessmentInfo();
        entity = appSvc.approveApplication(entity);
     }
         
     void returnForInfo() {
        if(dirty) throw new Exception("Please save the application first");
        entity = appSvc.returnForInfo(entity);
     }
    
     void returnForAssessment() {
        if(dirty) throw new Exception("Please save the application first");
        entity = appSvc.returnForAssessment(entity);
     }

    /******************************************************************
    * FOR PERMITTING
    ******************************************************************/
    void release() {
        if(MsgBox.confirm("You are about to release this application. Proceed?")) {
            def b = appSvc.release( entity );
            MsgBox.alert("Application successfully released" );
        }
     }

     void issueBIN() {
        if(MsgBox.confirm("You are about to issue a new BIN for this business. Proceed?")) {
            def b = appSvc.issueBIN( entity );
            MsgBox.alert("Assigned BIN No. " + b.bin );
            entity.bin = b.bin;
            binding.refresh("entity.bin");
        }
     }
             
     def issuePermit() {
        return InvokerUtil.lookupOpener( "businesspermit:create", [entity: entity, handler:{ o->
            MsgBox.alert( " issued " + o.permitno);
        }]); 
     }
             
     def selectedRequirement;

     def editRequirement() {
        if(selectedRequirement?.type) {
            try {
             def opener = InvokerUtil.lookupOpener( "bprequirement:" + selectedRequirement.type, [
                entity:selectedRequirement,
                handler: { o->
                    selectedRequirement.putAll(o);
                    selectedRequirement.status = "completed";
                    requirementModel.reload();
                }]);
              return opener;  
            }
            catch(Exception e) {;}
        }
     }
             
     def validateClose() {
        if(dirty) {
            if( !MsgBox.confirm("Record is not saved. Proceed?") ) {
                throw new com.rameses.util.BreakException();
            }
        }    
     }

     void saveUpdate() {
        appSvc.update( entity );
        dirty = false;
        MsgBox.alert("Record updated");
     }

    def viewPrevAssessments() {
        throw new Exception("Feature not yet supported");
    }

}