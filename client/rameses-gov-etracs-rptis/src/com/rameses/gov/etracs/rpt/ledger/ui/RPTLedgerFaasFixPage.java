/*
 * RPTLedgerFixPage.java
 *
 * Created on October 17, 2013, 10:55 AM
 */

package com.rameses.gov.etracs.rpt.ledger.ui;

import com.rameses.osiris2.themes.FormPage;
import com.rameses.rcp.ui.annotations.Template;

/**
 *
 * @author  Rameses
 */
@Template(FormPage.class)
public class RPTLedgerFaasFixPage extends javax.swing.JPanel {
    
    /** Creates new form RPTLedgerFixPage */
    public RPTLedgerFaasFixPage() {
        initComponents();
    }
    
    /** This method is called from within the constructor to
     * initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is
     * always regenerated by the Form Editor.
     */
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        xButton1 = new com.rameses.rcp.control.XButton();
        xFormPanel2 = new com.rameses.rcp.control.XFormPanel();
        xIntegerField1 = new com.rameses.rcp.control.XIntegerField();
        xComboBox1 = new com.rameses.rcp.control.XComboBox();
        xIntegerField2 = new com.rameses.rcp.control.XIntegerField();
        xComboBox2 = new com.rameses.rcp.control.XComboBox();
        xDecimalField1 = new com.rameses.rcp.control.XDecimalField();
        xButton2 = new com.rameses.rcp.control.XButton();

        xButton1.setMnemonic('c');
        xButton1.setName("doClose");
        xButton1.setText("Cancel");

        com.rameses.rcp.control.border.XTitledBorder xTitledBorder1 = new com.rameses.rcp.control.border.XTitledBorder();
        xTitledBorder1.setTitle("FAAS Information");
        xFormPanel2.setBorder(xTitledBorder1);
        xIntegerField1.setCaption("From Year");
        xIntegerField1.setCaptionWidth(110);
        xIntegerField1.setCellPadding(new java.awt.Insets(10, 0, 0, 0));
        xIntegerField1.setName("entity.fromyear");
        xIntegerField1.setPreferredSize(new java.awt.Dimension(80, 20));
        xIntegerField1.setRequired(true);
        xFormPanel2.add(xIntegerField1);

        xComboBox1.setCaption("From Qtr.");
        xComboBox1.setCaptionWidth(110);
        xComboBox1.setItems("quarters");
        xComboBox1.setName("entity.fromqtr");
        xComboBox1.setPreferredSize(new java.awt.Dimension(80, 20));
        xComboBox1.setRequired(true);
        xFormPanel2.add(xComboBox1);

        xIntegerField2.setCaption("To Year");
        xIntegerField2.setCaptionWidth(110);
        xIntegerField2.setName("entity.toyear");
        xIntegerField2.setPreferredSize(new java.awt.Dimension(80, 20));
        xIntegerField2.setRequired(true);
        xFormPanel2.add(xIntegerField2);

        xComboBox2.setCaption("To Qtr.");
        xComboBox2.setCaptionWidth(110);
        xComboBox2.setItems("quarters");
        xComboBox2.setName("entity.toqtr");
        xComboBox2.setPreferredSize(new java.awt.Dimension(80, 20));
        xFormPanel2.add(xComboBox2);

        xDecimalField1.setCaption("Assessed Value");
        xDecimalField1.setCaptionWidth(110);
        xDecimalField1.setName("entity.assessedvalue");
        xDecimalField1.setPreferredSize(new java.awt.Dimension(130, 20));
        xDecimalField1.setRequired(true);
        xFormPanel2.add(xDecimalField1);

        xButton2.setMnemonic('u');
        xButton2.setName("doUpdate");
        xButton2.setText("Update");

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(this);
        this.setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addComponent(xFormPanel2, javax.swing.GroupLayout.DEFAULT_SIZE, 337, Short.MAX_VALUE)
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(xButton2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(xButton1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addGap(21, 21, 21))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(xFormPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, 164, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(xButton1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(xButton2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
    }// </editor-fold>//GEN-END:initComponents
    
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private com.rameses.rcp.control.XButton xButton1;
    private com.rameses.rcp.control.XButton xButton2;
    private com.rameses.rcp.control.XComboBox xComboBox1;
    private com.rameses.rcp.control.XComboBox xComboBox2;
    private com.rameses.rcp.control.XDecimalField xDecimalField1;
    private com.rameses.rcp.control.XFormPanel xFormPanel2;
    private com.rameses.rcp.control.XIntegerField xIntegerField1;
    private com.rameses.rcp.control.XIntegerField xIntegerField2;
    // End of variables declaration//GEN-END:variables
    
}