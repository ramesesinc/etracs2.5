/*
 * LandRPUPage.java
 *
 * Created on June 25, 2011, 1:45 PM
 */

package com.rameses.gov.etracs.rpt.rpu.mach.ui;

import com.rameses.gov.etracs.rpt.rpu.ui.RPUPage;
import com.rameses.rcp.ui.annotations.StyleSheet;
import com.rameses.rcp.ui.annotations.Template;


@Template(RPUPage.class)
@StyleSheet
public class MachRPUPage extends javax.swing.JPanel {
    
    /** Creates new form LandRPUPage */
    public MachRPUPage() {
        initComponents();
    }
    
    /** This method is called from within the constructor to
     * initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is
     * always regenerated by the Form Editor.
     */
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        jPanel5 = new javax.swing.JPanel();
        jPanel2 = new javax.swing.JPanel();
        jPanel3 = new javax.swing.JPanel();
        xDataTable1 = new com.rameses.rcp.control.XDataTable();
        xButton1 = new com.rameses.rcp.control.XButton();
        formPanel2 = new com.rameses.rcp.util.FormPanel();
        xComboBox4 = new com.rameses.rcp.control.XComboBox();

        setLayout(new java.awt.BorderLayout());

        jPanel2.setLayout(new java.awt.BorderLayout());

        com.rameses.rcp.control.border.XTitledBorder xTitledBorder1 = new com.rameses.rcp.control.border.XTitledBorder();
        xTitledBorder1.setTitle("Machine Classifications");
        jPanel2.setBorder(xTitledBorder1);
        xDataTable1.setColumns(new com.rameses.rcp.common.Column[]{
            new com.rameses.rcp.common.Column("actualuse", "Actual Use", 100, 0, 0, false, true, true, true, null, new com.rameses.rcp.common.LookupColumnHandler("#{item.actualuse.code}", "lookupActualUse")),
            new com.rameses.rcp.common.Column("basemarketvalue", "Base Market Value", 100, 0, 0, true, true, true, false, null, new com.rameses.rcp.common.DecimalColumnHandler("#,##0.00", -1.0, -1.0, false)),
            new com.rameses.rcp.common.Column("marketvalue", "Market Value", 100, 0, 0, true, true, true, false, null, new com.rameses.rcp.common.DecimalColumnHandler("#,##0.00", -1.0, -1.0, false)),
            new com.rameses.rcp.common.Column("assesslevel", "Assess Level", 100, 0, 0, true, true, true, false, null, new com.rameses.rcp.common.DecimalColumnHandler("#,##0.00", -1.0, -1.0, false)),
            new com.rameses.rcp.common.Column("assessedvalue", "Assessed Value", 100, 0, 0, true, true, true, false, null, new com.rameses.rcp.common.DecimalColumnHandler("#,##0.00", -1.0, -1.0, false))
        });
        xDataTable1.setHandler("listHandler");
        xDataTable1.setImmediate(true);
        xDataTable1.setName("selectedItem");

        xButton1.setMnemonic('v');
        xButton1.setDepends(new String[] {"selectedItem"});
        xButton1.setName("viewMachines");
        xButton1.setText("View Machines");

        formPanel2.setCaptionBorder(javax.swing.BorderFactory.createEmptyBorder(1, 1, 1, 1));
        formPanel2.setPadding(new java.awt.Insets(5, 3, 2, 5));
        xComboBox4.setCaption("Classification");
        xComboBox4.setCaptionWidth(100);
        xComboBox4.setExpression("#{item.name}");
        xComboBox4.setItems("classifications");
        xComboBox4.setName("classification");
        xComboBox4.setPreferredSize(new java.awt.Dimension(200, 22));
        xComboBox4.setRequired(true);
        formPanel2.add(xComboBox4);

        org.jdesktop.layout.GroupLayout jPanel3Layout = new org.jdesktop.layout.GroupLayout(jPanel3);
        jPanel3.setLayout(jPanel3Layout);
        jPanel3Layout.setHorizontalGroup(
            jPanel3Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel3Layout.createSequentialGroup()
                .addContainerGap()
                .add(jPanel3Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(xDataTable1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 776, Short.MAX_VALUE)
                    .add(org.jdesktop.layout.GroupLayout.TRAILING, xButton1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(formPanel2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 300, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addContainerGap())
        );
        jPanel3Layout.setVerticalGroup(
            jPanel3Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(org.jdesktop.layout.GroupLayout.TRAILING, jPanel3Layout.createSequentialGroup()
                .add(formPanel2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(xDataTable1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 250, Short.MAX_VALUE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(xButton1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addContainerGap())
        );
        jPanel2.add(jPanel3, java.awt.BorderLayout.CENTER);

        org.jdesktop.layout.GroupLayout jPanel5Layout = new org.jdesktop.layout.GroupLayout(jPanel5);
        jPanel5.setLayout(jPanel5Layout);
        jPanel5Layout.setHorizontalGroup(
            jPanel5Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel2, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 800, Short.MAX_VALUE)
        );
        jPanel5Layout.setVerticalGroup(
            jPanel5Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel2, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 349, Short.MAX_VALUE)
        );
        add(jPanel5, java.awt.BorderLayout.CENTER);

    }// </editor-fold>//GEN-END:initComponents
    
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private com.rameses.rcp.util.FormPanel formPanel2;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JPanel jPanel5;
    private com.rameses.rcp.control.XButton xButton1;
    private com.rameses.rcp.control.XComboBox xComboBox4;
    private com.rameses.rcp.control.XDataTable xDataTable1;
    // End of variables declaration//GEN-END:variables
    
}
