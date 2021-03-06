/*
 * SubdivisionPage.java
 *
 * Created on July 1, 2011, 4:55 PM
 */

package com.rameses.gov.etracs.rpt.consolidation.ui;

import com.rameses.osiris2.themes.FormPage;
import com.rameses.rcp.ui.annotations.StyleSheet;
import com.rameses.rcp.ui.annotations.Template;

/**
 *
 * @author  rameses
 */
@Template(FormPage.class)
@StyleSheet
public class ConsolidationInfoPage extends javax.swing.JPanel {
    
    /** Creates new form SubdivisionPage */
    public ConsolidationInfoPage() {
        initComponents();
    }
    
    /** This method is called from within the constructor to
     * initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is
     * always regenerated by the Form Editor.
     */
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        xFormPanel11 = new com.rameses.rcp.control.XFormPanel();
        xLookupField1 = new com.rameses.rcp.control.XLookupField();
        xDateField3 = new com.rameses.rcp.control.XDateField();
        xLookupField2 = new com.rameses.rcp.control.XLookupField();
        xDateField4 = new com.rameses.rcp.control.XDateField();
        xLookupField3 = new com.rameses.rcp.control.XLookupField();
        xDateField5 = new com.rameses.rcp.control.XDateField();
        xLookupField4 = new com.rameses.rcp.control.XLookupField();
        xDateField6 = new com.rameses.rcp.control.XDateField();
        formPanel3 = new com.rameses.rcp.util.FormPanel();
        xLabel1 = new com.rameses.rcp.control.XLabel();
        xTextField4 = new com.rameses.rcp.control.XTextField();
        formPanel8 = new com.rameses.rcp.util.FormPanel();
        xIntegerField2 = new com.rameses.rcp.control.XIntegerField();
        xComboBox2 = new com.rameses.rcp.control.XComboBox();
        formPanel9 = new com.rameses.rcp.util.FormPanel();
        xTextField7 = new com.rameses.rcp.control.XTextField();
        xDateField9 = new com.rameses.rcp.control.XDateField();
        formPanel4 = new com.rameses.rcp.util.FormPanel();
        xLookupField5 = new com.rameses.rcp.control.XLookupField();
        xTextField1 = new com.rameses.rcp.control.XTextField();
        xTextField2 = new com.rameses.rcp.control.XTextField();
        xTextField5 = new com.rameses.rcp.control.XTextField();
        xTextField6 = new com.rameses.rcp.control.XTextField();
        jScrollPane1 = new javax.swing.JScrollPane();
        xTextArea1 = new com.rameses.rcp.control.XTextArea();

        com.rameses.rcp.control.border.XTitledBorder xTitledBorder1 = new com.rameses.rcp.control.border.XTitledBorder();
        xTitledBorder1.setTitle("Signatories");
        xFormPanel11.setBorder(xTitledBorder1);
        xFormPanel11.setCellspacing(1);
        xLookupField1.setCaption("Appraiser");
        xLookupField1.setCaptionWidth(115);
        xLookupField1.setExpression("#{appraiser.name}");
        xLookupField1.setHandler("lookupAppraiser");
        xLookupField1.setName("appraiser");
        xLookupField1.setPreferredSize(new java.awt.Dimension(0, 20));
        xLookupField1.setRequired(true);
        xFormPanel11.add(xLookupField1);

        xDateField3.setCaption("Date Appraised");
        xDateField3.setCaptionWidth(115);
        xDateField3.setName("appraiser.dtsigned");
        xDateField3.setPreferredSize(new java.awt.Dimension(0, 20));
        xFormPanel11.add(xDateField3);

        xLookupField2.setCaption("Recommender");
        xLookupField2.setCaptionWidth(115);
        xLookupField2.setExpression("#{recommender.name}");
        xLookupField2.setHandler("lookupRecommender");
        xLookupField2.setName("recommender");
        xLookupField2.setPreferredSize(new java.awt.Dimension(0, 20));
        xFormPanel11.add(xLookupField2);

        xDateField4.setCaption("Date Recommended");
        xDateField4.setCaptionWidth(115);
        xDateField4.setName("recommender.dtsigned");
        xDateField4.setPreferredSize(new java.awt.Dimension(0, 20));
        xFormPanel11.add(xDateField4);

        xLookupField3.setCaption("Taxmapper");
        xLookupField3.setCaptionWidth(115);
        xLookupField3.setExpression("#{taxmapper.name}");
        xLookupField3.setHandler("lookupTaxmapper");
        xLookupField3.setName("taxmapper");
        xLookupField3.setPreferredSize(new java.awt.Dimension(0, 20));
        xFormPanel11.add(xLookupField3);

        xDateField5.setCaption("Date Taxmapped");
        xDateField5.setCaptionWidth(115);
        xDateField5.setName("taxmapper.dtsigned");
        xDateField5.setPreferredSize(new java.awt.Dimension(0, 20));
        xFormPanel11.add(xDateField5);

        xLookupField4.setCaption("Approver");
        xLookupField4.setCaptionWidth(115);
        xLookupField4.setExpression("#{approver.name}");
        xLookupField4.setHandler("lookupApprover");
        xLookupField4.setName("approver");
        xLookupField4.setPreferredSize(new java.awt.Dimension(0, 20));
        xLookupField4.setRequired(true);
        xFormPanel11.add(xLookupField4);

        xDateField6.setCaption("Date Approved");
        xDateField6.setCaptionWidth(115);
        xDateField6.setName("approver.dtsigned");
        xDateField6.setPreferredSize(new java.awt.Dimension(0, 20));
        xFormPanel11.add(xDateField6);

        com.rameses.rcp.control.border.XTitledBorder xTitledBorder2 = new com.rameses.rcp.control.border.XTitledBorder();
        xTitledBorder2.setTitle("Consolidation Information");
        formPanel3.setBorder(xTitledBorder2);
        formPanel3.setCaptionWidth(120);
        xLabel1.setCaption("Tracking No.");
        xLabel1.setExpression("#{entity.trackingno}");
        xLabel1.setFont(new java.awt.Font("Tahoma", 1, 12));
        xLabel1.setForeground(new java.awt.Color(204, 0, 0));
        xLabel1.setPreferredSize(new java.awt.Dimension(0, 19));
        formPanel3.add(xLabel1);

        xTextField4.setCaption("TD No.");
        xTextField4.setName("entity.newtdno");
        xTextField4.setPreferredSize(new java.awt.Dimension(282, 20));
        formPanel3.add(xTextField4);

        formPanel8.setOrientation(com.rameses.rcp.constant.UIConstants.HORIZONTAL);
        formPanel8.setPadding(new java.awt.Insets(0, 0, 0, 0));
        formPanel8.setPreferredSize(new java.awt.Dimension(0, 22));
        formPanel8.setShowCaption(false);
        xIntegerField2.setCaption("Effectivity Year");
        xIntegerField2.setCaptionWidth(120);
        xIntegerField2.setCellPadding(new java.awt.Insets(0, 0, 0, 10));
        xIntegerField2.setDisabledTextColor(new java.awt.Color(0, 0, 0));
        xIntegerField2.setName("entity.effectivityyear");
        xIntegerField2.setRequired(true);
        formPanel8.add(xIntegerField2);

        xComboBox2.setAllowNull(false);
        xComboBox2.setCaption("Qtr.");
        xComboBox2.setCaptionWidth(70);
        xComboBox2.setItems("quarters");
        xComboBox2.setName("entity.effectivityqtr");
        xComboBox2.setPreferredSize(new java.awt.Dimension(100, 22));
        xComboBox2.setRequired(true);
        formPanel8.add(xComboBox2);

        formPanel3.add(formPanel8);

        formPanel9.setOrientation(com.rameses.rcp.constant.UIConstants.HORIZONTAL);
        formPanel9.setPadding(new java.awt.Insets(0, 0, 0, 0));
        formPanel9.setPreferredSize(new java.awt.Dimension(0, 22));
        formPanel9.setShowCaption(false);
        xTextField7.setCaption("Title No.");
        xTextField7.setCaptionWidth(120);
        xTextField7.setCellPadding(new java.awt.Insets(0, 0, 0, 10));
        xTextField7.setDepends(new String[] {"entity.newtitletype"});
        xTextField7.setName("entity.newtitleno");
        formPanel9.add(xTextField7);

        xDateField9.setCaption("Title Date");
        xDateField9.setCaptionWidth(70);
        xDateField9.setDepends(new String[] {"entity.newtitletype"});
        xDateField9.setDisabledTextColor(java.awt.Color.black);
        xDateField9.setName("entity.newtitledate");
        formPanel9.add(xDateField9);

        formPanel3.add(formPanel9);

        com.rameses.rcp.control.border.XTitledBorder xTitledBorder3 = new com.rameses.rcp.control.border.XTitledBorder();
        xTitledBorder3.setTitle("Ownership Information");
        formPanel4.setBorder(xTitledBorder3);
        formPanel4.setCaptionWidth(110);
        formPanel4.setPadding(new java.awt.Insets(0, 5, 5, 5));
        xLookupField5.setCaption("Taxpayer");
        xLookupField5.setCaptionWidth(125);
        xLookupField5.setExpression("#{entity.taxpayer.name}");
        xLookupField5.setHandler("lookupTaxpayer");
        xLookupField5.setName("entity.taxpayer");
        xLookupField5.setPreferredSize(new java.awt.Dimension(0, 20));
        xLookupField5.setRequired(true);
        formPanel4.add(xLookupField5);

        xTextField1.setCaption("Owner Name");
        xTextField1.setCaptionWidth(125);
        xTextField1.setDepends(new String[] {"entity.taxpayer"});
        xTextField1.setName("entity.owner.name");
        xTextField1.setPreferredSize(new java.awt.Dimension(0, 20));
        xTextField1.setRequired(true);
        formPanel4.add(xTextField1);

        xTextField2.setCaption("Owner Address");
        xTextField2.setCaptionWidth(125);
        xTextField2.setDepends(new String[] {"entity.taxpayer"});
        xTextField2.setName("entity.owner.address");
        xTextField2.setPreferredSize(new java.awt.Dimension(0, 20));
        xTextField2.setRequired(true);
        formPanel4.add(xTextField2);

        xTextField5.setCaption("Administrator");
        xTextField5.setCaptionWidth(125);
        xTextField5.setName("entity.administrator.name");
        xTextField5.setPreferredSize(new java.awt.Dimension(0, 20));
        formPanel4.add(xTextField5);

        xTextField6.setCaption("Administrator Address");
        xTextField6.setCaptionWidth(125);
        xTextField6.setName("entity.administrator.address");
        xTextField6.setPreferredSize(new java.awt.Dimension(0, 20));
        formPanel4.add(xTextField6);

        jScrollPane1.setPreferredSize(new java.awt.Dimension(0, 70));
        xTextArea1.setLineWrap(true);
        xTextArea1.setWrapStyleWord(true);
        xTextArea1.setCaption("Memoranda");
        xTextArea1.setCaptionWidth(125);
        xTextArea1.setName("entity.memoranda");
        xTextArea1.setPreferredSize(new java.awt.Dimension(164, 150));
        xTextArea1.setRequired(true);
        xTextArea1.setTextCase(com.rameses.rcp.constant.TextCase.UPPER);
        jScrollPane1.setViewportView(xTextArea1);

        formPanel4.add(jScrollPane1);

        org.jdesktop.layout.GroupLayout layout = new org.jdesktop.layout.GroupLayout(this);
        this.setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(org.jdesktop.layout.GroupLayout.TRAILING, layout.createSequentialGroup()
                .addContainerGap()
                .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING)
                    .add(org.jdesktop.layout.GroupLayout.LEADING, formPanel4, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 433, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(org.jdesktop.layout.GroupLayout.LEADING, formPanel3, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 433, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .add(79, 79, 79))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(layout.createSequentialGroup()
                .addContainerGap()
                .add(formPanel3, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(formPanel4, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .add(71, 71, 71))
        );
    }// </editor-fold>//GEN-END:initComponents
    
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private com.rameses.rcp.util.FormPanel formPanel3;
    private com.rameses.rcp.util.FormPanel formPanel4;
    private com.rameses.rcp.util.FormPanel formPanel8;
    private com.rameses.rcp.util.FormPanel formPanel9;
    private javax.swing.JScrollPane jScrollPane1;
    private com.rameses.rcp.control.XComboBox xComboBox2;
    private com.rameses.rcp.control.XDateField xDateField3;
    private com.rameses.rcp.control.XDateField xDateField4;
    private com.rameses.rcp.control.XDateField xDateField5;
    private com.rameses.rcp.control.XDateField xDateField6;
    private com.rameses.rcp.control.XDateField xDateField9;
    private com.rameses.rcp.control.XFormPanel xFormPanel11;
    private com.rameses.rcp.control.XIntegerField xIntegerField2;
    private com.rameses.rcp.control.XLabel xLabel1;
    private com.rameses.rcp.control.XLookupField xLookupField1;
    private com.rameses.rcp.control.XLookupField xLookupField2;
    private com.rameses.rcp.control.XLookupField xLookupField3;
    private com.rameses.rcp.control.XLookupField xLookupField4;
    private com.rameses.rcp.control.XLookupField xLookupField5;
    private com.rameses.rcp.control.XTextArea xTextArea1;
    private com.rameses.rcp.control.XTextField xTextField1;
    private com.rameses.rcp.control.XTextField xTextField2;
    private com.rameses.rcp.control.XTextField xTextField4;
    private com.rameses.rcp.control.XTextField xTextField5;
    private com.rameses.rcp.control.XTextField xTextField6;
    private com.rameses.rcp.control.XTextField xTextField7;
    // End of variables declaration//GEN-END:variables
    
}
