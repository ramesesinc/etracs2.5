/*
 * CityPage.java
 *
 * Created on July 31, 2013, 9:19 PM
 */

package com.rameses.gov.lgu.ui;


import com.rameses.osiris2.themes.FormPage;
import com.rameses.rcp.ui.annotations.StyleSheet;
import com.rameses.rcp.ui.annotations.Template;

/**
 *
 * @author  Elmo
 */
@Template(value=FormPage.class)
@StyleSheet
public class CityPage extends javax.swing.JPanel {
    
    public CityPage() {
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
        xFormPanel1 = new com.rameses.rcp.control.XFormPanel();
        xTextField1 = new com.rameses.rcp.control.XTextField();
        xTextField2 = new com.rameses.rcp.control.XTextField();
        xTextField7 = new com.rameses.rcp.control.XTextField();
        xFormPanel2 = new com.rameses.rcp.control.XFormPanel();
        xTextField3 = new com.rameses.rcp.control.XTextField();
        xTextField4 = new com.rameses.rcp.control.XTextField();
        xTextField8 = new com.rameses.rcp.control.XTextField();
        xFormPanel3 = new com.rameses.rcp.control.XFormPanel();
        xTextField5 = new com.rameses.rcp.control.XTextField();
        xTextField6 = new com.rameses.rcp.control.XTextField();
        xTextField9 = new com.rameses.rcp.control.XTextField();
        xFormPanel4 = new com.rameses.rcp.control.XFormPanel();
        xTextField10 = new com.rameses.rcp.control.XTextField();
        xTextField11 = new com.rameses.rcp.control.XTextField();
        xFormPanel5 = new com.rameses.rcp.control.XFormPanel();
        xTextField15 = new com.rameses.rcp.control.XTextField();
        xTextField12 = new com.rameses.rcp.control.XTextField();
        xTextField13 = new com.rameses.rcp.control.XTextField();
        xTextField14 = new com.rameses.rcp.control.XTextField();

        com.rameses.rcp.control.border.XTitledBorder xTitledBorder1 = new com.rameses.rcp.control.border.XTitledBorder();
        xTitledBorder1.setPadding(new java.awt.Insets(25, 0, 0, 0));
        xTitledBorder1.setTitle("City Information");
        jPanel1.setBorder(xTitledBorder1);

        xFormPanel1.setCaptionWidth(120);
        xFormPanel1.setIndex(1);
        xTextField1.setCaption("Mayor Name");
        xTextField1.setIndex(10);
        xTextField1.setName("entity.mayor.name");
        xTextField1.setPreferredSize(new java.awt.Dimension(0, 19));
        xTextField1.setRequired(true);
        xFormPanel1.add(xTextField1);

        xTextField2.setCaption("Mayor Title");
        xTextField2.setIndex(11);
        xTextField2.setName("entity.mayor.title");
        xTextField2.setPreferredSize(new java.awt.Dimension(0, 19));
        xTextField2.setRequired(true);
        xFormPanel1.add(xTextField2);

        xTextField7.setCaption("Mayor Office");
        xTextField7.setIndex(12);
        xTextField7.setName("entity.mayor.office");
        xTextField7.setPreferredSize(new java.awt.Dimension(0, 19));
        xTextField7.setRequired(true);
        xFormPanel1.add(xTextField7);

        xFormPanel2.setCaptionWidth(120);
        xFormPanel2.setIndex(2);
        xTextField3.setCaption("Assessor Name");
        xTextField3.setIndex(13);
        xTextField3.setName("entity.assessor.name");
        xTextField3.setNullWhenEmpty(false);
        xTextField3.setPreferredSize(new java.awt.Dimension(0, 19));
        xTextField3.setRequired(true);
        xFormPanel2.add(xTextField3);

        xTextField4.setCaption("Assessor Title");
        xTextField4.setIndex(14);
        xTextField4.setName("entity.assessor.title");
        xTextField4.setPreferredSize(new java.awt.Dimension(0, 19));
        xTextField4.setRequired(true);
        xFormPanel2.add(xTextField4);

        xTextField8.setCaption("Assessor Office");
        xTextField8.setIndex(15);
        xTextField8.setName("entity.assessor.office");
        xTextField8.setPreferredSize(new java.awt.Dimension(0, 19));
        xTextField8.setRequired(true);
        xFormPanel2.add(xTextField8);

        xFormPanel3.setCaptionWidth(120);
        xFormPanel3.setIndex(3);
        xTextField5.setCaption("Treasurer Name");
        xTextField5.setIndex(16);
        xTextField5.setName("entity.treasurer.name");
        xTextField5.setNullWhenEmpty(false);
        xTextField5.setPreferredSize(new java.awt.Dimension(0, 19));
        xTextField5.setRequired(true);
        xFormPanel3.add(xTextField5);

        xTextField6.setCaption("Treasurer Title");
        xTextField6.setIndex(17);
        xTextField6.setName("entity.treasurer.title");
        xTextField6.setPreferredSize(new java.awt.Dimension(0, 19));
        xTextField6.setRequired(true);
        xFormPanel3.add(xTextField6);

        xTextField9.setCaption("Treasurer Office");
        xTextField9.setIndex(18);
        xTextField9.setName("entity.treasurer.office");
        xTextField9.setPreferredSize(new java.awt.Dimension(0, 19));
        xTextField9.setRequired(true);
        xFormPanel3.add(xTextField9);

        xFormPanel4.setCaptionWidth(120);
        xFormPanel4.setIndex(1);
        xTextField10.setCaption("Full Name");
        xTextField10.setIndex(10);
        xTextField10.setName("entity.fullname");
        xTextField10.setPreferredSize(new java.awt.Dimension(0, 19));
        xTextField10.setRequired(true);
        xFormPanel4.add(xTextField10);

        xTextField11.setCaption("Address");
        xTextField11.setIndex(10);
        xTextField11.setName("entity.address");
        xTextField11.setPreferredSize(new java.awt.Dimension(0, 19));
        xTextField11.setRequired(true);
        xFormPanel4.add(xTextField11);

        xFormPanel5.setCaptionWidth(120);
        xFormPanel5.setIndex(1);
        xTextField15.setText("entity.code");
        xTextField15.setCaption("City code");
        xTextField15.setEnabled(false);
        xTextField15.setIndex(10);
        xTextField15.setName("entity.name");
        xTextField15.setPreferredSize(new java.awt.Dimension(0, 19));
        xFormPanel5.add(xTextField15);

        xTextField12.setCaption("City name");
        xTextField12.setEnabled(false);
        xTextField12.setIndex(10);
        xTextField12.setName("entity.name");
        xTextField12.setPreferredSize(new java.awt.Dimension(0, 19));
        xFormPanel5.add(xTextField12);

        xTextField13.setCaption("Index No");
        xTextField13.setEnabled(false);
        xTextField13.setIndex(11);
        xTextField13.setName("entity.indexno");
        xTextField13.setPreferredSize(new java.awt.Dimension(0, 19));
        xFormPanel5.add(xTextField13);

        xTextField14.setCaption("PIN");
        xTextField14.setEnabled(false);
        xTextField14.setIndex(12);
        xTextField14.setName("entity.pin");
        xTextField14.setPreferredSize(new java.awt.Dimension(0, 19));
        xFormPanel5.add(xTextField14);

        org.jdesktop.layout.GroupLayout jPanel1Layout = new org.jdesktop.layout.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .add(jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(org.jdesktop.layout.GroupLayout.TRAILING, xFormPanel3, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 460, Short.MAX_VALUE)
                    .add(org.jdesktop.layout.GroupLayout.TRAILING, xFormPanel2, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 460, Short.MAX_VALUE)
                    .add(xFormPanel1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 460, Short.MAX_VALUE)
                    .add(xFormPanel4, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 460, Short.MAX_VALUE)
                    .add(xFormPanel5, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 460, Short.MAX_VALUE))
                .addContainerGap())
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(org.jdesktop.layout.GroupLayout.TRAILING, jPanel1Layout.createSequentialGroup()
                .add(xFormPanel5, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(xFormPanel4, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(xFormPanel1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 68, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(xFormPanel2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 69, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(xFormPanel3, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 71, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addContainerGap())
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
    private javax.swing.JPanel jPanel1;
    private com.rameses.rcp.control.XFormPanel xFormPanel1;
    private com.rameses.rcp.control.XFormPanel xFormPanel2;
    private com.rameses.rcp.control.XFormPanel xFormPanel3;
    private com.rameses.rcp.control.XFormPanel xFormPanel4;
    private com.rameses.rcp.control.XFormPanel xFormPanel5;
    private com.rameses.rcp.control.XTextField xTextField1;
    private com.rameses.rcp.control.XTextField xTextField10;
    private com.rameses.rcp.control.XTextField xTextField11;
    private com.rameses.rcp.control.XTextField xTextField12;
    private com.rameses.rcp.control.XTextField xTextField13;
    private com.rameses.rcp.control.XTextField xTextField14;
    private com.rameses.rcp.control.XTextField xTextField15;
    private com.rameses.rcp.control.XTextField xTextField2;
    private com.rameses.rcp.control.XTextField xTextField3;
    private com.rameses.rcp.control.XTextField xTextField4;
    private com.rameses.rcp.control.XTextField xTextField5;
    private com.rameses.rcp.control.XTextField xTextField6;
    private com.rameses.rcp.control.XTextField xTextField7;
    private com.rameses.rcp.control.XTextField xTextField8;
    private com.rameses.rcp.control.XTextField xTextField9;
    // End of variables declaration//GEN-END:variables
    
}
