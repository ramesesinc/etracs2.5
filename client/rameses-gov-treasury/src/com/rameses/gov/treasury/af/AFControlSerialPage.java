/*
 * AFControlSerialPage.java
 *
 * Created on October 6, 2013, 8:14 AM
 */

package com.rameses.gov.treasury.af;

import com.rameses.osiris2.themes.FormPage;
import com.rameses.rcp.ui.annotations.StyleSheet;
import com.rameses.rcp.ui.annotations.Template;

/**
 *
 * @author  arnel
 */
@Template(FormPage.class)
@StyleSheet
public class AFControlSerialPage extends javax.swing.JPanel {
    
    /** Creates new form AFControlSerialPage */
    public AFControlSerialPage() {
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
        xSeparator1 = new com.rameses.rcp.control.XSeparator();
        xNumberField1 = new com.rameses.rcp.control.XNumberField();
        xTextField1 = new com.rameses.rcp.control.XTextField();
        xTextField2 = new com.rameses.rcp.control.XTextField();
        xSeparator2 = new com.rameses.rcp.control.XSeparator();
        xNumberField2 = new com.rameses.rcp.control.XNumberField();
        xNumberField3 = new com.rameses.rcp.control.XNumberField();
        xNumberField4 = new com.rameses.rcp.control.XNumberField();
        xNumberField5 = new com.rameses.rcp.control.XNumberField();

        com.rameses.rcp.control.border.XTitledBorder xTitledBorder1 = new com.rameses.rcp.control.border.XTitledBorder();
        xTitledBorder1.setTitle("AF Serial Information");
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

        xSeparator1.setPreferredSize(new java.awt.Dimension(0, 20));
        javax.swing.GroupLayout xSeparator1Layout = new javax.swing.GroupLayout(xSeparator1);
        xSeparator1.setLayout(xSeparator1Layout);
        xSeparator1Layout.setHorizontalGroup(
            xSeparator1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 407, Short.MAX_VALUE)
        );
        xSeparator1Layout.setVerticalGroup(
            xSeparator1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 20, Short.MAX_VALUE)
        );
        formPanel1.add(xSeparator1);

        xNumberField1.setCaption("Stub No");
        xNumberField1.setFieldType(Integer.class);
        xNumberField1.setName("entity.stub");
        xNumberField1.setPreferredSize(new java.awt.Dimension(150, 20));
        xNumberField1.setRequired(true);
        formPanel1.add(xNumberField1);

        xTextField1.setCaption("Prefix");
        xTextField1.setName("entity.prefix");
        xTextField1.setPreferredSize(new java.awt.Dimension(150, 20));
        formPanel1.add(xTextField1);

        xTextField2.setCaption("Suffix");
        xTextField2.setName("entity.suffix");
        xTextField2.setPreferredSize(new java.awt.Dimension(150, 20));
        formPanel1.add(xTextField2);

        xSeparator2.setPreferredSize(new java.awt.Dimension(0, 20));
        javax.swing.GroupLayout xSeparator2Layout = new javax.swing.GroupLayout(xSeparator2);
        xSeparator2.setLayout(xSeparator2Layout);
        xSeparator2Layout.setHorizontalGroup(
            xSeparator2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 407, Short.MAX_VALUE)
        );
        xSeparator2Layout.setVerticalGroup(
            xSeparator2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 20, Short.MAX_VALUE)
        );
        formPanel1.add(xSeparator2);

        xNumberField2.setCaption("Qty Received");
        xNumberField2.setFieldType(Integer.class);
        xNumberField2.setName("entity.qtyreceived");
        xNumberField2.setPreferredSize(new java.awt.Dimension(150, 20));
        xNumberField2.setRequired(true);
        formPanel1.add(xNumberField2);

        xNumberField3.setCaption("Start Series");
        xNumberField3.setFieldType(Integer.class);
        xNumberField3.setName("entity.startseries");
        xNumberField3.setPreferredSize(new java.awt.Dimension(150, 20));
        xNumberField3.setRequired(true);
        formPanel1.add(xNumberField3);

        xNumberField4.setCaption("End Series");
        xNumberField4.setEnabled(false);
        xNumberField4.setFieldType(Integer.class);
        xNumberField4.setName("endseries");
        xNumberField4.setPreferredSize(new java.awt.Dimension(150, 20));
        formPanel1.add(xNumberField4);

        xNumberField5.setCaption("Current Series");
        xNumberField5.setFieldType(Integer.class);
        xNumberField5.setName("entity.currentseries");
        xNumberField5.setPreferredSize(new java.awt.Dimension(150, 20));
        xNumberField5.setRequired(true);
        formPanel1.add(xNumberField5);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(this);
        this.setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(formPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, 421, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(formPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, 388, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
    }// </editor-fold>//GEN-END:initComponents
    
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private com.rameses.rcp.util.FormPanel formPanel1;
    private com.rameses.rcp.control.XComboBox xComboBox1;
    private com.rameses.rcp.control.XComboBox xComboBox2;
    private com.rameses.rcp.control.XDateField xDateField1;
    private com.rameses.rcp.control.XNumberField xNumberField1;
    private com.rameses.rcp.control.XNumberField xNumberField2;
    private com.rameses.rcp.control.XNumberField xNumberField3;
    private com.rameses.rcp.control.XNumberField xNumberField4;
    private com.rameses.rcp.control.XNumberField xNumberField5;
    private com.rameses.rcp.control.XSeparator xSeparator1;
    private com.rameses.rcp.control.XSeparator xSeparator2;
    private com.rameses.rcp.control.XTextField xTextField1;
    private com.rameses.rcp.control.XTextField xTextField2;
    // End of variables declaration//GEN-END:variables
    
}
