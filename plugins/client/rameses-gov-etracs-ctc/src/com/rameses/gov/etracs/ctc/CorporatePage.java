package com.rameses.gov.etracs.ctc;

import com.rameses.enterprise.treasury.cashreceipt.SerialCashReceiptPage;
import com.rameses.rcp.ui.annotations.StyleSheet;
import com.rameses.rcp.ui.annotations.Template;

@Template(value=SerialCashReceiptPage.class, target="content")
@StyleSheet
public class CorporatePage extends javax.swing.JPanel {
    
    /** Creates new form IndividualPage */
    public CorporatePage() {
        initComponents();
    }
    
    /** This method is called from within the constructor to
     * initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is
     * always regenerated by the Form Editor.
     */
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        jPanel1 = new javax.swing.JPanel();
        formPanel1 = new com.rameses.rcp.util.FormPanel();
        xDateField2 = new com.rameses.rcp.control.XDateField();
        xTextField2 = new com.rameses.rcp.control.XTextField();
        xTextField5 = new com.rameses.rcp.control.XTextField();
        xCheckBox3 = new com.rameses.rcp.control.XCheckBox();
        xTextField1 = new com.rameses.rcp.control.XTextField();
        xComboBox2 = new com.rameses.rcp.control.XComboBox();
        xTextField3 = new com.rameses.rcp.control.XTextField();
        xDateField1 = new com.rameses.rcp.control.XDateField();
        xTextField4 = new com.rameses.rcp.control.XTextField();
        xCheckBox2 = new com.rameses.rcp.control.XCheckBox();
        xTextField11 = new com.rameses.rcp.control.XTextField();
        jPanel2 = new javax.swing.JPanel();
        formPanel2 = new com.rameses.rcp.util.FormPanel();
        xDecimalField1 = new com.rameses.rcp.control.XDecimalField();
        xDecimalField2 = new com.rameses.rcp.control.XDecimalField();
        xButton1 = new com.rameses.rcp.control.XButton();
        jPanel3 = new javax.swing.JPanel();
        formPanel3 = new com.rameses.rcp.util.FormPanel();
        xNumberField4 = new com.rameses.rcp.control.XNumberField();
        xNumberField6 = new com.rameses.rcp.control.XNumberField();
        xNumberField7 = new com.rameses.rcp.control.XNumberField();
        xNumberField8 = new com.rameses.rcp.control.XNumberField();

        com.rameses.rcp.control.border.XTitledBorder xTitledBorder1 = new com.rameses.rcp.control.border.XTitledBorder();
        xTitledBorder1.setTitle("Taxpayer Information");
        jPanel1.setBorder(xTitledBorder1);

        formPanel1.setCaptionWidth(120);
        xDateField2.setCaption("Txn. Date");
        xDateField2.setCaptionWidth(70);
        xDateField2.setCellPadding(new java.awt.Insets(0, 0, 10, 0));
        xDateField2.setDisabledTextColor(new java.awt.Color(51, 51, 51));
        xDateField2.setEnabled(false);
        xDateField2.setFont(new java.awt.Font("Arial", 1, 11));
        xDateField2.setName("entity.txndate");
        xDateField2.setPreferredSize(new java.awt.Dimension(100, 19));
        xDateField2.setReadonly(true);
        formPanel1.add(xDateField2);

        xTextField2.setCaption("Company");
        xTextField2.setCaptionWidth(70);
        xTextField2.setEnabled(false);
        xTextField2.setFont(new java.awt.Font("Tahoma", 1, 11));
        xTextField2.setName("entity.payer.name");
        xTextField2.setPreferredSize(new java.awt.Dimension(0, 19));
        xTextField2.setRequired(true);
        formPanel1.add(xTextField2);

        xTextField5.setCaption("Address");
        xTextField5.setCaptionWidth(70);
        xTextField5.setCellPadding(new java.awt.Insets(0, 0, 10, 0));
        xTextField5.setEnabled(false);
        xTextField5.setFont(new java.awt.Font("Tahoma", 1, 11));
        xTextField5.setName("entity.payer.address");
        xTextField5.setPreferredSize(new java.awt.Dimension(0, 19));
        xTextField5.setRequired(true);
        formPanel1.add(xTextField5);

        xCheckBox3.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        xCheckBox3.setCaption("Is New Business?");
        xCheckBox3.setCellPadding(new java.awt.Insets(0, 0, 20, 0));
        xCheckBox3.setMargin(new java.awt.Insets(0, 0, 0, 0));
        xCheckBox3.setName("entity.newbusiness");
        formPanel1.add(xCheckBox3);

        xTextField1.setCaption("TIN");
        xTextField1.setName("entity.payer.tin");
        xTextField1.setPreferredSize(new java.awt.Dimension(0, 19));
        formPanel1.add(xTextField1);

        xComboBox2.setCaption("Kind of Organization");
        xComboBox2.setItems("orgtypes");
        xComboBox2.setName("entity.payer.orgtype");
        xComboBox2.setPreferredSize(new java.awt.Dimension(0, 19));
        formPanel1.add(xComboBox2);

        xTextField3.setCaption("Nature of Business");
        xTextField3.setCellPadding(new java.awt.Insets(0, 0, 10, 0));
        xTextField3.setName("entity.payer.nature");
        xTextField3.setPreferredSize(new java.awt.Dimension(0, 19));
        formPanel1.add(xTextField3);

        xDateField1.setCaption("Date Registered");
        xDateField1.setDisabledTextColor(new java.awt.Color(0, 0, 0));
        xDateField1.setName("entity.payer.dtregistered");
        xDateField1.setPreferredSize(new java.awt.Dimension(100, 19));
        formPanel1.add(xDateField1);

        xTextField4.setCaption("Place of Registration");
        xTextField4.setName("entity.payer.placeregistered");
        xTextField4.setPreferredSize(new java.awt.Dimension(0, 19));
        formPanel1.add(xTextField4);

        xCheckBox2.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        xCheckBox2.setCaption("Is Additional?");
        xCheckBox2.setMargin(new java.awt.Insets(0, 0, 0, 0));
        xCheckBox2.setName("entity.additional");
        formPanel1.add(xCheckBox2);

        xTextField11.setCaption("Remarks");
        xTextField11.setDepends(new String[] {"entity.additional"});
        xTextField11.setName("entity.additional_remarks");
        xTextField11.setPreferredSize(new java.awt.Dimension(165, 19));
        formPanel1.add(xTextField11);

        org.jdesktop.layout.GroupLayout jPanel1Layout = new org.jdesktop.layout.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .add(formPanel1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 384, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(formPanel1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 340, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
        );

        com.rameses.rcp.control.border.XTitledBorder xTitledBorder2 = new com.rameses.rcp.control.border.XTitledBorder();
        xTitledBorder2.setTitle("Salary / Business Gross / RPT Income");
        jPanel2.setBorder(xTitledBorder2);

        formPanel2.setCaptionBorder(javax.swing.BorderFactory.createEmptyBorder(1, 1, 1, 1));
        formPanel2.setCaptionOrientation(com.rameses.rcp.constant.UIConstants.TOP);
        xDecimalField1.setCaption("Assessed Value of Property");
        xDecimalField1.setDepends(new String[] {"entity.additional"});
        xDecimalField1.setDisabledTextColor(new java.awt.Color(0, 0, 0));
        xDecimalField1.setName("entity.realpropertyav");
        xDecimalField1.setPreferredSize(new java.awt.Dimension(300, 20));
        formPanel2.add(xDecimalField1);

        xDecimalField2.setCaption("Business Gross (Preceeding Year)");
        xDecimalField2.setDepends(new String[] {"entity.additional"});
        xDecimalField2.setDisabledTextColor(new java.awt.Color(0, 0, 0));
        xDecimalField2.setName("entity.businessgross");
        xDecimalField2.setPreferredSize(new java.awt.Dimension(300, 20));
        formPanel2.add(xDecimalField2);

        xButton1.setMnemonic('t');
        xButton1.setImmediate(true);
        xButton1.setName("calculateTax");
        xButton1.setText("Calculate Tax");

        org.jdesktop.layout.GroupLayout jPanel2Layout = new org.jdesktop.layout.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(formPanel2, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 281, Short.MAX_VALUE)
                    .add(xButton1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 133, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addContainerGap())
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel2Layout.createSequentialGroup()
                .add(formPanel2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(xButton1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 32, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(47, Short.MAX_VALUE))
        );

        com.rameses.rcp.control.border.XTitledBorder xTitledBorder3 = new com.rameses.rcp.control.border.XTitledBorder();
        xTitledBorder3.setTitle("Community Tax Breakdown");
        jPanel3.setBorder(xTitledBorder3);

        formPanel3.setCaptionWidth(120);
        xNumberField4.setCaption("Basic Tax");
        xNumberField4.setEnabled(false);
        xNumberField4.setFieldType(java.math.BigDecimal.class);
        xNumberField4.setFont(new java.awt.Font("Arial", 1, 11));
        xNumberField4.setName("entity.basictax");
        xNumberField4.setPattern("#,##0.00");
        xNumberField4.setPreferredSize(new java.awt.Dimension(0, 19));
        formPanel3.add(xNumberField4);

        xNumberField6.setCaption("Property Tax");
        xNumberField6.setEnabled(false);
        xNumberField6.setFieldType(java.math.BigDecimal.class);
        xNumberField6.setFont(new java.awt.Font("Arial", 1, 11));
        xNumberField6.setName("entity.propertyavtax");
        xNumberField6.setPattern("#,##0.00");
        xNumberField6.setPreferredSize(new java.awt.Dimension(0, 19));
        formPanel3.add(xNumberField6);

        xNumberField7.setCaption("Gross Receipt Tax");
        xNumberField7.setEnabled(false);
        xNumberField7.setFieldType(java.math.BigDecimal.class);
        xNumberField7.setFont(new java.awt.Font("Arial", 1, 11));
        xNumberField7.setName("entity.businessgrosstax");
        xNumberField7.setPattern("#,##0.00");
        xNumberField7.setPreferredSize(new java.awt.Dimension(0, 19));
        formPanel3.add(xNumberField7);

        xNumberField8.setCaption("Interest");
        xNumberField8.setEnabled(false);
        xNumberField8.setFieldType(java.math.BigDecimal.class);
        xNumberField8.setFont(new java.awt.Font("Arial", 1, 11));
        xNumberField8.setName("entity.interest");
        xNumberField8.setPattern("#,##0.00");
        xNumberField8.setPreferredSize(new java.awt.Dimension(0, 19));
        formPanel3.add(xNumberField8);

        org.jdesktop.layout.GroupLayout jPanel3Layout = new org.jdesktop.layout.GroupLayout(jPanel3);
        jPanel3.setLayout(jPanel3Layout);
        jPanel3Layout.setHorizontalGroup(
            jPanel3Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel3Layout.createSequentialGroup()
                .addContainerGap()
                .add(formPanel3, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 281, Short.MAX_VALUE)
                .addContainerGap())
        );
        jPanel3Layout.setVerticalGroup(
            jPanel3Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel3Layout.createSequentialGroup()
                .add(formPanel3, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(49, Short.MAX_VALUE))
        );

        org.jdesktop.layout.GroupLayout layout = new org.jdesktop.layout.GroupLayout(this);
        this.setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(layout.createSequentialGroup()
                .addContainerGap()
                .add(jPanel1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING, false)
                    .add(jPanel3, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .add(jPanel2, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addContainerGap(46, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(layout.createSequentialGroup()
                .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING, false)
                    .add(org.jdesktop.layout.GroupLayout.LEADING, jPanel1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .add(layout.createSequentialGroup()
                        .add(jPanel2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(jPanel3, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)))
                .add(33, 33, 33))
        );
    }// </editor-fold>//GEN-END:initComponents
    
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private com.rameses.rcp.util.FormPanel formPanel1;
    private com.rameses.rcp.util.FormPanel formPanel2;
    private com.rameses.rcp.util.FormPanel formPanel3;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private com.rameses.rcp.control.XButton xButton1;
    private com.rameses.rcp.control.XCheckBox xCheckBox2;
    private com.rameses.rcp.control.XCheckBox xCheckBox3;
    private com.rameses.rcp.control.XComboBox xComboBox2;
    private com.rameses.rcp.control.XDateField xDateField1;
    private com.rameses.rcp.control.XDateField xDateField2;
    private com.rameses.rcp.control.XDecimalField xDecimalField1;
    private com.rameses.rcp.control.XDecimalField xDecimalField2;
    private com.rameses.rcp.control.XNumberField xNumberField4;
    private com.rameses.rcp.control.XNumberField xNumberField6;
    private com.rameses.rcp.control.XNumberField xNumberField7;
    private com.rameses.rcp.control.XNumberField xNumberField8;
    private com.rameses.rcp.control.XTextField xTextField1;
    private com.rameses.rcp.control.XTextField xTextField11;
    private com.rameses.rcp.control.XTextField xTextField2;
    private com.rameses.rcp.control.XTextField xTextField3;
    private com.rameses.rcp.control.XTextField xTextField4;
    private com.rameses.rcp.control.XTextField xTextField5;
    // End of variables declaration//GEN-END:variables
    
}
