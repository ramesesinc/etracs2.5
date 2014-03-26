/*
 * BusinessInfoPage.java
 *
 * Created on October 3, 2013, 8:34 PM
 */

package com.rameses.gov.etracs.rpt.common;

import com.rameses.osiris2.themes.FormPage;
import com.rameses.rcp.ui.annotations.StyleSheet;
import com.rameses.rcp.ui.annotations.Template;

@Template(FormPage.class)
@StyleSheet
public class InfoPage extends javax.swing.JPanel {
    
    /** Creates new form BusinessInfoPage */
    public InfoPage() {
        initComponents();
    }
    
    /** This method is called from within the constructor to
     * initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is
     * always regenerated by the Form Editor.
     */
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        jSplitPane1 = new javax.swing.JSplitPane();
        jScrollPane1 = new javax.swing.JScrollPane();
        xList1 = new com.rameses.rcp.control.XList();
        xSubFormPanel1 = new com.rameses.rcp.control.XSubFormPanel();
        xLabel1 = new com.rameses.rcp.control.XLabel();

        setLayout(new java.awt.BorderLayout());

        jSplitPane1.setDividerLocation(200);
        xList1.setDynamic(true);
        xList1.setExpression("#{item.caption}");
        xList1.setItems("sections");
        xList1.setName("selectedSection");
        xList1.setPreferredSize(new java.awt.Dimension(40, 100));
        jScrollPane1.setViewportView(xList1);

        jSplitPane1.setLeftComponent(jScrollPane1);

        xSubFormPanel1.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(204, 204, 204)));
        xSubFormPanel1.setDepends(new String[] {"selectedSection"});
        xSubFormPanel1.setDynamic(true);
        xSubFormPanel1.setHandler("selectedSection");
        javax.swing.GroupLayout xSubFormPanel1Layout = new javax.swing.GroupLayout(xSubFormPanel1);
        xSubFormPanel1.setLayout(xSubFormPanel1Layout);
        xSubFormPanel1Layout.setHorizontalGroup(
            xSubFormPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 192, Short.MAX_VALUE)
        );
        xSubFormPanel1Layout.setVerticalGroup(
            xSubFormPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 273, Short.MAX_VALUE)
        );
        jSplitPane1.setRightComponent(xSubFormPanel1);

        add(jSplitPane1, java.awt.BorderLayout.CENTER);

        xLabel1.setBackground(new java.awt.Color(255, 255, 153));
        xLabel1.setExpression("#{entity.taskmsg}");
        xLabel1.setFont(new java.awt.Font("Tahoma", 1, 12));
        xLabel1.setForeground(new java.awt.Color(204, 0, 0));
        xLabel1.setName("entity.taskmsg");
        xLabel1.setOpaque(true);
        xLabel1.setPreferredSize(new java.awt.Dimension(91, 23));
        add(xLabel1, java.awt.BorderLayout.NORTH);

    }// </editor-fold>//GEN-END:initComponents
    
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JSplitPane jSplitPane1;
    private com.rameses.rcp.control.XLabel xLabel1;
    private com.rameses.rcp.control.XList xList1;
    private com.rameses.rcp.control.XSubFormPanel xSubFormPanel1;
    // End of variables declaration//GEN-END:variables
    
}
