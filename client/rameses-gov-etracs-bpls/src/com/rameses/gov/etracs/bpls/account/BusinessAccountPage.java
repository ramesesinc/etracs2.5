/*
 * CollectionType.java
 *
 * Created on October 13, 2013, 10:03 AM
 */

package com.rameses.gov.etracs.bpls.account;

import com.rameses.osiris2.themes.FormPage;
import com.rameses.rcp.ui.annotations.StyleSheet;
import com.rameses.rcp.ui.annotations.Template;

/**
 *
 * @author  Elmo
 */
@Template(FormPage.class)
@StyleSheet
public class BusinessAccountPage extends javax.swing.JPanel {
    
    /** Creates new form CollectionType */
    public BusinessAccountPage() {
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
        xLookupField1 = new com.rameses.rcp.control.XLookupField();
        xComboBox1 = new com.rameses.rcp.control.XComboBox();
        xComboBox2 = new com.rameses.rcp.control.XComboBox();
        xLookupField2 = new com.rameses.rcp.control.XLookupField();
        xLookupField3 = new com.rameses.rcp.control.XLookupField();

        com.rameses.rcp.control.border.XTitledBorder xTitledBorder1 = new com.rameses.rcp.control.border.XTitledBorder();
        xTitledBorder1.setTitle("Business Account");
        setBorder(xTitledBorder1);
        setPreferredSize(new java.awt.Dimension(451, 177));

        xFormPanel1.setCaptionWidth(120);
        xLookupField1.setCaption("Account");
        xLookupField1.setExpression("#{entity.code} #{entity.title}");
        xLookupField1.setHandler("lookupAccount");
        xLookupField1.setName("entity.objid");
        xLookupField1.setPreferredSize(new java.awt.Dimension(0, 20));
        xFormPanel1.add(xLookupField1);

        xComboBox1.setCaption("Tax Fee Type");
        xComboBox1.setItems("taxfeeTypes");
        xComboBox1.setName("entity.taxfeetype");
        xComboBox1.setRequired(true);
        xFormPanel1.add(xComboBox1);

        xComboBox2.setCaption("Payment Mode");
        xComboBox2.setItems("paymentModes");
        xComboBox2.setName("entity.paymentmode");
        xComboBox2.setRequired(true);
        xFormPanel1.add(xComboBox2);

        xLookupField2.setCaption("Surcharge Account");
        xLookupField2.setExpression("#{entity.surcharge.code} #{entity.surcharge.title}");
        xLookupField2.setHandler("lookupSurchargeAccount");
        xLookupField2.setName("entity.surcharge");
        xLookupField2.setPreferredSize(new java.awt.Dimension(0, 20));
        xFormPanel1.add(xLookupField2);

        xLookupField3.setCaption("Interest Account");
        xLookupField3.setExpression("#{entity.interest.code} #{entity.interest.title}");
        xLookupField3.setHandler("lookupInterestAccount");
        xLookupField3.setName("entity.interest");
        xLookupField3.setPreferredSize(new java.awt.Dimension(0, 20));
        xFormPanel1.add(xLookupField3);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(this);
        this.setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(xFormPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, 427, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(xFormPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, 121, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(21, Short.MAX_VALUE))
        );
    }// </editor-fold>//GEN-END:initComponents
    
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private com.rameses.rcp.control.XComboBox xComboBox1;
    private com.rameses.rcp.control.XComboBox xComboBox2;
    private com.rameses.rcp.control.XFormPanel xFormPanel1;
    private com.rameses.rcp.control.XLookupField xLookupField1;
    private com.rameses.rcp.control.XLookupField xLookupField2;
    private com.rameses.rcp.control.XLookupField xLookupField3;
    // End of variables declaration//GEN-END:variables
    
}
