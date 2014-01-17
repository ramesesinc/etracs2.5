/*
 * RealPropertyInfoPage.java
 *
 * Created on July 1, 2011, 5:54 PM
 */

package com.rameses.gov.etracs.rpt.realproperty.ui;

import com.rameses.osiris2.themes.FormPage;
import com.rameses.rcp.ui.annotations.StyleSheet;
import com.rameses.rcp.ui.annotations.Template;

/**
 *
 * @author  rameses
 */
@Template(FormPage.class)
@StyleSheet
public class RealPropertyPage extends javax.swing.JPanel {
    
    /** Creates new form RealPropertyInfoPage */
    public RealPropertyPage() {
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
        xLabel1 = new com.rameses.rcp.control.XLabel();
        xComboBox1 = new com.rameses.rcp.control.XComboBox();
        xComboBox2 = new com.rameses.rcp.control.XComboBox();
        xLookupField1 = new com.rameses.rcp.control.XLookupField();
        xLabel2 = new com.rameses.rcp.control.XLabel();
        xLabel3 = new com.rameses.rcp.control.XLabel();
        xIntegerField1 = new com.rameses.rcp.control.XIntegerField();
        xIntegerField2 = new com.rameses.rcp.control.XIntegerField();
        xTextField2 = new com.rameses.rcp.control.XTextField();
        formPanel6 = new com.rameses.rcp.util.FormPanel();
        xTextField9 = new com.rameses.rcp.control.XTextField();
        xTextField11 = new com.rameses.rcp.control.XTextField();
        xTextField10 = new com.rameses.rcp.control.XTextField();
        xTextField12 = new com.rameses.rcp.control.XTextField();
        formPanel4 = new com.rameses.rcp.util.FormPanel();
        xTextField16 = new com.rameses.rcp.control.XTextField();
        xTextField17 = new com.rameses.rcp.control.XTextField();
        xTextField18 = new com.rameses.rcp.control.XTextField();
        xTextField19 = new com.rameses.rcp.control.XTextField();
        xTextField20 = new com.rameses.rcp.control.XTextField();
        xTextField21 = new com.rameses.rcp.control.XTextField();

        setPreferredSize(new java.awt.Dimension(702, 430));

        com.rameses.rcp.control.border.XTitledBorder xTitledBorder1 = new com.rameses.rcp.control.border.XTitledBorder();
        xTitledBorder1.setTitle("Real Property Information");
        formPanel3.setBorder(xTitledBorder1);
        formPanel3.setCaptionWidth(115);
        com.rameses.rcp.control.border.XLineBorder xLineBorder1 = new com.rameses.rcp.control.border.XLineBorder();
        xLineBorder1.setLineColor(new java.awt.Color(153, 153, 153));
        xLabel1.setBorder(xLineBorder1);
        xLabel1.setCaption("PIN No.");
        xLabel1.setCaptionFont(new java.awt.Font("Tahoma", 0, 18));
        xLabel1.setExpression("#{entity.pin}");
        xLabel1.setFont(new java.awt.Font("Tahoma", 1, 18));
        xLabel1.setPreferredSize(new java.awt.Dimension(0, 30));
        formPanel3.add(xLabel1);

        xComboBox1.setCaption("Revision Year");
        xComboBox1.setCaptionMnemonic('r');
        xComboBox1.setIndex(-1);
        xComboBox1.setItems("ryList");
        xComboBox1.setName("entity.ry");
        xComboBox1.setPreferredSize(new java.awt.Dimension(100, 20));
        xComboBox1.setRequired(true);
        formPanel3.add(xComboBox1);

        xComboBox2.setAllowNull(false);
        xComboBox2.setCaption("PIN Type");
        xComboBox2.setImmediate(true);
        xComboBox2.setItems("pinTypes");
        xComboBox2.setName("entity.pintype");
        xComboBox2.setPreferredSize(new java.awt.Dimension(100, 22));
        xComboBox2.setRequired(true);
        formPanel3.add(xComboBox2);

        xLookupField1.setCaption("Barangay");
        xLookupField1.setDisabledTextColor(new java.awt.Color(0, 0, 0));
        xLookupField1.setExpression("#{entity.barangay.name}");
        xLookupField1.setHandler("lookupBarangay");
        xLookupField1.setName("entity.barangay");
        xLookupField1.setPreferredSize(new java.awt.Dimension(0, 20));
        xLookupField1.setRequired(true);
        formPanel3.add(xLookupField1);

        com.rameses.rcp.control.border.XLineBorder xLineBorder2 = new com.rameses.rcp.control.border.XLineBorder();
        xLineBorder2.setLineColor(new java.awt.Color(153, 153, 153));
        xLabel2.setBorder(xLineBorder2);
        xLabel2.setCaption("Municipality/District");
        xLabel2.setDepends(new String[] {"entity.name"});
        xLabel2.setExpression("#{entity.munidistrict.name}");
        xLabel2.setPreferredSize(new java.awt.Dimension(0, 19));
        formPanel3.add(xLabel2);

        com.rameses.rcp.control.border.XLineBorder xLineBorder3 = new com.rameses.rcp.control.border.XLineBorder();
        xLineBorder3.setLineColor(new java.awt.Color(153, 153, 153));
        xLabel3.setBorder(xLineBorder3);
        xLabel3.setCaption("Province/City");
        xLabel3.setDepends(new String[] {"entity.name"});
        xLabel3.setExpression("#{entity.provcity.name}");
        xLabel3.setPreferredSize(new java.awt.Dimension(0, 19));
        formPanel3.add(xLabel3);

        xIntegerField1.setCaption("Section No.");
        xIntegerField1.setIndex(-1);
        xIntegerField1.setMinValue(0.0);
        xIntegerField1.setName("section");
        xIntegerField1.setRequired(true);
        formPanel3.add(xIntegerField1);

        xIntegerField2.setCaption("Parcel No.");
        xIntegerField2.setMinValue(0.0);
        xIntegerField2.setName("parcel");
        xIntegerField2.setRequired(true);
        formPanel3.add(xIntegerField2);

        xTextField2.setCaption("Claim No.");
        xTextField2.setDepends(new String[] {"faas.info.txn", "barangay"});
        xTextField2.setName("entity.claimno");
        xTextField2.setPreferredSize(new java.awt.Dimension(100, 19));
        xTextField2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                xTextField2ActionPerformed(evt);
            }
        });

        formPanel3.add(xTextField2);

        com.rameses.rcp.control.border.XTitledBorder xTitledBorder2 = new com.rameses.rcp.control.border.XTitledBorder();
        xTitledBorder2.setTitle("Boundary Details");
        formPanel6.setBorder(xTitledBorder2);
        xTextField9.setCaption("North");
        xTextField9.setCaptionWidth(60);
        xTextField9.setName("entity.north");
        xTextField9.setPreferredSize(new java.awt.Dimension(0, 20));
        xTextField9.setRequired(true);
        formPanel6.add(xTextField9);

        xTextField11.setCaption("East");
        xTextField11.setCaptionWidth(60);
        xTextField11.setName("entity.east");
        xTextField11.setPreferredSize(new java.awt.Dimension(0, 20));
        xTextField11.setRequired(true);
        formPanel6.add(xTextField11);

        xTextField10.setCaption("South");
        xTextField10.setCaptionWidth(60);
        xTextField10.setName("entity.south");
        xTextField10.setPreferredSize(new java.awt.Dimension(0, 20));
        xTextField10.setRequired(true);
        formPanel6.add(xTextField10);

        xTextField12.setCaption("West");
        xTextField12.setCaptionWidth(60);
        xTextField12.setName("entity.west");
        xTextField12.setPreferredSize(new java.awt.Dimension(0, 20));
        xTextField12.setRequired(true);
        formPanel6.add(xTextField12);

        com.rameses.rcp.control.border.XTitledBorder xTitledBorder3 = new com.rameses.rcp.control.border.XTitledBorder();
        xTitledBorder3.setTitle("Real Property Information");
        formPanel4.setBorder(xTitledBorder3);
        formPanel4.setCaptionWidth(105);
        xTextField16.setCaption("Cadastral Lot No.");
        xTextField16.setCaptionWidth(120);
        xTextField16.setName("entity.cadastrallotno");
        xTextField16.setPreferredSize(new java.awt.Dimension(0, 20));
        xTextField16.setRequired(true);
        formPanel4.add(xTextField16);

        xTextField17.setCaption("Survey No.");
        xTextField17.setCaptionWidth(120);
        xTextField17.setName("entity.surveyno");
        xTextField17.setPreferredSize(new java.awt.Dimension(0, 20));
        formPanel4.add(xTextField17);

        xTextField18.setCaption("Block No.");
        xTextField18.setCaptionWidth(120);
        xTextField18.setName("entity.blockno");
        xTextField18.setPreferredSize(new java.awt.Dimension(0, 20));
        formPanel4.add(xTextField18);

        xTextField19.setCaption("House No.");
        xTextField19.setCaptionWidth(120);
        xTextField19.setName("entity.houseno");
        xTextField19.setPreferredSize(new java.awt.Dimension(0, 20));
        formPanel4.add(xTextField19);

        xTextField20.setCaption("Street");
        xTextField20.setCaptionWidth(120);
        xTextField20.setName("entity.street");
        xTextField20.setPreferredSize(new java.awt.Dimension(0, 20));
        formPanel4.add(xTextField20);

        xTextField21.setCaption("Purok/Zone");
        xTextField21.setCaptionWidth(120);
        xTextField21.setName("entity.purok");
        xTextField21.setPreferredSize(new java.awt.Dimension(0, 20));
        formPanel4.add(xTextField21);

        org.jdesktop.layout.GroupLayout layout = new org.jdesktop.layout.GroupLayout(this);
        this.setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(layout.createSequentialGroup()
                .addContainerGap()
                .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING, false)
                    .add(org.jdesktop.layout.GroupLayout.LEADING, formPanel6, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .add(org.jdesktop.layout.GroupLayout.LEADING, layout.createSequentialGroup()
                        .add(formPanel3, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 345, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(formPanel4, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 320, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap(21, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(layout.createSequentialGroup()
                .addContainerGap()
                .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING, false)
                    .add(formPanel4, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .add(formPanel3, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 260, Short.MAX_VALUE))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(formPanel6, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 129, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(24, Short.MAX_VALUE))
        );
    }// </editor-fold>//GEN-END:initComponents

    private void xTextField2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_xTextField2ActionPerformed
// TODO add your handling code here:
    }//GEN-LAST:event_xTextField2ActionPerformed
    
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private com.rameses.rcp.util.FormPanel formPanel3;
    private com.rameses.rcp.util.FormPanel formPanel4;
    private com.rameses.rcp.util.FormPanel formPanel6;
    private com.rameses.rcp.control.XComboBox xComboBox1;
    private com.rameses.rcp.control.XComboBox xComboBox2;
    private com.rameses.rcp.control.XIntegerField xIntegerField1;
    private com.rameses.rcp.control.XIntegerField xIntegerField2;
    private com.rameses.rcp.control.XLabel xLabel1;
    private com.rameses.rcp.control.XLabel xLabel2;
    private com.rameses.rcp.control.XLabel xLabel3;
    private com.rameses.rcp.control.XLookupField xLookupField1;
    private com.rameses.rcp.control.XTextField xTextField10;
    private com.rameses.rcp.control.XTextField xTextField11;
    private com.rameses.rcp.control.XTextField xTextField12;
    private com.rameses.rcp.control.XTextField xTextField16;
    private com.rameses.rcp.control.XTextField xTextField17;
    private com.rameses.rcp.control.XTextField xTextField18;
    private com.rameses.rcp.control.XTextField xTextField19;
    private com.rameses.rcp.control.XTextField xTextField2;
    private com.rameses.rcp.control.XTextField xTextField20;
    private com.rameses.rcp.control.XTextField xTextField21;
    private com.rameses.rcp.control.XTextField xTextField9;
    // End of variables declaration//GEN-END:variables
    
}
