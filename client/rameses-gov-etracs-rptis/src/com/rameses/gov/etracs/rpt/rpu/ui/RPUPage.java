/*
 * LandRPUPage.java
 *
 * Created on June 25, 2011, 1:45 PM
 */

package com.rameses.gov.etracs.rpt.rpu.ui;

import com.rameses.osiris2.themes.FormPage;
import com.rameses.rcp.ui.annotations.StyleSheet;
import com.rameses.rcp.ui.annotations.Template;

/**
 *
 * @author  jzamora
 */
@StyleSheet
@Template(FormPage.class)
public class RPUPage extends javax.swing.JPanel {
    
    /** Creates new form LandRPUPage */
    public RPUPage() {
        initComponents();
    }
    
    /** This method is called from within the constructor to
     * initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is
     * always regenerated by the Form Editor.
     */
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        jPanel2 = new javax.swing.JPanel();
        formPanel10 = new com.rameses.rcp.util.FormPanel();
        xDecimalField8 = new com.rameses.rcp.control.XDecimalField();
        xDecimalField9 = new com.rameses.rcp.control.XDecimalField();
        xDecimalField10 = new com.rameses.rcp.control.XDecimalField();
        jPanel7 = new javax.swing.JPanel();
        formPanel8 = new com.rameses.rcp.util.FormPanel();
        xLabel4 = new com.rameses.rcp.control.XLabel();
        xLabel5 = new com.rameses.rcp.control.XLabel();
        formPanel9 = new com.rameses.rcp.util.FormPanel();
        xCheckBox1 = new com.rameses.rcp.control.XCheckBox();
        xComboBox5 = new com.rameses.rcp.control.XComboBox();
        xCheckBox2 = new com.rameses.rcp.control.XCheckBox();

        setLayout(new java.awt.BorderLayout());

        setBorder(javax.swing.BorderFactory.createEmptyBorder(5, 5, 5, 5));
        setPreferredSize(new java.awt.Dimension(980, 600));
        jPanel2.setLayout(new java.awt.BorderLayout());

        com.rameses.rcp.control.border.XTitledBorder xTitledBorder1 = new com.rameses.rcp.control.border.XTitledBorder();
        xTitledBorder1.setTitle("Assessment Summary");
        formPanel10.setBorder(xTitledBorder1);
        formPanel10.setCaptionBorder(javax.swing.BorderFactory.createEmptyBorder(1, 1, 1, 1));
        formPanel10.setCellpadding(new java.awt.Insets(0, 0, 0, 20));
        formPanel10.setOrientation(com.rameses.rcp.constant.UIConstants.HORIZONTAL);
        xDecimalField8.setCaption("Base Market Value");
        xDecimalField8.setCaptionWidth(110);
        xDecimalField8.setCellPadding(new java.awt.Insets(0, 0, 0, 30));
        xDecimalField8.setFont(new java.awt.Font("Tahoma", 1, 11));
        xDecimalField8.setName("rpu.totalbmv");
        xDecimalField8.setPreferredSize(new java.awt.Dimension(130, 19));
        xDecimalField8.setReadonly(true);
        formPanel10.add(xDecimalField8);

        xDecimalField9.setCaption("Market Value ");
        xDecimalField9.setCaptionWidth(90);
        xDecimalField9.setCellPadding(new java.awt.Insets(0, 0, 0, 30));
        xDecimalField9.setFont(new java.awt.Font("Tahoma", 1, 11));
        xDecimalField9.setName("rpu.totalmv");
        xDecimalField9.setPreferredSize(new java.awt.Dimension(130, 19));
        xDecimalField9.setReadonly(true);
        formPanel10.add(xDecimalField9);

        xDecimalField10.setCaption("Assessed Value");
        xDecimalField10.setCaptionWidth(100);
        xDecimalField10.setFont(new java.awt.Font("Tahoma", 1, 11));
        xDecimalField10.setName("rpu.totalav");
        xDecimalField10.setPreferredSize(new java.awt.Dimension(130, 19));
        xDecimalField10.setReadonly(true);
        formPanel10.add(xDecimalField10);

        jPanel2.add(formPanel10, java.awt.BorderLayout.NORTH);

        add(jPanel2, java.awt.BorderLayout.SOUTH);

        com.rameses.rcp.control.border.XTitledBorder xTitledBorder2 = new com.rameses.rcp.control.border.XTitledBorder();
        xTitledBorder2.setTitle("General Information");
        formPanel8.setBorder(xTitledBorder2);
        xLabel4.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(153, 153, 153)));
        xLabel4.setCaption("Revision Year");
        xLabel4.setFont(new java.awt.Font("Arial", 1, 11));
        xLabel4.setName("rpu.ry");
        xLabel4.setPreferredSize(new java.awt.Dimension(0, 19));
        formPanel8.add(xLabel4);

        xLabel5.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(153, 153, 153)));
        xLabel5.setCaption("PIN");
        xLabel5.setFont(new java.awt.Font("Arial", 1, 11));
        xLabel5.setName("rpu.fullpin");
        xLabel5.setPreferredSize(new java.awt.Dimension(0, 19));
        formPanel8.add(xLabel5);

        com.rameses.rcp.control.border.XTitledBorder xTitledBorder3 = new com.rameses.rcp.control.border.XTitledBorder();
        xTitledBorder3.setTitle("Taxability");
        formPanel9.setBorder(xTitledBorder3);
        xCheckBox1.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        xCheckBox1.setCaption("Taxability");
        xCheckBox1.setCaptionWidth(90);
        xCheckBox1.setName("rpu.taxable");
        xCheckBox1.setOpaque(false);
        xCheckBox1.setText("Taxable? ");
        formPanel9.add(xCheckBox1);

        xComboBox5.setCaption("Exempt Reason");
        xComboBox5.setCaptionWidth(90);
        xComboBox5.setDepends(new String[] {"rpu.taxable"});
        xComboBox5.setExpression("#{item.name}");
        xComboBox5.setItems("exemptions");
        xComboBox5.setName("rpu.exemptiontype");
        xComboBox5.setPreferredSize(new java.awt.Dimension(0, 22));
        formPanel9.add(xComboBox5);

        xCheckBox2.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        xCheckBox2.setCaption("Taxability");
        xCheckBox2.setCaptionWidth(90);
        xCheckBox2.setName("rpu.reclassed");
        xCheckBox2.setOpaque(false);
        xCheckBox2.setPreferredSize(new java.awt.Dimension(0, 15));
        xCheckBox2.setShowCaption(false);
        xCheckBox2.setText(" Reclassed?");
        formPanel9.add(xCheckBox2);

        org.jdesktop.layout.GroupLayout jPanel7Layout = new org.jdesktop.layout.GroupLayout(jPanel7);
        jPanel7.setLayout(jPanel7Layout);
        jPanel7Layout.setHorizontalGroup(
            jPanel7Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(org.jdesktop.layout.GroupLayout.TRAILING, jPanel7Layout.createSequentialGroup()
                .add(formPanel8, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 379, Short.MAX_VALUE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(formPanel9, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 208, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
        );
        jPanel7Layout.setVerticalGroup(
            jPanel7Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(formPanel8, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 90, Short.MAX_VALUE)
            .add(formPanel9, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
        add(jPanel7, java.awt.BorderLayout.NORTH);

    }// </editor-fold>//GEN-END:initComponents
    
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private com.rameses.rcp.util.FormPanel formPanel10;
    private com.rameses.rcp.util.FormPanel formPanel8;
    private com.rameses.rcp.util.FormPanel formPanel9;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel7;
    private com.rameses.rcp.control.XCheckBox xCheckBox1;
    private com.rameses.rcp.control.XCheckBox xCheckBox2;
    private com.rameses.rcp.control.XComboBox xComboBox5;
    private com.rameses.rcp.control.XDecimalField xDecimalField10;
    private com.rameses.rcp.control.XDecimalField xDecimalField8;
    private com.rameses.rcp.control.XDecimalField xDecimalField9;
    private com.rameses.rcp.control.XLabel xLabel4;
    private com.rameses.rcp.control.XLabel xLabel5;
    // End of variables declaration//GEN-END:variables
    
}
