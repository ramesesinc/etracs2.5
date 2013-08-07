/*
 * AbstractOfCollectionInitPage.java
 *
 * Created on June 3, 2011, 1:35 PM
 */

package com.rameses.gov.etracs.rpt.brgyshare;

import com.rameses.osiris2.themes.FormPage;
import com.rameses.rcp.ui.annotations.StyleSheet;
import com.rameses.rcp.ui.annotations.Template;


@Template(FormPage.class)
@StyleSheet()
public class BrgySharePage extends javax.swing.JPanel {
    
    /**
     * Creates new form AbstractOfCollectionInitPage
     */
    public BrgySharePage() {
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
        xNumberField1 = new com.rameses.rcp.control.XNumberField();
        xComboBox2 = new com.rameses.rcp.control.XComboBox();
        xDataTable1 = new com.rameses.rcp.control.XDataTable();
        formPanel2 = new com.rameses.rcp.util.FormPanel();
        xLabel1 = new com.rameses.rcp.control.XLabel();
        xLabel2 = new com.rameses.rcp.control.XLabel();
        xLabel3 = new com.rameses.rcp.control.XLabel();
        xLabel7 = new com.rameses.rcp.control.XLabel();
        formPanel3 = new com.rameses.rcp.util.FormPanel();
        xLabel4 = new com.rameses.rcp.control.XLabel();
        xLabel5 = new com.rameses.rcp.control.XLabel();
        xLabel6 = new com.rameses.rcp.control.XLabel();
        xFormPanel1 = new com.rameses.rcp.control.XFormPanel();
        xDecimalField1 = new com.rameses.rcp.control.XDecimalField();

        setPreferredSize(new java.awt.Dimension(603, 291));

        com.rameses.rcp.control.border.XTitledBorder xTitledBorder1 = new com.rameses.rcp.control.border.XTitledBorder();
        xTitledBorder1.setTitle("Report Period Information");
        formPanel1.setBorder(xTitledBorder1);
        xNumberField1.setCaption("Year");
        xNumberField1.setEnabled(false);
        xNumberField1.setFieldType(Integer.class);
        xNumberField1.setIndex(-10);
        xNumberField1.setName("entity.year");
        xNumberField1.setPreferredSize(new java.awt.Dimension(80, 19));
        xNumberField1.setRequired(true);
        formPanel1.add(xNumberField1);

        xComboBox2.setCaption("Month");
        xComboBox2.setEnabled(false);
        xComboBox2.setExpression("#{item.caption} ");
        xComboBox2.setImmediate(true);
        xComboBox2.setItems("months");
        xComboBox2.setName("entity.mon");
        xComboBox2.setPreferredSize(new java.awt.Dimension(200, 22));
        xComboBox2.setRequired(true);
        formPanel1.add(xComboBox2);

        com.rameses.rcp.control.border.XTitledBorder xTitledBorder2 = new com.rameses.rcp.control.border.XTitledBorder();
        xTitledBorder2.setTitle("Barangay Shares");
        xDataTable1.setBorder(xTitledBorder2);
        xDataTable1.setColumns(new com.rameses.rcp.common.Column[]{
            new com.rameses.rcp.common.Column("barangay", "Barangay", 100, 0, 0, false, true, true, false, null, new com.rameses.rcp.common.TextColumnHandler()),
            new com.rameses.rcp.common.Column("basicshare", "Basic", 100, 0, 0, false, true, true, false, null, new com.rameses.rcp.common.DecimalColumnHandler("#,##0.00", -1.0, -1.0, false)),
            new com.rameses.rcp.common.Column("basicintshare", "Interest", 100, 0, 0, false, true, true, false, null, new com.rameses.rcp.common.DecimalColumnHandler("#,##0.00", -1.0, -1.0, false)),
            new com.rameses.rcp.common.Column("totalshare", "Total", 100, 0, 0, false, true, true, false, null, new com.rameses.rcp.common.DecimalColumnHandler("#,##0.00", -1.0, -1.0, false))
        });
        xDataTable1.setHandler("listHandler");

        com.rameses.rcp.control.border.XTitledBorder xTitledBorder3 = new com.rameses.rcp.control.border.XTitledBorder();
        xTitledBorder3.setTitle("Posting Information");
        formPanel2.setBorder(xTitledBorder3);
        com.rameses.rcp.control.border.XLineBorder xLineBorder1 = new com.rameses.rcp.control.border.XLineBorder();
        xLineBorder1.setLineColor(new java.awt.Color(153, 153, 153));
        xLabel1.setBorder(xLineBorder1);
        xLabel1.setCaption("Created By");
        xLabel1.setExpression("#{entity.createdby}");
        xLabel1.setFont(new java.awt.Font("Tahoma", 1, 11));
        xLabel1.setPreferredSize(new java.awt.Dimension(0, 19));
        formPanel2.add(xLabel1);

        com.rameses.rcp.control.border.XLineBorder xLineBorder2 = new com.rameses.rcp.control.border.XLineBorder();
        xLineBorder2.setLineColor(new java.awt.Color(153, 153, 153));
        xLabel2.setBorder(xLineBorder2);
        xLabel2.setCaption("Job Position");
        xLabel2.setExpression("#{entity.createdbytitle}");
        xLabel2.setFont(new java.awt.Font("Tahoma", 1, 11));
        xLabel2.setPreferredSize(new java.awt.Dimension(0, 19));
        formPanel2.add(xLabel2);

        com.rameses.rcp.control.border.XLineBorder xLineBorder3 = new com.rameses.rcp.control.border.XLineBorder();
        xLineBorder3.setLineColor(new java.awt.Color(153, 153, 153));
        xLabel3.setBorder(xLineBorder3);
        xLabel3.setCaption("Posted By");
        xLabel3.setExpression("#{entity.postedby}");
        xLabel3.setFont(new java.awt.Font("Tahoma", 1, 11));
        xLabel3.setPreferredSize(new java.awt.Dimension(0, 19));
        formPanel2.add(xLabel3);

        com.rameses.rcp.control.border.XLineBorder xLineBorder4 = new com.rameses.rcp.control.border.XLineBorder();
        xLineBorder4.setLineColor(new java.awt.Color(153, 153, 153));
        xLabel7.setBorder(xLineBorder4);
        xLabel7.setCaption("Job Position");
        xLabel7.setExpression("#{entity.createdbytitle}");
        xLabel7.setFont(new java.awt.Font("Tahoma", 1, 11));
        xLabel7.setPreferredSize(new java.awt.Dimension(0, 19));
        formPanel2.add(xLabel7);

        com.rameses.rcp.control.border.XTitledBorder xTitledBorder4 = new com.rameses.rcp.control.border.XTitledBorder();
        xTitledBorder4.setTitle("General Information");
        formPanel3.setBorder(xTitledBorder4);
        com.rameses.rcp.control.border.XLineBorder xLineBorder5 = new com.rameses.rcp.control.border.XLineBorder();
        xLineBorder5.setLineColor(new java.awt.Color(153, 153, 153));
        xLabel4.setBorder(xLineBorder5);
        xLabel4.setCaption("State");
        xLabel4.setExpression("#{entity.state}");
        xLabel4.setFont(new java.awt.Font("Tahoma", 1, 11));
        xLabel4.setPreferredSize(new java.awt.Dimension(0, 19));
        formPanel3.add(xLabel4);

        com.rameses.rcp.control.border.XLineBorder xLineBorder6 = new com.rameses.rcp.control.border.XLineBorder();
        xLineBorder6.setLineColor(new java.awt.Color(153, 153, 153));
        xLabel5.setBorder(xLineBorder6);
        xLabel5.setCaption("Txn No.");
        xLabel5.setExpression("#{entity.txnno}");
        xLabel5.setFont(new java.awt.Font("Tahoma", 1, 11));
        xLabel5.setPreferredSize(new java.awt.Dimension(0, 19));
        formPanel3.add(xLabel5);

        com.rameses.rcp.control.border.XLineBorder xLineBorder7 = new com.rameses.rcp.control.border.XLineBorder();
        xLineBorder7.setLineColor(new java.awt.Color(153, 153, 153));
        xLabel6.setBorder(xLineBorder7);
        xLabel6.setCaption("Txn Date");
        xLabel6.setExpression("#{entity.txndate}");
        xLabel6.setFont(new java.awt.Font("Tahoma", 1, 11));
        xLabel6.setPreferredSize(new java.awt.Dimension(0, 19));
        formPanel3.add(xLabel6);

        xFormPanel1.setCaption("");
        xFormPanel1.setCaptionBorder(javax.swing.BorderFactory.createEmptyBorder(1, 1, 1, 1));
        xFormPanel1.setOrientation(com.rameses.rcp.constant.UIConstants.HORIZONTAL);
        xDecimalField1.setCaption("TOTAL");
        xDecimalField1.setCellPadding(new java.awt.Insets(0, 0, 0, 20));
        xDecimalField1.setEnabled(false);
        xDecimalField1.setFont(new java.awt.Font("Tahoma", 1, 11));
        xDecimalField1.setName("entity.totalshare");
        xDecimalField1.setPreferredSize(new java.awt.Dimension(120, 20));
        xFormPanel1.add(xDecimalField1);

        org.jdesktop.layout.GroupLayout layout = new org.jdesktop.layout.GroupLayout(this);
        this.setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(org.jdesktop.layout.GroupLayout.TRAILING, layout.createSequentialGroup()
                .addContainerGap()
                .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING)
                    .add(org.jdesktop.layout.GroupLayout.LEADING, xDataTable1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 798, Short.MAX_VALUE)
                    .add(layout.createSequentialGroup()
                        .add(formPanel1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 325, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(formPanel3, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 294, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(formPanel2, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 167, Short.MAX_VALUE))
                    .add(xFormPanel1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 212, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(layout.createSequentialGroup()
                .addContainerGap()
                .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING, false)
                    .add(formPanel2, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 125, Short.MAX_VALUE)
                    .add(formPanel3, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .add(formPanel1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(xDataTable1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 292, Short.MAX_VALUE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(xFormPanel1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 32, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
        );
    }// </editor-fold>//GEN-END:initComponents
    
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private com.rameses.rcp.util.FormPanel formPanel1;
    private com.rameses.rcp.util.FormPanel formPanel2;
    private com.rameses.rcp.util.FormPanel formPanel3;
    private com.rameses.rcp.control.XComboBox xComboBox2;
    private com.rameses.rcp.control.XDataTable xDataTable1;
    private com.rameses.rcp.control.XDecimalField xDecimalField1;
    private com.rameses.rcp.control.XFormPanel xFormPanel1;
    private com.rameses.rcp.control.XLabel xLabel1;
    private com.rameses.rcp.control.XLabel xLabel2;
    private com.rameses.rcp.control.XLabel xLabel3;
    private com.rameses.rcp.control.XLabel xLabel4;
    private com.rameses.rcp.control.XLabel xLabel5;
    private com.rameses.rcp.control.XLabel xLabel6;
    private com.rameses.rcp.control.XLabel xLabel7;
    private com.rameses.rcp.control.XNumberField xNumberField1;
    // End of variables declaration//GEN-END:variables
    
}
