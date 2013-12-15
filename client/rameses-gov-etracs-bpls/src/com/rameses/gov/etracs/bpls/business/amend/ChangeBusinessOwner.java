/*
 * ChangeBusinessName.java
 *
 * Created on December 8, 2013, 12:18 PM
 */

package com.rameses.gov.etracs.bpls.business.amend;

import com.rameses.osiris2.themes.OKCancelPage;
import com.rameses.rcp.ui.annotations.Template;

/**
 *
 * @author  Elmo
 */
@Template(OKCancelPage.class)
public class ChangeBusinessOwner extends javax.swing.JPanel {
    
    /** Creates new form ChangeBusinessName */
    public ChangeBusinessOwner() {
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
        xLookupField1 = new com.rameses.rcp.control.XLookupField();
        xTextField4 = new com.rameses.rcp.control.XTextField();

        setPreferredSize(new java.awt.Dimension(482, 130));

        xFormPanel1.setCaptionWidth(150);
        xLookupField1.setCaption("Owner");
        xLookupField1.setDepends(new String[] {"entity.orgtype"});
        xLookupField1.setExpression("#{item.name}");
        xLookupField1.setHandler("lookupOwners");
        xLookupField1.setName("entity.owner");
        xLookupField1.setPreferredSize(new java.awt.Dimension(0, 20));
        xLookupField1.setRequired(true);
        xFormPanel1.add(xLookupField1);

        xTextField4.setCaption("Address");
        xTextField4.setEnabled(false);
        xTextField4.setName("entity.owner.address");
        xTextField4.setPreferredSize(new java.awt.Dimension(0, 20));
        xTextField4.setRequired(true);
        xFormPanel1.add(xTextField4);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(this);
        this.setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(xFormPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, 487, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(45, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(xFormPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, 62, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(28, Short.MAX_VALUE))
        );
    }// </editor-fold>//GEN-END:initComponents
    
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private com.rameses.rcp.control.XFormPanel xFormPanel1;
    private com.rameses.rcp.control.XLookupField xLookupField1;
    private com.rameses.rcp.control.XTextField xTextField4;
    // End of variables declaration//GEN-END:variables
    
}
