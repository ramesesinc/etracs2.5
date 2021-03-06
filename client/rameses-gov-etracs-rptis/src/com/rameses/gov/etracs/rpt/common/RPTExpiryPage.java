/*
 * CollectionType.java
 *
 * Created on October 13, 2013, 10:03 AM
 */

package com.rameses.gov.etracs.rpt.common;

import com.rameses.osiris2.themes.OKCancelPage;
import com.rameses.rcp.ui.annotations.StyleSheet;
import com.rameses.rcp.ui.annotations.Template;

@Template(OKCancelPage.class)
@StyleSheet
public class RPTExpiryPage extends javax.swing.JPanel {
    
    /** Creates new form CollectionType */
    public RPTExpiryPage() {
        initComponents();
    }
    
    /** This method is called from within the constructor to
     * initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is
     * always regenerated by the Form Editor.
     */
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        xFormPanel1 = new com.rameses.rcp.control.XFormPanel();
        xIntegerField1 = new com.rameses.rcp.control.XIntegerField();
        xComboBox3 = new com.rameses.rcp.control.XComboBox();
        xComboBox4 = new com.rameses.rcp.control.XComboBox();
        xDateField1 = new com.rameses.rcp.control.XDateField();
        jScrollPane1 = new javax.swing.JScrollPane();
        xTextArea1 = new com.rameses.rcp.control.XTextArea();

        com.rameses.rcp.control.border.XTitledBorder xTitledBorder1 = new com.rameses.rcp.control.border.XTitledBorder();
        xTitledBorder1.setTitle("RPT Billing Expiry Date");
        setBorder(xTitledBorder1);
        setPreferredSize(new java.awt.Dimension(400, 220));

        xFormPanel1.setCaptionWidth(120);
        xIntegerField1.setCaption("Year");
        xIntegerField1.setName("entity.iyear");
        xIntegerField1.setRequired(true);
        xFormPanel1.add(xIntegerField1);

        xComboBox3.setCaption("Qtr");
        xComboBox3.setImmediate(true);
        xComboBox3.setItems("qtrs");
        xComboBox3.setName("entity.iqtr");
        xComboBox3.setPreferredSize(new java.awt.Dimension(100, 20));
        xComboBox3.setRequired(true);
        xFormPanel1.add(xComboBox3);

        xComboBox4.setCaption("Type");
        xComboBox4.setImmediate(true);
        xComboBox4.setItems("expirytypes");
        xComboBox4.setName("entity.expirytype");
        xComboBox4.setPreferredSize(new java.awt.Dimension(100, 20));
        xComboBox4.setRequired(true);
        xFormPanel1.add(xComboBox4);

        xDateField1.setCaption("Expiry Date");
        xDateField1.setName("entity.expirydate");
        xDateField1.setRequired(true);
        xFormPanel1.add(xDateField1);

        jScrollPane1.setPreferredSize(new java.awt.Dimension(0, 60));
        xTextArea1.setCaption("Reason");
        xTextArea1.setName("entity.reason");
        xTextArea1.setRequired(true);
        jScrollPane1.setViewportView(xTextArea1);

        xFormPanel1.add(jScrollPane1);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(this);
        this.setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(xFormPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, 338, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(48, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(xFormPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, 163, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(22, Short.MAX_VALUE))
        );
    }// </editor-fold>//GEN-END:initComponents
    
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JScrollPane jScrollPane1;
    private com.rameses.rcp.control.XComboBox xComboBox3;
    private com.rameses.rcp.control.XComboBox xComboBox4;
    private com.rameses.rcp.control.XDateField xDateField1;
    private com.rameses.rcp.control.XFormPanel xFormPanel1;
    private com.rameses.rcp.control.XIntegerField xIntegerField1;
    private com.rameses.rcp.control.XTextArea xTextArea1;
    // End of variables declaration//GEN-END:variables
    
}
