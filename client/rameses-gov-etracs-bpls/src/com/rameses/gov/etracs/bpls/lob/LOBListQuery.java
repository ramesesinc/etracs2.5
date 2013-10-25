/*
 * BusinessVariablePage.java
 *
 * Created on August 24, 2013, 3:11 PM
 */

package com.rameses.gov.etracs.bpls.lob;

import com.rameses.osiris2.themes.FormPage;
import com.rameses.rcp.ui.annotations.StyleSheet;
import com.rameses.rcp.ui.annotations.Template;

/**
 *
 * @author  Rameses
 */

public class LOBListQuery extends javax.swing.JPanel {
    
    /** Creates new form BusinessVariablePage */
    public LOBListQuery() {
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
        xLookupField2 = new com.rameses.rcp.control.XLookupField();
        xActionTextField1 = new com.rameses.rcp.control.XActionTextField();
        xActionTextField2 = new com.rameses.rcp.control.XActionTextField();
        jLabel1 = new javax.swing.JLabel();
        xButton1 = new com.rameses.rcp.control.XButton();

        xFormPanel1.setCellspacing(20);
        xFormPanel1.setOrientation(com.rameses.rcp.constant.UIConstants.HORIZONTAL);
        xLookupField2.setCaption("Search Attribute");
        xLookupField2.setCaptionWidth(120);
        xLookupField2.setExpression("#{query.attribute.name}");
        xLookupField2.setHandler("lookupAttribute");
        xLookupField2.setPreferredSize(new java.awt.Dimension(200, 20));
        xFormPanel1.add(xLookupField2);

        xActionTextField1.setActionName("search");
        xActionTextField1.setCaption("Search");
        xActionTextField1.setFocusAccelerator('s');
        xActionTextField1.setFocusKeyStroke("F3");
        xActionTextField1.setName("query.searchtext");
        xActionTextField1.setPreferredSize(new java.awt.Dimension(250, 22));
        xFormPanel1.add(xActionTextField1);

        xActionTextField2.setActionName("search");
        xActionTextField2.setCaption("Search");
        xActionTextField2.setFocusAccelerator('s');
        xActionTextField2.setFocusKeyStroke("F3");
        xActionTextField2.setName("query.searchtext");
        xActionTextField2.setPreferredSize(new java.awt.Dimension(250, 22));

        jLabel1.setText("Search");

        xButton1.setMargin(new java.awt.Insets(2, 2, 2, 2));
        xButton1.setName("resetSearch");
        xButton1.setText("Reset");

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(this);
        this.setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel1)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(xActionTextField2, javax.swing.GroupLayout.PREFERRED_SIZE, 207, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(xFormPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, 327, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(xButton1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                        .addComponent(jLabel1)
                        .addComponent(xActionTextField2, javax.swing.GroupLayout.PREFERRED_SIZE, 22, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addComponent(xFormPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, 22, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(xButton1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap())
        );
    }// </editor-fold>//GEN-END:initComponents
    
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JLabel jLabel1;
    private com.rameses.rcp.control.XActionTextField xActionTextField1;
    private com.rameses.rcp.control.XActionTextField xActionTextField2;
    private com.rameses.rcp.control.XButton xButton1;
    private com.rameses.rcp.control.XFormPanel xFormPanel1;
    private com.rameses.rcp.control.XLookupField xLookupField2;
    // End of variables declaration//GEN-END:variables
    
}
