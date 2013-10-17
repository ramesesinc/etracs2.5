/*
 * BusinessLedger.java
 *
 * Created on October 15, 2013, 12:15 PM
 */

package com.rameses.gov.etracs.bpls.business;

import com.rameses.osiris2.themes.CloseOnlyPage;
import com.rameses.rcp.ui.annotations.Template;
import com.rameses.rcp.ui.annotations.StyleSheet;

/**
 *
 * @author  Elmo
 */
@Template(CloseOnlyPage.class)
@StyleSheet
public class AddPayment extends javax.swing.JPanel {
    
    /** Creates new form BusinessLedger */
    public AddPayment() {
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
        xTextField1 = new com.rameses.rcp.control.XTextField();
        xIntegerField1 = new com.rameses.rcp.control.XIntegerField();
        xIntegerField2 = new com.rameses.rcp.control.XIntegerField();
        xDecimalField1 = new com.rameses.rcp.control.XDecimalField();
        xDecimalField2 = new com.rameses.rcp.control.XDecimalField();
        xDecimalField3 = new com.rameses.rcp.control.XDecimalField();
        xButton1 = new com.rameses.rcp.control.XButton();
        xButton2 = new com.rameses.rcp.control.XButton();

        xFormPanel1.setCaptionWidth(120);
        xTextField1.setCaption("OR No");
        xTextField1.setName("entity.refno");
        xFormPanel1.add(xTextField1);

        xIntegerField1.setCaption("Year");
        xIntegerField1.setName("entity.iyear");
        xIntegerField1.setPreferredSize(new java.awt.Dimension(120, 20));
        xFormPanel1.add(xIntegerField1);

        xIntegerField2.setCaption("Qtr");
        xIntegerField2.setDepends(new String[] {"entity.paymentmode"});
        xIntegerField2.setName("entity.iqtr");
        xIntegerField2.setPreferredSize(new java.awt.Dimension(120, 20));
        xFormPanel1.add(xIntegerField2);

        xDecimalField1.setCaption("Amount Paid");
        xDecimalField1.setName("entity.amtpaid");
        xDecimalField1.setPreferredSize(new java.awt.Dimension(120, 20));
        xFormPanel1.add(xDecimalField1);

        xDecimalField2.setCaption("Surcharge Paid");
        xDecimalField2.setName("entity.surchargepaid");
        xDecimalField2.setPreferredSize(new java.awt.Dimension(120, 20));
        xFormPanel1.add(xDecimalField2);

        xDecimalField3.setCaption("Interest Paid");
        xDecimalField3.setName("entity.interestpaid");
        xDecimalField3.setPreferredSize(new java.awt.Dimension(120, 20));
        xFormPanel1.add(xDecimalField3);

        xButton1.setName("addAndContinue");
        xButton1.setText("Add and Continue ");

        xButton2.setName("addAndClose");
        xButton2.setText("Add and Close");

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(this);
        this.setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(xFormPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, 267, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(xButton1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(xButton2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap(31, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(xFormPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, 140, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 27, Short.MAX_VALUE)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(xButton1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(xButton2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(24, 24, 24))
        );
    }// </editor-fold>//GEN-END:initComponents
    
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private com.rameses.rcp.control.XButton xButton1;
    private com.rameses.rcp.control.XButton xButton2;
    private com.rameses.rcp.control.XDecimalField xDecimalField1;
    private com.rameses.rcp.control.XDecimalField xDecimalField2;
    private com.rameses.rcp.control.XDecimalField xDecimalField3;
    private com.rameses.rcp.control.XFormPanel xFormPanel1;
    private com.rameses.rcp.control.XIntegerField xIntegerField1;
    private com.rameses.rcp.control.XIntegerField xIntegerField2;
    private com.rameses.rcp.control.XTextField xTextField1;
    // End of variables declaration//GEN-END:variables
    
}
