package com.rameses.gov.etracs.rpt.rpu.mach.ui;

import com.rameses.rcp.annotations.* 
import com.rameses.rcp.common.* 
import com.rameses.osiris2.client.* 
import com.rameses.osiris2.common.* 
import com.rameses.gov.etracs.rpt.common.RPTUtil

public class MachUseController 
{
    @Binding
    def binding;
    
    def allowEdit;
    
    def svc;
    def onupdate;
    def rpu;
    def machuse;
    def lguid;
    
    void open(){
    }
    
    
    def ok(){
        if (onupdate) onupdate(rpu);
        return close();
    }
    
    
    /*------------------------------------------------------
     *
     * MAIN PAGE SUPPORT
     *
     ------------------------------------------------------*/
    def selectedItem;
    void setSelectedItem(selectedItem){
        this.selectedItem = selectedItem;
    }
    
    def listHandler = [
        getRows   : { return 25 },
        fetchList : { return machuse.machines },
                
        onRemoveItem : { item ->
            if (MsgBox.confirm('Remove selected item?')){
                machuse.machines.remove(item);
                if (!rpu._machines) rpu._machines = [];
                rpu._machines.add(item);
                return true;
            }
            return false;
        }
    ] as EditorListModel
     
            
    def onaddMachine = {
        machuse.machines.add(it)
        listHandler.load()
    }
                
    def addMachine(){
        return InvokerUtil.lookupOpener('machdetail:create', [ 
            svc     : svc,
            rpu     : rpu,
            machuse : machuse,
            onadd   : onaddMachine,
        ])
    }
    
        
    def onupdateMachine = {
        //onupdate(machuse)
        binding.refresh()
    }
    
    
    def editMachine(){
        return InvokerUtil.lookupOpener('machdetail:open', [ 
            svc         : svc,
            rpu         : rpu,
            machuse     : machuse,
            machdetail  : selectedItem, 
            onupdate    : onupdateMachine,
        ])
    }
    
    
    
    def close(){
        return '_close'
    }
        
}