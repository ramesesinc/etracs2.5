/*
 * RPTCertificationPage.java
 *
 * Created on July 18, 2011, 11:16 AM
 */
package com.rameses.gov.etracs.rpt.report.certification;

import com.rameses.osiris2.themes.FormPage;
import com.rameses.rcp.ui.annotations.StyleSheet;
import com.rameses.rcp.ui.annotations.Template;
import java.math.BigDecimal;

@Template(FormPage.class)
@StyleSheet
public class RPTCertificationPage extends javax.swing.JPanel {
    
    /** Creates new form RPTCertificationPage */
    public RPTCertificationPage() {
        initComponents();
    }
    
    /** This method is called from within the constructor to
     * initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is
     * always regenerated by the Form Editor.
     */
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        jPanel1 = new javax.swing.JPanel();
        formPanel1 = new com.rameses.rcp.util.FormPanel();
        xLookupField2 = new com.rameses.rcp.control.XLookupField();
        xLabel4 = new com.rameses.rcp.control.XLabel();
        xLookupField1 = new com.rameses.rcp.control.XLookupField();
        xLabel3 = new com.rameses.rcp.control.XLabel();
        xTextField2 = new com.rameses.rcp.control.XTextField();
        xTextField8 = new com.rameses.rcp.control.XTextField();
        jScrollPane1 = new javax.swing.JScrollPane();
        xTextArea1 = new com.rameses.rcp.control.XTextArea();
        xTextField3 = new com.rameses.rcp.control.XTextField();
        xTextField4 = new com.rameses.rcp.control.XTextField();
        xTextField5 = new com.rameses.rcp.control.XTextField();
        xTextField7 = new com.rameses.rcp.control.XTextField();
        xSeparator1 = new com.rameses.rcp.control.XSeparator();
        xCheckBox1 = new com.rameses.rcp.control.XCheckBox();
        xTextField6 = new com.rameses.rcp.control.XTextField();
        xDateField1 = new com.rameses.rcp.control.XDateField();
        xNumberField1 = new com.rameses.rcp.control.XNumberField();
        xNumberField2 = new com.rameses.rcp.control.XNumberField();

        com.rameses.rcp.control.border.XTitledBorder xTitledBorder1 = new com.rameses.rcp.control.border.XTitledBorder();
        xTitledBorder1.setTitle("Certification Detail");
        formPanel1.setBorder(xTitledBorder1);
        xLookupField2.setCaption("TD No.");
        xLookupField2.setCaptionWidth(135);
        xLookupField2.setExpression("#{entity.tdno}");
        xLookupField2.setHandler("lookupFaas");
        xLookupField2.setName("entity.tdno");
        xLookupField2.setPreferredSize(new java.awt.Dimension(0, 21));
        xLookupField2.setRequired(true);
        formPanel1.add(xLookupField2);

        com.rameses.rcp.control.border.XLineBorder xLineBorder1 = new com.rameses.rcp.control.border.XLineBorder();
        xLineBorder1.setLineColor(new java.awt.Color(153, 153, 153));
        xLabel4.setBorder(xLineBorder1);
        xLabel4.setCaption("Taxpayer");
        xLabel4.setCaptionWidth(135);
        xLabel4.setDepends(new String[] {"entity.taxpayer", "entity.tdno"});
        xLabel4.setExpression("#{entity.taxpayer.name}");
        xLabel4.setName("entity.taxpayername");
        xLabel4.setPreferredSize(new java.awt.Dimension(0, 21));
        formPanel1.add(xLabel4);

        xLookupField1.setCaption("Taxpayer");
        xLookupField1.setCaptionWidth(135);
        xLookupField1.setDepends(new String[] {"entity.taxpayer", "entity.tdno"});
        xLookupField1.setExpression("#{entity.taxpayer.name}");
        xLookupField1.setHandler("lookupTaxpayer");
        xLookupField1.setName("entity.taxpayer");
        xLookupField1.setPreferredSize(new java.awt.Dimension(0, 21));
        xLookupField1.setRequired(true);
        formPanel1.add(xLookupField1);

        com.rameses.rcp.control.border.XLineBorder xLineBorder2 = new com.rameses.rcp.control.border.XLineBorder();
        xLineBorder2.setLineColor(new java.awt.Color(153, 153, 153));
        xLabel3.setBorder(xLineBorder2);
        xLabel3.setCaption("Address");
        xLabel3.setCaptionWidth(135);
        xLabel3.setDepends(new String[] {"entity.taxpayer", "entity.tdno"});
        xLabel3.setExpression("#{entity.taxpayer.address}");
        xLabel3.setPreferredSize(new java.awt.Dimension(0, 21));
        formPanel1.add(xLabel3);

        xTextField2.setCaption("Requested By");
        xTextField2.setCaptionWidth(135);
        xTextField2.setDepends(new String[] {"entity.taxpayer", "entity.tdno"});
        xTextField2.setName("entity.requestedby");
        xTextField2.setPreferredSize(new java.awt.Dimension(0, 21));
        xTextField2.setRequired(true);
        formPanel1.add(xTextField2);

        xTextField8.setCaption("Address");
        xTextField8.setCaptionWidth(135);
        xTextField8.setDepends(new String[] {"entity.taxpayer", "entity.tdno"});
        xTextField8.setName("entity.requestedbyaddress");
        xTextField8.setPreferredSize(new java.awt.Dimension(0, 21));
        xTextField8.setRequired(true);
        formPanel1.add(xTextField8);

        jScrollPane1.setPreferredSize(new java.awt.Dimension(0, 77));
        xTextArea1.setCaption("Purpose");
        xTextArea1.setCaptionWidth(135);
        xTextArea1.setName("entity.purpose");
        xTextArea1.setPreferredSize(new java.awt.Dimension(120, 60));
        xTextArea1.setRequired(true);
        jScrollPane1.setViewportView(xTextArea1);

        formPanel1.add(jScrollPane1);

        xTextField3.setCaption("<html><u>C</u>ertified By:<font color=\"red\">*</font></html>");
        xTextField3.setCaptionWidth(135);
        xTextField3.setName("entity.certifiedby");
        xTextField3.setPreferredSize(new java.awt.Dimension(0, 21));
        xTextField3.setRequired(true);
        formPanel1.add(xTextField3);

        xTextField4.setCaption("Position/Job Title");
        xTextField4.setCaptionWidth(135);
        xTextField4.setName("entity.certifiedbytitle");
        xTextField4.setPreferredSize(new java.awt.Dimension(0, 21));
        xTextField4.setRequired(true);
        formPanel1.add(xTextField4);

        xTextField5.setCaption("Authority of");
        xTextField5.setCaptionWidth(135);
        xTextField5.setName("entity.byauthority");
        xTextField5.setPreferredSize(new java.awt.Dimension(0, 21));
        formPanel1.add(xTextField5);

        xTextField7.setCaption("Position/Job Title");
        xTextField7.setCaptionWidth(135);
        xTextField7.setName("entity.byauthoritytitle");
        xTextField7.setPreferredSize(new java.awt.Dimension(0, 21));
        formPanel1.add(xTextField7);

        xSeparator1.setCellPadding(new java.awt.Insets(5, 0, 0, 0));
        xSeparator1.setPreferredSize(new java.awt.Dimension(0, 20));
        org.jdesktop.layout.GroupLayout xSeparator1Layout = new org.jdesktop.layout.GroupLayout(xSeparator1);
        xSeparator1.setLayout(xSeparator1Layout);
        xSeparator1Layout.setHorizontalGroup(
            xSeparator1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(0, 506, Short.MAX_VALUE)
        );
        xSeparator1Layout.setVerticalGroup(
            xSeparator1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(0, 20, Short.MAX_VALUE)
        );
        formPanel1.add(xSeparator1);

        xCheckBox1.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        xCheckBox1.setCellPadding(new java.awt.Insets(0, 0, 10, 0));
        xCheckBox1.setFont(new java.awt.Font("Dialog", 1, 12));
        xCheckBox1.setMargin(new java.awt.Insets(0, 0, 0, 0));
        xCheckBox1.setName("officialuse");
        xCheckBox1.setOpaque(false);
        xCheckBox1.setShowCaption(false);
        xCheckBox1.setText("  Is for Official Use?");
        formPanel1.add(xCheckBox1);

        xTextField6.setCaption("O.R. No.");
        xTextField6.setCaptionWidth(117);
        xTextField6.setCellPadding(new java.awt.Insets(0, 20, 0, 0));
        xTextField6.setDepends(new String[] {"officialuse"});
        xTextField6.setName("entity.orno");
        xTextField6.setPreferredSize(new java.awt.Dimension(150, 21));
        xTextField6.setRequired(true);
        formPanel1.add(xTextField6);

        xDateField1.setCaption("O.R. Date");
        xDateField1.setCaptionWidth(117);
        xDateField1.setCellPadding(new java.awt.Insets(0, 20, 0, 0));
        xDateField1.setDepends(new String[] {"officialuse"});
        xDateField1.setName("entity.ordate");
        xDateField1.setPreferredSize(new java.awt.Dimension(150, 21));
        xDateField1.setRequired(true);
        formPanel1.add(xDateField1);

        xNumberField1.setCaption("O.R. Amount");
        xNumberField1.setCaptionWidth(117);
        xNumberField1.setCellPadding(new java.awt.Insets(0, 20, 0, 0));
        xNumberField1.setDepends(new String[] {"officialuse"});
        xNumberField1.setFieldType(BigDecimal.class);
        xNumberField1.setName("entity.oramount");
        xNumberField1.setPattern("#,##0.00");
        xNumberField1.setPreferredSize(new java.awt.Dimension(150, 21));
        formPanel1.add(xNumberField1);

        xNumberField2.setCaption("Stamp Amount");
        xNumberField2.setCaptionWidth(117);
        xNumberField2.setCellPadding(new java.awt.Insets(0, 20, 0, 0));
        xNumberField2.setFieldType(BigDecimal.class);
        xNumberField2.setName("entity.stampamount");
        xNumberField2.setPattern("#,##0.00");
        xNumberField2.setPreferredSize(new java.awt.Dimension(150, 21));
        formPanel1.add(xNumberField2);

        org.jdesktop.layout.GroupLayout jPanel1Layout = new org.jdesktop.layout.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .add(formPanel1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 520, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(53, Short.MAX_VALUE))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .add(formPanel1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 514, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(322, Short.MAX_VALUE))
        );

        org.jdesktop.layout.GroupLayout layout = new org.jdesktop.layout.GroupLayout(this);
        this.setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
    }// </editor-fold>//GEN-END:initComponents
    
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private com.rameses.rcp.util.FormPanel formPanel1;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JScrollPane jScrollPane1;
    private com.rameses.rcp.control.XCheckBox xCheckBox1;
    private com.rameses.rcp.control.XDateField xDateField1;
    private com.rameses.rcp.control.XLabel xLabel3;
    private com.rameses.rcp.control.XLabel xLabel4;
    private com.rameses.rcp.control.XLookupField xLookupField1;
    private com.rameses.rcp.control.XLookupField xLookupField2;
    private com.rameses.rcp.control.XNumberField xNumberField1;
    private com.rameses.rcp.control.XNumberField xNumberField2;
    private com.rameses.rcp.control.XSeparator xSeparator1;
    private com.rameses.rcp.control.XTextArea xTextArea1;
    private com.rameses.rcp.control.XTextField xTextField2;
    private com.rameses.rcp.control.XTextField xTextField3;
    private com.rameses.rcp.control.XTextField xTextField4;
    private com.rameses.rcp.control.XTextField xTextField5;
    private com.rameses.rcp.control.XTextField xTextField6;
    private com.rameses.rcp.control.XTextField xTextField7;
    private com.rameses.rcp.control.XTextField xTextField8;
    // End of variables declaration//GEN-END:variables
    
}
