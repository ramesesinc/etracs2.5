/*
 * RPTCollectionSummaryPage.java
 *
 * Created on January 6, 2014, 10:36 AM
 */

package com.rameses.gov.etracs.rpt.collection.ui;

import com.rameses.osiris2.themes.FormPage;
import com.rameses.rcp.ui.annotations.Template;

/**
 *
 * @author  Rameses
 */
@Template(FormPage.class)
public class RPTCollectionSummaryPage extends javax.swing.JPanel {
    
    /** Creates new form RPTCollectionSummaryPage */
    public RPTCollectionSummaryPage() {
        initComponents();
    }
    
    /** This method is called from within the constructor to
     * initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is
     * always regenerated by the Form Editor.
     */
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        xFormPanel1 = new com.rameses.rcp.control.XFormPanel();
        xIntegerField1 = new com.rameses.rcp.control.XIntegerField();
        xDataTable1 = new com.rameses.rcp.control.XDataTable();
        xFormPanel2 = new com.rameses.rcp.control.XFormPanel();
        xDecimalField1 = new com.rameses.rcp.control.XDecimalField();
        xDecimalField2 = new com.rameses.rcp.control.XDecimalField();
        xDecimalField3 = new com.rameses.rcp.control.XDecimalField();

        xIntegerField1.setCaption("No. of Receipts");
        xIntegerField1.setCaptionWidth(120);
        xIntegerField1.setFocusAccelerator('n');
        xIntegerField1.setName("receiptCount");
        xIntegerField1.setPreferredSize(new java.awt.Dimension(80, 20));
        xFormPanel1.add(xIntegerField1);

        xDataTable1.setColumns(new com.rameses.rcp.common.Column[]{
            new com.rameses.rcp.common.Column(new Object[]{
                new Object[]{"name", "receiptno"}
                , new Object[]{"caption", "Receipt No."}
                , new Object[]{"width", 100}
                , new Object[]{"minWidth", 0}
                , new Object[]{"maxWidth", 0}
                , new Object[]{"required", false}
                , new Object[]{"resizable", true}
                , new Object[]{"nullWhenEmpty", true}
                , new Object[]{"editable", false}
                , new Object[]{"textCase", com.rameses.rcp.constant.TextCase.UPPER}
                , new Object[]{"typeHandler", new com.rameses.rcp.common.TextColumnHandler()}
            }),
            new com.rameses.rcp.common.Column(new Object[]{
                new Object[]{"name", "amount"}
                , new Object[]{"caption", "Amount"}
                , new Object[]{"width", 100}
                , new Object[]{"minWidth", 0}
                , new Object[]{"maxWidth", 0}
                , new Object[]{"required", false}
                , new Object[]{"resizable", true}
                , new Object[]{"nullWhenEmpty", true}
                , new Object[]{"editable", false}
                , new Object[]{"textCase", com.rameses.rcp.constant.TextCase.UPPER}
                , new Object[]{"typeHandler", new com.rameses.rcp.common.DecimalColumnHandler("#,##0.00", -1.0, -1.0, false, 2)}
            }),
            new com.rameses.rcp.common.Column(new Object[]{
                new Object[]{"name", "voided"}
                , new Object[]{"caption", "Void?"}
                , new Object[]{"width", 50}
                , new Object[]{"minWidth", 0}
                , new Object[]{"maxWidth", 0}
                , new Object[]{"required", false}
                , new Object[]{"resizable", false}
                , new Object[]{"nullWhenEmpty", true}
                , new Object[]{"editable", false}
                , new Object[]{"textCase", com.rameses.rcp.constant.TextCase.UPPER}
                , new Object[]{"typeHandler", new com.rameses.rcp.common.CheckBoxColumnHandler(java.lang.Boolean.class, true, false)}
            })
        });
        xDataTable1.setHandler("listHandler");

        xFormPanel2.setCaption("Total Collection");
        xFormPanel2.setCaptionFont(new java.awt.Font("Tahoma", 0, 14));
        xFormPanel2.setCaptionWidth(120);
        xFormPanel2.setFont(new java.awt.Font("Tahoma", 1, 14));
        xDecimalField1.setCaption("Total Collection");
        xDecimalField1.setDisabledTextColor(new java.awt.Color(0, 0, 0));
        xDecimalField1.setEnabled(false);
        xDecimalField1.setFont(new java.awt.Font("Courier New", 1, 18));
        xDecimalField1.setName("totalCollection");
        xDecimalField1.setPreferredSize(new java.awt.Dimension(0, 24));
        xFormPanel2.add(xDecimalField1);

        xDecimalField2.setCaption("Cash Tendered");
        xDecimalField2.setDisabledTextColor(new java.awt.Color(0, 0, 0));
        xDecimalField2.setFocusAccelerator('c');
        xDecimalField2.setFont(new java.awt.Font("Courier New", 1, 18));
        xDecimalField2.setName("cashTendered");
        xDecimalField2.setPreferredSize(new java.awt.Dimension(0, 24));
        xFormPanel2.add(xDecimalField2);

        xDecimalField3.setCaption("Change");
        xDecimalField3.setDisabledTextColor(new java.awt.Color(0, 0, 0));
        xDecimalField3.setEnabled(false);
        xDecimalField3.setFont(new java.awt.Font("Courier New", 1, 18));
        xDecimalField3.setForeground(new java.awt.Color(102, 0, 0));
        xDecimalField3.setName("change");
        xDecimalField3.setPreferredSize(new java.awt.Dimension(0, 24));
        xFormPanel2.add(xDecimalField3);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(this);
        this.setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(xFormPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, 363, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                        .addComponent(xFormPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, 295, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addComponent(xDataTable1, javax.swing.GroupLayout.PREFERRED_SIZE, 491, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap(185, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(xFormPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(xDataTable1, javax.swing.GroupLayout.PREFERRED_SIZE, 209, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(xFormPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, 116, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(31, Short.MAX_VALUE))
        );
    }// </editor-fold>//GEN-END:initComponents
    
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private com.rameses.rcp.control.XDataTable xDataTable1;
    private com.rameses.rcp.control.XDecimalField xDecimalField1;
    private com.rameses.rcp.control.XDecimalField xDecimalField2;
    private com.rameses.rcp.control.XDecimalField xDecimalField3;
    private com.rameses.rcp.control.XFormPanel xFormPanel1;
    private com.rameses.rcp.control.XFormPanel xFormPanel2;
    private com.rameses.rcp.control.XIntegerField xIntegerField1;
    // End of variables declaration//GEN-END:variables
    
}
