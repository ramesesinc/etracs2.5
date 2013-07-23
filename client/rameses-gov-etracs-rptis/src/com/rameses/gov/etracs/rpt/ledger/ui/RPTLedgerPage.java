/*
 * RPTLedgerPage.java
 *
 * Created on July 2, 2011, 11:43 AM
 */

package com.rameses.gov.etracs.rpt.ledger.ui;

import com.rameses.osiris2.themes.FormPage;
import com.rameses.rcp.ui.annotations.StyleSheet;
import com.rameses.rcp.ui.annotations.Template;

/**
 *
 * @author  Rameses Systems Inc.
 */
@Template(FormPage.class)
@StyleSheet
public class RPTLedgerPage extends javax.swing.JPanel {
    
    /** Creates new form RPTLedgerPage */
    public RPTLedgerPage() {
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
        xLabel3 = new com.rameses.rcp.control.XLabel();
        xLabel4 = new com.rameses.rcp.control.XLabel();
        xLabel7 = new com.rameses.rcp.control.XLabel();
        xLabel8 = new com.rameses.rcp.control.XLabel();
        formPanel2 = new com.rameses.rcp.util.FormPanel();
        xLabel1 = new com.rameses.rcp.control.XLabel();
        xLabel2 = new com.rameses.rcp.control.XLabel();
        xSeparator3 = new com.rameses.rcp.control.XSeparator();
        xDecimalField9 = new com.rameses.rcp.control.XDecimalField();
        xDecimalField10 = new com.rameses.rcp.control.XDecimalField();
        formPanel3 = new com.rameses.rcp.util.FormPanel();
        xLabel5 = new com.rameses.rcp.control.XLabel();
        xLabel6 = new com.rameses.rcp.control.XLabel();
        formPanel4 = new com.rameses.rcp.util.FormPanel();
        xLabel13 = new com.rameses.rcp.control.XLabel();
        xLabel14 = new com.rameses.rcp.control.XLabel();
        formPanel5 = new com.rameses.rcp.util.FormPanel();
        xLabel15 = new com.rameses.rcp.control.XLabel();
        xLabel16 = new com.rameses.rcp.control.XLabel();
        xLabel12 = new com.rameses.rcp.control.XLabel();
        jTabbedPane1 = new javax.swing.JTabbedPane();
        jPanel2 = new javax.swing.JPanel();
        xButton1 = new com.rameses.rcp.control.XButton();
        xButton2 = new com.rameses.rcp.control.XButton();
        xDataTable1 = new com.rameses.rcp.control.XDataTable();
        xButton3 = new com.rameses.rcp.control.XButton();
        jPanel4 = new javax.swing.JPanel();
        xDataTable3 = new com.rameses.rcp.control.XDataTable();
        jPanel3 = new javax.swing.JPanel();
        xDataTable2 = new com.rameses.rcp.control.XDataTable();
        formPanel6 = new com.rameses.rcp.util.FormPanel();
        xNumberField2 = new com.rameses.rcp.control.XNumberField();
        xNumberField4 = new com.rameses.rcp.control.XNumberField();
        xNumberField5 = new com.rameses.rcp.control.XNumberField();
        formPanel7 = new com.rameses.rcp.util.FormPanel();
        xNumberField3 = new com.rameses.rcp.control.XNumberField();
        xNumberField6 = new com.rameses.rcp.control.XNumberField();
        xNumberField7 = new com.rameses.rcp.control.XNumberField();
        jPanel5 = new javax.swing.JPanel();
        formPanel8 = new com.rameses.rcp.util.FormPanel();
        xCheckBox1 = new com.rameses.rcp.control.XCheckBox();
        xCheckBox2 = new com.rameses.rcp.control.XCheckBox();
        xCheckBox3 = new com.rameses.rcp.control.XCheckBox();
        formPanel9 = new com.rameses.rcp.util.FormPanel();
        xDateField1 = new com.rameses.rcp.control.XDateField();
        xIntegerField1 = new com.rameses.rcp.control.XIntegerField();
        xSeparator1 = new com.rameses.rcp.control.XSeparator();
        xDecimalField1 = new com.rameses.rcp.control.XDecimalField();
        xDecimalField2 = new com.rameses.rcp.control.XDecimalField();
        xDecimalField3 = new com.rameses.rcp.control.XDecimalField();
        xDecimalField4 = new com.rameses.rcp.control.XDecimalField();
        xSeparator2 = new com.rameses.rcp.control.XSeparator();
        xDecimalField5 = new com.rameses.rcp.control.XDecimalField();
        xDecimalField6 = new com.rameses.rcp.control.XDecimalField();
        xDecimalField7 = new com.rameses.rcp.control.XDecimalField();
        xDecimalField8 = new com.rameses.rcp.control.XDecimalField();

        setLayout(new java.awt.BorderLayout());

        com.rameses.rcp.control.border.XTitledBorder xTitledBorder1 = new com.rameses.rcp.control.border.XTitledBorder();
        xTitledBorder1.setTitle("Ownership Information");
        formPanel1.setBorder(xTitledBorder1);
        xLabel3.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(153, 153, 153)));
        xLabel3.setCaption("Taxpayer");
        xLabel3.setCaptionWidth(80);
        xLabel3.setFont(new java.awt.Font("Arial", 1, 11));
        xLabel3.setName("ledger.taxpayername");
        xLabel3.setPreferredSize(new java.awt.Dimension(0, 19));
        formPanel1.add(xLabel3);

        xLabel4.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(153, 153, 153)));
        xLabel4.setCaption("Address");
        xLabel4.setCaptionWidth(80);
        xLabel4.setFont(new java.awt.Font("Arial", 1, 11));
        xLabel4.setName("ledger.taxpayeraddress");
        xLabel4.setPreferredSize(new java.awt.Dimension(0, 19));
        formPanel1.add(xLabel4);

        xLabel7.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(153, 153, 153)));
        xLabel7.setCaption("Administrator");
        xLabel7.setCaptionWidth(80);
        xLabel7.setFont(new java.awt.Font("Arial", 1, 11));
        xLabel7.setName("ledger.administratorname");
        xLabel7.setPreferredSize(new java.awt.Dimension(0, 19));
        formPanel1.add(xLabel7);

        xLabel8.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(153, 153, 153)));
        xLabel8.setCaption("Address");
        xLabel8.setCaptionWidth(80);
        xLabel8.setFont(new java.awt.Font("Arial", 1, 11));
        xLabel8.setName("ledger.administratoraddress");
        xLabel8.setPreferredSize(new java.awt.Dimension(0, 19));
        formPanel1.add(xLabel8);

        com.rameses.rcp.control.border.XTitledBorder xTitledBorder2 = new com.rameses.rcp.control.border.XTitledBorder();
        xTitledBorder2.setTitle("Balance Information");
        formPanel2.setBorder(xTitledBorder2);
        xLabel1.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(153, 153, 153)));
        xLabel1.setCaption("Last Year Paid");
        xLabel1.setCaptionWidth(100);
        xLabel1.setFont(new java.awt.Font("Arial", 1, 14));
        xLabel1.setForeground(new java.awt.Color(204, 0, 0));
        xLabel1.setName("ledger.lastyearpaid");
        xLabel1.setPreferredSize(new java.awt.Dimension(0, 19));
        formPanel2.add(xLabel1);

        xLabel2.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(153, 153, 153)));
        xLabel2.setCaption("Last Qtr. Paid");
        xLabel2.setCaptionWidth(100);
        xLabel2.setFont(new java.awt.Font("Arial", 1, 14));
        xLabel2.setForeground(new java.awt.Color(204, 0, 0));
        xLabel2.setName("ledger.lastqtrpaid");
        xLabel2.setPreferredSize(new java.awt.Dimension(0, 19));
        formPanel2.add(xLabel2);

        xSeparator3.setPreferredSize(new java.awt.Dimension(0, 20));
        org.jdesktop.layout.GroupLayout xSeparator3Layout = new org.jdesktop.layout.GroupLayout(xSeparator3);
        xSeparator3.setLayout(xSeparator3Layout);
        xSeparator3Layout.setHorizontalGroup(
            xSeparator3Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(0, 212, Short.MAX_VALUE)
        );
        xSeparator3Layout.setVerticalGroup(
            xSeparator3Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(0, 20, Short.MAX_VALUE)
        );
        formPanel2.add(xSeparator3);

        xDecimalField9.setCaption("BASIC");
        xDecimalField9.setCaptionWidth(60);
        xDecimalField9.setFont(new java.awt.Font("Tahoma", 1, 12));
        xDecimalField9.setName("totalBasic");
        xDecimalField9.setPreferredSize(new java.awt.Dimension(0, 20));
        xDecimalField9.setReadonly(true);
        formPanel2.add(xDecimalField9);

        xDecimalField10.setCaption("SEF");
        xDecimalField10.setCaptionWidth(60);
        xDecimalField10.setFont(new java.awt.Font("Tahoma", 1, 12));
        xDecimalField10.setName("totalSef");
        xDecimalField10.setPreferredSize(new java.awt.Dimension(0, 20));
        xDecimalField10.setReadonly(true);
        formPanel2.add(xDecimalField10);

        com.rameses.rcp.control.border.XTitledBorder xTitledBorder3 = new com.rameses.rcp.control.border.XTitledBorder();
        xTitledBorder3.setTitle("General Information");
        formPanel3.setBorder(xTitledBorder3);
        xLabel5.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(153, 153, 153)));
        xLabel5.setCaption("PIN ");
        xLabel5.setCaptionWidth(100);
        xLabel5.setFont(new java.awt.Font("Arial", 1, 11));
        xLabel5.setName("ledger.fullpin");
        xLabel5.setPreferredSize(new java.awt.Dimension(0, 19));
        formPanel3.add(xLabel5);

        xLabel6.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(153, 153, 153)));
        xLabel6.setCaption("TD No.");
        xLabel6.setCaptionWidth(100);
        xLabel6.setFont(new java.awt.Font("Arial", 1, 11));
        xLabel6.setName("ledger.tdno");
        xLabel6.setPreferredSize(new java.awt.Dimension(0, 19));
        formPanel3.add(xLabel6);

        formPanel4.setOrientation(com.rameses.rcp.constant.UIConstants.HORIZONTAL);
        formPanel4.setPadding(new java.awt.Insets(0, 0, 0, 0));
        formPanel4.setPreferredSize(new java.awt.Dimension(0, 20));
        formPanel4.setShowCaption(false);
        xLabel13.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(153, 153, 153)));
        xLabel13.setCaption("Type / Class");
        xLabel13.setCaptionWidth(100);
        xLabel13.setFont(new java.awt.Font("Arial", 1, 11));
        xLabel13.setName("ledger.rputype");
        xLabel13.setPreferredSize(new java.awt.Dimension(115, 19));
        formPanel4.add(xLabel13);

        xLabel14.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(153, 153, 153)));
        xLabel14.setCaption("Type / Class");
        xLabel14.setFont(new java.awt.Font("Arial", 1, 11));
        xLabel14.setName("ledger.classcode");
        xLabel14.setPreferredSize(new java.awt.Dimension(62, 19));
        xLabel14.setShowCaption(false);
        formPanel4.add(xLabel14);

        formPanel3.add(formPanel4);

        formPanel5.setOrientation(com.rameses.rcp.constant.UIConstants.HORIZONTAL);
        formPanel5.setPadding(new java.awt.Insets(0, 0, 0, 0));
        formPanel5.setPreferredSize(new java.awt.Dimension(0, 20));
        formPanel5.setShowCaption(false);
        xLabel15.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(153, 153, 153)));
        xLabel15.setCaption("Cadastral / Block");
        xLabel15.setCaptionWidth(100);
        xLabel15.setFont(new java.awt.Font("Arial", 1, 11));
        xLabel15.setName("ledger.cadastrallotno");
        xLabel15.setPreferredSize(new java.awt.Dimension(115, 19));
        formPanel5.add(xLabel15);

        xLabel16.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(153, 153, 153)));
        xLabel16.setCaption("Type / Class");
        xLabel16.setFont(new java.awt.Font("Arial", 1, 11));
        xLabel16.setName("ledger.blockno");
        xLabel16.setPreferredSize(new java.awt.Dimension(62, 19));
        xLabel16.setShowCaption(false);
        formPanel5.add(xLabel16);

        formPanel3.add(formPanel5);

        xLabel12.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(153, 153, 153)));
        xLabel12.setCaption("Barangay");
        xLabel12.setCaptionWidth(100);
        xLabel12.setFont(new java.awt.Font("Arial", 1, 11));
        xLabel12.setName("ledger.barangay.name");
        xLabel12.setPreferredSize(new java.awt.Dimension(0, 19));
        formPanel3.add(xLabel12);

        xButton1.setMnemonic('d');
        xButton1.setName("addFaas");
        xButton1.setText("Add");

        xButton2.setMnemonic('e');
        xButton2.setDepends(new String[] {"selectedItem"});
        xButton2.setName("editFaas");
        xButton2.setText("Edit");

        xDataTable1.setColumns(new com.rameses.rcp.common.Column[]{
            new com.rameses.rcp.common.Column("tdno", "TD No.", 130, 0, 0, false, true, true, false, null, new com.rameses.rcp.common.TextColumnHandler()),
            new com.rameses.rcp.common.Column("txntype.objid", "Txn Type", 60, 0, 0, false, true, true, false, null, new com.rameses.rcp.common.TextColumnHandler()),
            new com.rameses.rcp.common.Column("classification.code", "Class", 50, 0, 0, false, true, true, false, null, new com.rameses.rcp.common.TextColumnHandler()),
            new com.rameses.rcp.common.Column("fromyear", "From Year", 70, 0, 0, false, true, true, false, null, new com.rameses.rcp.common.IntegerColumnHandler("0000", -1, -1)),
            new com.rameses.rcp.common.Column("fromqtr", "From Qtr", 70, 0, 0, false, true, true, false, null, new com.rameses.rcp.common.IntegerColumnHandler("0", -1, -1)),
            new com.rameses.rcp.common.Column("toyear", "To Year", 70, 0, 0, false, true, true, false, null, new com.rameses.rcp.common.IntegerColumnHandler("0000", -1, -1)),
            new com.rameses.rcp.common.Column("toqtr", "To Qtr", 70, 0, 0, false, true, true, false, null, new com.rameses.rcp.common.IntegerColumnHandler("0", -1, -1)),
            new com.rameses.rcp.common.Column("taxable", "Tax?", 60, 0, 0, false, true, true, false, null, new com.rameses.rcp.common.CheckBoxColumnHandler(java.lang.Boolean.class, true, false)),
            new com.rameses.rcp.common.Column("backtax", "Back Tax?", 80, 0, 0, false, true, true, false, null, new com.rameses.rcp.common.CheckBoxColumnHandler(java.lang.Boolean.class, true, false)),
            new com.rameses.rcp.common.Column("assessedvalue", "Assessed Value", 100, 0, 0, false, true, true, false, null, new com.rameses.rcp.common.DecimalColumnHandler("#,##0.00", -1.0, -1.0, false))
        });
        xDataTable1.setHandler("historyListHandler");
        xDataTable1.setImmediate(true);
        xDataTable1.setName("selectedItem");

        xButton3.setMnemonic('r');
        xButton3.setDepends(new String[] {"selectedItem"});
        xButton3.setName("removeFaas");
        xButton3.setText("Remove");

        org.jdesktop.layout.GroupLayout jPanel2Layout = new org.jdesktop.layout.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(xDataTable1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 801, Short.MAX_VALUE)
                    .add(jPanel2Layout.createSequentialGroup()
                        .add(xButton1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(xButton2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(xButton3, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap())
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(org.jdesktop.layout.GroupLayout.TRAILING, jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .add(xDataTable1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 308, Short.MAX_VALUE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(xButton1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(xButton2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(xButton3, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addContainerGap())
        );
        jTabbedPane1.addTab("FAAS History", jPanel2);

        xDataTable3.setColumns(new com.rameses.rcp.common.Column[]{
            new com.rameses.rcp.common.Column("tdno", "TD No.", 100, 0, 0, false, true, true, false, null, new com.rameses.rcp.common.TextColumnHandler()),
            new com.rameses.rcp.common.Column("year", "Year", 100, 0, 0, false, true, true, false, null, new com.rameses.rcp.common.IntegerColumnHandler("0000", -1, -1)),
            new com.rameses.rcp.common.Column("qtr", "Qtr", 100, 0, 0, false, true, true, false, null, new com.rameses.rcp.common.IntegerColumnHandler("0", -1, -1)),
            new com.rameses.rcp.common.Column("assessedvalue", "Assessed Value", 100, 0, 0, false, true, true, false, null, new com.rameses.rcp.common.DecimalColumnHandler("#,##0.00", -1.0, -1.0, false)),
            new com.rameses.rcp.common.Column("qtrlyav", "Qtrly A.V.", 100, 0, 0, false, true, true, false, null, new com.rameses.rcp.common.DecimalColumnHandler("#,##0.00", -1.0, -1.0, false)),
            new com.rameses.rcp.common.Column("basic", "Basic", 100, 0, 0, false, true, true, false, null, new com.rameses.rcp.common.DecimalColumnHandler("#,##0.00", -1.0, -1.0, false)),
            new com.rameses.rcp.common.Column("basicpaid", "Basic Paid", 100, 0, 0, false, true, true, false, null, new com.rameses.rcp.common.DecimalColumnHandler("#,##0.00", -1.0, -1.0, false)),
            new com.rameses.rcp.common.Column("sef", "SEF", 100, 0, 0, false, true, true, false, null, new com.rameses.rcp.common.DecimalColumnHandler("#,##0.00", -1.0, -1.0, false)),
            new com.rameses.rcp.common.Column("sefpaid", "SEF Paid", 100, 0, 0, false, true, true, false, null, new com.rameses.rcp.common.DecimalColumnHandler("#,##0.00", -1.0, -1.0, false))
        });
        xDataTable3.setHandler("debitListHandler");

        org.jdesktop.layout.GroupLayout jPanel4Layout = new org.jdesktop.layout.GroupLayout(jPanel4);
        jPanel4.setLayout(jPanel4Layout);
        jPanel4Layout.setHorizontalGroup(
            jPanel4Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel4Layout.createSequentialGroup()
                .addContainerGap()
                .add(xDataTable3, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 801, Short.MAX_VALUE)
                .addContainerGap())
        );
        jPanel4Layout.setVerticalGroup(
            jPanel4Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel4Layout.createSequentialGroup()
                .addContainerGap()
                .add(xDataTable3, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 337, Short.MAX_VALUE)
                .addContainerGap())
        );
        jTabbedPane1.addTab("Debits", jPanel4);

        xDataTable2.setHandler("paymentListHandler");
        xDataTable2.setImmediate(true);
        xDataTable2.setName("selectedPayment");

        com.rameses.rcp.control.border.XTitledBorder xTitledBorder4 = new com.rameses.rcp.control.border.XTitledBorder();
        xTitledBorder4.setTitle("Basic Payment Breakdown");
        formPanel6.setBorder(xTitledBorder4);
        formPanel6.setCaptionFont(new java.awt.Font("Arial", 0, 14));
        xNumberField2.setCaption("Basic");
        xNumberField2.setDepends(new String[] {"selectedPayment"});
        xNumberField2.setFont(new java.awt.Font("Arial", 0, 14));
        xNumberField2.setName("selectedPayment.basic");
        xNumberField2.setPattern("#,##0.00");
        xNumberField2.setPreferredSize(new java.awt.Dimension(150, 19));
        xNumberField2.setReadonly(true);
        formPanel6.add(xNumberField2);

        xNumberField4.setCaption("Discount");
        xNumberField4.setDepends(new String[] {"selectedPayment"});
        xNumberField4.setFont(new java.awt.Font("Arial", 0, 14));
        xNumberField4.setName("selectedPayment.basicdisc");
        xNumberField4.setPattern("#,##0.00");
        xNumberField4.setPreferredSize(new java.awt.Dimension(150, 19));
        xNumberField4.setReadonly(true);
        formPanel6.add(xNumberField4);

        xNumberField5.setCaption("Penalty");
        xNumberField5.setDepends(new String[] {"selectedPayment"});
        xNumberField5.setFont(new java.awt.Font("Arial", 0, 14));
        xNumberField5.setName("selectedPayment.basicint");
        xNumberField5.setPattern("#,##0.00");
        xNumberField5.setPreferredSize(new java.awt.Dimension(150, 19));
        xNumberField5.setReadonly(true);
        formPanel6.add(xNumberField5);

        com.rameses.rcp.control.border.XTitledBorder xTitledBorder5 = new com.rameses.rcp.control.border.XTitledBorder();
        xTitledBorder5.setTitle("SEF Payment Breakdown");
        formPanel7.setBorder(xTitledBorder5);
        formPanel7.setCaptionFont(new java.awt.Font("Arial", 0, 14));
        xNumberField3.setCaption("SEF");
        xNumberField3.setDepends(new String[] {"selectedPayment"});
        xNumberField3.setFont(new java.awt.Font("Arial", 0, 14));
        xNumberField3.setName("selectedPayment.sef");
        xNumberField3.setPattern("#,##0.00");
        xNumberField3.setPreferredSize(new java.awt.Dimension(150, 19));
        xNumberField3.setReadonly(true);
        formPanel7.add(xNumberField3);

        xNumberField6.setCaption("Discount");
        xNumberField6.setDepends(new String[] {"selectedPayment"});
        xNumberField6.setFont(new java.awt.Font("Arial", 0, 14));
        xNumberField6.setName("selectedPayment.sefdisc");
        xNumberField6.setPattern("#,##0.00");
        xNumberField6.setPreferredSize(new java.awt.Dimension(150, 19));
        xNumberField6.setReadonly(true);
        formPanel7.add(xNumberField6);

        xNumberField7.setCaption("Penalty");
        xNumberField7.setDepends(new String[] {"selectedPayment"});
        xNumberField7.setFont(new java.awt.Font("Arial", 0, 14));
        xNumberField7.setName("selectedPayment.sefint");
        xNumberField7.setPattern("#,##0.00");
        xNumberField7.setPreferredSize(new java.awt.Dimension(150, 19));
        xNumberField7.setReadonly(true);
        formPanel7.add(xNumberField7);

        org.jdesktop.layout.GroupLayout jPanel3Layout = new org.jdesktop.layout.GroupLayout(jPanel3);
        jPanel3.setLayout(jPanel3Layout);
        jPanel3Layout.setHorizontalGroup(
            jPanel3Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel3Layout.createSequentialGroup()
                .addContainerGap()
                .add(jPanel3Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(org.jdesktop.layout.GroupLayout.TRAILING, jPanel3Layout.createSequentialGroup()
                        .add(formPanel6, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 397, Short.MAX_VALUE)
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(formPanel7, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 398, Short.MAX_VALUE))
                    .add(xDataTable2, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 801, Short.MAX_VALUE))
                .addContainerGap())
        );
        jPanel3Layout.setVerticalGroup(
            jPanel3Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel3Layout.createSequentialGroup()
                .addContainerGap()
                .add(xDataTable2, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 227, Short.MAX_VALUE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel3Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(formPanel6, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 104, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(formPanel7, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 104, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addContainerGap())
        );
        jTabbedPane1.addTab("Credits", jPanel3);

        com.rameses.rcp.control.border.XTitledBorder xTitledBorder6 = new com.rameses.rcp.control.border.XTitledBorder();
        xTitledBorder6.setTitle("Payment Status");
        formPanel8.setBorder(xTitledBorder6);
        xCheckBox1.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        xCheckBox1.setMargin(new java.awt.Insets(0, 0, 0, 0));
        xCheckBox1.setName("ledger.qtrlypaymentavailed");
        xCheckBox1.setOpaque(false);
        xCheckBox1.setPreferredSize(new java.awt.Dimension(0, 25));
        xCheckBox1.setReadonly(true);
        xCheckBox1.setShowCaption(false);
        xCheckBox1.setText("Quarterly Payment Availed");
        formPanel8.add(xCheckBox1);

        xCheckBox2.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        xCheckBox2.setMargin(new java.awt.Insets(0, 0, 0, 0));
        xCheckBox2.setName("ledger.qtrlypaymentpaidontime");
        xCheckBox2.setOpaque(false);
        xCheckBox2.setPreferredSize(new java.awt.Dimension(0, 25));
        xCheckBox2.setReadonly(true);
        xCheckBox2.setShowCaption(false);
        xCheckBox2.setText("Quarterly Payment Paid On-Time");
        formPanel8.add(xCheckBox2);

        xCheckBox3.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        xCheckBox3.setMargin(new java.awt.Insets(0, 0, 0, 0));
        xCheckBox3.setName("ledger.firstqtrpaidontime");
        xCheckBox3.setOpaque(false);
        xCheckBox3.setPreferredSize(new java.awt.Dimension(0, 25));
        xCheckBox3.setReadonly(true);
        xCheckBox3.setShowCaption(false);
        xCheckBox3.setText("1st Qtr Paid On-Time");
        formPanel8.add(xCheckBox3);

        com.rameses.rcp.control.border.XTitledBorder xTitledBorder7 = new com.rameses.rcp.control.border.XTitledBorder();
        xTitledBorder7.setTitle("Billing Information");
        formPanel9.setBorder(xTitledBorder7);
        xDateField1.setCaption("Next Bill Date");
        xDateField1.setCaptionWidth(100);
        xDateField1.setFont(new java.awt.Font("Tahoma", 1, 11));
        xDateField1.setName("ledger.nextbilldate");
        xDateField1.setPreferredSize(new java.awt.Dimension(120, 20));
        xDateField1.setReadonly(true);
        formPanel9.add(xDateField1);

        xIntegerField1.setCaption("Last Billed Year");
        xIntegerField1.setCaptionWidth(100);
        xIntegerField1.setFont(new java.awt.Font("Tahoma", 1, 11));
        xIntegerField1.setName("ledger.posteditemyear");
        xIntegerField1.setPreferredSize(new java.awt.Dimension(120, 20));
        xIntegerField1.setReadonly(true);
        formPanel9.add(xIntegerField1);

        xSeparator1.setPreferredSize(new java.awt.Dimension(0, 20));
        org.jdesktop.layout.GroupLayout xSeparator1Layout = new org.jdesktop.layout.GroupLayout(xSeparator1);
        xSeparator1.setLayout(xSeparator1Layout);
        xSeparator1Layout.setHorizontalGroup(
            xSeparator1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(0, 312, Short.MAX_VALUE)
        );
        xSeparator1Layout.setVerticalGroup(
            xSeparator1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(0, 20, Short.MAX_VALUE)
        );
        formPanel9.add(xSeparator1);

        xDecimalField1.setCaption("Basic");
        xDecimalField1.setCaptionWidth(100);
        xDecimalField1.setName("ledger.basic");
        xDecimalField1.setPreferredSize(new java.awt.Dimension(120, 20));
        xDecimalField1.setReadonly(true);
        formPanel9.add(xDecimalField1);

        xDecimalField2.setCaption("Basic Discount");
        xDecimalField2.setCaptionWidth(100);
        xDecimalField2.setName("ledger.basicdisc");
        xDecimalField2.setPreferredSize(new java.awt.Dimension(120, 20));
        xDecimalField2.setReadonly(true);
        formPanel9.add(xDecimalField2);

        xDecimalField3.setCaption("Basic Interest");
        xDecimalField3.setCaptionWidth(100);
        xDecimalField3.setName("ledger.basicint");
        xDecimalField3.setPreferredSize(new java.awt.Dimension(120, 20));
        xDecimalField3.setReadonly(true);
        formPanel9.add(xDecimalField3);

        xDecimalField4.setCaption("TOTAL BASIC");
        xDecimalField4.setCaptionWidth(100);
        xDecimalField4.setFont(new java.awt.Font("Tahoma", 1, 12));
        xDecimalField4.setName("totalBasic");
        xDecimalField4.setPreferredSize(new java.awt.Dimension(120, 20));
        xDecimalField4.setReadonly(true);
        formPanel9.add(xDecimalField4);

        xSeparator2.setPreferredSize(new java.awt.Dimension(0, 20));
        org.jdesktop.layout.GroupLayout xSeparator2Layout = new org.jdesktop.layout.GroupLayout(xSeparator2);
        xSeparator2.setLayout(xSeparator2Layout);
        xSeparator2Layout.setHorizontalGroup(
            xSeparator2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(0, 312, Short.MAX_VALUE)
        );
        xSeparator2Layout.setVerticalGroup(
            xSeparator2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(0, 20, Short.MAX_VALUE)
        );
        formPanel9.add(xSeparator2);

        xDecimalField5.setCaption("SEF");
        xDecimalField5.setCaptionWidth(100);
        xDecimalField5.setName("ledger.sef");
        xDecimalField5.setPreferredSize(new java.awt.Dimension(120, 20));
        xDecimalField5.setReadonly(true);
        formPanel9.add(xDecimalField5);

        xDecimalField6.setCaption("SEF Discount");
        xDecimalField6.setCaptionWidth(100);
        xDecimalField6.setName("ledger.sefdisc");
        xDecimalField6.setPreferredSize(new java.awt.Dimension(120, 20));
        xDecimalField6.setReadonly(true);
        formPanel9.add(xDecimalField6);

        xDecimalField7.setCaption("SEF Interest");
        xDecimalField7.setCaptionWidth(100);
        xDecimalField7.setName("ledger.sefint");
        xDecimalField7.setPreferredSize(new java.awt.Dimension(120, 20));
        xDecimalField7.setReadonly(true);
        formPanel9.add(xDecimalField7);

        xDecimalField8.setCaption("TOTAL SEF");
        xDecimalField8.setCaptionWidth(100);
        xDecimalField8.setFont(new java.awt.Font("Tahoma", 1, 12));
        xDecimalField8.setName("totalSef");
        xDecimalField8.setPreferredSize(new java.awt.Dimension(120, 20));
        xDecimalField8.setReadonly(true);
        formPanel9.add(xDecimalField8);

        org.jdesktop.layout.GroupLayout jPanel5Layout = new org.jdesktop.layout.GroupLayout(jPanel5);
        jPanel5.setLayout(jPanel5Layout);
        jPanel5Layout.setHorizontalGroup(
            jPanel5Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel5Layout.createSequentialGroup()
                .addContainerGap()
                .add(formPanel9, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 326, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(formPanel8, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 296, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(183, Short.MAX_VALUE))
        );
        jPanel5Layout.setVerticalGroup(
            jPanel5Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel5Layout.createSequentialGroup()
                .addContainerGap()
                .add(jPanel5Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING, false)
                    .add(org.jdesktop.layout.GroupLayout.LEADING, formPanel8, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 306, Short.MAX_VALUE)
                    .add(org.jdesktop.layout.GroupLayout.LEADING, formPanel9, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 306, Short.MAX_VALUE))
                .add(42, 42, 42))
        );
        jTabbedPane1.addTab("Billing and Other Information", jPanel5);

        org.jdesktop.layout.GroupLayout jPanel1Layout = new org.jdesktop.layout.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .add(jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(jTabbedPane1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 826, Short.MAX_VALUE)
                    .add(jPanel1Layout.createSequentialGroup()
                        .add(formPanel1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 295, Short.MAX_VALUE)
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(formPanel3, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 293, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(formPanel2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 226, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap())
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .add(jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING, false)
                    .add(formPanel1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .add(formPanel3, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .add(formPanel2, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jTabbedPane1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 387, Short.MAX_VALUE)
                .addContainerGap())
        );
        add(jPanel1, java.awt.BorderLayout.CENTER);

    }// </editor-fold>//GEN-END:initComponents
    
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private com.rameses.rcp.util.FormPanel formPanel1;
    private com.rameses.rcp.util.FormPanel formPanel2;
    private com.rameses.rcp.util.FormPanel formPanel3;
    private com.rameses.rcp.util.FormPanel formPanel4;
    private com.rameses.rcp.util.FormPanel formPanel5;
    private com.rameses.rcp.util.FormPanel formPanel6;
    private com.rameses.rcp.util.FormPanel formPanel7;
    private com.rameses.rcp.util.FormPanel formPanel8;
    private com.rameses.rcp.util.FormPanel formPanel9;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JPanel jPanel4;
    private javax.swing.JPanel jPanel5;
    private javax.swing.JTabbedPane jTabbedPane1;
    private com.rameses.rcp.control.XButton xButton1;
    private com.rameses.rcp.control.XButton xButton2;
    private com.rameses.rcp.control.XButton xButton3;
    private com.rameses.rcp.control.XCheckBox xCheckBox1;
    private com.rameses.rcp.control.XCheckBox xCheckBox2;
    private com.rameses.rcp.control.XCheckBox xCheckBox3;
    private com.rameses.rcp.control.XDataTable xDataTable1;
    private com.rameses.rcp.control.XDataTable xDataTable2;
    private com.rameses.rcp.control.XDataTable xDataTable3;
    private com.rameses.rcp.control.XDateField xDateField1;
    private com.rameses.rcp.control.XDecimalField xDecimalField1;
    private com.rameses.rcp.control.XDecimalField xDecimalField10;
    private com.rameses.rcp.control.XDecimalField xDecimalField2;
    private com.rameses.rcp.control.XDecimalField xDecimalField3;
    private com.rameses.rcp.control.XDecimalField xDecimalField4;
    private com.rameses.rcp.control.XDecimalField xDecimalField5;
    private com.rameses.rcp.control.XDecimalField xDecimalField6;
    private com.rameses.rcp.control.XDecimalField xDecimalField7;
    private com.rameses.rcp.control.XDecimalField xDecimalField8;
    private com.rameses.rcp.control.XDecimalField xDecimalField9;
    private com.rameses.rcp.control.XIntegerField xIntegerField1;
    private com.rameses.rcp.control.XLabel xLabel1;
    private com.rameses.rcp.control.XLabel xLabel12;
    private com.rameses.rcp.control.XLabel xLabel13;
    private com.rameses.rcp.control.XLabel xLabel14;
    private com.rameses.rcp.control.XLabel xLabel15;
    private com.rameses.rcp.control.XLabel xLabel16;
    private com.rameses.rcp.control.XLabel xLabel2;
    private com.rameses.rcp.control.XLabel xLabel3;
    private com.rameses.rcp.control.XLabel xLabel4;
    private com.rameses.rcp.control.XLabel xLabel5;
    private com.rameses.rcp.control.XLabel xLabel6;
    private com.rameses.rcp.control.XLabel xLabel7;
    private com.rameses.rcp.control.XLabel xLabel8;
    private com.rameses.rcp.control.XNumberField xNumberField2;
    private com.rameses.rcp.control.XNumberField xNumberField3;
    private com.rameses.rcp.control.XNumberField xNumberField4;
    private com.rameses.rcp.control.XNumberField xNumberField5;
    private com.rameses.rcp.control.XNumberField xNumberField6;
    private com.rameses.rcp.control.XNumberField xNumberField7;
    private com.rameses.rcp.control.XSeparator xSeparator1;
    private com.rameses.rcp.control.XSeparator xSeparator2;
    private com.rameses.rcp.control.XSeparator xSeparator3;
    // End of variables declaration//GEN-END:variables
    
}
