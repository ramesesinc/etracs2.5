/*
 * BusinessVariablePage.java
 *
 * Created on August 24, 2013, 3:11 PM
 */

package com.rameses.gov.etracs.bpls;

import com.rameses.osiris2.themes.FormPage;
import com.rameses.rcp.ui.annotations.StyleSheet;
import com.rameses.rcp.ui.annotations.Template;

/**
 *
 * @author  Rameses
 */
@StyleSheet
@Template(FormPage.class)
public class BusinessVariablePage extends javax.swing.JPanel {

     
    
    /** Creates new form BusinessVariablePage */
    public BusinessVariablePage() {
        initComponents();
    }
    
    /** This method is called from within the constructor to
     * initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is
     * always regenerated by the Form Editor.
     */
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        formPanel1 = new com.rameses.rcp.util.FormPanel();
        xTextField1 = new com.rameses.rcp.control.XTextField();
        xTextField2 = new com.rameses.rcp.control.XTextField();
        xTextField3 = new com.rameses.rcp.control.XTextField();
        xComboBox1 = new com.rameses.rcp.control.XComboBox();
        xTextField4 = new com.rameses.rcp.control.XTextField();
        xLabel2 = new com.rameses.rcp.control.XLabel();
        xIntegerField1 = new com.rameses.rcp.control.XIntegerField();
        xTextField5 = new com.rameses.rcp.control.XTextField();
        jScrollPane1 = new javax.swing.JScrollPane();
        xList1 = new com.rameses.rcp.control.XList();
        xButton1 = new com.rameses.rcp.control.XButton();
        xButton2 = new com.rameses.rcp.control.XButton();
        xLabel1 = new com.rameses.rcp.control.XLabel();

        formPanel1.setBorder(javax.swing.BorderFactory.createCompoundBorder(null, javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0)));
        formPanel1.setCaptionWidth(100);
        formPanel1.setPadding(new java.awt.Insets(5, 5, 5, 0));
        xTextField1.setCaption("Name");
        xTextField1.setName("entity.name");
        xTextField1.setPreferredSize(new java.awt.Dimension(0, 19));
        xTextField1.setRequired(true);
        xTextField1.setSpaceChar('_');
        formPanel1.add(xTextField1);

        xTextField2.setName("entity.caption");
        xTextField2.setPreferredSize(new java.awt.Dimension(0, 19));
        xTextField2.setRequired(true);
        formPanel1.add(xTextField2);

        xTextField3.setCaption("Description");
        xTextField3.setName("entity.description");
        xTextField3.setPreferredSize(new java.awt.Dimension(0, 19));
        formPanel1.add(xTextField3);

        xComboBox1.setCaption("Data Type");
        xComboBox1.setExpression("#{item.value}");
        xComboBox1.setItemKey("value");
        xComboBox1.setItems("datatypes");
        xComboBox1.setName("entity.datatype");
        xComboBox1.setPreferredSize(new java.awt.Dimension(170, 22));
        xComboBox1.setRequired(true);
        formPanel1.add(xComboBox1);

        xTextField4.setCaption("Info Handler ");
        xTextField4.setDepends(new String[] {"entity.datatype"});
        xTextField4.setName("entity.handler");
        xTextField4.setPreferredSize(new java.awt.Dimension(0, 20));
        xTextField4.setRequired(true);
        xTextField4.setTextCase(com.rameses.rcp.constant.TextCase.NONE);
        formPanel1.add(xTextField4);

        xLabel2.setCaption("Var Type");
        xLabel2.setExpression("#{vartype}");
        xLabel2.setPreferredSize(new java.awt.Dimension(0, 16));
        formPanel1.add(xLabel2);

        xIntegerField1.setCaption("Sort order");
        xIntegerField1.setName("entity.sortorder");
        xIntegerField1.setRequired(true);
        formPanel1.add(xIntegerField1);

        xTextField5.setCaption("Category");
        xTextField5.setName("entity.category");
        xTextField5.setPreferredSize(new java.awt.Dimension(0, 20));
        xTextField5.setTextCase(com.rameses.rcp.constant.TextCase.NONE);
        formPanel1.add(xTextField5);

        xList1.setDynamic(true);
        xList1.setItems("entity.arrayvalues");
        xList1.setName("arrayvalue");
        xList1.setPadding(new java.awt.Insets(1, 3, 1, 0));
        jScrollPane1.setViewportView(xList1);

        xButton1.setMnemonic('a');
        xButton1.setDepends(new String[] {"entity.datatype"});
        xButton1.setDisableWhen("#{mode == 'read'}");
        xButton1.setImmediate(true);
        xButton1.setName("addArrayValue");
        xButton1.setText("Add");
        xButton1.setVisibleWhen("#{entity.datatype == 'string_array'}");

        xButton2.setMnemonic('r');
        xButton2.setDepends(new String[] {"entity.datatype"});
        xButton2.setDisableWhen("#{mode == 'read'}");
        xButton2.setImmediate(true);
        xButton2.setName("removeArrayValue");
        xButton2.setText("Remove");
        xButton2.setVisibleWhen("#{entity.datatype == 'string_array'}");

        xLabel1.setCellPadding(new java.awt.Insets(0, 5, 0, 0));
        xLabel1.setPadding(new java.awt.Insets(1, 6, 1, 1));
        xLabel1.setText("Array Values");

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(this);
        this.setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(formPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, 401, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(xLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(40, 40, 40)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(layout.createSequentialGroup()
                                .addComponent(xButton1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addComponent(xButton2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 283, javax.swing.GroupLayout.PREFERRED_SIZE))))
                .addContainerGap(20, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addComponent(formPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 109, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(xLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(xButton1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(xButton2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
    }// </editor-fold>//GEN-END:initComponents
    
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private com.rameses.rcp.util.FormPanel formPanel1;
    private javax.swing.JScrollPane jScrollPane1;
    private com.rameses.rcp.control.XButton xButton1;
    private com.rameses.rcp.control.XButton xButton2;
    private com.rameses.rcp.control.XComboBox xComboBox1;
    private com.rameses.rcp.control.XIntegerField xIntegerField1;
    private com.rameses.rcp.control.XLabel xLabel1;
    private com.rameses.rcp.control.XLabel xLabel2;
    private com.rameses.rcp.control.XList xList1;
    private com.rameses.rcp.control.XTextField xTextField1;
    private com.rameses.rcp.control.XTextField xTextField2;
    private com.rameses.rcp.control.XTextField xTextField3;
    private com.rameses.rcp.control.XTextField xTextField4;
    private com.rameses.rcp.control.XTextField xTextField5;
    // End of variables declaration//GEN-END:variables
    
}
