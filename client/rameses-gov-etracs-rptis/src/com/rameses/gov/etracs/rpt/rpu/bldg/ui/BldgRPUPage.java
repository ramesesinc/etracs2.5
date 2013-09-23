/*
 * LandRPUPage.java
 *
 * Created on June 25, 2011, 1:45 PM
 */

package com.rameses.gov.etracs.rpt.rpu.bldg.ui;

import com.rameses.gov.etracs.rpt.rpu.ui.RPUPage;
import com.rameses.rcp.ui.annotations.StyleSheet;
import com.rameses.rcp.ui.annotations.Template;

@Template(RPUPage.class)
@StyleSheet
public class BldgRPUPage extends javax.swing.JPanel {
    
    /** Creates new form LandRPUPage */
    public BldgRPUPage() {
        initComponents();
    }
    
    /** This method is called from within the constructor to
     * initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is
     * always regenerated by the Form Editor.
     */
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        jPanel8 = new javax.swing.JPanel();
        jTabbedPane1 = new javax.swing.JTabbedPane();
        jPanel6 = new javax.swing.JPanel();
        jPanel4 = new javax.swing.JPanel();
        jPanel3 = new javax.swing.JPanel();
        formPanel1 = new com.rameses.rcp.util.FormPanel();
        xLookupField1 = new com.rameses.rcp.control.XLookupField();
        xLookupField2 = new com.rameses.rcp.control.XLookupField();
        xDecimalField1 = new com.rameses.rcp.control.XDecimalField();
        xComboBox3 = new com.rameses.rcp.control.XComboBox();
        xIntegerField2 = new com.rameses.rcp.control.XIntegerField();
        formPanel12 = new com.rameses.rcp.util.FormPanel();
        xDateField5 = new com.rameses.rcp.control.XDateField();
        xDateField1 = new com.rameses.rcp.control.XDateField();
        xIntegerField1 = new com.rameses.rcp.control.XIntegerField();
        xNumberField12 = new com.rameses.rcp.control.XNumberField();
        xNumberField13 = new com.rameses.rcp.control.XNumberField();
        jPanel7 = new javax.swing.JPanel();
        xButton1 = new com.rameses.rcp.control.XButton();
        formPanel3 = new com.rameses.rcp.util.FormPanel();
        xNumberField15 = new com.rameses.rcp.control.XNumberField();
        jPanel5 = new javax.swing.JPanel();
        xDataTable2 = new com.rameses.rcp.control.XDataTable();
        formPanel2 = new com.rameses.rcp.util.FormPanel();
        xComboBox4 = new com.rameses.rcp.control.XComboBox();
        jPanel1 = new javax.swing.JPanel();
        xDataTable3 = new com.rameses.rcp.control.XDataTable();
        jPanel2 = new javax.swing.JPanel();
        formPanel4 = new com.rameses.rcp.util.FormPanel();
        xTextField7 = new com.rameses.rcp.control.XTextField();
        xTextField4 = new com.rameses.rcp.control.XTextField();
        xTextField5 = new com.rameses.rcp.control.XTextField();
        xDateField4 = new com.rameses.rcp.control.XDateField();
        xTextField6 = new com.rameses.rcp.control.XTextField();
        xSeparator2 = new com.rameses.rcp.control.XSeparator();
        xCheckBox1 = new com.rameses.rcp.control.XCheckBox();
        formPanel14 = new com.rameses.rcp.util.FormPanel();
        xNumberField5 = new com.rameses.rcp.control.XNumberField();
        xCheckBox2 = new com.rameses.rcp.control.XCheckBox();
        xSeparator3 = new com.rameses.rcp.control.XSeparator();
        jScrollPane1 = new javax.swing.JScrollPane();
        xTextArea1 = new com.rameses.rcp.control.XTextArea();

        setLayout(new java.awt.BorderLayout());

        setPreferredSize(new java.awt.Dimension(900, 600));
        jPanel4.setLayout(new java.awt.BorderLayout());

        com.rameses.rcp.control.border.XTitledBorder xTitledBorder1 = new com.rameses.rcp.control.border.XTitledBorder();
        xTitledBorder1.setTitle("Building Assessment");
        jPanel4.setBorder(xTitledBorder1);
        jPanel3.setPreferredSize(new java.awt.Dimension(743, 124));

        xLookupField1.setCaption("Building Type");
        xLookupField1.setCaptionWidth(125);
        xLookupField1.setExpression("#{rpu.bldgtype.code}");
        xLookupField1.setHandler("lookupBldgType");
        xLookupField1.setIndex(-10);
        xLookupField1.setName("bldgtype");
        xLookupField1.setPreferredSize(new java.awt.Dimension(80, 20));
        xLookupField1.setRequired(true);
        formPanel1.add(xLookupField1);

        xLookupField2.setCaption("Kind of Building");
        xLookupField2.setCaptionWidth(125);
        xLookupField2.setExpression("#{rpu.bldgkindbucc.bldgkind.code}");
        xLookupField2.setHandler("lookupBldgKindBucc");
        xLookupField2.setIndex(-9);
        xLookupField2.setName("bldgkindbucc");
        xLookupField2.setPreferredSize(new java.awt.Dimension(80, 20));
        xLookupField2.setRequired(true);
        formPanel1.add(xLookupField2);

        xDecimalField1.setCaption("Base Value");
        xDecimalField1.setCaptionWidth(125);
        xDecimalField1.setDepends(new String[] {"bldgtype", "bldgkindbucc"});
        xDecimalField1.setName("basevalue");
        xDecimalField1.setPreferredSize(new java.awt.Dimension(120, 20));
        xDecimalField1.setRequired(true);
        formPanel1.add(xDecimalField1);

        xComboBox3.setCaption("Building Class");
        xComboBox3.setCaptionWidth(125);
        xComboBox3.setDynamic(true);
        xComboBox3.setEmptyText("- NA -");
        xComboBox3.setImmediate(true);
        xComboBox3.setIndex(-8);
        xComboBox3.setItems("classList");
        xComboBox3.setName("rpu.bldgtypeclass");
        xComboBox3.setPreferredSize(new java.awt.Dimension(120, 20));
        formPanel1.add(xComboBox3);

        xIntegerField2.setCaption("Percent Completed");
        xIntegerField2.setCaptionWidth(125);
        xIntegerField2.setIndex(-7);
        xIntegerField2.setName("percentcompleted");
        xIntegerField2.setPreferredSize(new java.awt.Dimension(120, 19));
        xIntegerField2.setRequired(true);
        formPanel1.add(xIntegerField2);

        formPanel12.setCaptionWidth(100);
        formPanel12.setOpaque(true);
        xDateField5.setCaption("Date Completed");
        xDateField5.setCaptionWidth(125);
        xDateField5.setIndex(-6);
        xDateField5.setName("dtcompleted");
        xDateField5.setPreferredSize(new java.awt.Dimension(150, 19));
        formPanel12.add(xDateField5);

        xDateField1.setCaption("Date Occupied");
        xDateField1.setCaptionWidth(125);
        xDateField1.setIndex(-5);
        xDateField1.setName("dtoccupied");
        xDateField1.setPreferredSize(new java.awt.Dimension(150, 19));
        formPanel12.add(xDateField1);

        xIntegerField1.setCaption("Building Age");
        xIntegerField1.setCaptionWidth(125);
        xIntegerField1.setEnabled(false);
        xIntegerField1.setName("bldgage");
        xIntegerField1.setPreferredSize(new java.awt.Dimension(150, 19));
        xIntegerField1.setRequired(true);
        formPanel12.add(xIntegerField1);

        xNumberField12.setCaption("Depreciation ( % )");
        xNumberField12.setCaptionWidth(125);
        xNumberField12.setDepends(new String[] {"bldgtype", "bldgkind", "dtcompleted", "dtoccupied"});
        xNumberField12.setFieldType(java.math.BigDecimal.class);
        xNumberField12.setName("depreciation");
        xNumberField12.setPattern("#,##0.00");
        xNumberField12.setPreferredSize(new java.awt.Dimension(150, 19));
        xNumberField12.setRequired(true);
        formPanel12.add(xNumberField12);

        xNumberField13.setCaption("Depreciation Value");
        xNumberField13.setCaptionWidth(125);
        xNumberField13.setEnabled(false);
        xNumberField13.setFieldType(java.math.BigDecimal.class);
        xNumberField13.setName("rpu.depreciationvalue");
        xNumberField13.setPattern("#,##0.00");
        xNumberField13.setPreferredSize(new java.awt.Dimension(150, 19));
        formPanel12.add(xNumberField13);

        org.jdesktop.layout.GroupLayout jPanel3Layout = new org.jdesktop.layout.GroupLayout(jPanel3);
        jPanel3.setLayout(jPanel3Layout);
        jPanel3Layout.setHorizontalGroup(
            jPanel3Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel3Layout.createSequentialGroup()
                .add(formPanel1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 280, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .add(16, 16, 16)
                .add(formPanel12, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 321, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        jPanel3Layout.setVerticalGroup(
            jPanel3Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(formPanel12, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 124, Short.MAX_VALUE)
            .add(formPanel1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 124, Short.MAX_VALUE)
        );
        jPanel4.add(jPanel3, java.awt.BorderLayout.NORTH);

        jPanel7.setLayout(new java.awt.BorderLayout());

        xButton1.setMnemonic('v');
        xButton1.setDepends(new String[] {"selectedBldgUse"});
        xButton1.setName("viewFloorInfo");
        xButton1.setText("View Floor Information");
        jPanel7.add(xButton1, java.awt.BorderLayout.EAST);

        xNumberField15.setCaption("Floor Count");
        xNumberField15.setCaptionWidth(100);
        xNumberField15.setFieldType(Integer.class);
        xNumberField15.setName("rpu.floorcount");
        xNumberField15.setPreferredSize(new java.awt.Dimension(50, 19));
        xNumberField15.setRequired(true);
        formPanel3.add(xNumberField15);

        jPanel7.add(formPanel3, java.awt.BorderLayout.CENTER);

        jPanel4.add(jPanel7, java.awt.BorderLayout.SOUTH);

        jPanel5.setLayout(new java.awt.BorderLayout());

        xDataTable2.setColumns(new com.rameses.rcp.common.Column[]{
            new com.rameses.rcp.common.Column(new Object[]{
                new Object[]{"name", "actualuse"}
                , new Object[]{"caption", "Actual Use"}
                , new Object[]{"width", 150}
                , new Object[]{"minWidth", 0}
                , new Object[]{"maxWidth", 0}
                , new Object[]{"required", false}
                , new Object[]{"resizable", true}
                , new Object[]{"nullWhenEmpty", true}
                , new Object[]{"editable", true}
                , new Object[]{"editableWhen", null}
                , new Object[]{"textCase", com.rameses.rcp.constant.TextCase.UPPER}
                , new Object[]{"typeHandler", new com.rameses.rcp.common.LookupColumnHandler("#{item.actualuse.name}", "lookupBldgActualUse")}
            }),
            new com.rameses.rcp.common.Column(new Object[]{
                new Object[]{"name", "area"}
                , new Object[]{"caption", "Area"}
                , new Object[]{"width", 120}
                , new Object[]{"minWidth", 0}
                , new Object[]{"maxWidth", 0}
                , new Object[]{"required", false}
                , new Object[]{"resizable", true}
                , new Object[]{"nullWhenEmpty", true}
                , new Object[]{"editable", false}
                , new Object[]{"textCase", com.rameses.rcp.constant.TextCase.UPPER}
                , new Object[]{"typeHandler", new com.rameses.rcp.common.DecimalColumnHandler("#,##0.00", -1.0, -1.0, false, 0)}
            }),
            new com.rameses.rcp.common.Column(new Object[]{
                new Object[]{"name", "basemarketvalue"}
                , new Object[]{"caption", "Base Market Value"}
                , new Object[]{"width", 120}
                , new Object[]{"minWidth", 0}
                , new Object[]{"maxWidth", 0}
                , new Object[]{"required", false}
                , new Object[]{"resizable", true}
                , new Object[]{"nullWhenEmpty", true}
                , new Object[]{"editable", false}
                , new Object[]{"textCase", com.rameses.rcp.constant.TextCase.UPPER}
                , new Object[]{"typeHandler", new com.rameses.rcp.common.DecimalColumnHandler("#,##0.00", -1.0, -1.0, false, 0)}
            }),
            new com.rameses.rcp.common.Column(new Object[]{
                new Object[]{"name", "depreciationvalue"}
                , new Object[]{"caption", "Depreciation"}
                , new Object[]{"width", 120}
                , new Object[]{"minWidth", 0}
                , new Object[]{"maxWidth", 0}
                , new Object[]{"required", false}
                , new Object[]{"resizable", true}
                , new Object[]{"nullWhenEmpty", true}
                , new Object[]{"editable", false}
                , new Object[]{"textCase", com.rameses.rcp.constant.TextCase.UPPER}
                , new Object[]{"typeHandler", new com.rameses.rcp.common.DecimalColumnHandler("#,##0.00", -1.0, -1.0, false, 0)}
            }),
            new com.rameses.rcp.common.Column(new Object[]{
                new Object[]{"name", "adjustment"}
                , new Object[]{"caption", "Adjustment"}
                , new Object[]{"width", 100}
                , new Object[]{"minWidth", 0}
                , new Object[]{"maxWidth", 0}
                , new Object[]{"required", false}
                , new Object[]{"resizable", true}
                , new Object[]{"nullWhenEmpty", true}
                , new Object[]{"editable", false}
                , new Object[]{"textCase", com.rameses.rcp.constant.TextCase.UPPER}
                , new Object[]{"typeHandler", new com.rameses.rcp.common.DecimalColumnHandler("#,##0.00", -1.0, -1.0, false, 0)}
            }),
            new com.rameses.rcp.common.Column(new Object[]{
                new Object[]{"name", "marketvalue"}
                , new Object[]{"caption", "Market Value"}
                , new Object[]{"width", 120}
                , new Object[]{"minWidth", 0}
                , new Object[]{"maxWidth", 0}
                , new Object[]{"required", false}
                , new Object[]{"resizable", true}
                , new Object[]{"nullWhenEmpty", true}
                , new Object[]{"editable", false}
                , new Object[]{"textCase", com.rameses.rcp.constant.TextCase.UPPER}
                , new Object[]{"typeHandler", new com.rameses.rcp.common.DecimalColumnHandler("#,##0.00", -1.0, -1.0, false, 0)}
            }),
            new com.rameses.rcp.common.Column(new Object[]{
                new Object[]{"name", "assesslevel"}
                , new Object[]{"caption", "Assess Level"}
                , new Object[]{"width", 100}
                , new Object[]{"minWidth", 0}
                , new Object[]{"maxWidth", 0}
                , new Object[]{"required", false}
                , new Object[]{"resizable", true}
                , new Object[]{"nullWhenEmpty", true}
                , new Object[]{"editable", false}
                , new Object[]{"textCase", com.rameses.rcp.constant.TextCase.UPPER}
                , new Object[]{"typeHandler", new com.rameses.rcp.common.DecimalColumnHandler("#,##0.00", -1.0, -1.0, false, 0)}
            }),
            new com.rameses.rcp.common.Column(new Object[]{
                new Object[]{"name", "assessedvalue"}
                , new Object[]{"caption", "Assessed Value"}
                , new Object[]{"width", 120}
                , new Object[]{"minWidth", 0}
                , new Object[]{"maxWidth", 0}
                , new Object[]{"required", false}
                , new Object[]{"resizable", true}
                , new Object[]{"nullWhenEmpty", true}
                , new Object[]{"editable", false}
                , new Object[]{"textCase", com.rameses.rcp.constant.TextCase.UPPER}
                , new Object[]{"typeHandler", new com.rameses.rcp.common.DecimalColumnHandler("#,##0.00", -1.0, -1.0, false, 0)}
            })
        });
        xDataTable2.setHandler("bldgUseListHandler");
        xDataTable2.setImmediate(true);
        xDataTable2.setName("selectedBldgUse");
        jPanel5.add(xDataTable2, java.awt.BorderLayout.CENTER);

        formPanel2.setCaptionBorder(javax.swing.BorderFactory.createEmptyBorder(1, 1, 1, 1));
        xComboBox4.setCaption("Classification");
        xComboBox4.setCaptionWidth(100);
        xComboBox4.setExpression("#{item.name}");
        xComboBox4.setIndex(-4);
        xComboBox4.setItems("classifications");
        xComboBox4.setName("classification");
        xComboBox4.setPreferredSize(new java.awt.Dimension(200, 22));
        xComboBox4.setRequired(true);
        formPanel2.add(xComboBox4);

        jPanel5.add(formPanel2, java.awt.BorderLayout.NORTH);

        jPanel4.add(jPanel5, java.awt.BorderLayout.CENTER);

        jPanel1.setLayout(new java.awt.BorderLayout());

        com.rameses.rcp.control.border.XTitledBorder xTitledBorder2 = new com.rameses.rcp.control.border.XTitledBorder();
        xTitledBorder2.setTitle("Structure Information");
        xDataTable3.setBorder(xTitledBorder2);
        xDataTable3.setColumns(new com.rameses.rcp.common.Column[]{
            new com.rameses.rcp.common.Column(new Object[]{
                new Object[]{"name", "structure.name"}
                , new Object[]{"caption", "Structure"}
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
                new Object[]{"name", null}
                , new Object[]{"caption", "Material"}
                , new Object[]{"width", 150}
                , new Object[]{"minWidth", 0}
                , new Object[]{"maxWidth", 0}
                , new Object[]{"required", false}
                , new Object[]{"resizable", true}
                , new Object[]{"nullWhenEmpty", true}
                , new Object[]{"editable", true}
                , new Object[]{"editableWhen", null}
                , new Object[]{"textCase", com.rameses.rcp.constant.TextCase.UPPER}
                , new Object[]{"typeHandler", new com.rameses.rcp.common.LookupColumnHandler("#{item.material.name}", "lookupStructureMaterial")}
            })
        });
        xDataTable3.setHandler("structureListHandler");
        xDataTable3.setIndex(100);
        xDataTable3.setName("selectedStructure");
        jPanel1.add(xDataTable3, java.awt.BorderLayout.CENTER);

        org.jdesktop.layout.GroupLayout jPanel6Layout = new org.jdesktop.layout.GroupLayout(jPanel6);
        jPanel6.setLayout(jPanel6Layout);
        jPanel6Layout.setHorizontalGroup(
            jPanel6Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel6Layout.createSequentialGroup()
                .addContainerGap()
                .add(jPanel1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 268, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel4, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 615, Short.MAX_VALUE)
                .addContainerGap())
        );
        jPanel6Layout.setVerticalGroup(
            jPanel6Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel6Layout.createSequentialGroup()
                .addContainerGap()
                .add(jPanel6Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(org.jdesktop.layout.GroupLayout.TRAILING, jPanel4, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 430, Short.MAX_VALUE)
                    .add(org.jdesktop.layout.GroupLayout.TRAILING, jPanel1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 430, Short.MAX_VALUE))
                .addContainerGap())
        );
        jTabbedPane1.addTab("General Information", jPanel6);

        formPanel4.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        formPanel4.setCaptionWidth(95);
        xTextField7.setCaption("House No.");
        xTextField7.setCaptionWidth(110);
        xTextField7.setCellPadding(new java.awt.Insets(0, 10, 0, 0));
        xTextField7.setName("rpu.psic");
        xTextField7.setPreferredSize(new java.awt.Dimension(0, 18));
        formPanel4.add(xTextField7);

        xTextField4.setCaption("PSIC");
        xTextField4.setCaptionWidth(110);
        xTextField4.setCellPadding(new java.awt.Insets(0, 10, 0, 0));
        xTextField4.setName("rpu.psic");
        xTextField4.setPreferredSize(new java.awt.Dimension(0, 18));
        formPanel4.add(xTextField4);

        xTextField5.setCaption("Permit No");
        xTextField5.setCaptionWidth(110);
        xTextField5.setCellPadding(new java.awt.Insets(0, 10, 0, 0));
        xTextField5.setName("rpu.permitno");
        xTextField5.setPreferredSize(new java.awt.Dimension(0, 18));
        formPanel4.add(xTextField5);

        xDateField4.setCaption("Permit Date");
        xDateField4.setCaptionWidth(110);
        xDateField4.setCellPadding(new java.awt.Insets(0, 10, 0, 0));
        xDateField4.setDepends(new String[] {"rpu.permitno"});
        xDateField4.setName("rpu.permitdate");
        xDateField4.setPreferredSize(new java.awt.Dimension(0, 18));
        formPanel4.add(xDateField4);

        xTextField6.setCaption("Issued By");
        xTextField6.setCaptionWidth(110);
        xTextField6.setCellPadding(new java.awt.Insets(0, 10, 0, 0));
        xTextField6.setName("rpu.issuedby");
        xTextField6.setPreferredSize(new java.awt.Dimension(0, 18));
        formPanel4.add(xTextField6);

        xSeparator2.setPadding(new java.awt.Insets(10, 0, 0, 0));
        xSeparator2.setPreferredSize(new java.awt.Dimension(0, 25));
        org.jdesktop.layout.GroupLayout xSeparator2Layout = new org.jdesktop.layout.GroupLayout(xSeparator2);
        xSeparator2.setLayout(xSeparator2Layout);
        xSeparator2Layout.setHorizontalGroup(
            xSeparator2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(0, 415, Short.MAX_VALUE)
        );
        xSeparator2Layout.setVerticalGroup(
            xSeparator2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(0, 25, Short.MAX_VALUE)
        );
        formPanel4.add(xSeparator2);

        xCheckBox1.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        xCheckBox1.setCaption("");
        xCheckBox1.setCellPadding(new java.awt.Insets(0, 10, 0, 0));
        xCheckBox1.setMargin(new java.awt.Insets(0, 0, 10, 0));
        xCheckBox1.setName("rpu.hasswornamount");
        xCheckBox1.setShowCaption(false);
        xCheckBox1.setText("Sworn Statement");
        formPanel4.add(xCheckBox1);

        formPanel14.setOrientation(com.rameses.rcp.constant.UIConstants.HORIZONTAL);
        formPanel14.setPadding(new java.awt.Insets(0, 0, 0, 10));
        formPanel14.setPreferredSize(new java.awt.Dimension(0, 19));
        formPanel14.setShowCaption(false);
        xNumberField5.setCaption("Sworn Amount");
        xNumberField5.setCaptionWidth(90);
        xNumberField5.setCellPadding(new java.awt.Insets(0, 40, 0, 20));
        xNumberField5.setDepends(new String[] {"rpu.hasswornstatement"});
        xNumberField5.setFieldType(java.math.BigDecimal.class);
        xNumberField5.setName("rpu.swornamount");
        xNumberField5.setPattern("#,##0.00");
        xNumberField5.setPreferredSize(new java.awt.Dimension(100, 18));
        formPanel14.add(xNumberField5);

        xCheckBox2.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        xCheckBox2.setCaption("");
        xCheckBox2.setDepends(new String[] {"rpu.hasswornstatement"});
        xCheckBox2.setName("rpu.useswornamount");
        xCheckBox2.setPreferredSize(new java.awt.Dimension(200, 19));
        xCheckBox2.setShowCaption(false);
        xCheckBox2.setText("Use Sworn Amount?");
        formPanel14.add(xCheckBox2);

        formPanel4.add(formPanel14);

        xSeparator3.setPadding(new java.awt.Insets(10, 0, 0, 0));
        xSeparator3.setPreferredSize(new java.awt.Dimension(0, 25));
        org.jdesktop.layout.GroupLayout xSeparator3Layout = new org.jdesktop.layout.GroupLayout(xSeparator3);
        xSeparator3.setLayout(xSeparator3Layout);
        xSeparator3Layout.setHorizontalGroup(
            xSeparator3Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(0, 415, Short.MAX_VALUE)
        );
        xSeparator3Layout.setVerticalGroup(
            xSeparator3Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(0, 25, Short.MAX_VALUE)
        );
        formPanel4.add(xSeparator3);

        jScrollPane1.setPreferredSize(new java.awt.Dimension(0, 100));
        xTextArea1.setLineWrap(true);
        xTextArea1.setWrapStyleWord(true);
        xTextArea1.setCaption("Additional Information");
        xTextArea1.setCaptionWidth(120);
        xTextArea1.setCellPadding(new java.awt.Insets(0, 10, 0, 0));
        xTextArea1.setName("rpu.additionalinfo");
        xTextArea1.setPreferredSize(new java.awt.Dimension(164, 30));
        jScrollPane1.setViewportView(xTextArea1);

        formPanel4.add(jScrollPane1);

        org.jdesktop.layout.GroupLayout jPanel2Layout = new org.jdesktop.layout.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .add(formPanel4, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 429, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(470, Short.MAX_VALUE))
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(org.jdesktop.layout.GroupLayout.TRAILING, jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .add(formPanel4, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 430, Short.MAX_VALUE)
                .addContainerGap())
        );
        jTabbedPane1.addTab("Other Information", jPanel2);

        org.jdesktop.layout.GroupLayout jPanel8Layout = new org.jdesktop.layout.GroupLayout(jPanel8);
        jPanel8.setLayout(jPanel8Layout);
        jPanel8Layout.setHorizontalGroup(
            jPanel8Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jTabbedPane1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 914, Short.MAX_VALUE)
        );
        jPanel8Layout.setVerticalGroup(
            jPanel8Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jTabbedPane1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 480, Short.MAX_VALUE)
        );
        add(jPanel8, java.awt.BorderLayout.CENTER);

    }// </editor-fold>//GEN-END:initComponents
    
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private com.rameses.rcp.util.FormPanel formPanel1;
    private com.rameses.rcp.util.FormPanel formPanel12;
    private com.rameses.rcp.util.FormPanel formPanel14;
    private com.rameses.rcp.util.FormPanel formPanel2;
    private com.rameses.rcp.util.FormPanel formPanel3;
    private com.rameses.rcp.util.FormPanel formPanel4;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JPanel jPanel4;
    private javax.swing.JPanel jPanel5;
    private javax.swing.JPanel jPanel6;
    private javax.swing.JPanel jPanel7;
    private javax.swing.JPanel jPanel8;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTabbedPane jTabbedPane1;
    private com.rameses.rcp.control.XButton xButton1;
    private com.rameses.rcp.control.XCheckBox xCheckBox1;
    private com.rameses.rcp.control.XCheckBox xCheckBox2;
    private com.rameses.rcp.control.XComboBox xComboBox3;
    private com.rameses.rcp.control.XComboBox xComboBox4;
    private com.rameses.rcp.control.XDataTable xDataTable2;
    private com.rameses.rcp.control.XDataTable xDataTable3;
    private com.rameses.rcp.control.XDateField xDateField1;
    private com.rameses.rcp.control.XDateField xDateField4;
    private com.rameses.rcp.control.XDateField xDateField5;
    private com.rameses.rcp.control.XDecimalField xDecimalField1;
    private com.rameses.rcp.control.XIntegerField xIntegerField1;
    private com.rameses.rcp.control.XIntegerField xIntegerField2;
    private com.rameses.rcp.control.XLookupField xLookupField1;
    private com.rameses.rcp.control.XLookupField xLookupField2;
    private com.rameses.rcp.control.XNumberField xNumberField12;
    private com.rameses.rcp.control.XNumberField xNumberField13;
    private com.rameses.rcp.control.XNumberField xNumberField15;
    private com.rameses.rcp.control.XNumberField xNumberField5;
    private com.rameses.rcp.control.XSeparator xSeparator2;
    private com.rameses.rcp.control.XSeparator xSeparator3;
    private com.rameses.rcp.control.XTextArea xTextArea1;
    private com.rameses.rcp.control.XTextField xTextField4;
    private com.rameses.rcp.control.XTextField xTextField5;
    private com.rameses.rcp.control.XTextField xTextField6;
    private com.rameses.rcp.control.XTextField xTextField7;
    // End of variables declaration//GEN-END:variables
    
}
