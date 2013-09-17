/*
 * FAASNewPage.java
 *
 * Created on June 25, 2011, 10:35 AM
 */

package com.rameses.gov.etracs.rpt.faas.ui;

import com.rameses.osiris2.themes.FormPage;
import com.rameses.rcp.ui.annotations.StyleSheet;
import com.rameses.rcp.ui.annotations.Template;

/**
 *
 * @author  jzamora
 */
@StyleSheet("com/rameses/gov/etracs/rpt/faas/ui/BatchGRInitPage.style")
@Template(FormPage.class)
public class BatchGRInitPage extends javax.swing.JPanel {
    
    /** Creates new form FAASNewPage */
    public BatchGRInitPage() {
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
        xSeparator1 = new com.rameses.rcp.control.XSeparator();
        xComboBox1 = new com.rameses.rcp.control.XComboBox();
        xComboBox2 = new com.rameses.rcp.control.XComboBox();
        jScrollPane1 = new javax.swing.JScrollPane();
        xTextArea1 = new com.rameses.rcp.control.XTextArea();
        xLabel2 = new com.rameses.rcp.control.XLabel();

        com.rameses.rcp.control.border.XTitledBorder xTitledBorder1 = new com.rameses.rcp.control.border.XTitledBorder();
        xTitledBorder1.setTitle("Batch General Revision Information");
        formPanel1.setBorder(xTitledBorder1);
        xSeparator1.setPreferredSize(new java.awt.Dimension(0, 20));
        org.jdesktop.layout.GroupLayout xSeparator1Layout = new org.jdesktop.layout.GroupLayout(xSeparator1);
        xSeparator1.setLayout(xSeparator1Layout);
        xSeparator1Layout.setHorizontalGroup(
            xSeparator1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(0, 511, Short.MAX_VALUE)
        );
        xSeparator1Layout.setVerticalGroup(
            xSeparator1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(0, 20, Short.MAX_VALUE)
        );
        formPanel1.add(xSeparator1);

        xComboBox1.setCaption("New General Revision");
        xComboBox1.setCaptionWidth(140);
        xComboBox1.setDepends(new String[] {"prevtd"});
        xComboBox1.setDynamic(true);
        xComboBox1.setExpression("#{item.ry}");
        xComboBox1.setItems("rylist");
        xComboBox1.setName("params.newry");
        xComboBox1.setPreferredSize(new java.awt.Dimension(120, 22));
        xComboBox1.setRequired(true);
        formPanel1.add(xComboBox1);

        xComboBox2.setCaption("Barangay");
        xComboBox2.setCaptionWidth(140);
        xComboBox2.setExpression("#{item.name}");
        xComboBox2.setImmediate(true);
        xComboBox2.setItems("barangays");
        xComboBox2.setName("params.barangay");
        xComboBox2.setPreferredSize(new java.awt.Dimension(250, 20));
        xComboBox2.setRequired(true);
        formPanel1.add(xComboBox2);

        jScrollPane1.setPreferredSize(new java.awt.Dimension(0, 76));
        xTextArea1.setLineWrap(true);
        xTextArea1.setWrapStyleWord(true);
        xTextArea1.setCaption("Default Memoranda");
        xTextArea1.setCaptionWidth(140);
        xTextArea1.setName("params.memoranda");
        xTextArea1.setPreferredSize(new java.awt.Dimension(0, 100));
        xTextArea1.setTextCase(com.rameses.rcp.constant.TextCase.UPPER);
        jScrollPane1.setViewportView(xTextArea1);

        formPanel1.add(jScrollPane1);

        xLabel2.setCellPadding(new java.awt.Insets(20, 0, 0, 0));
        xLabel2.setExpression("#{msg}");
        xLabel2.setFont(new java.awt.Font("Tahoma", 1, 14));
        xLabel2.setForeground(new java.awt.Color(204, 0, 0));
        xLabel2.setPreferredSize(new java.awt.Dimension(0, 24));
        xLabel2.setShowCaption(false);
        formPanel1.add(xLabel2);

        org.jdesktop.layout.GroupLayout layout = new org.jdesktop.layout.GroupLayout(this);
        this.setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(layout.createSequentialGroup()
                .addContainerGap()
                .add(formPanel1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 525, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(layout.createSequentialGroup()
                .addContainerGap()
                .add(formPanel1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 234, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(72, Short.MAX_VALUE))
        );
    }// </editor-fold>//GEN-END:initComponents
    
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private com.rameses.rcp.util.FormPanel formPanel1;
    private javax.swing.JScrollPane jScrollPane1;
    private com.rameses.rcp.control.XComboBox xComboBox1;
    private com.rameses.rcp.control.XComboBox xComboBox2;
    private com.rameses.rcp.control.XLabel xLabel2;
    private com.rameses.rcp.control.XSeparator xSeparator1;
    private com.rameses.rcp.control.XTextArea xTextArea1;
    // End of variables declaration//GEN-END:variables
    
}
