/*
 * CollectionReportModel.java
 *
 * Created on March 14, 2013, 10:20 AM
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */

package com.rameses.enterprise.treasury.collection.controllers;

import com.rameses.osiris2.reports.ReportModel;
import java.util.Map;

/**
 *
 * @author rameses
 */
public abstract class CollectionReportModel extends ReportModel {
    private Object reportData;
    private Map parameters;
    
    public void setReportData(Object data) {
        reportData = data;
    }
    
    public Object getReportData() {
        return reportData;
    }
    
    public Map getParameters() {
        return parameters;
    }

    public void setParameters(Map parameters) {
        this.parameters = parameters;
    }
}
