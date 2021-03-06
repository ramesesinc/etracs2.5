/*
 * BusinessRequirementPage.java
 *
 * Created on October 28, 2013, 9:40 PM
 */

package com.rameses.gov.etracs.bpls;

import com.rameses.osiris2.themes.FormPage;
import com.rameses.rcp.ui.annotations.StyleSheet;
import com.rameses.rcp.ui.annotations.Template;


/**
 *
 * @author  Elmo
 */
@Template(FormPage.class)
@StyleSheet
public class BusinessRequirementPage extends javax.swing.JPanel {
    
    /** Creates new form BusinessRequirementPage */
    public BusinessRequirementPage() {
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
        xTextField1 = new com.rameses.rcp.control.XTextField();
        xTextField2 = new com.rameses.rcp.control.XTextField();
        xComboBox1 = new com.rameses.rcp.control.XComboBox();
        xLookupField1 = new com.rameses.rcp.control.XLookupField();
        xComboBox3 = new com.rameses.rcp.control.XComboBox();
        xTextField3 = new com.rameses.rcp.control.XTextField();
        xTextField4 = new com.rameses.rcp.control.XTextField();

        com.rameses.rcp.control.border.XTitledBorder xTitledBorder1 = new com.rameses.rcp.control.border.XTitledBorder();
        xTitledBorder1.setTitle("General Info");
        xFormPanel1.setBorder(xTitledBorder1);
        xFormPanel1.setCaption("General Info");
        xTextField1.setCaption("Code");
        xTextField1.setName("entity.code");
        xTextField1.setSpaceChar('_');
        xFormPanel1.add(xTextField1);

        xTextField2.setCaption("Title");
        xTextField2.setName("entity.title");
        xTextField2.setPreferredSize(new java.awt.Dimension(0, 20));
        xTextField2.setSpaceChar('_');
        xFormPanel1.add(xTextField2);

        xComboBox1.setCaption("Type");
        xComboBox1.setItems("types");
        xComboBox1.setName("entity.type");
        xComboBox1.setPreferredSize(new java.awt.Dimension(150, 22));
        xFormPanel1.add(xComboBox1);

        xLookupField1.setCaption("Account");
        xLookupField1.setDepends(new String[] {"entity.type"});
        xLookupField1.setExpression("#{item.code} #{item.title}");
        xLookupField1.setHandler("revenueitem:lookup");
        xLookupField1.setName("entity.account");
        xLookupField1.setPreferredSize(new java.awt.Dimension(0, 20));
        xFormPanel1.add(xLookupField1);

        xComboBox3.setCaption("Department");
        xComboBox3.setExpression("#{item.value}");
        xComboBox3.setItemKey("key");
        xComboBox3.setItems("extDepts");
        xComboBox3.setName("entity.department");
        xComboBox3.setPreferredSize(new java.awt.Dimension(0, 22));
        xComboBox3.setRequired(true);
        xFormPanel1.add(xComboBox3);

        xTextField3.setCaption("Role");
        xTextField3.setName("entity.role");
        xTextField3.setSpaceChar('_');
        xFormPanel1.add(xTextField3);

        xTextField4.setCaption("Handler");
        xTextField4.setName("entity.handler");
        xTextField4.setSpaceChar('_');
        xFormPanel1.add(xTextField4);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(this);
        this.setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(xFormPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, 355, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(35, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(xFormPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, 196, Short.MAX_VALUE)
                .addContainerGap())
        );
    }// </editor-fold>//GEN-END:initComponents
    
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private com.rameses.rcp.control.XComboBox xComboBox1;
    private com.rameses.rcp.control.XComboBox xComboBox3;
    private com.rameses.rcp.control.XFormPanel xFormPanel1;
    private com.rameses.rcp.control.XLookupField xLookupField1;
    private com.rameses.rcp.control.XTextField xTextField1;
    private com.rameses.rcp.control.XTextField xTextField2;
    private com.rameses.rcp.control.XTextField xTextField3;
    private com.rameses.rcp.control.XTextField xTextField4;
    // End of variables declaration//GEN-END:variables
    
}
