/*
 * NewBPApplicationInitPage.java
 *
 * Created on October 3, 2013, 7:41 PM
 */

package com.rameses.gov.etracs.bpls.ceo;

import com.rameses.osiris2.themes.FormPage;
import com.rameses.rcp.ui.annotations.StyleSheet;
import com.rameses.rcp.ui.annotations.Template;

/**
 *
 * @author  Elmo
 */
@Template(FormPage.class)
@StyleSheet
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
        xDataTable2 = new com.rameses.rcp.control.XDataTable();
        xFormPanel4 = new com.rameses.rcp.control.XFormPanel();
        xLabel4 = new com.rameses.rcp.control.XLabel();
        xLabel3 = new com.rameses.rcp.control.XLabel();
        xLabel15 = new com.rameses.rcp.control.XLabel();
        xLabel5 = new com.rameses.rcp.control.XLabel();
        xLabel9 = new com.rameses.rcp.control.XLabel();
        xLabel11 = new com.rameses.rcp.control.XLabel();
        xLabel10 = new com.rameses.rcp.control.XLabel();
        xLabel2 = new com.rameses.rcp.control.XLabel();
        xLabel6 = new com.rameses.rcp.control.XLabel();
        xLabel7 = new com.rameses.rcp.control.XLabel();
        xLabel12 = new com.rameses.rcp.control.XLabel();
        jLabel1 = new javax.swing.JLabel();
        xActionBar1 = new com.rameses.rcp.control.XActionBar();
        xDataTable4 = new com.rameses.rcp.control.XDataTable();
        xButton1 = new com.rameses.rcp.control.XButton();

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
                , new Object[]{"width", 250}
                , new Object[]{"minWidth", 250}
                , new Object[]{"maxWidth", 250}
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
                , new Object[]{"width", 150}
                , new Object[]{"minWidth", 150}
                , new Object[]{"maxWidth", 150}
                , new Object[]{"required", false}
                , new Object[]{"resizable", true}
                , new Object[]{"nullWhenEmpty", true}
                , new Object[]{"editable", false}
                , new Object[]{"alignment", "RIGHT"}
                , new Object[]{"textCase", com.rameses.rcp.constant.TextCase.UPPER}
                , new Object[]{"typeHandler", new com.rameses.rcp.common.TextColumnHandler()}
            })
        });
        xDataTable2.setHandler("infoModel");

        xFormPanel4.setCaptionWidth(100);
        xFormPanel4.setShowCaption(false);
        xLabel4.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(204, 204, 204)));
        xLabel4.setCaption("App No");
        xLabel4.setExpression("#{ entity.appno  } (#{entity.apptype})");
        xLabel4.setFont(new java.awt.Font("Tahoma", 1, 12));
        xLabel4.setPreferredSize(new java.awt.Dimension(0, 20));
        xFormPanel4.add(xLabel4);

        com.rameses.rcp.control.border.XLineBorder xLineBorder1 = new com.rameses.rcp.control.border.XLineBorder();
        xLineBorder1.setLineColor(new java.awt.Color(204, 204, 204));
        xLabel3.setBorder(xLineBorder1);
        xLabel3.setCaption("Date");
        xLabel3.setExpression("#{entity.dtfiled}");
        xLabel3.setPreferredSize(new java.awt.Dimension(0, 20));
        xFormPanel4.add(xLabel3);

        com.rameses.rcp.control.border.XLineBorder xLineBorder2 = new com.rameses.rcp.control.border.XLineBorder();
        xLineBorder2.setLineColor(new java.awt.Color(204, 204, 204));
        xLabel15.setBorder(xLineBorder2);
        xLabel15.setCaption("BIN");
        xLabel15.setExpression("#{entity.bin}");
        xLabel15.setPreferredSize(new java.awt.Dimension(0, 20));
        xFormPanel4.add(xLabel15);

        com.rameses.rcp.control.border.XLineBorder xLineBorder3 = new com.rameses.rcp.control.border.XLineBorder();
        xLineBorder3.setLineColor(new java.awt.Color(204, 204, 204));
        xLabel5.setBorder(xLineBorder3);
        xLabel5.setCaption("Applicable Year");
        xLabel5.setCaptionWidth(100);
        xLabel5.setExpression("#{entity.appyear}");
        xLabel5.setName("application.year");
        xLabel5.setPreferredSize(new java.awt.Dimension(0, 20));
        xFormPanel4.add(xLabel5);

        com.rameses.rcp.control.border.XLineBorder xLineBorder4 = new com.rameses.rcp.control.border.XLineBorder();
        xLineBorder4.setLineColor(new java.awt.Color(204, 204, 204));
        xLabel9.setBorder(xLineBorder4);
        xLabel9.setCaption("Bus. Org Type");
        xLabel9.setExpression("#{entity.orgtypename}");
        xLabel9.setPreferredSize(new java.awt.Dimension(0, 20));
        xFormPanel4.add(xLabel9);

        com.rameses.rcp.control.border.XLineBorder xLineBorder5 = new com.rameses.rcp.control.border.XLineBorder();
        xLineBorder5.setLineColor(new java.awt.Color(204, 204, 204));
        xLabel11.setBorder(xLineBorder5);
        xLabel11.setCaption("Office Type");
        xLabel11.setExpression("#{entity.officetype}");
        xLabel11.setPreferredSize(new java.awt.Dimension(0, 20));
        xFormPanel4.add(xLabel11);

        com.rameses.rcp.control.border.XLineBorder xLineBorder6 = new com.rameses.rcp.control.border.XLineBorder();
        xLineBorder6.setLineColor(new java.awt.Color(204, 204, 204));
        xLabel10.setBorder(xLineBorder6);
        xLabel10.setCaption("Barangay");
        xLabel10.setExpression("#{entity.barangay.name}");
        xLabel10.setName("application.info.taxpayeraddress");
        xLabel10.setPreferredSize(new java.awt.Dimension(0, 20));
        xFormPanel4.add(xLabel10);

        com.rameses.rcp.control.border.XLineBorder xLineBorder7 = new com.rameses.rcp.control.border.XLineBorder();
        xLineBorder7.setLineColor(new java.awt.Color(204, 204, 204));
        xLabel2.setBorder(xLineBorder7);
        xLabel2.setCaption("Owner");
        xLabel2.setExpression("#{entity.owner.name}");
        xLabel2.setPreferredSize(new java.awt.Dimension(0, 18));
        xFormPanel4.add(xLabel2);

        com.rameses.rcp.control.border.XLineBorder xLineBorder8 = new com.rameses.rcp.control.border.XLineBorder();
        xLineBorder8.setLineColor(new java.awt.Color(204, 204, 204));
        xLabel6.setBorder(xLineBorder8);
        xLabel6.setCaption("Trade Name");
        xLabel6.setExpression("#{entity.tradename}");
        xLabel6.setPreferredSize(new java.awt.Dimension(0, 18));
        xFormPanel4.add(xLabel6);

        com.rameses.rcp.control.border.XLineBorder xLineBorder9 = new com.rameses.rcp.control.border.XLineBorder();
        xLineBorder9.setLineColor(new java.awt.Color(204, 204, 204));
        xLabel7.setBorder(xLineBorder9);
        xLabel7.setCaption("Address");
        xLabel7.setExpression("#{entity.businessaddress}");
        xLabel7.setName("application.info.taxpayeraddress");
        xLabel7.setPreferredSize(new java.awt.Dimension(0, 18));
        xFormPanel4.add(xLabel7);

        com.rameses.rcp.control.border.XLineBorder xLineBorder10 = new com.rameses.rcp.control.border.XLineBorder();
        xLineBorder10.setLineColor(new java.awt.Color(204, 204, 204));
        xLabel12.setBorder(xLineBorder10);
        xLabel12.setCaption("Branch Name");
        xLabel12.setExpression("#{entity.branchname}");
        xLabel12.setName("entity.branchname");
        xLabel12.setPreferredSize(new java.awt.Dimension(0, 18));
        xFormPanel4.add(xLabel12);

        jLabel1.setFont(new java.awt.Font("Tahoma", 1, 11));
        jLabel1.setText("Requirements");

        xActionBar1.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        xActionBar1.setDynamic(true);
        xActionBar1.setName("infoActions");
        xActionBar1.setUseToolBar(false);

        xDataTable4.setColumns(new com.rameses.rcp.common.Column[]{
            new com.rameses.rcp.common.Column(new Object[]{
                new Object[]{"name", "title"}
                , new Object[]{"caption", "Title"}
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
                new Object[]{"name", "type"}
                , new Object[]{"caption", "Type"}
                , new Object[]{"width", 80}
                , new Object[]{"minWidth", 80}
                , new Object[]{"maxWidth", 80}
                , new Object[]{"required", false}
                , new Object[]{"resizable", true}
                , new Object[]{"nullWhenEmpty", true}
                , new Object[]{"editable", false}
                , new Object[]{"textCase", com.rameses.rcp.constant.TextCase.UPPER}
                , new Object[]{"typeHandler", new com.rameses.rcp.common.TextColumnHandler()}
            }),
            new com.rameses.rcp.common.Column(new Object[]{
                new Object[]{"name", "completed"}
                , new Object[]{"caption", "Completed"}
                , new Object[]{"width", 80}
                , new Object[]{"minWidth", 80}
                , new Object[]{"maxWidth", 80}
                , new Object[]{"required", false}
                , new Object[]{"resizable", true}
                , new Object[]{"nullWhenEmpty", true}
                , new Object[]{"editable", false}
                , new Object[]{"textCase", com.rameses.rcp.constant.TextCase.UPPER}
                , new Object[]{"typeHandler", new com.rameses.rcp.common.CheckBoxColumnHandler(java.lang.Integer.class, 1, 0)}
            }),
            new com.rameses.rcp.common.Column(new Object[]{
                new Object[]{"name", "remarks"}
                , new Object[]{"caption", "Remarks"}
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
                new Object[]{"name", "refid"}
                , new Object[]{"caption", "Refid"}
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
        xDataTable4.setHandler("requirementModel");
        xDataTable4.setName("selectedRequirement");

        xButton1.setName("editRequirement");
        xButton1.setText("Edit");

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(this);
        this.setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(xDataTable4, javax.swing.GroupLayout.PREFERRED_SIZE, 928, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(xFormPanel4, javax.swing.GroupLayout.PREFERRED_SIZE, 348, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jLabel1))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                            .addComponent(xDataTable2, javax.swing.GroupLayout.DEFAULT_SIZE, 562, Short.MAX_VALUE)
                            .addComponent(xActionBar1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)))
                    .addComponent(xButton1, javax.swing.GroupLayout.PREFERRED_SIZE, 64, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(12, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(xDataTable2, javax.swing.GroupLayout.PREFERRED_SIZE, 230, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(xActionBar1, 0, 24, Short.MAX_VALUE))
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(xFormPanel4, javax.swing.GroupLayout.PREFERRED_SIZE, 238, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(jLabel1)))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(xDataTable4, javax.swing.GroupLayout.PREFERRED_SIZE, 189, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(xButton1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(55, 55, 55))
        );
    }// </editor-fold>//GEN-END:initComponents
    
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JLabel jLabel1;
    private com.rameses.rcp.control.XActionBar xActionBar1;
    private com.rameses.rcp.control.XButton xButton1;
    private com.rameses.rcp.control.XDataTable xDataTable2;
    private com.rameses.rcp.control.XDataTable xDataTable4;
    private com.rameses.rcp.control.XFormPanel xFormPanel4;
    private com.rameses.rcp.control.XLabel xLabel10;
    private com.rameses.rcp.control.XLabel xLabel11;
    private com.rameses.rcp.control.XLabel xLabel12;
    private com.rameses.rcp.control.XLabel xLabel15;
    private com.rameses.rcp.control.XLabel xLabel2;
    private com.rameses.rcp.control.XLabel xLabel3;
    private com.rameses.rcp.control.XLabel xLabel4;
    private com.rameses.rcp.control.XLabel xLabel5;
    private com.rameses.rcp.control.XLabel xLabel6;
    private com.rameses.rcp.control.XLabel xLabel7;
    private com.rameses.rcp.control.XLabel xLabel9;
    // End of variables declaration//GEN-END:variables
    
}