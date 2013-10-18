/*
 * RPTCollectionInitPage.java
 *
 * Created on July 27, 2011, 3:53 PM
 */

package com.rameses.gov.etracs.rpt.collection.ui;

import com.rameses.enterprise.treasury.cashreceipt.SerialCashReceiptPage;
import com.rameses.rcp.ui.annotations.StyleSheet;
import com.rameses.rcp.ui.annotations.Template;

@Template(value=SerialCashReceiptPage.class, target="content")
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
        formPanel2 = new com.rameses.rcp.util.FormPanel();
        xRadio1 = new com.rameses.rcp.control.XRadio();
        xRadio2 = new com.rameses.rcp.control.XRadio();
        formPanel3 = new com.rameses.rcp.util.FormPanel();
        xRadio3 = new com.rameses.rcp.control.XRadio();
        xIntegerField1 = new com.rameses.rcp.control.XIntegerField();
        xSeparator1 = new com.rameses.rcp.control.XSeparator();
        xButton1 = new com.rameses.rcp.control.XButton();

        com.rameses.rcp.control.border.XTitledBorder xTitledBorder1 = new com.rameses.rcp.control.border.XTitledBorder();
        xTitledBorder1.setTitle("Payment Options");
        formPanel2.setBorder(xTitledBorder1);
        formPanel2.setPreferredSize(new java.awt.Dimension(5200, 210));
        formPanel2.setShowCaption(false);
        xRadio1.setMnemonic('a');
        xRadio1.setCaption("Pay all properties");
        xRadio1.setCaptionMnemonic('a');
        xRadio1.setCaptionWidth(200);
        xRadio1.setCellPadding(new java.awt.Insets(10, 10, 0, 0));
        xRadio1.setName("payoption");
        xRadio1.setOpaque(false);
        xRadio1.setOptionValue("all");
        xRadio1.setPreferredSize(new java.awt.Dimension(111, 24));
        xRadio1.setShowCaption(false);
        xRadio1.setText(" Pay all properties");
        formPanel2.add(xRadio1);

        xRadio2.setMnemonic('l');
        xRadio2.setCaption("Pay by ledger");
        xRadio2.setCaptionMnemonic('l');
        xRadio2.setCaptionWidth(200);
        xRadio2.setCellPadding(new java.awt.Insets(0, 10, 0, 0));
        xRadio2.setName("payoption");
        xRadio2.setOpaque(false);
        xRadio2.setOptionValue("byledger");
        xRadio2.setPreferredSize(new java.awt.Dimension(150, 24));
        xRadio2.setShowCaption(false);
        xRadio2.setText(" Pay by ledger");
        formPanel2.add(xRadio2);

        formPanel3.setCellpadding(new java.awt.Insets(10, 10, 0, 0));
        formPanel3.setOrientation(com.rameses.rcp.constant.UIConstants.HORIZONTAL);
        formPanel3.setPadding(new java.awt.Insets(0, 0, 0, 0));
        formPanel3.setPreferredSize(new java.awt.Dimension(0, 22));
        formPanel3.setShowCaption(false);
        xRadio3.setMnemonic('v');
        xRadio3.setCaption("Advance Payment");
        xRadio3.setCaptionMnemonic('v');
        xRadio3.setCaptionWidth(200);
        xRadio3.setName("payoption");
        xRadio3.setOpaque(false);
        xRadio3.setOptionValue("advance");
        xRadio3.setPreferredSize(new java.awt.Dimension(150, 24));
        xRadio3.setShowCaption(false);
        xRadio3.setText(" Advance Payment");
        formPanel3.add(xRadio3);

        xIntegerField1.setCaption("Year");
        xIntegerField1.setCaptionWidth(80);
        xIntegerField1.setDepends(new String[] {"payoption"});
        xIntegerField1.setEnabled(false);
        xIntegerField1.setName("advanceyear");
        formPanel3.add(xIntegerField1);

        formPanel2.add(formPanel3);

        xSeparator1.setPreferredSize(new java.awt.Dimension(0, 20));
        org.jdesktop.layout.GroupLayout xSeparator1Layout = new org.jdesktop.layout.GroupLayout(xSeparator1);
        xSeparator1.setLayout(xSeparator1Layout);
        xSeparator1Layout.setHorizontalGroup(
            xSeparator1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(0, 481, Short.MAX_VALUE)
        );
        xSeparator1Layout.setVerticalGroup(
            xSeparator1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(0, 20, Short.MAX_VALUE)
        );
        formPanel2.add(xSeparator1);

        xButton1.setMnemonic('p');
        xButton1.setCellPadding(new java.awt.Insets(0, 10, 0, 0));
        xButton1.setDefaultCommand(true);
        xButton1.setName("process");
        xButton1.setShowCaption(false);
        xButton1.setText("Process");
        formPanel2.add(xButton1);

        org.jdesktop.layout.GroupLayout layout = new org.jdesktop.layout.GroupLayout(this);
        this.setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(formPanel2, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 495, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(formPanel2, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 311, Short.MAX_VALUE)
        );
    }// </editor-fold>//GEN-END:initComponents
    
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private com.rameses.rcp.util.FormPanel formPanel2;
    private com.rameses.rcp.util.FormPanel formPanel3;
    private com.rameses.rcp.control.XButton xButton1;
    private com.rameses.rcp.control.XIntegerField xIntegerField1;
    private com.rameses.rcp.control.XRadio xRadio1;
    private com.rameses.rcp.control.XRadio xRadio2;
    private com.rameses.rcp.control.XRadio xRadio3;
    private com.rameses.rcp.control.XSeparator xSeparator1;
    // End of variables declaration//GEN-END:variables
    
}
