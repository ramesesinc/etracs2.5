/*
 * CashticketControlPage.java
 *
 * Created on October 6, 2013, 8:14 AM
 */

package com.rameses.gov.treasury.cashticket;

import com.rameses.osiris2.themes.FormPage;
import com.rameses.rcp.ui.annotations.StyleSheet;
import com.rameses.rcp.ui.annotations.Template;

/**
 *
 * @author  arnel
 */
@Template(FormPage.class)
@StyleSheet
public class CashticketControlPage extends javax.swing.JPanel {
    
    /**
     * Creates new form CashticketControlPage
     */
    public CashticketControlPage() {
        initComponents();
    }
    
    /** This method is called from within the constructor to
     * initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is
     * always regenerated by the Form Editor.
     */
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        formPanel1 = new com.rameses.rcp.util.FormPanel();
        xComboBox1 = new com.rameses.rcp.control.XComboBox();
        xComboBox2 = new com.rameses.rcp.control.XComboBox();
        xDateField1 = new com.rameses.rcp.control.XDateField();
        xNumberField1 = new com.rameses.rcp.control.XNumberField();

        com.rameses.rcp.control.border.XTitledBorder xTitledBorder1 = new com.rameses.rcp.control.border.XTitledBorder();
        xTitledBorder1.setTitle("Cashticket Information");
        formPanel1.setBorder(xTitledBorder1);
        formPanel1.setCaptionWidth(110);
        xComboBox1.setCaption("Collector");
        xComboBox1.setExpression("#{item.name}");
        xComboBox1.setItems("collectorlist");
        xComboBox1.setName("collector");
        xComboBox1.setPreferredSize(new java.awt.Dimension(0, 22));
        xComboBox1.setRequired(true);
        formPanel1.add(xComboBox1);

        xComboBox2.setCaption("AF No. ");
        xComboBox2.setExpression("#{item.objid}");
        xComboBox2.setItems("formTypes");
        xComboBox2.setName("formtype");
        xComboBox2.setPreferredSize(new java.awt.Dimension(150, 22));
        xComboBox2.setRequired(true);
        formPanel1.add(xComboBox2);

        xDateField1.setCaption("Date Issued");
        xDateField1.setName("entity.refdate");
        xDateField1.setPreferredSize(new java.awt.Dimension(150, 20));
        xDateField1.setRequired(true);
        formPanel1.add(xDateField1);

        xNumberField1.setCaption("Quantity");
        xNumberField1.setFieldType(Integer.class);
        xNumberField1.setName("entity.qty");
        xNumberField1.setPreferredSize(new java.awt.Dimension(150, 20));
        xNumberField1.setRequired(true);
        formPanel1.add(xNumberField1);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(this);
        this.setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(formPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, 421, Short.MAX_VALUE)
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(formPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, 156, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
    }// </editor-fold>//GEN-END:initComponents
    
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private com.rameses.rcp.util.FormPanel formPanel1;
    private com.rameses.rcp.control.XComboBox xComboBox1;
    private com.rameses.rcp.control.XComboBox xComboBox2;
    private com.rameses.rcp.control.XDateField xDateField1;
    private com.rameses.rcp.control.XNumberField xNumberField1;
    // End of variables declaration//GEN-END:variables
    
}
