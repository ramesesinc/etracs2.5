/*
 * RIVPage.java
 *
 * Created on May 24, 2013, 2:27 PM
 */

package com.rameses.gov.etracs.treasury.collection.af;

import com.rameses.osiris2.themes.FormPage;
import com.rameses.rcp.ui.annotations.StyleSheet;
import com.rameses.rcp.ui.annotations.Template;

/**
 *
 * @author  Rameses
 */
@StyleSheet
@Template(FormPage.class)
public class RIVPage extends javax.swing.JPanel {
    
    /** Creates new form RIVPage */
    public RIVPage() {
        initComponents();
    }
    
    /** This method is called from within the constructor to
     * initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is
     * always regenerated by the Form Editor.
     */
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        jPanel5 = new javax.swing.JPanel();
        xLabel2 = new com.rameses.rcp.control.XLabel();
        formPanel1 = new com.rameses.rcp.util.FormPanel();
        xLabel3 = new com.rameses.rcp.control.XLabel();
        xLabel4 = new com.rameses.rcp.control.XLabel();
        xTextField2 = new com.rameses.rcp.control.XTextField();
        formPanel3 = new com.rameses.rcp.util.FormPanel();
        xLookupField1 = new com.rameses.rcp.control.XLookupField();
        xLabel6 = new com.rameses.rcp.control.XLabel();
        xLookupField2 = new com.rameses.rcp.control.XLookupField();
        xLabel7 = new com.rameses.rcp.control.XLabel();
        xLabel1 = new com.rameses.rcp.control.XLabel();
        xDataTable2 = new com.rameses.rcp.control.XDataTable();

        jPanel5.setLayout(null);

        com.rameses.rcp.control.border.XTitledBorder xTitledBorder1 = new com.rameses.rcp.control.border.XTitledBorder();
        xTitledBorder1.setTitle("Requisition Information");
        jPanel5.setBorder(xTitledBorder1);
        xLabel2.setVerticalAlignment(javax.swing.SwingConstants.TOP);
        xLabel2.setFont(new java.awt.Font("Tahoma", 1, 11));
        xLabel2.setForeground(new java.awt.Color(204, 0, 0));
        xLabel2.setName("type");
        xLabel2.setPreferredSize(new java.awt.Dimension(0, 22));
        xLabel2.setShowCaption(false);
        jPanel5.add(xLabel2);
        xLabel2.setBounds(6, 24, 216, 18);

        xLabel3.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(153, 153, 153)));
        xLabel3.setCaption("RIV No.");
        xLabel3.setCaptionWidth(75);
        xLabel3.setFont(new java.awt.Font("Tahoma", 1, 11));
        xLabel3.setName("entity.txnno");
        xLabel3.setPreferredSize(new java.awt.Dimension(0, 19));
        formPanel1.add(xLabel3);

        xLabel4.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(153, 153, 153)));
        xLabel4.setCaption("RIV Date");
        xLabel4.setCaptionWidth(75);
        xLabel4.setFont(new java.awt.Font("Tahoma", 1, 11));
        xLabel4.setName("entity.txndate");
        xLabel4.setPreferredSize(new java.awt.Dimension(0, 19));
        formPanel1.add(xLabel4);

        xTextField2.setCaption("Treasury");
        xTextField2.setCaptionWidth(75);
        xTextField2.setDepends(new String[] {"selectedItem"});
        xTextField2.setIndex(-100);
        xTextField2.setName("entity.treasuryname");
        xTextField2.setPreferredSize(new java.awt.Dimension(0, 19));
        xTextField2.setRequired(true);
        formPanel1.add(xTextField2);

        jPanel5.add(formPanel1);
        formPanel1.setBounds(2, 40, 274, 92);

        formPanel3.setIndex(1);
        xLookupField1.setCaption("Requested By");
        xLookupField1.setCaptionWidth(100);
        xLookupField1.setExpression("#{entity.requestedby.name}");
        xLookupField1.setHandler("lookupRequester");
        xLookupField1.setName("entity.requestedby");
        xLookupField1.setPreferredSize(new java.awt.Dimension(0, 19));
        xLookupField1.setRequired(true);
        formPanel3.add(xLookupField1);

        xLabel6.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(153, 153, 153)));
        xLabel6.setCaption("Job Title/Position");
        xLabel6.setCaptionWidth(100);
        xLabel6.setDepends(new String[] {"entity.requestedby"});
        xLabel6.setName("entity.requestedby.title");
        xLabel6.setPreferredSize(new java.awt.Dimension(0, 19));
        formPanel3.add(xLabel6);

        xLookupField2.setCaption("Approved By");
        xLookupField2.setCaptionWidth(100);
        xLookupField2.setExpression("#{entity.approvedby.name}");
        xLookupField2.setHandler("lookupApprover");
        xLookupField2.setName("entity.approvedby");
        xLookupField2.setPreferredSize(new java.awt.Dimension(0, 19));
        xLookupField2.setRequired(true);
        formPanel3.add(xLookupField2);

        xLabel7.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(153, 153, 153)));
        xLabel7.setCaption("Job Title/Position");
        xLabel7.setCaptionWidth(100);
        xLabel7.setDepends(new String[] {"entity.info.approvedby"});
        xLabel7.setName("entity.approvedby.title");
        xLabel7.setPreferredSize(new java.awt.Dimension(0, 19));
        formPanel3.add(xLabel7);

        jPanel5.add(formPanel3);
        formPanel3.setBounds(276, 40, 282, 120);

        xLabel1.setHorizontalAlignment(javax.swing.SwingConstants.RIGHT);
        xLabel1.setCaption("State");
        xLabel1.setCaptionWidth(100);
        xLabel1.setDepends(new String[] {"selectedItem"});
        xLabel1.setFont(new java.awt.Font("Tahoma", 1, 18));
        xLabel1.setForeground(new java.awt.Color(204, 0, 0));
        xLabel1.setName("entity.state");
        xLabel1.setPreferredSize(new java.awt.Dimension(0, 16));
        jPanel5.add(xLabel1);
        xLabel1.setBounds(292, 6, 258, 26);

        com.rameses.rcp.control.border.XTitledBorder xTitledBorder2 = new com.rameses.rcp.control.border.XTitledBorder();
        xTitledBorder2.setTitle("Requested Items");
        xDataTable2.setBorder(xTitledBorder2);
        xDataTable2.setHandler("itemHandler");
        xDataTable2.setImmediate(true);
        xDataTable2.setIndex(-1);
        xDataTable2.setName("selectedRivItem");
        jPanel5.add(xDataTable2);
        xDataTable2.setBounds(10, 140, 540, 220);

        org.jdesktop.layout.GroupLayout layout = new org.jdesktop.layout.GroupLayout(this);
        this.setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(layout.createSequentialGroup()
                .addContainerGap()
                .add(jPanel5, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 566, Short.MAX_VALUE)
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(layout.createSequentialGroup()
                .addContainerGap()
                .add(jPanel5, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 366, Short.MAX_VALUE)
                .addContainerGap())
        );
    }// </editor-fold>//GEN-END:initComponents
    
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private com.rameses.rcp.util.FormPanel formPanel1;
    private com.rameses.rcp.util.FormPanel formPanel3;
    private javax.swing.JPanel jPanel5;
    private com.rameses.rcp.control.XDataTable xDataTable2;
    private com.rameses.rcp.control.XLabel xLabel1;
    private com.rameses.rcp.control.XLabel xLabel2;
    private com.rameses.rcp.control.XLabel xLabel3;
    private com.rameses.rcp.control.XLabel xLabel4;
    private com.rameses.rcp.control.XLabel xLabel6;
    private com.rameses.rcp.control.XLabel xLabel7;
    private com.rameses.rcp.control.XLookupField xLookupField1;
    private com.rameses.rcp.control.XLookupField xLookupField2;
    private com.rameses.rcp.control.XTextField xTextField2;
    // End of variables declaration//GEN-END:variables
    
}
