/*
 * DistrictPage.java
 *
 * Created on July 31, 2013, 9:19 PM
 */

package com.rameses.gov.lgu.ui;



import com.rameses.osiris2.themes.FormPage;
import com.rameses.rcp.ui.annotations.Template;

/**
 *
 * @author  Elmo
 */
@Template(FormPage.class)
public class DistrictPage extends javax.swing.JPanel {
    
    public DistrictPage() {
        initComponents();
    }
    
    /** This method is called from within the constructor to
     * initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is
     * always regenerated by the Form Editor.
     */
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        xFormPanel2 = new com.rameses.rcp.control.XFormPanel();
        xTextField10 = new com.rameses.rcp.control.XTextField();
        xTextField4 = new com.rameses.rcp.control.XTextField();
        xTextField8 = new com.rameses.rcp.control.XTextField();
        xTextField9 = new com.rameses.rcp.control.XTextField();

        xFormPanel2.setCaptionWidth(120);
        xFormPanel2.setIndex(1);
        xTextField10.setCaption("Code");
        xTextField10.setName("entity.code");
        xTextField10.setPreferredSize(new java.awt.Dimension(0, 19));
        xTextField10.setRequired(true);
        xTextField10.setSpaceChar('_');
        xFormPanel2.add(xTextField10);

        xTextField4.setCaption("District Name");
        xTextField4.setIndex(-1);
        xTextField4.setName("entity.name");
        xTextField4.setPreferredSize(new java.awt.Dimension(0, 19));
        xTextField4.setRequired(true);
        xFormPanel2.add(xTextField4);

        xTextField8.setCaption("Index No");
        xTextField8.setIndex(11);
        xTextField8.setName("entity.indexno");
        xTextField8.setPreferredSize(new java.awt.Dimension(0, 19));
        xTextField8.setRequired(true);
        xFormPanel2.add(xTextField8);

        xTextField9.setCaption("PIN");
        xTextField9.setIndex(12);
        xTextField9.setName("entity.pin");
        xTextField9.setPreferredSize(new java.awt.Dimension(0, 19));
        xTextField9.setRequired(true);
        xFormPanel2.add(xTextField9);

        org.jdesktop.layout.GroupLayout layout = new org.jdesktop.layout.GroupLayout(this);
        this.setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(layout.createSequentialGroup()
                .addContainerGap()
                .add(xFormPanel2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 441, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(layout.createSequentialGroup()
                .add(21, 21, 21)
                .add(xFormPanel2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 88, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(235, Short.MAX_VALUE))
        );
    }// </editor-fold>//GEN-END:initComponents
    
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private com.rameses.rcp.control.XFormPanel xFormPanel2;
    private com.rameses.rcp.control.XTextField xTextField10;
    private com.rameses.rcp.control.XTextField xTextField4;
    private com.rameses.rcp.control.XTextField xTextField8;
    private com.rameses.rcp.control.XTextField xTextField9;
    // End of variables declaration//GEN-END:variables
    
}
