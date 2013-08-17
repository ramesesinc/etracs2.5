/*
 * AFControlQueryFormPage.java
 *
 * Created on May 22, 2013, 4:11 PM
 */

package com.rameses.gov.etracs.treasury.collection.af;

/**
 *
 * @author  Rameses
 */
public class AFControlQueryFormPage extends javax.swing.JPanel {
    
    /** Creates new form AFControlQueryFormPage */
    public AFControlQueryFormPage() {
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
        xComboBox3 = new com.rameses.rcp.control.XComboBox();
        xComboBox4 = new com.rameses.rcp.control.XComboBox();

        xComboBox3.setAllowNull(false);
        xComboBox3.setCaption("Collector");
        xComboBox3.setExpression("#{name}");
        xComboBox3.setImmediate(true);
        xComboBox3.setIndex(-100);
        xComboBox3.setItems("collectorlist");
        xComboBox3.setName("collector");
        xComboBox3.setPreferredSize(new java.awt.Dimension(0, 22));
        xComboBox3.setRequired(true);
        formPanel2.add(xComboBox3);

        xComboBox4.setCaption("AF No.");
        xComboBox4.setDepends(new String[] {"collector"});
        xComboBox4.setDynamic(true);
        xComboBox4.setEmptyText("ALL");
        xComboBox4.setExpression("#{caption}");
        xComboBox4.setImmediate(true);
        xComboBox4.setItems("aflist");
        xComboBox4.setName("af");
        xComboBox4.setPreferredSize(new java.awt.Dimension(0, 22));
        formPanel2.add(xComboBox4);

        org.jdesktop.layout.GroupLayout layout = new org.jdesktop.layout.GroupLayout(this);
        this.setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(formPanel2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 470, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(layout.createSequentialGroup()
                .add(formPanel2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
    }// </editor-fold>//GEN-END:initComponents
    
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private com.rameses.rcp.util.FormPanel formPanel2;
    private com.rameses.rcp.control.XComboBox xComboBox3;
    private com.rameses.rcp.control.XComboBox xComboBox4;
    // End of variables declaration//GEN-END:variables
    
}
