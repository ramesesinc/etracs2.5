package com.rameses.gov.treasury.batchcapture.batch; 

import com.rameses.rcp.annotations.*
import com.rameses.rcp.common.*
import com.rameses.osiris2.client.*
import com.rameses.osiris2.common.*
        
public class BatchCaptureController  
{

    @Binding 
    def binding;    
    
    @Service('BatchCaptureManagementService')
    def svc; 
            
    @PropertyChangeListener
    def listener = [
        'info.*' : { 
            loadAfControls();
        },
            
        'collector.*' : {
            loadCapturedItems();
        }
    ]
                
    String title = 'Batch Capture Management';
                
    
    def info;
    def selectedAfControl;
    def selectedAssignedItem;
    
    def afcontrols;
    def assignedcontrols;
    def batchcaptures;
            
    
    void init(){
        info = [:];
        afcontrols = [];
        assignedcontrols = [];
        batchcaptures = [];
    }
    
    void loadAfControls(){
        info.formno = info.afserial.formno;
        afcontrols = svc.getOpenIssuanceList(info);
        assignedcontrols = svc.getAssigneeIssuanceList(info);
        afcontrolListHandler.reload();
        assignedListHandler.reload();
    }
    
    
    def afcontrolListHandler = [
        fetchList : { return afcontrols },
        getRows   : { return 150 },
    ] as BasicListModel;
            
        
    def assignedListHandler = [
        fetchList : { return assignedcontrols },
        getRows   : { return 150 },
    ] as BasicListModel;
    
        
    def assignAfSerial(){
        if(selectedAfControl.active==1) {
            throw new Exception("Entry is currently active. Deactivate first");
        }    
        return InvokerUtil.lookupOpener("subcollector:lookup", [
            onselect:{x->
                if(MsgBox.confirm("You are about to assign this stub to " + x.name + ". Continue?")) {
                    svc.assignToSubcollector( [objid:selectedAfControl.objid, assignee:x] );
                    loadAfControls();
                }
            }
         ]);   
    }
            
    
    def changeMode(){
        return doChangeMode(selectedAfControl)
    }
    
    def changeModeAssigned(){
        return doChangeMode(selectedAssignedItem)
    }
    
    def doChangeMode(item){
        if (MsgBox.confirm('Change mode?')){
            return InvokerUtil.lookupOpener('afserial:changemode', [
                entity  : item,
                
                onSaveHandler : {
                    loadAfControls();
                }
            ])
        }
        return null
    }
    
    void unassignControl(){
        if (MsgBox.confirm('Unassign selected control?')){
            svc.unassignControl(selectedAssignedItem);
            loadAfControls();
        }
    }
    
    
    
    def getAfSerialList(){
        return svc.getAfSerialList();
    }
    
    
    
    
    /*==================================================================
     *
     * BATCH CAPTURED RECEIPT POSTING SUPPORT 
     *
     *==================================================================*/
    
    @Service('BatchCaptureCollectionService')
    def batchSvc
            
    
    def collector;
    def selectedCaptured;
    def captureditems = []
    
    
    def capturedListHandler = [
            fetchList : { return captureditems },
            getRows   : { return 150 },
    ] as BasicListModel;
            
    
    void loadCapturedItems(){
        captureditems.clear();
        if ( collector ) {
            captureditems = svc.getSubmittedBatchCapturedReceipts(collector);
        }
        capturedListHandler.reload();
    }
    
    
    def openBatchCaptured(){
        return InvokerUtil.lookupOpener('batchcapture:open', [
                entity : selectedCaptured,
                
                onPost : {
                    loadCapturedItems();
                }
        ])
    }
    
    
    
}