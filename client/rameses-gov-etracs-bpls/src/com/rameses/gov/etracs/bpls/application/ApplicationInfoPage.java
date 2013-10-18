/*
 * NewBPApplicationInitPage.java
 *
 * Created on October 3, 2013, 7:41 PM
 */

package com.rameses.gov.etracs.bpls.application;

import com.rameses.osiris2.themes.FormPage;
import com.rameses.rcp.ui.annotations.Template;

/**
 *
 * @author  Elmo
 */
@Template(FormPage.class)
public class ApplicationInfoPage extends javax.swing.JPanel {
    
    /** Creates new form NewBPApplicationInitPage */
    public ApplicationInfoPage() {
        initComponents();
    }
    
    /** This method is called from within the constructor to
     * initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is
     * always regenerated by the Form Editor.
     */
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        jPanel3 = new javax.swing.JPanel();
        xLabel4 = new com.rameses.rcp.control.XLabel();
        xLabel8 = new com.rameses.rcp.control.XLabel();
        xFormPanel1 = new com.rameses.rcp.control.XFormPanel();
        xLabel1 = new com.rameses.rcp.control.XLabel();
        xLabel2 = new com.rameses.rcp.control.XLabel();
        xFormPanel2 = new com.rameses.rcp.control.XFormPanel();
        xLabel3 = new com.rameses.rcp.control.XLabel();
        xLabel5 = new com.rameses.rcp.control.XLabel();
        xFormPanel3 = new com.rameses.rcp.control.XFormPanel();
        xLabel6 = new com.rameses.rcp.control.XLabel();
        xLabel7 = new com.rameses.rcp.control.XLabel();
        xFormPanel4 = new com.rameses.rcp.control.XFormPanel();
        xLabel9 = new com.rameses.rcp.control.XLabel();
        xLabel10 = new com.rameses.rcp.control.XLabel();
        jTabbedPane1 = new javax.swing.JTabbedPane();
        jPanel1 = new javax.swing.JPanel();
        xDataTable2 = new com.rameses.rcp.control.XDataTable();
        jPanel2 = new javax.swing.JPanel();

        jPanel3.setLayout(null);

        com.rameses.rcp.control.border.XTitledBorder xTitledBorder1 = new com.rameses.rcp.control.border.XTitledBorder();
        xTitledBorder1.setTitle("Application Info");
        jPanel3.setBorder(xTitledBorder1);
        jPanel3.setPreferredSize(new java.awt.Dimension(800, 142));
        xLabel4.setExpression("<html>APP No.: #{ entity.appno  }(<font color='blue''> #{entity.state }</font>)</html>");
        xLabel4.setFont(new java.awt.Font("Tahoma", 1, 12));
        jPanel3.add(xLabel4);
        xLabel4.setBounds(370, 0, 370, 30);

        xLabel8.setExpression("<html>#{entity.apptype} (<font color='red'>#{entity.txnmode}</font>)</html>");
        xLabel8.setFont(new java.awt.Font("Tahoma", 1, 12));
        jPanel3.add(xLabel8);
        xLabel8.setBounds(100, 0, 260, 20);

        com.rameses.rcp.control.border.XLineBorder xLineBorder1 = new com.rameses.rcp.control.border.XLineBorder();
        xLineBorder1.setLineColor(new java.awt.Color(204, 204, 204));
        xLabel1.setBorder(xLineBorder1);
        xLabel1.setCaption("Permittee");
        xLabel1.setExpression("#{entity.permitee.name}");
        xLabel1.setPreferredSize(new java.awt.Dimension(0, 18));
        xFormPanel1.add(xLabel1);

        com.rameses.rcp.control.border.XLineBorder xLineBorder2 = new com.rameses.rcp.control.border.XLineBorder();
        xLineBorder2.setLineColor(new java.awt.Color(204, 204, 204));
        xLabel2.setBorder(xLineBorder2);
        xLabel2.setCaption("Address");
        xLabel2.setExpression("#{entity.permitee.address}");
        xLabel2.setPreferredSize(new java.awt.Dimension(0, 18));
        xFormPanel1.add(xLabel2);

        jPanel3.add(xFormPanel1);
        xFormPanel1.setBounds(10, 30, 370, 50);

        com.rameses.rcp.control.border.XLineBorder xLineBorder3 = new com.rameses.rcp.control.border.XLineBorder();
        xLineBorder3.setLineColor(new java.awt.Color(204, 204, 204));
        xLabel3.setBorder(xLineBorder3);
        xLabel3.setCaption("Date");
        xLabel3.setCaptionWidth(100);
        xLabel3.setExpression("#{entity.appdate}");
        xLabel3.setPreferredSize(new java.awt.Dimension(0, 18));
        xFormPanel2.add(xLabel3);

        com.rameses.rcp.control.border.XLineBorder xLineBorder4 = new com.rameses.rcp.control.border.XLineBorder();
        xLineBorder4.setLineColor(new java.awt.Color(204, 204, 204));
        xLabel5.setBorder(xLineBorder4);
        xLabel5.setCaption("Applicable Year");
        xLabel5.setCaptionWidth(100);
        xLabel5.setExpression("#{entity.iyear}");
        xLabel5.setName("application.year");
        xLabel5.setPreferredSize(new java.awt.Dimension(0, 18));
        xFormPanel2.add(xLabel5);

        jPanel3.add(xFormPanel2);
        xFormPanel2.setBounds(390, 30, 330, 50);

        com.rameses.rcp.control.border.XLineBorder xLineBorder5 = new com.rameses.rcp.control.border.XLineBorder();
        xLineBorder5.setLineColor(new java.awt.Color(204, 204, 204));
        xLabel6.setBorder(xLineBorder5);
        xLabel6.setCaption("Trade Name");
        xLabel6.setExpression("#{entity.tradename}");
        xLabel6.setPreferredSize(new java.awt.Dimension(0, 18));
        xFormPanel3.add(xLabel6);

        com.rameses.rcp.control.border.XLineBorder xLineBorder6 = new com.rameses.rcp.control.border.XLineBorder();
        xLineBorder6.setLineColor(new java.awt.Color(204, 204, 204));
        xLabel7.setBorder(xLineBorder6);
        xLabel7.setCaption("Address");
        xLabel7.setExpression("#{entity.businessaddress}");
        xLabel7.setName("application.info.taxpayeraddress");
        xLabel7.setPreferredSize(new java.awt.Dimension(0, 18));
        xFormPanel3.add(xLabel7);

        jPanel3.add(xFormPanel3);
        xFormPanel3.setBounds(10, 80, 368, 50);

        xFormPanel4.setCaptionWidth(100);
        com.rameses.rcp.control.border.XLineBorder xLineBorder7 = new com.rameses.rcp.control.border.XLineBorder();
        xLineBorder7.setLineColor(new java.awt.Color(204, 204, 204));
        xLabel9.setBorder(xLineBorder7);
        xLabel9.setCaption("Bus. Org Type");
        xLabel9.setExpression("#{entity.orgtype}");
        xLabel9.setPreferredSize(new java.awt.Dimension(0, 18));
        xFormPanel4.add(xLabel9);

        com.rameses.rcp.control.border.XLineBorder xLineBorder8 = new com.rameses.rcp.control.border.XLineBorder();
        xLineBorder8.setLineColor(new java.awt.Color(204, 204, 204));
        xLabel10.setBorder(xLineBorder8);
        xLabel10.setCaption("Barangay");
        xLabel10.setExpression("#{entity.barangay.name}");
        xLabel10.setName("application.info.taxpayeraddress");
        xLabel10.setPreferredSize(new java.awt.Dimension(0, 18));
        xFormPanel4.add(xLabel10);

        jPanel3.add(xFormPanel4);
        xFormPanel4.setBounds(390, 76, 332, 50);

        xDataTable2.setColumns(new com.rameses.rcp.common.Column[]{
            new com.rameses.rcp.common.Column(new Object[]{
                new Object[]{"name", "lob.name"}
                , new Object[]{"caption", "Line of business"}
                , new Object[]{"width", 100}
                , new Object[]{"minWidth", 0}
                , new Object[]{"maxWidth", 0}
                , new Object[]{"required", false}
                , new Object[]{"resizable", true}
                , new Object[]{"nullWhenEmpty", true}
                , new Object[]{"editable", false}
                , new Object[]{"textCase", com.rameses.rcp.constant.TextCase.UPPER}
                , new Object[]{"typeHandler", new com.rameses.rcp.common.LabelColumnHandler()}
            }),
            new com.rameses.rcp.common.Column(new Object[]{
                new Object[]{"name", "attribute.caption"}
                , new Object[]{"caption", "Attribute Name"}
                , new Object[]{"width", 100}
                , new Object[]{"minWidth", 0}
                , new Object[]{"maxWidth", 0}
                , new Object[]{"required", false}
                , new Object[]{"resizable", true}
                , new Object[]{"nullWhenEmpty", true}
                , new Object[]{"editable", false}
                , new Object[]{"textCase", com.rameses.rcp.constant.TextCase.UPPER}
                , new Object[]{"typeHandler", new com.rameses.rcp.common.TextColumnHandler()}
            }),
            new com.rameses.rcp.common.Column(new Object[]{
                new Object[]{"name", "attribute.datatype"}
                , new Object[]{"caption", "Data Type"}
                , new Object[]{"width", 100}
                , new Object[]{"minWidth", 0}
                , new Object[]{"maxWidth", 0}
                , new Object[]{"required", false}
                , new Object[]{"resizable", true}
                , new Object[]{"nullWhenEmpty", true}
                , new Object[]{"editable", false}
                , new Object[]{"textCase", com.rameses.rcp.constant.TextCase.UPPER}
                , new Object[]{"typeHandler", new com.rameses.rcp.common.TextColumnHandler()}
            }),
            new com.rameses.rcp.common.Column(new Object[]{
                new Object[]{"name", "value"}
                , new Object[]{"caption", "Value"}
                , new Object[]{"width", 100}
                , new Object[]{"minWidth", 0}
                , new Object[]{"maxWidth", 0}
                , new Object[]{"required", false}
                , new Object[]{"resizable", true}
                , new Object[]{"nullWhenEmpty", true}
                , new Object[]{"editable", false}
                , new Object[]{"textCase", com.rameses.rcp.constant.TextCase.UPPER}
                , new Object[]{"typeHandler", new com.rameses.rcp.common.TextColumnHandler()}
            }),
            new com.rameses.rcp.common.Column(new Object[]{
                new Object[]{"name", "beforeprint"}
                , new Object[]{"caption", "Before Print"}
                , new Object[]{"width", 100}
                , new Object[]{"minWidth", 0}
                , new Object[]{"maxWidth", 0}
                , new Object[]{"required", false}
                , new Object[]{"resizable", true}
                , new Object[]{"nullWhenEmpty", true}
                , new Object[]{"editable", false}
                , new Object[]{"textCase", com.rameses.rcp.constant.TextCase.UPPER}
                , new Object[]{"typeHandler", new com.rameses.rcp.common.TextColumnHandler()}
            })
        });
        xDataTable2.setHandler("infoModel");

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(xDataTable2, javax.swing.GroupLayout.DEFAULT_SIZE, 775, Short.MAX_VALUE)
                .addContainerGap())
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(xDataTable2, javax.swing.GroupLayout.DEFAULT_SIZE, 233, Short.MAX_VALUE)
                .addContainerGap())
        );
        jTabbedPane1.addTab("Business Information", jPanel1);

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 795, Short.MAX_VALUE)
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 255, Short.MAX_VALUE)
        );
        jTabbedPane1.addTab("Requirements", jPanel2);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(this);
        this.setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                    .addComponent(jTabbedPane1, javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jPanel3, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addContainerGap(258, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jPanel3, javax.swing.GroupLayout.PREFERRED_SIZE, 142, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jTabbedPane1, javax.swing.GroupLayout.DEFAULT_SIZE, 283, Short.MAX_VALUE)
                .addContainerGap())
        );
    }// </editor-fold>//GEN-END:initComponents
    
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JTabbedPane jTabbedPane1;
    private com.rameses.rcp.control.XDataTable xDataTable2;
    private com.rameses.rcp.control.XFormPanel xFormPanel1;
    private com.rameses.rcp.control.XFormPanel xFormPanel2;
    private com.rameses.rcp.control.XFormPanel xFormPanel3;
    private com.rameses.rcp.control.XFormPanel xFormPanel4;
    private com.rameses.rcp.control.XLabel xLabel1;
    private com.rameses.rcp.control.XLabel xLabel10;
    private com.rameses.rcp.control.XLabel xLabel2;
    private com.rameses.rcp.control.XLabel xLabel3;
    private com.rameses.rcp.control.XLabel xLabel4;
    private com.rameses.rcp.control.XLabel xLabel5;
    private com.rameses.rcp.control.XLabel xLabel6;
    private com.rameses.rcp.control.XLabel xLabel7;
    private com.rameses.rcp.control.XLabel xLabel8;
    private com.rameses.rcp.control.XLabel xLabel9;
    // End of variables declaration//GEN-END:variables
    
}
