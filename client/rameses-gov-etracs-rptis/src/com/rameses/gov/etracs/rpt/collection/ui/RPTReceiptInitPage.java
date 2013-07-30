/*
 * RPTCollectionInitPage.java
 *
 * Created on July 27, 2011, 3:53 PM
 */

package com.rameses.gov.etracs.rpt.collection.ui;

import com.rameses.osiris2.themes.FormPage;
import com.rameses.rcp.ui.annotations.StyleSheet;
import com.rameses.rcp.ui.annotations.Template;

@Template(FormPage.class)
@StyleSheet()
public class RPTReceiptInitPage extends javax.swing.JPanel {
    
    /** Creates new form RPTCollectionInitPage */
    public RPTReceiptInitPage() {
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
        xLookupField1 = new com.rameses.rcp.control.XLookupField();
        xLabel1 = new com.rameses.rcp.control.XLabel();
        xTextField1 = new com.rameses.rcp.control.XTextField();
        xTextField2 = new com.rameses.rcp.control.XTextField();
        xDateField1 = new com.rameses.rcp.control.XDateField();
        formPanel2 = new com.rameses.rcp.util.FormPanel();
        xRadio1 = new com.rameses.rcp.control.XRadio();
        xRadio2 = new com.rameses.rcp.control.XRadio();
        formPanel3 = new com.rameses.rcp.util.FormPanel();
        xRadio3 = new com.rameses.rcp.control.XRadio();
        xIntegerField1 = new com.rameses.rcp.control.XIntegerField();

        com.rameses.rcp.control.border.XTitledBorder xTitledBorder1 = new com.rameses.rcp.control.border.XTitledBorder();
        xTitledBorder1.setTitle("Collection Initial Information");
        formPanel1.setBorder(xTitledBorder1);
        formPanel1.setCaptionFont(new java.awt.Font("Arial", 0, 12));
        xLookupField1.setCaption("Taxpayer");
        xLookupField1.setCellPadding(new java.awt.Insets(5, 0, 0, 0));
        xLookupField1.setExpression("#{entity.taxpayer.taxpayername}");
        xLookupField1.setFont(new java.awt.Font("Arial", 0, 12));
        xLookupField1.setHandler("lookupTaxpayer");
        xLookupField1.setHint("Search Payor");
        xLookupField1.setIndex(-10);
        xLookupField1.setPreferredSize(new java.awt.Dimension(0, 19));
        xLookupField1.setRequired(true);
        formPanel1.add(xLookupField1);

        xLabel1.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(153, 153, 153)));
        xLabel1.setCaption("Address");
        xLabel1.setExpression("#{entity.taxpayer.taxpayeraddress}");
        xLabel1.setFont(new java.awt.Font("Arial", 0, 12));
        xLabel1.setPreferredSize(new java.awt.Dimension(0, 19));
        formPanel1.add(xLabel1);

        xTextField1.setCaption("Paid By");
        xTextField1.setFont(new java.awt.Font("Arial", 0, 12));
        xTextField1.setName("entity.paidby");
        xTextField1.setPreferredSize(new java.awt.Dimension(0, 19));
        xTextField1.setRequired(true);
        formPanel1.add(xTextField1);

        xTextField2.setCaption("Address");
        xTextField2.setFont(new java.awt.Font("Arial", 0, 12));
        xTextField2.setName("entity.paidbyaddress");
        xTextField2.setPreferredSize(new java.awt.Dimension(0, 19));
        xTextField2.setRequired(true);
        formPanel1.add(xTextField2);

        xDateField1.setCaption("Txn Date");
        xDateField1.setCellPadding(new java.awt.Insets(0, 0, 10, 0));
        xDateField1.setName("entity.txndate");
        xDateField1.setPreferredSize(new java.awt.Dimension(110, 19));
        formPanel1.add(xDateField1);

        com.rameses.rcp.control.border.XTitledBorder xTitledBorder2 = new com.rameses.rcp.control.border.XTitledBorder();
        xTitledBorder2.setTitle("Payment Options");
        formPanel2.setBorder(xTitledBorder2);
        formPanel2.setPreferredSize(new java.awt.Dimension(5200, 210));
        formPanel2.setShowCaption(false);
        xRadio1.setCellPadding(new java.awt.Insets(2, 2, 2, 2));
        xRadio1.setFont(new java.awt.Font("Arial", 0, 12));
        xRadio1.setName("payoption");
        xRadio1.setOpaque(false);
        xRadio1.setOptionValue("all");
        xRadio1.setShowCaption(false);
        xRadio1.setText("Pay all properties");
        formPanel2.add(xRadio1);

        xRadio2.setCellPadding(new java.awt.Insets(2, 2, 2, 2));
        xRadio2.setFont(new java.awt.Font("Arial", 0, 12));
        xRadio2.setName("payoption");
        xRadio2.setOpaque(false);
        xRadio2.setOptionValue("byledger");
        xRadio2.setShowCaption(false);
        xRadio2.setText("Pay by Ledger");
        formPanel2.add(xRadio2);

        formPanel3.setCaptionBorder(null);
        formPanel3.setCaptionPadding(new java.awt.Insets(0, 0, 0, 0));
        formPanel3.setCellpadding(new java.awt.Insets(2, 2, 2, 2));
        formPanel3.setOrientation(com.rameses.rcp.constant.UIConstants.HORIZONTAL);
        formPanel3.setPadding(new java.awt.Insets(0, 0, 0, 0));
        formPanel3.setPreferredSize(new java.awt.Dimension(0, 25));
        formPanel3.setShowCaption(false);
        xRadio3.setCellPadding(new java.awt.Insets(2, 2, 2, 2));
        xRadio3.setFont(new java.awt.Font("Arial", 0, 12));
        xRadio3.setName("payoption");
        xRadio3.setOpaque(false);
        xRadio3.setOptionValue("advance");
        xRadio3.setPreferredSize(new java.awt.Dimension(200, 15));
        xRadio3.setShowCaption(false);
        xRadio3.setText("Advance Payment");
        formPanel3.add(xRadio3);

        xIntegerField1.setCaption("Year");
        xIntegerField1.setCaptionWidth(40);
        xIntegerField1.setName("bill.billtoyear");
        xIntegerField1.setPreferredSize(new java.awt.Dimension(60, 20));
        formPanel3.add(xIntegerField1);

        formPanel2.add(formPanel3);

        formPanel1.add(formPanel2);

        org.jdesktop.layout.GroupLayout layout = new org.jdesktop.layout.GroupLayout(this);
        this.setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(layout.createSequentialGroup()
                .addContainerGap()
                .add(formPanel1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 559, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(39, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(layout.createSequentialGroup()
                .addContainerGap()
                .add(formPanel1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 369, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(67, Short.MAX_VALUE))
        );
    }// </editor-fold>//GEN-END:initComponents
    
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private com.rameses.rcp.util.FormPanel formPanel1;
    private com.rameses.rcp.util.FormPanel formPanel2;
    private com.rameses.rcp.util.FormPanel formPanel3;
    private com.rameses.rcp.control.XDateField xDateField1;
    private com.rameses.rcp.control.XIntegerField xIntegerField1;
    private com.rameses.rcp.control.XLabel xLabel1;
    private com.rameses.rcp.control.XLookupField xLookupField1;
    private com.rameses.rcp.control.XRadio xRadio1;
    private com.rameses.rcp.control.XRadio xRadio2;
    private com.rameses.rcp.control.XRadio xRadio3;
    private com.rameses.rcp.control.XTextField xTextField1;
    private com.rameses.rcp.control.XTextField xTextField2;
    // End of variables declaration//GEN-END:variables
    
}
