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
public class ConsolidationPage extends javax.swing.JPanel {
    
    /** Creates new form SubdivisionPage */
    public ConsolidationPage() {
        initComponents();
        consolidatedTab.setMnemonicAt(0, 'l');
        consolidatedTab.setMnemonicAt(1, 'r');
    }
    
    /** This method is called from within the constructor to
     * initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is
     * always regenerated by the Form Editor.
     */
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        jPanel9 = new javax.swing.JPanel();
        jPanel8 = new javax.swing.JPanel();
        xFormPanel1 = new com.rameses.rcp.control.XFormPanel();
        xLabel5 = new com.rameses.rcp.control.XLabel();
        xLabel9 = new com.rameses.rcp.control.XLabel();
        xFormPanel2 = new com.rameses.rcp.control.XFormPanel();
        xLabel13 = new com.rameses.rcp.control.XLabel();
        xLabel7 = new com.rameses.rcp.control.XLabel();
        consolidatedTab = new javax.swing.JTabbedPane();
        jPanel4 = new javax.swing.JPanel();
        jPanel5 = new javax.swing.JPanel();
        formPanel16 = new com.rameses.rcp.util.FormPanel();
        xDecimalField1 = new com.rameses.rcp.control.XDecimalField();
        xDecimalField2 = new com.rameses.rcp.control.XDecimalField();
        xLabel1 = new com.rameses.rcp.control.XLabel();
        jPanel6 = new javax.swing.JPanel();
        xDataTable1 = new com.rameses.rcp.control.XDataTable();
        jPanel7 = new javax.swing.JPanel();
        xDataTable2 = new com.rameses.rcp.control.XDataTable();
        formPanel3 = new com.rameses.rcp.util.FormPanel();
        xLabel2 = new com.rameses.rcp.control.XLabel();
        xTextField4 = new com.rameses.rcp.control.XTextField();
        xComboBox2 = new com.rameses.rcp.control.XComboBox();
        xTextField3 = new com.rameses.rcp.control.XTextField();
        xDateField8 = new com.rameses.rcp.control.XDateField();
        xNumberField1 = new com.rameses.rcp.control.XNumberField();
        xComboBox1 = new com.rameses.rcp.control.XComboBox();
        formPanel4 = new com.rameses.rcp.util.FormPanel();
        xLookupField5 = new com.rameses.rcp.control.XLookupField();
        xTextField1 = new com.rameses.rcp.control.XTextField();
        xTextField2 = new com.rameses.rcp.control.XTextField();
        xTextField5 = new com.rameses.rcp.control.XTextField();
        xTextField6 = new com.rameses.rcp.control.XTextField();
        jScrollPane1 = new javax.swing.JScrollPane();
        xTextArea1 = new com.rameses.rcp.control.XTextArea();
        xFormPanel11 = new com.rameses.rcp.control.XFormPanel();
        xLookupField1 = new com.rameses.rcp.control.XLookupField();
        xDateField3 = new com.rameses.rcp.control.XDateField();
        xLookupField2 = new com.rameses.rcp.control.XLookupField();
        xDateField4 = new com.rameses.rcp.control.XDateField();
        xLookupField3 = new com.rameses.rcp.control.XLookupField();
        xDateField5 = new com.rameses.rcp.control.XDateField();
        xLookupField4 = new com.rameses.rcp.control.XLookupField();
        xDateField6 = new com.rameses.rcp.control.XDateField();

        jPanel9.setLayout(new java.awt.BorderLayout());

        jPanel9.setPreferredSize(new java.awt.Dimension(255, 80));
        com.rameses.rcp.control.border.XTitledBorder xTitledBorder1 = new com.rameses.rcp.control.border.XTitledBorder();
        xTitledBorder1.setTitle("New Consolidation RPU Information");
        jPanel8.setBorder(xTitledBorder1);
        jPanel8.setPreferredSize(new java.awt.Dimension(0, 75));

        xLabel5.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(153, 153, 153)));
        xLabel5.setCaption("Total Area (ha)");
        xLabel5.setCaptionWidth(110);
        xLabel5.setExpression("#{consolidation.newrpu.totalareaha}");
        xLabel5.setFont(new java.awt.Font("Tahoma", 1, 11));
        xLabel5.setPreferredSize(new java.awt.Dimension(0, 20));
        xFormPanel1.add(xLabel5);

        xLabel9.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(153, 153, 153)));
        xLabel9.setCaption("Total Area (sqm)");
        xLabel9.setCaptionWidth(110);
        xLabel9.setExpression("#{consolidation.newrpu.totalareasqm}");
        xLabel9.setFont(new java.awt.Font("Tahoma", 1, 11));
        xLabel9.setPreferredSize(new java.awt.Dimension(0, 20));
        xFormPanel1.add(xLabel9);

        xLabel13.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(153, 153, 153)));
        xLabel13.setCaption("New RY");
        xLabel13.setCaptionWidth(70);
        xLabel13.setExpression("#{consolidation.ry}");
        xLabel13.setFont(new java.awt.Font("Tahoma", 1, 11));
        xLabel13.setPreferredSize(new java.awt.Dimension(0, 20));
        xFormPanel2.add(xLabel13);

        xLabel7.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(153, 153, 153)));
        xLabel7.setCaption("New PIN");
        xLabel7.setCaptionWidth(70);
        xLabel7.setExpression("#{consolidation.newrpu.fullpin}");
        xLabel7.setFont(new java.awt.Font("Tahoma", 1, 11));
        xLabel7.setPreferredSize(new java.awt.Dimension(0, 20));
        xFormPanel2.add(xLabel7);

        org.jdesktop.layout.GroupLayout jPanel8Layout = new org.jdesktop.layout.GroupLayout(jPanel8);
        jPanel8.setLayout(jPanel8Layout);
        jPanel8Layout.setHorizontalGroup(
            jPanel8Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel8Layout.createSequentialGroup()
                .addContainerGap()
                .add(xFormPanel2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 330, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(xFormPanel1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 294, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(138, Short.MAX_VALUE))
        );
        jPanel8Layout.setVerticalGroup(
            jPanel8Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel8Layout.createSequentialGroup()
                .add(xFormPanel2, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 47, Short.MAX_VALUE)
                .add(41, 41, 41))
            .add(jPanel8Layout.createSequentialGroup()
                .add(xFormPanel1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addContainerGap())
        );
        jPanel9.add(jPanel8, java.awt.BorderLayout.NORTH);

        jPanel5.setLayout(new java.awt.BorderLayout());

        formPanel16.setCaptionBorder(javax.swing.BorderFactory.createEmptyBorder(1, 1, 1, 1));
        formPanel16.setOrientation(com.rameses.rcp.constant.UIConstants.HORIZONTAL);
        formPanel16.setPadding(new java.awt.Insets(0, 3, 3, 13));
        formPanel16.setShowCaption(false);
        xDecimalField1.setCaption("Total Area (sqm)");
        xDecimalField1.setCaptionWidth(100);
        xDecimalField1.setDepends(new String[] {"selectedLand"});
        xDecimalField1.setEnabled(false);
        xDecimalField1.setFont(new java.awt.Font("Tahoma", 1, 11));
        xDecimalField1.setName("totalareasqm");
        xDecimalField1.setPreferredSize(new java.awt.Dimension(120, 20));
        formPanel16.add(xDecimalField1);

        xDecimalField2.setCaption(" (ha)");
        xDecimalField2.setCaptionWidth(45);
        xDecimalField2.setCellPadding(new java.awt.Insets(0, 10, 0, 0));
        xDecimalField2.setDepends(new String[] {"selectedLand"});
        xDecimalField2.setEnabled(false);
        xDecimalField2.setFont(new java.awt.Font("Tahoma", 1, 11));
        xDecimalField2.setName("totalareaha");
        xDecimalField2.setPattern("#,##0.0000");
        xDecimalField2.setPreferredSize(new java.awt.Dimension(120, 20));
        formPanel16.add(xDecimalField2);

        jPanel5.add(formPanel16, java.awt.BorderLayout.EAST);

        xLabel1.setFont(new java.awt.Font("Arial", 1, 11));
        xLabel1.setForeground(new java.awt.Color(153, 0, 0));
        xLabel1.setName("errorMsg");
        jPanel5.add(xLabel1, java.awt.BorderLayout.CENTER);

        xDataTable1.setColumns(new com.rameses.rcp.common.Column[]{
            new com.rameses.rcp.common.Column(new Object[]{
                new Object[]{"name", null}
                , new Object[]{"caption", "TD No."}
                , new Object[]{"width", 150}
                , new Object[]{"minWidth", 0}
                , new Object[]{"maxWidth", 0}
                , new Object[]{"required", false}
                , new Object[]{"resizable", true}
                , new Object[]{"nullWhenEmpty", true}
                , new Object[]{"editable", true}
                , new Object[]{"editableWhen", "#{item.objid == null}"}
                , new Object[]{"textCase", com.rameses.rcp.constant.TextCase.UPPER}
                , new Object[]{"typeHandler", new com.rameses.rcp.common.LookupColumnHandler("#{item.faas.tdno}", "lookupFaas")}
            }),
            new com.rameses.rcp.common.Column(new Object[]{
                new Object[]{"name", "rpu.fullpin"}
                , new Object[]{"caption", "PIN No."}
                , new Object[]{"width", 180}
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
                new Object[]{"name", "rpu.totalareasqm"}
                , new Object[]{"caption", "Area (sqm)"}
                , new Object[]{"width", 120}
                , new Object[]{"minWidth", 0}
                , new Object[]{"maxWidth", 0}
                , new Object[]{"required", false}
                , new Object[]{"resizable", true}
                , new Object[]{"nullWhenEmpty", true}
                , new Object[]{"editable", false}
                , new Object[]{"textCase", com.rameses.rcp.constant.TextCase.UPPER}
                , new Object[]{"typeHandler", new com.rameses.rcp.common.DecimalColumnHandler("#,##0.00", -1.0, -1.0, false)}
            }),
            new com.rameses.rcp.common.Column(new Object[]{
                new Object[]{"name", "rpu.totalareaha"}
                , new Object[]{"caption", "Area (ha)"}
                , new Object[]{"width", 120}
                , new Object[]{"minWidth", 0}
                , new Object[]{"maxWidth", 0}
                , new Object[]{"required", false}
                , new Object[]{"resizable", true}
                , new Object[]{"nullWhenEmpty", true}
                , new Object[]{"editable", false}
                , new Object[]{"textCase", com.rameses.rcp.constant.TextCase.UPPER}
                , new Object[]{"typeHandler", new com.rameses.rcp.common.DecimalColumnHandler("#,##0.0000", -1.0, -1.0, false)}
            })
        });
        xDataTable1.setHandler("landListHandler");
        xDataTable1.setImmediate(true);
        xDataTable1.setName("selectedLand");
        xDataTable1.setPreferredSize(new java.awt.Dimension(0, 0));

        org.jdesktop.layout.GroupLayout jPanel6Layout = new org.jdesktop.layout.GroupLayout(jPanel6);
        jPanel6.setLayout(jPanel6Layout);
        jPanel6Layout.setHorizontalGroup(
            jPanel6Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel6Layout.createSequentialGroup()
                .addContainerGap()
                .add(xDataTable1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 757, Short.MAX_VALUE)
                .addContainerGap())
        );
        jPanel6Layout.setVerticalGroup(
            jPanel6Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(org.jdesktop.layout.GroupLayout.TRAILING, jPanel6Layout.createSequentialGroup()
                .addContainerGap()
                .add(xDataTable1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 214, Short.MAX_VALUE))
        );

        org.jdesktop.layout.GroupLayout jPanel4Layout = new org.jdesktop.layout.GroupLayout(jPanel4);
        jPanel4.setLayout(jPanel4Layout);
        jPanel4Layout.setHorizontalGroup(
            jPanel4Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel5, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 777, Short.MAX_VALUE)
            .add(jPanel6, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
        jPanel4Layout.setVerticalGroup(
            jPanel4Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(org.jdesktop.layout.GroupLayout.TRAILING, jPanel4Layout.createSequentialGroup()
                .add(jPanel6, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel5, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
        );
        consolidatedTab.addTab("Lands to Consolidate", jPanel4);

        xDataTable2.setColumns(new com.rameses.rcp.common.Column[]{
            new com.rameses.rcp.common.Column(new Object[]{
                new Object[]{"name", "rputype"}
                , new Object[]{"caption", "Type"}
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
                new Object[]{"name", "prevtdno"}
                , new Object[]{"caption", "TD No."}
                , new Object[]{"width", 120}
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
                new Object[]{"name", "prevfullpin"}
                , new Object[]{"caption", "PIN "}
                , new Object[]{"width", 150}
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
                new Object[]{"name", "prevsuffix"}
                , new Object[]{"caption", "Suffix"}
                , new Object[]{"width", 80}
                , new Object[]{"minWidth", 0}
                , new Object[]{"maxWidth", 0}
                , new Object[]{"required", false}
                , new Object[]{"resizable", true}
                , new Object[]{"nullWhenEmpty", true}
                , new Object[]{"editable", false}
                , new Object[]{"textCase", com.rameses.rcp.constant.TextCase.UPPER}
                , new Object[]{"typeHandler", new com.rameses.rcp.common.IntegerColumnHandler("0000", -1, -1)}
            }),
            new com.rameses.rcp.common.Column(new Object[]{
                new Object[]{"name", "newtdno"}
                , new Object[]{"caption", "New TD No.*"}
                , new Object[]{"width", 150}
                , new Object[]{"minWidth", 0}
                , new Object[]{"maxWidth", 0}
                , new Object[]{"required", false}
                , new Object[]{"resizable", true}
                , new Object[]{"nullWhenEmpty", true}
                , new Object[]{"editable", true}
                , new Object[]{"editableWhen", null}
                , new Object[]{"textCase", com.rameses.rcp.constant.TextCase.UPPER}
                , new Object[]{"typeHandler", new com.rameses.rcp.common.TextColumnHandler()}
            }),
            new com.rameses.rcp.common.Column(new Object[]{
                new Object[]{"name", "newsuffix"}
                , new Object[]{"caption", "New Suffix*"}
                , new Object[]{"width", 100}
                , new Object[]{"minWidth", 0}
                , new Object[]{"maxWidth", 0}
                , new Object[]{"required", false}
                , new Object[]{"resizable", true}
                , new Object[]{"nullWhenEmpty", true}
                , new Object[]{"editable", true}
                , new Object[]{"editableWhen", null}
                , new Object[]{"textCase", com.rameses.rcp.constant.TextCase.UPPER}
                , new Object[]{"typeHandler", new com.rameses.rcp.common.IntegerColumnHandler("0000", -1, -1)}
            }),
            new com.rameses.rcp.common.Column(new Object[]{
                new Object[]{"name", "memoranda"}
                , new Object[]{"caption", "Memoranda*"}
                , new Object[]{"width", 100}
                , new Object[]{"minWidth", 0}
                , new Object[]{"maxWidth", 0}
                , new Object[]{"required", false}
                , new Object[]{"resizable", true}
                , new Object[]{"nullWhenEmpty", true}
                , new Object[]{"editable", true}
                , new Object[]{"editableWhen", null}
                , new Object[]{"textCase", com.rameses.rcp.constant.TextCase.UPPER}
                , new Object[]{"typeHandler", new com.rameses.rcp.common.TextColumnHandler()}
            })
        });
        xDataTable2.setHandler("affectedrpuListHandler");
        xDataTable2.setImmediate(true);
        xDataTable2.setName("selectedAffectedRpu");
        xDataTable2.setPreferredSize(new java.awt.Dimension(0, 0));

        org.jdesktop.layout.GroupLayout jPanel7Layout = new org.jdesktop.layout.GroupLayout(jPanel7);
        jPanel7.setLayout(jPanel7Layout);
        jPanel7Layout.setHorizontalGroup(
            jPanel7Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel7Layout.createSequentialGroup()
                .addContainerGap()
                .add(xDataTable2, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 757, Short.MAX_VALUE)
                .addContainerGap())
        );
        jPanel7Layout.setVerticalGroup(
            jPanel7Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel7Layout.createSequentialGroup()
                .addContainerGap()
                .add(xDataTable2, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 242, Short.MAX_VALUE)
                .addContainerGap())
        );
        consolidatedTab.addTab("Real Property Units Affected by the Consolidation", jPanel7);

        jPanel9.add(consolidatedTab, java.awt.BorderLayout.CENTER);

        com.rameses.rcp.control.border.XTitledBorder xTitledBorder2 = new com.rameses.rcp.control.border.XTitledBorder();
        xTitledBorder2.setTitle("Consolidation Information");
        formPanel3.setBorder(xTitledBorder2);
        formPanel3.setCaptionWidth(95);
        xLabel2.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(153, 153, 153)));
        xLabel2.setCaption("State");
        xLabel2.setCaptionWidth(110);
        xLabel2.setExpression("#{consolidation.state}");
        xLabel2.setFont(new java.awt.Font("Arial", 1, 14));
        xLabel2.setForeground(new java.awt.Color(204, 51, 0));
        xLabel2.setPreferredSize(new java.awt.Dimension(0, 22));
        formPanel3.add(xLabel2);

        xTextField4.setCaption("TD No.");
        xTextField4.setCaptionWidth(110);
        xTextField4.setName("consolidation.newtdno");
        xTextField4.setPreferredSize(new java.awt.Dimension(0, 20));
        formPanel3.add(xTextField4);

        xComboBox2.setCaption("Title Type");
        xComboBox2.setCaptionWidth(110);
        xComboBox2.setItems("titleTypes");
        xComboBox2.setName("consolidation.newtitletype");
        xComboBox2.setPreferredSize(new java.awt.Dimension(0, 22));
        formPanel3.add(xComboBox2);

        xTextField3.setCaption("Title No.");
        xTextField3.setCaptionWidth(110);
        xTextField3.setDepends(new String[] {"consolidation.newtitletype"});
        xTextField3.setName("consolidation.newtitleno");
        xTextField3.setPreferredSize(new java.awt.Dimension(0, 20));
        formPanel3.add(xTextField3);

        xDateField8.setCaption("Date");
        xDateField8.setCaptionWidth(110);
        xDateField8.setDepends(new String[] {"consolidation.newtitletype"});
        xDateField8.setName("consolidation.newtitledate");
        xDateField8.setPreferredSize(new java.awt.Dimension(0, 20));
        formPanel3.add(xDateField8);

        xNumberField1.setCaption("Effectivity Year");
        xNumberField1.setCaptionWidth(110);
        xNumberField1.setFieldType(int.class);
        xNumberField1.setName("consolidation.effectivityyear");
        xNumberField1.setPreferredSize(new java.awt.Dimension(0, 20));
        xNumberField1.setRequired(true);
        formPanel3.add(xNumberField1);

        xComboBox1.setAllowNull(false);
        xComboBox1.setCaption("Effectivity Qtr");
        xComboBox1.setCaptionWidth(110);
        xComboBox1.setItems("quarters");
        xComboBox1.setName("consolidation.effectivityqtr");
        xComboBox1.setPreferredSize(new java.awt.Dimension(0, 22));
        xComboBox1.setRequired(true);
        formPanel3.add(xComboBox1);

        com.rameses.rcp.control.border.XTitledBorder xTitledBorder3 = new com.rameses.rcp.control.border.XTitledBorder();
        xTitledBorder3.setTitle("Ownership Information");
        formPanel4.setBorder(xTitledBorder3);
        formPanel4.setCaptionWidth(110);
        formPanel4.setPadding(new java.awt.Insets(0, 5, 5, 5));
        xLookupField5.setCaption("Taxpayer");
        xLookupField5.setCaptionWidth(125);
        xLookupField5.setExpression("#{consolidation.taxpayer.name}");
        xLookupField5.setHandler("lookupTaxpayer");
        xLookupField5.setName("consolidation.taxpayer");
        xLookupField5.setPreferredSize(new java.awt.Dimension(0, 20));
        xLookupField5.setRequired(true);
        formPanel4.add(xLookupField5);

        xTextField1.setCaption("Owner Name");
        xTextField1.setCaptionWidth(125);
        xTextField1.setDepends(new String[] {"consolidation.taxpayer"});
        xTextField1.setName("consolidation.owner.name");
        xTextField1.setPreferredSize(new java.awt.Dimension(0, 20));
        xTextField1.setRequired(true);
        formPanel4.add(xTextField1);

        xTextField2.setCaption("Owner Address");
        xTextField2.setCaptionWidth(125);
        xTextField2.setDepends(new String[] {"consolidation.taxpayer"});
        xTextField2.setName("consolidation.owner.address");
        xTextField2.setPreferredSize(new java.awt.Dimension(0, 20));
        xTextField2.setRequired(true);
        formPanel4.add(xTextField2);

        xTextField5.setCaption("Administrator");
        xTextField5.setCaptionWidth(125);
        xTextField5.setName("consolidation.administrator.name");
        xTextField5.setPreferredSize(new java.awt.Dimension(0, 20));
        formPanel4.add(xTextField5);

        xTextField6.setCaption("Administrator Address");
        xTextField6.setCaptionWidth(125);
        xTextField6.setName("consolidation.administrator.address");
        xTextField6.setPreferredSize(new java.awt.Dimension(0, 20));
        formPanel4.add(xTextField6);

        jScrollPane1.setPreferredSize(new java.awt.Dimension(0, 70));
        xTextArea1.setLineWrap(true);
        xTextArea1.setWrapStyleWord(true);
        xTextArea1.setCaption("Memoranda");
        xTextArea1.setCaptionWidth(125);
        xTextArea1.setName("consolidation.memoranda");
        xTextArea1.setPreferredSize(new java.awt.Dimension(164, 90));
        xTextArea1.setRequired(true);
        xTextArea1.setTextCase(com.rameses.rcp.constant.TextCase.UPPER);
        jScrollPane1.setViewportView(xTextArea1);

        formPanel4.add(jScrollPane1);

        com.rameses.rcp.control.border.XTitledBorder xTitledBorder4 = new com.rameses.rcp.control.border.XTitledBorder();
        xTitledBorder4.setTitle("Signatories");
        xFormPanel11.setBorder(xTitledBorder4);
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

        org.jdesktop.layout.GroupLayout layout = new org.jdesktop.layout.GroupLayout(this);
        this.setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(org.jdesktop.layout.GroupLayout.TRAILING, layout.createSequentialGroup()
                .addContainerGap()
                .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING)
                    .add(org.jdesktop.layout.GroupLayout.LEADING, jPanel9, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 782, Short.MAX_VALUE)
                    .add(layout.createSequentialGroup()
                        .add(formPanel3, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 270, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(formPanel4, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 161, Short.MAX_VALUE)
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(xFormPanel11, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 339, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(layout.createSequentialGroup()
                .addContainerGap()
                .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING, false)
                    .add(formPanel3, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .add(xFormPanel11, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .add(formPanel4, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 217, Short.MAX_VALUE))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel9, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 367, Short.MAX_VALUE)
                .addContainerGap())
        );
    }// </editor-fold>//GEN-END:initComponents
    
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JTabbedPane consolidatedTab;
    private com.rameses.rcp.util.FormPanel formPanel16;
    private com.rameses.rcp.util.FormPanel formPanel3;
    private com.rameses.rcp.util.FormPanel formPanel4;
    private javax.swing.JPanel jPanel4;
    private javax.swing.JPanel jPanel5;
    private javax.swing.JPanel jPanel6;
    private javax.swing.JPanel jPanel7;
    private javax.swing.JPanel jPanel8;
    private javax.swing.JPanel jPanel9;
    private javax.swing.JScrollPane jScrollPane1;
    private com.rameses.rcp.control.XComboBox xComboBox1;
    private com.rameses.rcp.control.XComboBox xComboBox2;
    private com.rameses.rcp.control.XDataTable xDataTable1;
    private com.rameses.rcp.control.XDataTable xDataTable2;
    private com.rameses.rcp.control.XDateField xDateField3;
    private com.rameses.rcp.control.XDateField xDateField4;
    private com.rameses.rcp.control.XDateField xDateField5;
    private com.rameses.rcp.control.XDateField xDateField6;
    private com.rameses.rcp.control.XDateField xDateField8;
    private com.rameses.rcp.control.XDecimalField xDecimalField1;
    private com.rameses.rcp.control.XDecimalField xDecimalField2;
    private com.rameses.rcp.control.XFormPanel xFormPanel1;
    private com.rameses.rcp.control.XFormPanel xFormPanel11;
    private com.rameses.rcp.control.XFormPanel xFormPanel2;
    private com.rameses.rcp.control.XLabel xLabel1;
    private com.rameses.rcp.control.XLabel xLabel13;
    private com.rameses.rcp.control.XLabel xLabel2;
    private com.rameses.rcp.control.XLabel xLabel5;
    private com.rameses.rcp.control.XLabel xLabel7;
    private com.rameses.rcp.control.XLabel xLabel9;
    private com.rameses.rcp.control.XLookupField xLookupField1;
    private com.rameses.rcp.control.XLookupField xLookupField2;
    private com.rameses.rcp.control.XLookupField xLookupField3;
    private com.rameses.rcp.control.XLookupField xLookupField4;
    private com.rameses.rcp.control.XLookupField xLookupField5;
    private com.rameses.rcp.control.XNumberField xNumberField1;
    private com.rameses.rcp.control.XTextArea xTextArea1;
    private com.rameses.rcp.control.XTextField xTextField1;
    private com.rameses.rcp.control.XTextField xTextField2;
    private com.rameses.rcp.control.XTextField xTextField3;
    private com.rameses.rcp.control.XTextField xTextField4;
    private com.rameses.rcp.control.XTextField xTextField5;
    private com.rameses.rcp.control.XTextField xTextField6;
    // End of variables declaration//GEN-END:variables
    
}
