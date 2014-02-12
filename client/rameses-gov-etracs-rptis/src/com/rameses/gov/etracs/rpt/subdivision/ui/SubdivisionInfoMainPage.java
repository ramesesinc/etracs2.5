/*
 * SubdivisionPage.java
 *
 * Created on July 1, 2011, 4:55 PM
 */

package com.rameses.gov.etracs.rpt.subdivision.ui;

import com.rameses.osiris2.themes.FormPage;
import com.rameses.rcp.ui.annotations.StyleSheet;
import com.rameses.rcp.ui.annotations.Template;

/**
 *
 * @author  rameses
 */
@Template(FormPage.class)
@StyleSheet
public class SubdivisionInfoMainPage extends javax.swing.JPanel {
    
    /** Creates new form SubdivisionPage */
    public SubdivisionInfoMainPage() {
        initComponents();
    }
    
    /** This method is called from within the constructor to
     * initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is
     * always regenerated by the Form Editor.
     */
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        formPanel3 = new com.rameses.rcp.util.FormPanel();
        xLabel14 = new com.rameses.rcp.control.XLabel();
        xLabel15 = new com.rameses.rcp.control.XLabel();
        xLabel3 = new com.rameses.rcp.control.XLabel();
        xNumberField1 = new com.rameses.rcp.control.XNumberField();
        xComboBox1 = new com.rameses.rcp.control.XComboBox();
        formPanel5 = new com.rameses.rcp.util.FormPanel();
        xFormPanel1 = new com.rameses.rcp.control.XFormPanel();
        xButton1 = new com.rameses.rcp.control.XButton();
        xLabel18 = new com.rameses.rcp.control.XLabel();
        xLabel17 = new com.rameses.rcp.control.XLabel();
        xLabel16 = new com.rameses.rcp.control.XLabel();
        xLabel25 = new com.rameses.rcp.control.XLabel();
        xLabel28 = new com.rameses.rcp.control.XLabel();
        xLabel29 = new com.rameses.rcp.control.XLabel();
        xFormPanel11 = new com.rameses.rcp.control.XFormPanel();
        formPanel4 = new com.rameses.rcp.util.FormPanel();
        xLookupField1 = new com.rameses.rcp.control.XLookupField();
        xDateField3 = new com.rameses.rcp.control.XDateField();
        formPanel6 = new com.rameses.rcp.util.FormPanel();
        xLookupField2 = new com.rameses.rcp.control.XLookupField();
        xDateField4 = new com.rameses.rcp.control.XDateField();
        formPanel8 = new com.rameses.rcp.util.FormPanel();
        xLookupField3 = new com.rameses.rcp.control.XLookupField();
        xDateField5 = new com.rameses.rcp.control.XDateField();
        formPanel9 = new com.rameses.rcp.util.FormPanel();
        xLookupField4 = new com.rameses.rcp.control.XLookupField();
        xDateField6 = new com.rameses.rcp.control.XDateField();

        com.rameses.rcp.control.border.XTitledBorder xTitledBorder1 = new com.rameses.rcp.control.border.XTitledBorder();
        xTitledBorder1.setTitle("Subdivision Information");
        formPanel3.setBorder(xTitledBorder1);
        formPanel3.setCaptionWidth(95);
        xLabel14.setCaption("State");
        xLabel14.setCaptionWidth(115);
        xLabel14.setCellPadding(new java.awt.Insets(0, 0, 0, 5));
        xLabel14.setFont(new java.awt.Font("Arial", 1, 14));
        xLabel14.setForeground(new java.awt.Color(153, 0, 0));
        xLabel14.setName("entity.state");
        xLabel14.setPreferredSize(new java.awt.Dimension(240, 19));
        formPanel3.add(xLabel14);

        xLabel15.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(153, 153, 153)));
        xLabel15.setCaption("Tracking No.");
        xLabel15.setCaptionWidth(115);
        xLabel15.setExpression("#{entity.trackingno}");
        xLabel15.setFont(new java.awt.Font("Arial", 1, 14));
        xLabel15.setForeground(new java.awt.Color(153, 0, 0));
        xLabel15.setPreferredSize(new java.awt.Dimension(0, 21));
        formPanel3.add(xLabel15);

        xLabel3.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(153, 153, 153)));
        xLabel3.setCaption("Revision Year");
        xLabel3.setCaptionWidth(115);
        xLabel3.setExpression("#{entity.ry}");
        xLabel3.setPreferredSize(new java.awt.Dimension(130, 19));
        formPanel3.add(xLabel3);

        xNumberField1.setCaption("Effectivity Year");
        xNumberField1.setCaptionWidth(115);
        xNumberField1.setCellPadding(new java.awt.Insets(0, 0, 0, 15));
        xNumberField1.setFieldType(int.class);
        xNumberField1.setName("entity.effectivityyear");
        xNumberField1.setPreferredSize(new java.awt.Dimension(130, 19));
        xNumberField1.setRequired(true);
        formPanel3.add(xNumberField1);

        xComboBox1.setAllowNull(false);
        xComboBox1.setCaption("Effectivity Qtr");
        xComboBox1.setCaptionWidth(115);
        xComboBox1.setItems("quarters");
        xComboBox1.setName("entity.effectivityqtr");
        xComboBox1.setPreferredSize(new java.awt.Dimension(130, 21));
        xComboBox1.setRequired(true);
        formPanel3.add(xComboBox1);

        com.rameses.rcp.control.border.XTitledBorder xTitledBorder2 = new com.rameses.rcp.control.border.XTitledBorder();
        xTitledBorder2.setTitle("Mother FAAS Information");
        formPanel5.setBorder(xTitledBorder2);
        formPanel5.setCellspacing(1);
        formPanel5.setPreferredSize(new java.awt.Dimension(120, 80));

        xFormPanel1.setOrientation(com.rameses.rcp.constant.UIConstants.HORIZONTAL);
        xFormPanel1.setPadding(new java.awt.Insets(0, 0, 0, 0));
        xFormPanel1.setPreferredSize(new java.awt.Dimension(300, 23));
        xFormPanel1.setShowCaption(false);
        xButton1.setCellPadding(new java.awt.Insets(0, 0, 0, 20));
        xButton1.setEnabled(false);
        xButton1.setName("viewMotherFaas");
        xButton1.setShowCaption(false);
        xButton1.setText("  TD No.  ");
        xFormPanel1.add(xButton1);

        xLabel18.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(153, 153, 153)));
        xLabel18.setCaption("TD No.");
        xLabel18.setCaptionWidth(100);
        xLabel18.setFont(new java.awt.Font("Tahoma", 1, 14));
        xLabel18.setName("entity.motherfaas.tdno");
        xLabel18.setPreferredSize(new java.awt.Dimension(200, 22));
        xLabel18.setShowCaption(false);
        xFormPanel1.add(xLabel18);

        formPanel5.add(xFormPanel1);

        xLabel17.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(153, 153, 153)));
        xLabel17.setCaption("Owner");
        xLabel17.setCaptionWidth(100);
        xLabel17.setName("entity.motherfaas.owner.name");
        xLabel17.setPreferredSize(new java.awt.Dimension(0, 19));
        formPanel5.add(xLabel17);

        xLabel16.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(153, 153, 153)));
        xLabel16.setCaption(" PIN");
        xLabel16.setCaptionWidth(100);
        xLabel16.setName("entity.motherfaas.fullpin");
        xLabel16.setPreferredSize(new java.awt.Dimension(0, 19));
        formPanel5.add(xLabel16);

        xLabel25.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(153, 153, 153)));
        xLabel25.setCaption("Cadastral Lot No.");
        xLabel25.setCaptionWidth(100);
        xLabel25.setName("entity.motherfaas.cadastrallotno");
        xLabel25.setPreferredSize(new java.awt.Dimension(0, 19));
        formPanel5.add(xLabel25);

        xLabel28.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(153, 153, 153)));
        xLabel28.setCaption("Area (sqm)");
        xLabel28.setCaptionWidth(100);
        xLabel28.setName("entity.motherfaas.totalareasqm");
        xLabel28.setPreferredSize(new java.awt.Dimension(0, 19));
        formPanel5.add(xLabel28);

        xLabel29.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(153, 153, 153)));
        xLabel29.setCaption("Area (ha.)");
        xLabel29.setCaptionWidth(100);
        xLabel29.setName("entity.motherfaas.totalareaha");
        xLabel29.setPreferredSize(new java.awt.Dimension(0, 19));
        formPanel5.add(xLabel29);

        com.rameses.rcp.control.border.XTitledBorder xTitledBorder3 = new com.rameses.rcp.control.border.XTitledBorder();
        xTitledBorder3.setTitle("Signatories");
        xFormPanel11.setBorder(xTitledBorder3);
        xFormPanel11.setCellspacing(1);

        formPanel4.setOrientation(com.rameses.rcp.constant.UIConstants.HORIZONTAL);
        formPanel4.setPadding(new java.awt.Insets(0, 0, 0, 0));
        formPanel4.setPreferredSize(new java.awt.Dimension(0, 22));
        formPanel4.setShowCaption(false);
        xLookupField1.setCaption("Appraiser");
        xLookupField1.setCaptionWidth(90);
        xLookupField1.setExpression("#{entity.appraiser.name}");
        xLookupField1.setHandler("lookupAppraiser");
        xLookupField1.setName("entity.appraiser");
        xLookupField1.setPreferredSize(new java.awt.Dimension(200, 20));
        formPanel4.add(xLookupField1);

        xDateField3.setName("entity.appraiser.dtsigned");
        xDateField3.setPreferredSize(new java.awt.Dimension(90, 20));
        xDateField3.setShowCaption(false);
        formPanel4.add(xDateField3);

        xFormPanel11.add(formPanel4);

        formPanel6.setOrientation(com.rameses.rcp.constant.UIConstants.HORIZONTAL);
        formPanel6.setPadding(new java.awt.Insets(0, 0, 0, 0));
        formPanel6.setPreferredSize(new java.awt.Dimension(0, 22));
        formPanel6.setShowCaption(false);
        xLookupField2.setCaption("Recommender");
        xLookupField2.setCaptionWidth(90);
        xLookupField2.setExpression("#{entity.recommender.name}");
        xLookupField2.setHandler("lookupRecommender");
        xLookupField2.setName("entity.recommender");
        xLookupField2.setPreferredSize(new java.awt.Dimension(200, 20));
        formPanel6.add(xLookupField2);

        xDateField4.setName("entity.recommender.dtsigned");
        xDateField4.setPreferredSize(new java.awt.Dimension(90, 20));
        xDateField4.setShowCaption(false);
        formPanel6.add(xDateField4);

        xFormPanel11.add(formPanel6);

        formPanel8.setOrientation(com.rameses.rcp.constant.UIConstants.HORIZONTAL);
        formPanel8.setPadding(new java.awt.Insets(0, 0, 0, 0));
        formPanel8.setPreferredSize(new java.awt.Dimension(0, 22));
        formPanel8.setShowCaption(false);
        xLookupField3.setCaption("Taxmapper");
        xLookupField3.setCaptionWidth(90);
        xLookupField3.setExpression("#{entity.taxmapper.name}");
        xLookupField3.setHandler("lookupTaxmapper");
        xLookupField3.setName("entity.taxmapper");
        xLookupField3.setPreferredSize(new java.awt.Dimension(200, 20));
        formPanel8.add(xLookupField3);

        xDateField5.setName("entity.taxmapper.dtsigned");
        xDateField5.setPreferredSize(new java.awt.Dimension(90, 20));
        xDateField5.setShowCaption(false);
        formPanel8.add(xDateField5);

        xFormPanel11.add(formPanel8);

        formPanel9.setOrientation(com.rameses.rcp.constant.UIConstants.HORIZONTAL);
        formPanel9.setPadding(new java.awt.Insets(0, 0, 0, 0));
        formPanel9.setPreferredSize(new java.awt.Dimension(0, 22));
        formPanel9.setShowCaption(false);
        xLookupField4.setCaption("Approver");
        xLookupField4.setCaptionWidth(90);
        xLookupField4.setExpression("#{entity.approver.name}");
        xLookupField4.setHandler("lookupApprover");
        xLookupField4.setName("entity.approver");
        xLookupField4.setPreferredSize(new java.awt.Dimension(200, 20));
        formPanel9.add(xLookupField4);

        xDateField6.setName("entity.approver.dtsigned");
        xDateField6.setPreferredSize(new java.awt.Dimension(90, 20));
        xDateField6.setShowCaption(false);
        formPanel9.add(xDateField6);

        xFormPanel11.add(formPanel9);

        org.jdesktop.layout.GroupLayout layout = new org.jdesktop.layout.GroupLayout(this);
        this.setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(layout.createSequentialGroup()
                .addContainerGap()
                .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(formPanel3, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 399, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(xFormPanel11, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 398, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(formPanel5, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 325, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(111, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(org.jdesktop.layout.GroupLayout.TRAILING, layout.createSequentialGroup()
                .addContainerGap()
                .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING)
                    .add(org.jdesktop.layout.GroupLayout.LEADING, formPanel5, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 300, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(layout.createSequentialGroup()
                        .add(formPanel3, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 147, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(xFormPanel11, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 147, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)))
                .add(28, 28, 28))
        );
    }// </editor-fold>//GEN-END:initComponents
    
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private com.rameses.rcp.util.FormPanel formPanel3;
    private com.rameses.rcp.util.FormPanel formPanel4;
    private com.rameses.rcp.util.FormPanel formPanel5;
    private com.rameses.rcp.util.FormPanel formPanel6;
    private com.rameses.rcp.util.FormPanel formPanel8;
    private com.rameses.rcp.util.FormPanel formPanel9;
    private com.rameses.rcp.control.XButton xButton1;
    private com.rameses.rcp.control.XComboBox xComboBox1;
    private com.rameses.rcp.control.XDateField xDateField3;
    private com.rameses.rcp.control.XDateField xDateField4;
    private com.rameses.rcp.control.XDateField xDateField5;
    private com.rameses.rcp.control.XDateField xDateField6;
    private com.rameses.rcp.control.XFormPanel xFormPanel1;
    private com.rameses.rcp.control.XFormPanel xFormPanel11;
    private com.rameses.rcp.control.XLabel xLabel14;
    private com.rameses.rcp.control.XLabel xLabel15;
    private com.rameses.rcp.control.XLabel xLabel16;
    private com.rameses.rcp.control.XLabel xLabel17;
    private com.rameses.rcp.control.XLabel xLabel18;
    private com.rameses.rcp.control.XLabel xLabel25;
    private com.rameses.rcp.control.XLabel xLabel28;
    private com.rameses.rcp.control.XLabel xLabel29;
    private com.rameses.rcp.control.XLabel xLabel3;
    private com.rameses.rcp.control.XLookupField xLookupField1;
    private com.rameses.rcp.control.XLookupField xLookupField2;
    private com.rameses.rcp.control.XLookupField xLookupField3;
    private com.rameses.rcp.control.XLookupField xLookupField4;
    private com.rameses.rcp.control.XNumberField xNumberField1;
    // End of variables declaration//GEN-END:variables
    
}
