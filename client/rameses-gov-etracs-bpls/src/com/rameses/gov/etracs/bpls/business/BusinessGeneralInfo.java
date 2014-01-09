/*
 * BusinessGeneralInfo.java
 *
 * Created on December 8, 2013, 12:00 PM
 */

package com.rameses.gov.etracs.bpls.business;

import com.rameses.osiris2.themes.FormPage;
import com.rameses.rcp.ui.annotations.Template;

/**
 *
 * @author  Elmo
 */
@Template(FormPage.class)
public class BusinessGeneralInfo extends javax.swing.JPanel {
    
    /** Creates new form BusinessGeneralInfo */
    public BusinessGeneralInfo() {
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
        xLabel10 = new com.rameses.rcp.control.XLabel();
        xLabel4 = new com.rameses.rcp.control.XLabel();
        xLabel3 = new com.rameses.rcp.control.XLabel();
        xLabel5 = new com.rameses.rcp.control.XLabel();
        xLabel2 = new com.rameses.rcp.control.XLabel();
        xLabel7 = new com.rameses.rcp.control.XLabel();
        xLabel6 = new com.rameses.rcp.control.XLabel();
        xLabel1 = new com.rameses.rcp.control.XLabel();
        xLabel8 = new com.rameses.rcp.control.XLabel();
        xLabel9 = new com.rameses.rcp.control.XLabel();
        xLabel11 = new com.rameses.rcp.control.XLabel();
        jPanel2 = new javax.swing.JPanel();
        xFormPanel2 = new com.rameses.rcp.control.XFormPanel();
        xLabel12 = new com.rameses.rcp.control.XLabel();
        xLabel13 = new com.rameses.rcp.control.XLabel();
        xLabel14 = new com.rameses.rcp.control.XLabel();
        xDataTable1 = new com.rameses.rcp.control.XDataTable();
        jLabel1 = new javax.swing.JLabel();

        com.rameses.rcp.control.border.XTitledBorder xTitledBorder1 = new com.rameses.rcp.control.border.XTitledBorder();
        xTitledBorder1.setTitle("General Information");
        jPanel1.setBorder(xTitledBorder1);

        xFormPanel1.setCaptionWidth(150);
        xLabel10.setCaption("BIN");
        xLabel10.setExpression("#{entity.bin}");
        xLabel10.setPreferredSize(new java.awt.Dimension(0, 16));
        xFormPanel1.add(xLabel10);

        xLabel4.setCaption("Business Name");
        xLabel4.setExpression("#{entity.businessname}");
        xLabel4.setPreferredSize(new java.awt.Dimension(0, 16));
        xFormPanel1.add(xLabel4);

        xLabel3.setCaption("Business Address");
        xLabel3.setExpression("#{entity.businessaddress}");
        xLabel3.setPreferredSize(new java.awt.Dimension(0, 16));
        xFormPanel1.add(xLabel3);

        xLabel5.setCaption("Trade Name");
        xLabel5.setExpression("#{entity.tradename}");
        xLabel5.setPreferredSize(new java.awt.Dimension(0, 16));
        xFormPanel1.add(xLabel5);

        xLabel2.setCaption("Org Type");
        xLabel2.setExpression("#{entity.orgtypename}");
        xLabel2.setPreferredSize(new java.awt.Dimension(0, 16));
        xFormPanel1.add(xLabel2);

        xLabel7.setCaption("Owner Name");
        xLabel7.setExpression("#{entity.owner.name}");
        xLabel7.setPreferredSize(new java.awt.Dimension(0, 16));
        xFormPanel1.add(xLabel7);

        xLabel6.setCaption("Owner Address");
        xLabel6.setExpression("#{entity.owner.address}");
        xLabel6.setPreferredSize(new java.awt.Dimension(0, 16));
        xFormPanel1.add(xLabel6);

        xLabel1.setCaption("Barangay");
        xLabel1.setExpression("#{entity.barangay.name}");
        xLabel1.setPreferredSize(new java.awt.Dimension(0, 16));
        xFormPanel1.add(xLabel1);

        xLabel8.setCaption("Active Year");
        xLabel8.setExpression("#{entity.activeyear}");
        xLabel8.setPreferredSize(new java.awt.Dimension(0, 16));
        xFormPanel1.add(xLabel8);

        xLabel9.setCaption("PIN");
        xLabel9.setExpression("#{entity.pin}");
        xLabel9.setPreferredSize(new java.awt.Dimension(0, 16));
        xFormPanel1.add(xLabel9);

        xLabel11.setCaption("Status");
        xLabel11.setExpression("#{entity.state}");
        xLabel11.setPreferredSize(new java.awt.Dimension(0, 16));
        xFormPanel1.add(xLabel11);

        com.rameses.rcp.control.border.XTitledBorder xTitledBorder2 = new com.rameses.rcp.control.border.XTitledBorder();
        xTitledBorder2.setTitle("Business Permit");
        jPanel2.setBorder(xTitledBorder2);

        xFormPanel2.setCaptionWidth(150);
        xLabel12.setCaption("Permit No");
        xLabel12.setExpression("#{entity.permit.permitno}");
        xLabel12.setPreferredSize(new java.awt.Dimension(0, 16));
        xLabel12.setVisibleWhen("#{entity.permit?.objid!=null}");
        xFormPanel2.add(xLabel12);

        xLabel13.setCaption("Expiry Date");
        xLabel13.setExpression("#{entity.permit.expirydate}");
        xLabel13.setPreferredSize(new java.awt.Dimension(0, 16));
        xLabel13.setVisibleWhen("#{entity.permit?.objid!=null}");
        xFormPanel2.add(xLabel13);

        xLabel14.setCaption("");
        xLabel14.setExpression("No permit Issued yet");
        xLabel14.setFont(new java.awt.Font("Tahoma", 1, 11));
        xLabel14.setVisibleWhen("#{entity.permit?.objid == null}");
        xFormPanel2.add(xLabel14);

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(xFormPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, 373, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(24, Short.MAX_VALUE))
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(xFormPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, 49, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(19, Short.MAX_VALUE))
        );

        xDataTable1.setColumns(new com.rameses.rcp.common.Column[]{
            new com.rameses.rcp.common.Column(new Object[]{
                new Object[]{"name", "name"}
                , new Object[]{"caption", "Line of Business"}
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
                new Object[]{"name", "assessmenttype"}
                , new Object[]{"caption", "Assessment Type"}
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
        xDataTable1.setHandler("lobModel");
        xDataTable1.setName("selectedLob");

        jLabel1.setFont(new java.awt.Font("Tahoma", 1, 11));
        jLabel1.setText("Line of Business");

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addComponent(xFormPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, 466, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(15, 15, 15)
                        .addComponent(jPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                        .addComponent(jLabel1, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(xDataTable1, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, 448, Short.MAX_VALUE)))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGap(11, 11, 11)
                        .addComponent(xFormPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, 212, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jLabel1)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(xDataTable1, javax.swing.GroupLayout.PREFERRED_SIZE, 130, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(this);
        this.setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(39, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(123, Short.MAX_VALUE))
        );
    }// </editor-fold>//GEN-END:initComponents
    
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JLabel jLabel1;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private com.rameses.rcp.control.XDataTable xDataTable1;
    private com.rameses.rcp.control.XFormPanel xFormPanel1;
    private com.rameses.rcp.control.XFormPanel xFormPanel2;
    private com.rameses.rcp.control.XLabel xLabel1;
    private com.rameses.rcp.control.XLabel xLabel10;
    private com.rameses.rcp.control.XLabel xLabel11;
    private com.rameses.rcp.control.XLabel xLabel12;
    private com.rameses.rcp.control.XLabel xLabel13;
    private com.rameses.rcp.control.XLabel xLabel14;
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