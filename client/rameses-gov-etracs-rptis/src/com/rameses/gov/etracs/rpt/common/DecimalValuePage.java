/*
 * DecimalValuePage.java
 *
 * Created on June 28, 2013, 2:01 PM
 */

package com.rameses.gov.etracs.rpt.common;

/**
 *
 * @author  Rameses
 */
public class DecimalValuePage extends javax.swing.JPanel {
    
    /** Creates new form DecimalValuePage */
    public DecimalValuePage() {
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
        xDecimalField1 = new com.rameses.rcp.control.XDecimalField();

        setLayout(new java.awt.BorderLayout());

        setPreferredSize(new java.awt.Dimension(400, 34));

        xDecimalField1.setCaption("#{param.caption}");
        xDecimalField1.setCaptionWidth(200);
        xDecimalField1.setName("value");
        xDecimalField1.setPreferredSize(new java.awt.Dimension(0, 20));
        xDecimalField1.setRequired(true);
        formPanel1.add(xDecimalField1);

        add(formPanel1, java.awt.BorderLayout.CENTER);

    }// </editor-fold>//GEN-END:initComponents
    
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private com.rameses.rcp.util.FormPanel formPanel1;
    private com.rameses.rcp.control.XDecimalField xDecimalField1;
    // End of variables declaration//GEN-END:variables
    
}
