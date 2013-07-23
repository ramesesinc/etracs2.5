/*
 * CollectionReportModel.java
 *
 * Created on March 14, 2013, 10:20 AM
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */

package com.rameses.enterprise.treasury.collection.controllers;

import com.rameses.rcp.common.Column;
import com.rameses.rcp.common.MsgBox;
import com.rameses.rcp.common.SubListModel;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 *
 * @author rameses
 */
public class PaymentListHandler extends SubListModel {
    private AbstractCollection controller;
    
    PaymentListHandler(AbstractCollection controller){
        this.controller = controller;
    }
    
    public Column[] getColumns() {
        return new Column[] {
            new Column("paytype", "Type"),
            new Column("particulars", "Particulars"),
            new Column("amount", "Amount", "decimal", new HashMap())
        };
    }
    
    public List fetchList(Map map) {
        return controller.getPayments();
    }
    
    public void onRemoveItem(Object item){
        if ( MsgBox.confirm("Remove payment?") ) {
            controller.getPayments().remove( item );
            controller.invokePaymentHandler();
        }
    }
}
