package com.rameses.gov.etracs.rpt.rpu.ui;

import com.rameses.rcp.annotations.* 
import com.rameses.rcp.common.* 
import com.rameses.osiris2.client.* 
import com.rameses.osiris2.common.* 
import com.rameses.gov.etracs.rpt.common.RPTUtil

public abstract class AbstractRPUController
{
    @Binding
    def binding;
    
    @Service('RPUService')
    def service;
    
    def onupdate; //handler
    def onedit;   //handler 
    def ondelete; //handler
    
    def showClose = true;
    def autoClose = false;
    def allowEdit = true;
    def datacapture;
    def rpu;
    def lguid;
    
    
    def MODE_CREATE = 'create';
    def MODE_EDIT   = 'edit';
    def MODE_READ   = 'read';
    def mode;
    
    def classification;
    def classifications;
    def exemptions;
    
    String getTitle(){
        def s = '';
        if ( rpu?.rputype == 'land')
            s += 'Land RPU';
        else if ( rpu?.rputype == 'bldg')
            s += 'Building RPU';
        else if ( rpu?.rputype == 'mach')
            s += 'Machine RPU';
        else if ( rpu?.rputype == 'planttree')
            s += 'Plant/Tree RPU';
        else if ( rpu?.rputype == 'misc')
            s += 'Miscellaneous RPU';
        else s += 'RPU';
        return s ;
    }
    
    
    /*----------------------------------------------
     * 
     * Init and FormActions Support
     *
     ---------------------------------------------- */
    
    void beforeInit(){}
    
    
    final void init(){
        loadComboItems();
        beforeInit();
        mode = MODE_CREATE;
    }
    
    
    void afterOpen(){}
    
    
    final void open(){
        if (! rpu._loaded) {
            rpu = service.openRpu(rpu);
        }
        rpu._loaded = true;
        loadComboItems();
        afterOpen();
        mode = MODE_READ;
    }
    
    
    void loadComboItems(){
        classifications = service.getClassifications();
        exemptions = service.getExemptionTypes();
        classification = rpu.classification
    }
    
    
    void edit(){
        mode = MODE_EDIT;
        if (onedit) onedit(rpu);
    }
    
    def cancelEdit(){
        if (autoClose)
            return close();
        rpu.putAll(service.openRpu(rpu));
        rpu._loaded = true;
        mode = MODE_READ;
        if (onupdate) onupdate(rpu)
    }
    
    def save(){
        if (mode == MODE_CREATE)
            rpu.putAll( service.createRpu(rpu) );
        else 
            rpu.putAll( service.updateRpu(rpu) );
            
        if (onupdate) onupdate(rpu)
        
        mode = MODE_READ;
        
        rpu.isnew = false;
        rpu._loaded = true;
        
        if (autoClose)
            return close();
        return null;
    }
            
    
    void calculateAssessment() {
        rpu.putAll( service.calculateAssessment(rpu) )
        doRefreshAssessment();
    }
    
    
    void refreshAssessment(){}
    
    final void doRefreshAssessment(){
        refreshAssessment();
        binding?.refresh('.*');
    }


    @Close
    def close(){
        return '_close';
    }
    
    
    
    boolean getAllowEdit(){
        if (rpu.state == 'CURRENT') return false;
        if (mode == MODE_READ) return false;
        return allowEdit;
    }
    
    boolean getShowEdit(){
        if ( rpu.state.toUpperCase().matches('CURRENT|CANCELLED'))
            return false;
        if (mode != MODE_READ) return false;
        return allowEdit;
    }
    
    void setClassification(classification){
        this.classification = classification;
        rpu.classification = classification;
    }
    
    
    
    def changeSuffix(){
        return InvokerUtil.lookupOpener('rpu:changesuffix', [
            rpu         : rpu,
                
            onupdate    : { newsuffix -> 
                if (rpu.rputype != 'land'){
                    def oldsuffix = rpu.suffix;
                    rpu.suffix = newsuffix;
                    rpu.fullpin = rpu.fullpin.replace(oldsuffix.toString(), newsuffix.toString());
                    service.updateSuffix([objid:rpu.objid, suffix:rpu.suffix, fullpin:rpu.fullpin]);
                    binding.refresh('rpu.fullpin');
                }
            }   
                
        ])
    }
    
}