/*
 * RPTSettingPage.java
 *
 * Created on June 3, 2011, 2:41 PM
 */

package com.rameses.gov.etracs.rpt.rptsetting;

import com.rameses.rcp.ui.annotations.StyleSheet;

/**
 *
 * @author  rameses
 */
@StyleSheet
public class LandTaxSettingPage extends javax.swing.JPanel {
    
    /** Creates new form RPTSettingPage */
    public LandTaxSettingPage() {
        initComponents();
    }
    
    /** This method is called from within the constructor to
     * initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is
     * always regenerated by the Form Editor.
     */
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        xActionBar1 = new com.rameses.rcp.control.XActionBar();
        jPanel1 = new javax.swing.JPanel();
        jTabbedPane1 = new javax.swing.JTabbedPane();
        jPanel2 = new javax.swing.JPanel();
        formPanel3 = new com.rameses.rcp.util.FormPanel();
        formPanel1 = new com.rameses.rcp.util.FormPanel();
        xNumberField1 = new com.rameses.rcp.control.XNumberField();
        xNumberField2 = new com.rameses.rcp.control.XNumberField();
        xLabel1 = new com.rameses.rcp.control.XLabel();
        formPanel5 = new com.rameses.rcp.util.FormPanel();
        xNumberField5 = new com.rameses.rcp.control.XNumberField();
        xNumberField6 = new com.rameses.rcp.control.XNumberField();
        xLabel3 = new com.rameses.rcp.control.XLabel();
        formPanel8 = new com.rameses.rcp.util.FormPanel();
        xNumberField9 = new com.rameses.rcp.control.XNumberField();
        xNumberField10 = new com.rameses.rcp.control.XNumberField();
        xLabel5 = new com.rameses.rcp.control.XLabel();
        formPanel11 = new com.rameses.rcp.util.FormPanel();
        xNumberField13 = new com.rameses.rcp.control.XNumberField();
        xNumberField14 = new com.rameses.rcp.control.XNumberField();
        xLabel7 = new com.rameses.rcp.control.XLabel();
        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jPanel3 = new javax.swing.JPanel();
        formPanel13 = new com.rameses.rcp.util.FormPanel();
        formPanel15 = new com.rameses.rcp.util.FormPanel();
        xNumberField19 = new com.rameses.rcp.control.XNumberField();
        xNumberField20 = new com.rameses.rcp.control.XNumberField();
        xLabel10 = new com.rameses.rcp.control.XLabel();
        formPanel18 = new com.rameses.rcp.util.FormPanel();
        xNumberField23 = new com.rameses.rcp.control.XNumberField();
        xNumberField24 = new com.rameses.rcp.control.XNumberField();
        xLabel12 = new com.rameses.rcp.control.XLabel();
        formPanel21 = new com.rameses.rcp.util.FormPanel();
        xNumberField27 = new com.rameses.rcp.control.XNumberField();
        xNumberField28 = new com.rameses.rcp.control.XNumberField();
        xLabel14 = new com.rameses.rcp.control.XLabel();
        formPanel24 = new com.rameses.rcp.util.FormPanel();
        xNumberField31 = new com.rameses.rcp.control.XNumberField();
        xNumberField32 = new com.rameses.rcp.control.XNumberField();
        xLabel16 = new com.rameses.rcp.control.XLabel();
        jLabel4 = new javax.swing.JLabel();
        jLabel6 = new javax.swing.JLabel();

        setLayout(new java.awt.BorderLayout());

        xActionBar1.setBorder(new com.rameses.rcp.control.border.XUnderlineBorder());
        xActionBar1.setName("formActions");
        xActionBar1.setPreferredSize(new java.awt.Dimension(66, 32));
        add(xActionBar1, java.awt.BorderLayout.NORTH);

        formPanel3.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(153, 153, 153)));

        formPanel1.setAddCaptionColon(false);
        formPanel1.setCaption("-");
        formPanel1.setCaptionBorder(javax.swing.BorderFactory.createEmptyBorder(1, 1, 1, 1));
        formPanel1.setOrientation(com.rameses.rcp.constant.UIConstants.HORIZONTAL);
        formPanel1.setPadding(new java.awt.Insets(1, 5, 5, 5));
        formPanel1.setShowCaption(false);
        xNumberField1.setCaption("1st Quarter ");
        xNumberField1.setCaptionWidth(110);
        xNumberField1.setFieldType(Integer.class);
        xNumberField1.setName("entity.duedates.qtr1discduemonth");
        xNumberField1.setPattern("00");
        xNumberField1.setPreferredSize(new java.awt.Dimension(40, 19));
        formPanel1.add(xNumberField1);

        xNumberField2.setCaption("-");
        xNumberField2.setCaptionWidth(15);
        xNumberField2.setCellPadding(new java.awt.Insets(0, 5, 0, 0));
        xNumberField2.setFieldType(Integer.class);
        xNumberField2.setName("entity.duedates.qtr1discdueday");
        xNumberField2.setPattern("00");
        xNumberField2.setPreferredSize(new java.awt.Dimension(40, 19));
        formPanel1.add(xNumberField2);

        xLabel1.setCaption("(mm-dd)");
        xLabel1.setCellPadding(new java.awt.Insets(0, 5, 0, 0));
        formPanel1.add(xLabel1);

        formPanel3.add(formPanel1);

        formPanel5.setAddCaptionColon(false);
        formPanel5.setCaption("-");
        formPanel5.setCaptionBorder(javax.swing.BorderFactory.createEmptyBorder(1, 1, 1, 1));
        formPanel5.setOrientation(com.rameses.rcp.constant.UIConstants.HORIZONTAL);
        formPanel5.setPadding(new java.awt.Insets(1, 5, 5, 5));
        formPanel5.setShowCaption(false);
        xNumberField5.setCaption("2nd Quarter");
        xNumberField5.setCaptionWidth(110);
        xNumberField5.setFieldType(Integer.class);
        xNumberField5.setName("entity.duedates.qtr2discduemonth");
        xNumberField5.setPattern("00");
        xNumberField5.setPreferredSize(new java.awt.Dimension(40, 19));
        formPanel5.add(xNumberField5);

        xNumberField6.setCaption("-");
        xNumberField6.setCaptionWidth(15);
        xNumberField6.setCellPadding(new java.awt.Insets(0, 5, 0, 0));
        xNumberField6.setFieldType(Integer.class);
        xNumberField6.setName("entity.duedates.qtr2discdueday");
        xNumberField6.setPattern("00");
        xNumberField6.setPreferredSize(new java.awt.Dimension(40, 19));
        formPanel5.add(xNumberField6);

        xLabel3.setCaption("(mm-dd)");
        xLabel3.setCellPadding(new java.awt.Insets(0, 5, 0, 0));
        formPanel5.add(xLabel3);

        formPanel3.add(formPanel5);

        formPanel8.setAddCaptionColon(false);
        formPanel8.setCaption("-");
        formPanel8.setCaptionBorder(javax.swing.BorderFactory.createEmptyBorder(1, 1, 1, 1));
        formPanel8.setOrientation(com.rameses.rcp.constant.UIConstants.HORIZONTAL);
        formPanel8.setPadding(new java.awt.Insets(1, 5, 5, 5));
        formPanel8.setShowCaption(false);
        xNumberField9.setCaption("3rd Quarter");
        xNumberField9.setCaptionWidth(110);
        xNumberField9.setFieldType(Integer.class);
        xNumberField9.setName("entity.duedates.qtr3discduemonth");
        xNumberField9.setPattern("00");
        xNumberField9.setPreferredSize(new java.awt.Dimension(40, 19));
        formPanel8.add(xNumberField9);

        xNumberField10.setCaption("-");
        xNumberField10.setCaptionWidth(15);
        xNumberField10.setCellPadding(new java.awt.Insets(0, 5, 0, 0));
        xNumberField10.setFieldType(Integer.class);
        xNumberField10.setName("entity.duedates.qtr3discdueday");
        xNumberField10.setPattern("00");
        xNumberField10.setPreferredSize(new java.awt.Dimension(40, 19));
        formPanel8.add(xNumberField10);

        xLabel5.setCaption("(mm-dd)");
        xLabel5.setCellPadding(new java.awt.Insets(0, 5, 0, 0));
        formPanel8.add(xLabel5);

        formPanel3.add(formPanel8);

        formPanel11.setAddCaptionColon(false);
        formPanel11.setCaption("-");
        formPanel11.setCaptionBorder(javax.swing.BorderFactory.createEmptyBorder(1, 1, 1, 1));
        formPanel11.setOrientation(com.rameses.rcp.constant.UIConstants.HORIZONTAL);
        formPanel11.setPadding(new java.awt.Insets(1, 5, 5, 5));
        formPanel11.setShowCaption(false);
        xNumberField13.setCaption("4th Quarter");
        xNumberField13.setCaptionWidth(110);
        xNumberField13.setFieldType(Integer.class);
        xNumberField13.setName("entity.duedates.qtr4discduemonth");
        xNumberField13.setPattern("00");
        xNumberField13.setPreferredSize(new java.awt.Dimension(40, 19));
        formPanel11.add(xNumberField13);

        xNumberField14.setCaption("-");
        xNumberField14.setCaptionWidth(15);
        xNumberField14.setCellPadding(new java.awt.Insets(0, 5, 0, 0));
        xNumberField14.setFieldType(Integer.class);
        xNumberField14.setName("entity.duedates.qtr4discdueday");
        xNumberField14.setPattern("00");
        xNumberField14.setPreferredSize(new java.awt.Dimension(40, 19));
        formPanel11.add(xNumberField14);

        xLabel7.setCaption("(mm-dd)");
        xLabel7.setCellPadding(new java.awt.Insets(0, 5, 0, 0));
        formPanel11.add(xLabel7);

        formPanel3.add(formPanel11);

        jLabel1.setFont(new java.awt.Font("Tahoma", 1, 11));
        jLabel1.setForeground(new java.awt.Color(153, 0, 0));
        jLabel1.setText("* Blank setting references the end of quarter as due date");

        jLabel2.setFont(new java.awt.Font("Tahoma", 1, 11));
        jLabel2.setForeground(new java.awt.Color(153, 0, 0));
        jLabel2.setText("* Discount is applied on or before the specified due date");

        org.jdesktop.layout.GroupLayout jPanel2Layout = new org.jdesktop.layout.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(formPanel3, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 349, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jLabel2, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 420, Short.MAX_VALUE)
                    .add(org.jdesktop.layout.GroupLayout.TRAILING, jLabel1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 420, Short.MAX_VALUE))
                .addContainerGap())
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .add(formPanel3, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 129, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jLabel2)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jLabel1)
                .addContainerGap(110, Short.MAX_VALUE))
        );
        jTabbedPane1.addTab("Discount Due Dates Setting", jPanel2);

        formPanel13.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(153, 153, 153)));
        formPanel13.setPreferredSize(new java.awt.Dimension(325, 106));

        formPanel15.setAddCaptionColon(false);
        formPanel15.setCaption("-");
        formPanel15.setCaptionBorder(javax.swing.BorderFactory.createEmptyBorder(1, 1, 1, 1));
        formPanel15.setOrientation(com.rameses.rcp.constant.UIConstants.HORIZONTAL);
        formPanel15.setPadding(new java.awt.Insets(1, 5, 5, 5));
        formPanel15.setShowCaption(false);
        xNumberField19.setCaption("1st Quarter");
        xNumberField19.setCaptionWidth(110);
        xNumberField19.setFieldType(Integer.class);
        xNumberField19.setName("entity.duedates.qtr1intduemonth");
        xNumberField19.setPattern("00");
        xNumberField19.setPreferredSize(new java.awt.Dimension(40, 19));
        formPanel15.add(xNumberField19);

        xNumberField20.setCaption("-");
        xNumberField20.setCaptionWidth(15);
        xNumberField20.setCellPadding(new java.awt.Insets(0, 5, 0, 0));
        xNumberField20.setFieldType(Integer.class);
        xNumberField20.setName("entity.duedates.qtr1intdueday");
        xNumberField20.setPattern("00");
        xNumberField20.setPreferredSize(new java.awt.Dimension(40, 19));
        formPanel15.add(xNumberField20);

        xLabel10.setCaption("(mm-dd)");
        xLabel10.setCellPadding(new java.awt.Insets(0, 5, 0, 0));
        formPanel15.add(xLabel10);

        formPanel13.add(formPanel15);

        formPanel18.setAddCaptionColon(false);
        formPanel18.setCaption("-");
        formPanel18.setCaptionBorder(javax.swing.BorderFactory.createEmptyBorder(1, 1, 1, 1));
        formPanel18.setOrientation(com.rameses.rcp.constant.UIConstants.HORIZONTAL);
        formPanel18.setPadding(new java.awt.Insets(1, 5, 5, 5));
        formPanel18.setShowCaption(false);
        xNumberField23.setCaption("2nd Quarter");
        xNumberField23.setCaptionWidth(110);
        xNumberField23.setFieldType(Integer.class);
        xNumberField23.setName("entity.duedates.qtr2intduemonth");
        xNumberField23.setPattern("00");
        xNumberField23.setPreferredSize(new java.awt.Dimension(40, 19));
        formPanel18.add(xNumberField23);

        xNumberField24.setCaption("-");
        xNumberField24.setCaptionWidth(15);
        xNumberField24.setCellPadding(new java.awt.Insets(0, 5, 0, 0));
        xNumberField24.setFieldType(Integer.class);
        xNumberField24.setName("entity.duedates.qtr2intdueday");
        xNumberField24.setPattern("00");
        xNumberField24.setPreferredSize(new java.awt.Dimension(40, 19));
        formPanel18.add(xNumberField24);

        xLabel12.setCaption("(mm-dd)");
        xLabel12.setCellPadding(new java.awt.Insets(0, 5, 0, 0));
        formPanel18.add(xLabel12);

        formPanel13.add(formPanel18);

        formPanel21.setAddCaptionColon(false);
        formPanel21.setCaption("-");
        formPanel21.setCaptionBorder(javax.swing.BorderFactory.createEmptyBorder(1, 1, 1, 1));
        formPanel21.setOrientation(com.rameses.rcp.constant.UIConstants.HORIZONTAL);
        formPanel21.setPadding(new java.awt.Insets(1, 5, 5, 5));
        formPanel21.setShowCaption(false);
        xNumberField27.setCaption("3rd Quarter");
        xNumberField27.setCaptionWidth(110);
        xNumberField27.setFieldType(Integer.class);
        xNumberField27.setName("entity.duedates.qtr3intduemonth");
        xNumberField27.setPattern("00");
        xNumberField27.setPreferredSize(new java.awt.Dimension(40, 19));
        formPanel21.add(xNumberField27);

        xNumberField28.setCaption("-");
        xNumberField28.setCaptionWidth(15);
        xNumberField28.setCellPadding(new java.awt.Insets(0, 5, 0, 0));
        xNumberField28.setFieldType(Integer.class);
        xNumberField28.setName("entity.duedates.qtr3intdueday");
        xNumberField28.setPattern("00");
        xNumberField28.setPreferredSize(new java.awt.Dimension(40, 19));
        formPanel21.add(xNumberField28);

        xLabel14.setCaption("(mm-dd)");
        xLabel14.setCellPadding(new java.awt.Insets(0, 5, 0, 0));
        formPanel21.add(xLabel14);

        formPanel13.add(formPanel21);

        formPanel24.setAddCaptionColon(false);
        formPanel24.setCaption("-");
        formPanel24.setCaptionBorder(javax.swing.BorderFactory.createEmptyBorder(1, 1, 1, 1));
        formPanel24.setOrientation(com.rameses.rcp.constant.UIConstants.HORIZONTAL);
        formPanel24.setPadding(new java.awt.Insets(1, 5, 5, 5));
        formPanel24.setShowCaption(false);
        xNumberField31.setCaption("4th Quarter");
        xNumberField31.setCaptionWidth(110);
        xNumberField31.setFieldType(Integer.class);
        xNumberField31.setName("entity.duedates.qtr4intduemonth");
        xNumberField31.setPattern("00");
        xNumberField31.setPreferredSize(new java.awt.Dimension(40, 19));
        formPanel24.add(xNumberField31);

        xNumberField32.setCaption("-");
        xNumberField32.setCaptionWidth(15);
        xNumberField32.setCellPadding(new java.awt.Insets(0, 5, 0, 0));
        xNumberField32.setFieldType(Integer.class);
        xNumberField32.setName("entity.duedates.qtr4intdueday");
        xNumberField32.setPattern("00");
        xNumberField32.setPreferredSize(new java.awt.Dimension(40, 19));
        formPanel24.add(xNumberField32);

        xLabel16.setCaption("(mm-dd)");
        xLabel16.setCellPadding(new java.awt.Insets(0, 5, 0, 0));
        formPanel24.add(xLabel16);

        formPanel13.add(formPanel24);

        jLabel4.setFont(new java.awt.Font("Tahoma", 1, 11));
        jLabel4.setForeground(new java.awt.Color(153, 0, 0));
        jLabel4.setText("* Blank setting references the end of quarter as due date");

        jLabel6.setFont(new java.awt.Font("Tahoma", 1, 11));
        jLabel6.setForeground(new java.awt.Color(153, 0, 0));
        jLabel6.setText("* Penalty is applied after the specified due date");

        org.jdesktop.layout.GroupLayout jPanel3Layout = new org.jdesktop.layout.GroupLayout(jPanel3);
        jPanel3.setLayout(jPanel3Layout);
        jPanel3Layout.setHorizontalGroup(
            jPanel3Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel3Layout.createSequentialGroup()
                .addContainerGap()
                .add(jPanel3Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(formPanel13, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 349, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jLabel6, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 468, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jLabel4, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 468, Short.MAX_VALUE))
                .addContainerGap())
        );
        jPanel3Layout.setVerticalGroup(
            jPanel3Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel3Layout.createSequentialGroup()
                .addContainerGap()
                .add(formPanel13, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 129, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jLabel6)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jLabel4)
                .addContainerGap(110, Short.MAX_VALUE))
        );
        jTabbedPane1.addTab("Penalty Due Dates Setting", jPanel3);

        org.jdesktop.layout.GroupLayout jPanel1Layout = new org.jdesktop.layout.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .add(jTabbedPane1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 445, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(58, Short.MAX_VALUE))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .add(jTabbedPane1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 318, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(33, Short.MAX_VALUE))
        );
        add(jPanel1, java.awt.BorderLayout.CENTER);

    }// </editor-fold>//GEN-END:initComponents
    
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private com.rameses.rcp.util.FormPanel formPanel1;
    private com.rameses.rcp.util.FormPanel formPanel11;
    private com.rameses.rcp.util.FormPanel formPanel13;
    private com.rameses.rcp.util.FormPanel formPanel15;
    private com.rameses.rcp.util.FormPanel formPanel18;
    private com.rameses.rcp.util.FormPanel formPanel21;
    private com.rameses.rcp.util.FormPanel formPanel24;
    private com.rameses.rcp.util.FormPanel formPanel3;
    private com.rameses.rcp.util.FormPanel formPanel5;
    private com.rameses.rcp.util.FormPanel formPanel8;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JTabbedPane jTabbedPane1;
    private com.rameses.rcp.control.XActionBar xActionBar1;
    private com.rameses.rcp.control.XLabel xLabel1;
    private com.rameses.rcp.control.XLabel xLabel10;
    private com.rameses.rcp.control.XLabel xLabel12;
    private com.rameses.rcp.control.XLabel xLabel14;
    private com.rameses.rcp.control.XLabel xLabel16;
    private com.rameses.rcp.control.XLabel xLabel3;
    private com.rameses.rcp.control.XLabel xLabel5;
    private com.rameses.rcp.control.XLabel xLabel7;
    private com.rameses.rcp.control.XNumberField xNumberField1;
    private com.rameses.rcp.control.XNumberField xNumberField10;
    private com.rameses.rcp.control.XNumberField xNumberField13;
    private com.rameses.rcp.control.XNumberField xNumberField14;
    private com.rameses.rcp.control.XNumberField xNumberField19;
    private com.rameses.rcp.control.XNumberField xNumberField2;
    private com.rameses.rcp.control.XNumberField xNumberField20;
    private com.rameses.rcp.control.XNumberField xNumberField23;
    private com.rameses.rcp.control.XNumberField xNumberField24;
    private com.rameses.rcp.control.XNumberField xNumberField27;
    private com.rameses.rcp.control.XNumberField xNumberField28;
    private com.rameses.rcp.control.XNumberField xNumberField31;
    private com.rameses.rcp.control.XNumberField xNumberField32;
    private com.rameses.rcp.control.XNumberField xNumberField5;
    private com.rameses.rcp.control.XNumberField xNumberField6;
    private com.rameses.rcp.control.XNumberField xNumberField9;
    // End of variables declaration//GEN-END:variables
    
}
