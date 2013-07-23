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
    
    def onupdate; //handler
    
    def allowEdit = true;
    def datacapture;
    def rpu;
    def lguid;
    
    
    public abstract def getService();
            
    
    /*----------------------------------------------
     * 
     * Init and FormActions Support
     *
     ---------------------------------------------- */
    void initOpen(){
        
    }
    
    void open(){
        classification = rpu.classification
        initOpen()
    }
    
    def ok(){
        if (onupdate) onupdate(rpu)
        return close();
    }
            
    
    void calculateAssessment() {
        rpu.putAll( service.calculateAssessment(rpu) )
        doRefreshAssessment();
    }
    
    void refreshAssessment(){
        
    }
    
    final void doRefreshAssessment(){
        refreshAssessment();
        binding.refresh('.*');
    }


    /*---------------------------------------------------------------
    *
    * ComboBox Support
    *
    ---------------------------------------------------------------*/
    def classificationList
    def exemptionList
    def classification;
            
    void setClassification(classification){
        this.classification = classification;
        rpu.classification = classification 
    }
    
    
    List getClassifications() { 
        if (!classificationList)
            classificationList = service.getClassifications();
        return classificationList 
    }
    
    List getExemptions() { 
        if (!exemptionList)
            exemptionList = service.getExemptionTypes();
        return exemptionList 
    }

    def close(){
        return '_close';
    }
}