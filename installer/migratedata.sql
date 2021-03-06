INSERT [dbo].[stockitem] ([objid], [state], [code], [type], [itemclass], [title], [description], [baseunit], [defaultunit]) VALUES (N'0016', N'APPROVED', N'0016', N'AFSERIAL', N'AF', N'COMMUNITY TAX CERTIFICATE (INDIVIDUAL)', N'COMMUNITY TAX CERTIFICATE (INDIVIDUAL)', N'EA', N'STUB')
INSERT [dbo].[stockitem] ([objid], [state], [code], [type], [itemclass], [title], [description], [baseunit], [defaultunit]) VALUES (N'51', N'APPROVED', N'51', N'AFSERIAL', N'AF', N'ACCOUNTABLE FORM #51', N'ACCOUNTABLE FORM #51', N'EA', N'STUB')
INSERT [dbo].[stockitem] ([objid], [state], [code], [type], [itemclass], [title], [description], [baseunit], [defaultunit]) VALUES (N'52', N'APPROVED', N'52', N'AFSERIAL', N'AF', N'LARGE CATTLE TRANSFER', N'LARGE CATTLE TRANSFER', N'EA', N'STUB')
INSERT [dbo].[stockitem] ([objid], [state], [code], [type], [itemclass], [title], [description], [baseunit], [defaultunit]) VALUES (N'53', N'APPROVED', N'53', N'AFSERIAL', N'AF', N'LARGE CATTLE OWNERSHIP', N'LARGE CATTLE OWNERSHIP', N'EA', N'STUB')
INSERT [dbo].[stockitem] ([objid], [state], [code], [type], [itemclass], [title], [description], [baseunit], [defaultunit]) VALUES (N'54', N'APPROVED', N'54', N'AFSERIAL', N'AF', N'MARRIAGE LICENSE FEE', N'MARRIAGE LICENSE FEE', N'EA', N'STUB')
INSERT [dbo].[stockitem] ([objid], [state], [code], [type], [itemclass], [title], [description], [baseunit], [defaultunit]) VALUES (N'56', N'APPROVED', N'56', N'AFSERIAL', N'AF', N'REAL PROPERTY TAX RECEIPT', N'REAL PROPERTY TAX RECEIPT', N'EA', N'STUB')
INSERT [dbo].[stockitem] ([objid], [state], [code], [type], [itemclass], [title], [description], [baseunit], [defaultunit]) VALUES (N'57', N'APPROVED', N'57', N'AFSERIAL', N'AF', N'SLAUGHTER PERMIT', N'SLAUGHTER PERMIT', N'EA', N'STUB')
INSERT [dbo].[stockitem] ([objid], [state], [code], [type], [itemclass], [title], [description], [baseunit], [defaultunit]) VALUES (N'58', N'APPROVED', N'58', N'AFSERIAL', N'AF', N'BURIAL PERMIT FEE', N'BURIAL PERMIT FEE', N'EA', N'STUB')
INSERT [dbo].[stockitem] ([objid], [state], [code], [type], [itemclass], [title], [description], [baseunit], [defaultunit]) VALUES (N'907', N'APPROVED', N'907', N'AFSERIAL', N'AF', N'COMMUNITY TAX(CORPORATE)', N'COMMUNITY TAX(CORPORATE)', N'EA', N'STUB')
INSERT [dbo].[stockitem] ([objid], [state], [code], [type], [itemclass], [title], [description], [baseunit], [defaultunit]) VALUES (N'CT1', N'APPROVED', N'CT1', N'CASHTICKET', N'AF', N'CASH TICKETS P1.00', N'CASH TICKETS P1.00', N'EA', N'PAD')
INSERT [dbo].[stockitem] ([objid], [state], [code], [type], [itemclass], [title], [description], [baseunit], [defaultunit]) VALUES (N'CT10', N'APPROVED', N'CT10', N'CASHTICKET', N'AF', N'CASH TICKET P10.00', N'CASH TICKET P10.00', N'EA', N'PAD')
INSERT [dbo].[stockitem] ([objid], [state], [code], [type], [itemclass], [title], [description], [baseunit], [defaultunit]) VALUES (N'CT2', N'APPROVED', N'CT2', N'CASHTICKET', N'AF', N'CASH TICKETS P2.00', N'CASH TICKETS P2.00', N'EA', N'PAD')
INSERT [dbo].[stockitem] ([objid], [state], [code], [type], [itemclass], [title], [description], [baseunit], [defaultunit]) VALUES (N'CT5', N'APPROVED', N'CT5', N'CASHTICKET', N'AF', N'CASH TICKETS P 5.00', N'CASH TICKETS P 5.00', N'EA', N'PAD')
INSERT [dbo].[lobclassification] ([objid], [state], [name], [remarks]) VALUES (N'RETAILER', N'DRAFT', N'RETAILER', NULL)
INSERT [dbo].[lobclassification] ([objid], [state], [name], [remarks]) VALUES (N'AMUSEMENT', N'DRAFT', N'AMUSEMENT', NULL)
INSERT [dbo].[lobclassification] ([objid], [state], [name], [remarks]) VALUES (N'CONTRACTOR', N'DRAFT', N'CONTRACTOR', NULL)
INSERT [dbo].[lobclassification] ([objid], [state], [name], [remarks]) VALUES (N'FINANCIAL', N'DRAFT', N'FINANCIAL', NULL)
INSERT [dbo].[lobclassification] ([objid], [state], [name], [remarks]) VALUES (N'FRANCHISE', N'DRAFT', N'FRANCHISE', NULL)
INSERT [dbo].[lobclassification] ([objid], [state], [name], [remarks]) VALUES (N'MANUFACTURER', N'DRAFT', N'MANUFACTURER', NULL)
INSERT [dbo].[lobclassification] ([objid], [state], [name], [remarks]) VALUES (N'MINING', N'DRAFT', N'MINING', NULL)
INSERT [dbo].[lobclassification] ([objid], [state], [name], [remarks]) VALUES (N'OTHER', N'DRAFT', N'OTHER', NULL)
INSERT [dbo].[lobclassification] ([objid], [state], [name], [remarks]) VALUES (N'RESTAURANT', N'DRAFT', N'RESTAURANT', NULL)
INSERT [dbo].[lobclassification] ([objid], [state], [name], [remarks]) VALUES (N'WHOLESALER', N'DRAFT', N'WHOLESALER', NULL)
INSERT [dbo].[fund] ([objid], [parentid], [state], [code], [title], [type], [special], [system]) VALUES (N'GENERAL', NULL, N'APPROVED', N'01', N'GENERAL', NULL, 1, 1)
INSERT [dbo].[fund] ([objid], [parentid], [state], [code], [title], [type], [special], [system]) VALUES (N'SEF', NULL, N'APPROVED', N'02', N'SEF', NULL, 1, 1)
INSERT [dbo].[fund] ([objid], [parentid], [state], [code], [title], [type], [special], [system]) VALUES (N'TRUST', NULL, N'APPROVED', N'03', N'TRUST', NULL, 1, 1)
INSERT [dbo].[collectionform] ([objid], [title], [formtype]) VALUES (N'0016', N'COMMUNITY TAX CERTIFICATE (INDIVIDUAL)', N'serial')
INSERT [dbo].[collectionform] ([objid], [title], [formtype]) VALUES (N'51', N'ACCOUNTABLE FORM #51', N'serial')
INSERT [dbo].[collectionform] ([objid], [title], [formtype]) VALUES (N'52', N'LARGE CATTLE TRANSFER', N'serial')
INSERT [dbo].[collectionform] ([objid], [title], [formtype]) VALUES (N'53', N'LARGE CATTLE OWNERSHIP', N'serial')
INSERT [dbo].[collectionform] ([objid], [title], [formtype]) VALUES (N'54', N'MARRIAGE LICENSE FEE', N'serial')
INSERT [dbo].[collectionform] ([objid], [title], [formtype]) VALUES (N'56', N'REAL PROPERTY TAX RECEIPT', N'serial')
INSERT [dbo].[collectionform] ([objid], [title], [formtype]) VALUES (N'57', N'SLAUGHTER PERMIT', N'serial')
INSERT [dbo].[collectionform] ([objid], [title], [formtype]) VALUES (N'58', N'BURIAL PERMIT FEE', N'serial')
INSERT [dbo].[collectionform] ([objid], [title], [formtype]) VALUES (N'907', N'COMMUNITY TAX(CORPORATE)', N'serial')
INSERT [dbo].[collectionform] ([objid], [title], [formtype]) VALUES (N'CT1', N'CASH TICKETS P1.00', N'cashticket')
INSERT [dbo].[collectionform] ([objid], [title], [formtype]) VALUES (N'CT10', N'CASH TICKET P10.00', N'cashticket')
INSERT [dbo].[collectionform] ([objid], [title], [formtype]) VALUES (N'CT2', N'CASH TICKETS P2.00', N'cashticket')
INSERT [dbo].[collectionform] ([objid], [title], [formtype]) VALUES (N'CT5', N'CASH TICKETS P 5.00', N'cashticket')
INSERT [dbo].[sys_rule_fact] ([objid], [name], [title], [factclass], [sortorder], [handler], [defaultvarname], [dynamic], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [dynamicfieldname], [builtinconstraints]) VALUES (N'RULFACT17d6e7ce:141df4b60c2:-7c21', N'assessedvalue', N'Assessed Value Data', N'AssessedValueFact', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_fact] ([objid], [name], [title], [factclass], [sortorder], [handler], [defaultvarname], [dynamic], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [dynamicfieldname], [builtinconstraints]) VALUES (N'RULFACT17d6e7ce:141df4b60c2:-7fd3', N'rptledger', N'Realty Tax Ledger', N'RPTLedgerFact', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_fact] ([objid], [name], [title], [factclass], [sortorder], [handler], [defaultvarname], [dynamic], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [dynamicfieldname], [builtinconstraints]) VALUES (N'RULFACT-1f3e2b64:14230dd8f62:-7dd8', N'othercharge', N'Other Charge Bill Item', N'bpls.facts.BillItem', 8, NULL, N'OC', NULL, NULL, NULL, NULL, NULL, NULL, N'type == "OTHERCHARGE"')
INSERT [dbo].[sys_rule_fact] ([objid], [name], [title], [factclass], [sortorder], [handler], [defaultvarname], [dynamic], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [dynamicfieldname], [builtinconstraints]) VALUES (N'RULFACT-1f3e2b64:14230dd8f62:-7e29', N'regfee', N'Regulatory Fee Bill Item', N'bpls.facts.BillItem', 7, NULL, N'RF', NULL, NULL, NULL, NULL, NULL, NULL, N'type == "REGFEE"')
INSERT [dbo].[sys_rule_fact] ([objid], [name], [title], [factclass], [sortorder], [handler], [defaultvarname], [dynamic], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [dynamicfieldname], [builtinconstraints]) VALUES (N'RULFACT-1f3e2b64:14230dd8f62:-7eb6', N'businesstax', N'Business Tax Bill Item', N'bpls.facts.BillItem', 6, NULL, N'BT', NULL, NULL, NULL, NULL, NULL, NULL, N'type == "TAX"')
INSERT [dbo].[sys_rule_fact] ([objid], [name], [title], [factclass], [sortorder], [handler], [defaultvarname], [dynamic], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [dynamicfieldname], [builtinconstraints]) VALUES (N'RULFACT20ce1acc:141e456ed68:-7f43', N'CurrentDate', N'Current Date', N'CurrentDate', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_fact] ([objid], [name], [title], [factclass], [sortorder], [handler], [defaultvarname], [dynamic], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [dynamicfieldname], [builtinconstraints]) VALUES (N'RULFACT-26aa09fd:1419696e71f:-7feb', N'bpapplication', N'BPApplication', N'bpls.facts.BPApplication', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_fact] ([objid], [name], [title], [factclass], [sortorder], [handler], [defaultvarname], [dynamic], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [dynamicfieldname], [builtinconstraints]) VALUES (N'RULFACT2e8bac67:1422b41d3b3:-7f64', N'CurrentDate', N'Current Date', N'CurrentDate', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_fact] ([objid], [name], [title], [factclass], [sortorder], [handler], [defaultvarname], [dynamic], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [dynamicfieldname], [builtinconstraints]) VALUES (N'RULFACT33cb572b:142da8961f6:-7da3', N'CorporateCTC', N'Corporate CTC', N'CorporateCTC', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_fact] ([objid], [name], [title], [factclass], [sortorder], [handler], [defaultvarname], [dynamic], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [dynamicfieldname], [builtinconstraints]) VALUES (N'RULFACT33cb572b:142da8961f6:-7f96', N'IndividualCTC', N'Individual CTC', N'IndividualCTC', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_fact] ([objid], [name], [title], [factclass], [sortorder], [handler], [defaultvarname], [dynamic], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [dynamicfieldname], [builtinconstraints]) VALUES (N'RULFACT3a2b180:142b73535d5:-7fb1', N'LateRenewal', N'Late Renewal', N'bpls.facts.LateRenewal', 20, NULL, N'LateRenewal', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_fact] ([objid], [name], [title], [factclass], [sortorder], [handler], [defaultvarname], [dynamic], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [dynamicfieldname], [builtinconstraints]) VALUES (N'RULFACT40e16e9c:142df3e5af6:-551d', N'currentdate', N'Current Date', N'CurrentDate', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_fact] ([objid], [name], [title], [factclass], [sortorder], [handler], [defaultvarname], [dynamic], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [dynamicfieldname], [builtinconstraints]) VALUES (N'RULFACT-46f22f55:14231734d86:-7eca', N'BillDate', N'Bill Date', N'bpls.facts.BillDate', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_fact] ([objid], [name], [title], [factclass], [sortorder], [handler], [defaultvarname], [dynamic], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [dynamicfieldname], [builtinconstraints]) VALUES (N'RULFACT49ae4bad:141e3b6758c:-7ba3', N'currentdate', N'Current Date', N'CurrentDate', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_fact] ([objid], [name], [title], [factclass], [sortorder], [handler], [defaultvarname], [dynamic], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [dynamicfieldname], [builtinconstraints]) VALUES (N'RULFACT49f1ff47:142dfb342ca:-6f8c', N'CurrentDate', N'Current Date', N'CurrentDate', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_fact] ([objid], [name], [title], [factclass], [sortorder], [handler], [defaultvarname], [dynamic], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [dynamicfieldname], [builtinconstraints]) VALUES (N'RULFACT4a03cdfb:141f9a6dc3c:-784a', N'sysvariable', N'Sys Variable', N'bpls.facts.SysVariable', 10, NULL, NULL, 1, N'bpassessment_sysvar:lookup', N'name', N'name', N'datatype', N'name', NULL)
INSERT [dbo].[sys_rule_fact] ([objid], [name], [title], [factclass], [sortorder], [handler], [defaultvarname], [dynamic], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [dynamicfieldname], [builtinconstraints]) VALUES (N'RULFACT4ca00100:141fe894560:-7d8e', N'othercharge', N'Other Charge Account', N'bpls.facts.TaxFeeAccount', 7, NULL, N'OC', NULL, NULL, NULL, NULL, NULL, NULL, N'type=="OTHERCHARGE"')
INSERT [dbo].[sys_rule_fact] ([objid], [name], [title], [factclass], [sortorder], [handler], [defaultvarname], [dynamic], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [dynamicfieldname], [builtinconstraints]) VALUES (N'RULFACT4ca00100:141fe894560:-7e3f', N'regfee', N'Regulatory Fee Account', N'bpls.facts.TaxFeeAccount', 6, NULL, N'RF', NULL, NULL, NULL, NULL, NULL, NULL, N'type == "REGFEE"')
INSERT [dbo].[sys_rule_fact] ([objid], [name], [title], [factclass], [sortorder], [handler], [defaultvarname], [dynamic], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [dynamicfieldname], [builtinconstraints]) VALUES (N'RULFACT64302071:14232ed987c:-7f4e', N'payoption', N'Pay Option', N'bpls.facts.PayOption', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_fact] ([objid], [name], [title], [factclass], [sortorder], [handler], [defaultvarname], [dynamic], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [dynamicfieldname], [builtinconstraints]) VALUES (N'RULFACT6d66cc31:1446cc9522e:-7ee1', N'RPTTxnInfoFact', N'RPTTxnInfoFact', N'RPTTxnInfoFact', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_fact] ([objid], [name], [title], [factclass], [sortorder], [handler], [defaultvarname], [dynamic], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [dynamicfieldname], [builtinconstraints]) VALUES (N'RULFACT72bb01b1:141b1fdca80:-7f86', N'businesstax', N'Business Tax Account', N'bpls.facts.TaxFeeAccount', 5, NULL, N'BT', NULL, NULL, NULL, NULL, NULL, NULL, N'type == "TAX"')
INSERT [dbo].[sys_rule_fact] ([objid], [name], [title], [factclass], [sortorder], [handler], [defaultvarname], [dynamic], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [dynamicfieldname], [builtinconstraints]) VALUES (N'RULFACT-7387c51c:142dbad3349:-73aa', N'barangay', N'Barangay', N'Barangay', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_fact] ([objid], [name], [title], [factclass], [sortorder], [handler], [defaultvarname], [dynamic], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [dynamicfieldname], [builtinconstraints]) VALUES (N'RULFACT-76732870:14196dc4027:-7f87', N'lob', N'Line of Business', N'bpls.facts.LOB', 3, NULL, N'LOB', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_fact] ([objid], [name], [title], [factclass], [sortorder], [handler], [defaultvarname], [dynamic], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [dynamicfieldname], [builtinconstraints]) VALUES (N'RULFACT-7ea493a4:14237a0191b:-7fb7', N'payment', N'Payment', N'bpls.facts.Payment', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_fact] ([objid], [name], [title], [factclass], [sortorder], [handler], [defaultvarname], [dynamic], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [dynamicfieldname], [builtinconstraints]) VALUES (N'RULFACT7ee0ab5e:141b6a15885:-7ff1', N'Ledger', N'Business Ledger', N'BPLedger', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_fact] ([objid], [name], [title], [factclass], [sortorder], [handler], [defaultvarname], [dynamic], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [dynamicfieldname], [builtinconstraints]) VALUES (N'RULFACT-bad19b4:141f3c18435:-7fa9', N'businessinfo', N'Business Info', N'bpls.facts.BusinessInfo', 4, NULL, NULL, 1, N'businessvariable:lookup', N'objid', N'name', N'datatype', N'name', NULL)
INSERT [dbo].[sys_rule_fact] ([objid], [name], [title], [factclass], [sortorder], [handler], [defaultvarname], [dynamic], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [dynamicfieldname], [builtinconstraints]) VALUES (N'RULFACT-fd57605:142324ab5d2:-7f33', N'qtrdate', N'Qtr Date', N'bpls.facts.QtrDeadline', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_actiondef] ([objid], [name], [title], [sortorder], [actionname]) VALUES (N'RULADEF17d6e7ce:141df4b60c2:-7e9e', N'calc-basic', N'Calculate Basic Tax', 1, N'calc-basic')
INSERT [dbo].[sys_rule_actiondef] ([objid], [name], [title], [sortorder], [actionname]) VALUES (N'RULADEF208348b4:141e2d2bd58:-7b83', N'calc-firecode', N'Calculate Fire Code', 16, N'calc-firecode')
INSERT [dbo].[sys_rule_actiondef] ([objid], [name], [title], [sortorder], [actionname]) VALUES (N'RULADEF208348b4:141e2d2bd58:-7bdb', N'calc-sefint-amnesty', N'Calculate SEF Interest Amnesty', 15, N'calc-sefint-amnesty')
INSERT [dbo].[sys_rule_actiondef] ([objid], [name], [title], [sortorder], [actionname]) VALUES (N'RULADEF208348b4:141e2d2bd58:-7c7b', N'calc-sef-amnesty', N'Calculate SEF Amnesty', 14, N'calc-sef-amnesty')
INSERT [dbo].[sys_rule_actiondef] ([objid], [name], [title], [sortorder], [actionname]) VALUES (N'RULADEF208348b4:141e2d2bd58:-7cba', N'calc-sefdisc', N'Calculate SEF Discount', 12, N'calc-sefdisc')
INSERT [dbo].[sys_rule_actiondef] ([objid], [name], [title], [sortorder], [actionname]) VALUES (N'RULADEF208348b4:141e2d2bd58:-7d1e', N'calc-sefint', N'Calculate SEF Interest', 13, N'calc-sefint')
INSERT [dbo].[sys_rule_actiondef] ([objid], [name], [title], [sortorder], [actionname]) VALUES (N'RULADEF208348b4:141e2d2bd58:-7d5f', N'calc-sef', N'Calculate SEF Tax', 11, N'calc-sef')
INSERT [dbo].[sys_rule_actiondef] ([objid], [name], [title], [sortorder], [actionname]) VALUES (N'RULADEF208348b4:141e2d2bd58:-7d97', N'calc-basicint-amnesty', N'Calculate Basic Interest Amnesty', 5, N'calc-basicint-amnesty')
INSERT [dbo].[sys_rule_actiondef] ([objid], [name], [title], [sortorder], [actionname]) VALUES (N'RULADEF208348b4:141e2d2bd58:-7dc2', N'calc-basic-amnesty', N'Calculate Basic Amnesty', 4, N'calc-basic-amnesty')
INSERT [dbo].[sys_rule_actiondef] ([objid], [name], [title], [sortorder], [actionname]) VALUES (N'RULADEF208348b4:141e2d2bd58:-7de8', N'calc-basicdisc', N'Calculate Basic Discount', 2, N'calc-basicdisc')
INSERT [dbo].[sys_rule_actiondef] ([objid], [name], [title], [sortorder], [actionname]) VALUES (N'RULADEF208348b4:141e2d2bd58:-7e60', N'calc-basicint', N'Calculate Basic Interest', 3, N'calc-basicint')
INSERT [dbo].[sys_rule_actiondef] ([objid], [name], [title], [sortorder], [actionname]) VALUES (N'RULADEF-2889615e:142fa67fc85:-7b7c', N'split_by_qtr', N'Schedule By Qtr', 0, N'split_by_qtr')
INSERT [dbo].[sys_rule_actiondef] ([objid], [name], [title], [sortorder], [actionname]) VALUES (N'RULADEF-2ead5abf:1419bd607e6:-7fd9', N'compute_business_tax', N'Compute Business Tax', 2, N'compute_businesstax')
INSERT [dbo].[sys_rule_actiondef] ([objid], [name], [title], [sortorder], [actionname]) VALUES (N'RULADEF-301ea2a7:142daea52cd:-7611', N'calc-interest', N'Calculate Interest', 10, N'calc-interest')
INSERT [dbo].[sys_rule_actiondef] ([objid], [name], [title], [sortorder], [actionname]) VALUES (N'RULADEF-301ea2a7:142daea52cd:-7649', N'calc-additional-tax', N'Calculate Additional Tax', 5, N'calc-additional-tax')
INSERT [dbo].[sys_rule_actiondef] ([objid], [name], [title], [sortorder], [actionname]) VALUES (N'RULADEF-301ea2a7:142daea52cd:-7707', N'calc-propertyincome-tax', N'Calculate Property Income Tax', 4, N'calc-propertyincome-tax')
INSERT [dbo].[sys_rule_actiondef] ([objid], [name], [title], [sortorder], [actionname]) VALUES (N'RULADEF-301ea2a7:142daea52cd:-776c', N'calc-businessgross-tax', N'Calculate Business Gross Tax', 3, N'calc-businessgross-tax')
INSERT [dbo].[sys_rule_actiondef] ([objid], [name], [title], [sortorder], [actionname]) VALUES (N'RULADEF-301ea2a7:142daea52cd:-7887', N'calc-salary-tax', N'Calculate Salary Tax', 2, N'calc-salary-tax')
INSERT [dbo].[sys_rule_actiondef] ([objid], [name], [title], [sortorder], [actionname]) VALUES (N'RULADEF-301ea2a7:142daea52cd:-7ed8', N'calc-basic-tax', N'Calculate Basic Tax', 1, N'calc-basic-tax')
INSERT [dbo].[sys_rule_actiondef] ([objid], [name], [title], [sortorder], [actionname]) VALUES (N'RULADEF33e8cb24:1423c4b40b2:-6aeb', N'select_taxfee', N'Select Tax Fee Account', 5, N'select_taxfee')
INSERT [dbo].[sys_rule_actiondef] ([objid], [name], [title], [sortorder], [actionname]) VALUES (N'RULADEF33e8cb24:1423c4b40b2:-7f34', N'remove_taxfee', N'Remove Tax Fee', 5, N'remove_taxfee')
INSERT [dbo].[sys_rule_actiondef] ([objid], [name], [title], [sortorder], [actionname]) VALUES (N'RULADEF367174cc:141a62bd0d8:-4486', N'ask_business_info', N'Ask Business Info', 1, N'ask_business_info')
INSERT [dbo].[sys_rule_actiondef] ([objid], [name], [title], [sortorder], [actionname]) VALUES (N'RULADEF40e16e9c:142df3e5af6:-7ad7', N'calc-interest', N'Calculate Interest', 5, N'calc-interest')
INSERT [dbo].[sys_rule_actiondef] ([objid], [name], [title], [sortorder], [actionname]) VALUES (N'RULADEF40e16e9c:142df3e5af6:-7b1e', N'calc-propertyav-tax', N'Calculate Property AV Tax', 3, N'calc-propertyav-tax')
INSERT [dbo].[sys_rule_actiondef] ([objid], [name], [title], [sortorder], [actionname]) VALUES (N'RULADEF40e16e9c:142df3e5af6:-7b41', N'calc-businessgross-tax', N'Calculate Business Gross Tax', 2, N'calc-businessgross-tax')
INSERT [dbo].[sys_rule_actiondef] ([objid], [name], [title], [sortorder], [actionname]) VALUES (N'RULADEF40e16e9c:142df3e5af6:-7b7b', N'calc-basic-tax', N'Calculate Basic Tax', 1, N'calc-basic-tax')
INSERT [dbo].[sys_rule_actiondef] ([objid], [name], [title], [sortorder], [actionname]) VALUES (N'RULADEF441bb08f:1436c079bff:-76b4', N'calc-brgyint-share', N'Calculate Barangay Interest Share', 22, N'calc-brgyint-share')
INSERT [dbo].[sys_rule_actiondef] ([objid], [name], [title], [sortorder], [actionname]) VALUES (N'RULADEF441bb08f:1436c079bff:-771e', N'calc-brgyshare', N'Calculate Barangay Share', 21, N'calc-brgyshare')
INSERT [dbo].[sys_rule_actiondef] ([objid], [name], [title], [sortorder], [actionname]) VALUES (N'RULADEF441bb08f:1436c079bff:-77e1', N'calc-lguint-share', N'Calculate LGU Interest Share', 32, N'calc-lguint-share')
INSERT [dbo].[sys_rule_actiondef] ([objid], [name], [title], [sortorder], [actionname]) VALUES (N'RULADEF441bb08f:1436c079bff:-7831', N'calc-lgushare', N'Calculate LGU Share', 31, N'calc-lgushare')
INSERT [dbo].[sys_rule_actiondef] ([objid], [name], [title], [sortorder], [actionname]) VALUES (N'RULADEF441bb08f:1436c079bff:-7891', N'calc-provint-share', N'Calculate Province Interest Share', 26, N'calc-provint-share')
INSERT [dbo].[sys_rule_actiondef] ([objid], [name], [title], [sortorder], [actionname]) VALUES (N'RULADEF441bb08f:1436c079bff:-78ee', N'calc-provshare', N'Calculate Province Share', 25, N'calc-provshare')
INSERT [dbo].[sys_rule_actiondef] ([objid], [name], [title], [sortorder], [actionname]) VALUES (N'RULADEF-4a532d76:141ff563063:-7ef4', N'add_requirement', N'Add Requirement', 0, N'add_requirement')
INSERT [dbo].[sys_rule_actiondef] ([objid], [name], [title], [sortorder], [actionname]) VALUES (N'RULADEF-627533eb:141ed7a179f:-7d7d', N'compute_regfee', N'Compute Regulatory Fee', 3, N'compute_regfee')
INSERT [dbo].[sys_rule_actiondef] ([objid], [name], [title], [sortorder], [actionname]) VALUES (N'RULADEF-62a762db:14201d65080:-7576', N'print_test', N'Print Test. For debugging (developers) only.', 100, N'print_test')
INSERT [dbo].[sys_rule_actiondef] ([objid], [name], [title], [sortorder], [actionname]) VALUES (N'RULADEF-66879e9a:1422b236b58:-7d0f', N'calc_discount', N'Calculate Discount', 2, N'calc_discount')
INSERT [dbo].[sys_rule_actiondef] ([objid], [name], [title], [sortorder], [actionname]) VALUES (N'RULADEF-66879e9a:1422b236b58:-7d24', N'calc_interest', N'Calculate Interest', 1, N'calc_interest')
INSERT [dbo].[sys_rule_actiondef] ([objid], [name], [title], [sortorder], [actionname]) VALUES (N'RULADEF-67ecfd73:141f2b84ce7:-743c', N'bpassessment_sysvar', N'Add System Variable', 8, N'add_sysvar')
INSERT [dbo].[sys_rule_actiondef] ([objid], [name], [title], [sortorder], [actionname]) VALUES (N'RULADEF-67ecfd73:141f2b84ce7:-7b54', N'assert_business_info', N'Add Derived Business Info', 1, N'assert_business_info')
INSERT [dbo].[sys_rule_actiondef] ([objid], [name], [title], [sortorder], [actionname]) VALUES (N'RULADEF6d66cc31:1446cc9522e:-7d56', N'add-requirement', N'Add Requirement', 1, N'add-requirement')
INSERT [dbo].[sys_rule_actiondef] ([objid], [name], [title], [sortorder], [actionname]) VALUES (N'RULADEF72bb01b1:141b1fdca80:-7e34', N'update_taxfee', N'Update Tax Fee Amount', 5, N'update_taxfee')
INSERT [dbo].[sys_rule_actiondef] ([objid], [name], [title], [sortorder], [actionname]) VALUES (N'RULADEF-7387c51c:142dbad3349:-74e2', N'calc-brgy-int-share', N'Calculate Barangay Interest Share', 11, N'calc-brgy-int-share')
INSERT [dbo].[sys_rule_actiondef] ([objid], [name], [title], [sortorder], [actionname]) VALUES (N'RULADEF-7387c51c:142dbad3349:-75a7', N'calc-brgy-tax-share', N'Calculate Barangay Tax Share', 10, N'calc-brgy-tax-share')
INSERT [dbo].[sys_rule_actiondef] ([objid], [name], [title], [sortorder], [actionname]) VALUES (N'RULADEF-738e3cc6:14459101d11:-6b0b', N'change_business_account', N'Change Business Account', 10, N'change_business_account')
INSERT [dbo].[sys_rule_actiondef] ([objid], [name], [title], [sortorder], [actionname]) VALUES (N'RULADEF73d37911:141edb9db9a:-7f30', N'compute_other_charge', N'Compute Other Charge', 4, N'compute_othercharge')
INSERT [dbo].[sys_rule_actiondef] ([objid], [name], [title], [sortorder], [actionname]) VALUES (N'RULADEF-7b3bc8de:142e512eedb:-7dc5', N'calc-additional-tax', N'Calculate Additional Tax', 4, N'calc-additional-tax')
INSERT [dbo].[sys_rule_actiondef] ([objid], [name], [title], [sortorder], [actionname]) VALUES (N'RULADEF7ee0ab5e:141b6a15885:-7f52', N'calc_surcharge', N'Calculate Surcharge', 0, N'calc_surcharge')
INSERT [dbo].[businessvariable] ([objid], [state], [name], [datatype], [caption], [description], [arrayvalues], [system], [sortorder], [category], [handler]) VALUES (N'ADMINISTRATOR_ADDRESS', N'APPROVED', N'ADMINISTRATOR_ADDRESS', N'string', N'ADMINISTRATOR ADDRESS', N'ADDRESS OF ADINISTRATOR', N'[]', 1, 0, N'ADMINISTRATOR', NULL)
INSERT [dbo].[businessvariable] ([objid], [state], [name], [datatype], [caption], [description], [arrayvalues], [system], [sortorder], [category], [handler]) VALUES (N'ADMINISTRATOR_NAME', N'APPROVED', N'ADMINISTRATOR_NAME', N'string', N'ADMINISTRATOR NAME', N'NAME OF ADMINISTRATOR (PRESIDENT OR TREASURER)', N'[]', 1, 0, N'ADMINISTRATOR', NULL)
INSERT [dbo].[businessvariable] ([objid], [state], [name], [datatype], [caption], [description], [arrayvalues], [system], [sortorder], [category], [handler]) VALUES (N'ADMINISTRATOR_PHONE', N'APPROVED', N'ADMINISTRATOR_PHONE', N'string', N'ADMINISTRATOR PHONE', N'PHONE NO. OF ADMINISTRATOR', N'[]', 1, 0, N'ADMINISTRATOR', NULL)
INSERT [dbo].[businessvariable] ([objid], [state], [name], [datatype], [caption], [description], [arrayvalues], [system], [sortorder], [category], [handler]) VALUES (N'ADMINISTRATOR_POSITION', N'APPROVED', N'ADMINISTRATOR_POSITION', N'string_array', N'ADMINISTRATOR POSITION', NULL, N'["TREASURER","PRESIDENT"]', 1, 0, N'ADMINISTRATOR', NULL)
INSERT [dbo].[businessvariable] ([objid], [state], [name], [datatype], [caption], [description], [arrayvalues], [system], [sortorder], [category], [handler]) VALUES (N'AIRCONDITIONED', N'APPROVED', N'AIRCONDITIONED', N'boolean', N'IS AIRCONDITIONED', NULL, N'[]', NULL, 0, NULL, NULL)
INSERT [dbo].[businessvariable] ([objid], [state], [name], [datatype], [caption], [description], [arrayvalues], [system], [sortorder], [category], [handler]) VALUES (N'AREA_SQM', N'APPROVED', N'AREA_SQM', N'decimal', N'BUSINESS AREA IN SQ METERS', NULL, N'[]', 1, 0, N'BUSINESS AREA', NULL)
INSERT [dbo].[businessvariable] ([objid], [state], [name], [datatype], [caption], [description], [arrayvalues], [system], [sortorder], [category], [handler]) VALUES (N'CAPITAL', N'APPROVED', N'CAPITAL', N'decimal', N'CAPITAL INVESTMENT', NULL, N'[]', 1, 0, NULL, NULL)
INSERT [dbo].[businessvariable] ([objid], [state], [name], [datatype], [caption], [description], [arrayvalues], [system], [sortorder], [category], [handler]) VALUES (N'CONTRIVANCE', N'DRAFT', N'CONTRIVANCE', N'integer', N'CONTRIVANCE', NULL, N'[]', NULL, 0, NULL, NULL)
INSERT [dbo].[businessvariable] ([objid], [state], [name], [datatype], [caption], [description], [arrayvalues], [system], [sortorder], [category], [handler]) VALUES (N'DOUBLE_BED', N'DRAFT', N'DOUBLE_BED', N'integer', N'DOUBLE BED', NULL, N'[]', NULL, 0, NULL, NULL)
INSERT [dbo].[businessvariable] ([objid], [state], [name], [datatype], [caption], [description], [arrayvalues], [system], [sortorder], [category], [handler]) VALUES (N'DOUBLE_NO_AC', N'DRAFT', N'DOUBLE_NO_AC', N'integer', N'DOUBLE NO AC', NULL, N'[]', NULL, 0, NULL, NULL)
INSERT [dbo].[businessvariable] ([objid], [state], [name], [datatype], [caption], [description], [arrayvalues], [system], [sortorder], [category], [handler]) VALUES (N'FACTORY', N'APPROVED', N'FACTORY', N'boolean', N'WITH FACTORY IN ILIGAN?', NULL, N'[]', NULL, 0, NULL, NULL)
INSERT [dbo].[businessvariable] ([objid], [state], [name], [datatype], [caption], [description], [arrayvalues], [system], [sortorder], [category], [handler]) VALUES (N'GROSS', N'APPROVED', N'GROSS', N'decimal', N'GROSS RECEIPTS', NULL, N'[]', 1, 0, NULL, NULL)
INSERT [dbo].[businessvariable] ([objid], [state], [name], [datatype], [caption], [description], [arrayvalues], [system], [sortorder], [category], [handler]) VALUES (N'HAS_DELIVERY_VANS_OR_TRUCKS', N'DRAFT', N'HAS_DELIVERY_VANS_OR_TRUCKS', N'boolean', N'HAS DELIVERY VANS / TRUCKS', NULL, N'[]', 0, 10, NULL, NULL)
INSERT [dbo].[businessvariable] ([objid], [state], [name], [datatype], [caption], [description], [arrayvalues], [system], [sortorder], [category], [handler]) VALUES (N'HAS_MOTORIZED_VEHICLE', N'DRAFT', N'HAS_MOTORIZED_VEHICLE', N'boolean', N'HAS MOTORIZED VEHICLE', NULL, N'[]', 0, 10, NULL, NULL)
INSERT [dbo].[businessvariable] ([objid], [state], [name], [datatype], [caption], [description], [arrayvalues], [system], [sortorder], [category], [handler]) VALUES (N'HAS_TAX_INCENTIVE', N'APPROVED', N'HAS_TAX_INCENTIVE', N'boolean', N'HAS TAX INCENTIVE?', NULL, N'[]', 1, 0, N'GENERAL', NULL)
INSERT [dbo].[businessvariable] ([objid], [state], [name], [datatype], [caption], [description], [arrayvalues], [system], [sortorder], [category], [handler]) VALUES (N'HOTEL_TYPE', N'DRAFT', N'HOTEL_TYPE', N'string_array', N'HOTEL TYPE', NULL, N'["1 AND 2 STAR","3 STAR","4 AND 5 STAR"]', NULL, 0, NULL, NULL)
INSERT [dbo].[businessvariable] ([objid], [state], [name], [datatype], [caption], [description], [arrayvalues], [system], [sortorder], [category], [handler]) VALUES (N'IS_DAILY', N'DRAFT', N'IS_DAILY', N'boolean', N'IS DAILY', NULL, N'[]', NULL, 0, NULL, NULL)
INSERT [dbo].[businessvariable] ([objid], [state], [name], [datatype], [caption], [description], [arrayvalues], [system], [sortorder], [category], [handler]) VALUES (N'IS_IT_MAIN', N'DRAFT', N'IS_IT_MAIN', N'boolean', N'IS IT MAIN', NULL, N'[]', NULL, 0, NULL, NULL)
INSERT [dbo].[businessvariable] ([objid], [state], [name], [datatype], [caption], [description], [arrayvalues], [system], [sortorder], [category], [handler]) VALUES (N'IS_LOCATED_IN_ILIGAN', N'DRAFT', N'IS_LOCATED_IN_ILIGAN', N'boolean', N'IS LOCATED IN ILIGAN', NULL, N'[]', NULL, 0, N'GENERAL', NULL)
INSERT [dbo].[businessvariable] ([objid], [state], [name], [datatype], [caption], [description], [arrayvalues], [system], [sortorder], [category], [handler]) VALUES (N'IS_RENTED', N'APPROVED', N'IS_RENTED', N'boolean', N'IS OFFICE RENTED?', NULL, N'[]', 1, 0, N'GENERAL', NULL)
INSERT [dbo].[businessvariable] ([objid], [state], [name], [datatype], [caption], [description], [arrayvalues], [system], [sortorder], [category], [handler]) VALUES (N'LESSOR_ADDRESS', N'APPROVED', N'LESSOR_ADDRESS', N'string', N'LESSOR ADDRESS', NULL, N'[]', 1, 0, N'RENTAL INFO', NULL)
INSERT [dbo].[businessvariable] ([objid], [state], [name], [datatype], [caption], [description], [arrayvalues], [system], [sortorder], [category], [handler]) VALUES (N'LESSOR_NAME', N'APPROVED', N'LESSOR_NAME', N'string', N'LESSOR NAME', NULL, N'[]', 1, 0, N'RENTAL INFO', NULL)
INSERT [dbo].[businessvariable] ([objid], [state], [name], [datatype], [caption], [description], [arrayvalues], [system], [sortorder], [category], [handler]) VALUES (N'LOCATED_ON_GOVERNMENT_PROPERTY', N'APPROVED', N'LOCATED_ON_GOVERNMENT_PROPERTY', N'boolean', N'LOCATED ON GOVERNMENT PROPERTY?', NULL, N'[]', 1, 0, N'BUSINESS AREA', NULL)
INSERT [dbo].[businessvariable] ([objid], [state], [name], [datatype], [caption], [description], [arrayvalues], [system], [sortorder], [category], [handler]) VALUES (N'LOCATED_ON_NIGHTMARKET', N'DRAFT', N'LOCATED_ON_NIGHTMARKET', N'boolean', N'LOCATED_ON_NIGHTMARKET', N'ASKS IF THE BUSINESS IS LOCATED ON NIGHT MARKET', N'[]', 0, 2, NULL, NULL)
INSERT [dbo].[businessvariable] ([objid], [state], [name], [datatype], [caption], [description], [arrayvalues], [system], [sortorder], [category], [handler]) VALUES (N'MONTHLY_RENTAL', N'APPROVED', N'MONTHLY_RENTAL', N'decimal', N'MONTHLY RENTAL', NULL, N'[]', 1, 0, N'RENTAL INFO', NULL)
INSERT [dbo].[businessvariable] ([objid], [state], [name], [datatype], [caption], [description], [arrayvalues], [system], [sortorder], [category], [handler]) VALUES (N'NO_AIRCON', N'DRAFT', N'NO_AIRCON', N'integer', N'NO AIRCON', NULL, N'[]', NULL, 0, NULL, NULL)
INSERT [dbo].[businessvariable] ([objid], [state], [name], [datatype], [caption], [description], [arrayvalues], [system], [sortorder], [category], [handler]) VALUES (N'NO_OF_10_WHEELERS', N'APPROVED', N'NO_OF_10_WHEELERS', N'integer', N'NO. OF TEN WHEELERS', NULL, N'[]', NULL, 0, NULL, NULL)
INSERT [dbo].[businessvariable] ([objid], [state], [name], [datatype], [caption], [description], [arrayvalues], [system], [sortorder], [category], [handler]) VALUES (N'NO_OF_4_WHEELERS', N'APPROVED', N'NO_OF_4_WHEELERS', N'integer', N'NO. OF FOUR WHEELERS', NULL, N'[]', NULL, 0, NULL, NULL)
INSERT [dbo].[businessvariable] ([objid], [state], [name], [datatype], [caption], [description], [arrayvalues], [system], [sortorder], [category], [handler]) VALUES (N'NO_OF_6_WHEELERS', N'APPROVED', N'NO_OF_6_WHEELERS', N'integer', N'NO. OF SIX WHEELERS', NULL, N'[]', NULL, 0, NULL, NULL)
INSERT [dbo].[businessvariable] ([objid], [state], [name], [datatype], [caption], [description], [arrayvalues], [system], [sortorder], [category], [handler]) VALUES (N'NO_OF_BEDS', N'DRAFT', N'NO_OF_BEDS', N'integer', N'NO OF BEDS', NULL, N'[]', NULL, 0, NULL, NULL)
INSERT [dbo].[businessvariable] ([objid], [state], [name], [datatype], [caption], [description], [arrayvalues], [system], [sortorder], [category], [handler]) VALUES (N'NO_OF_BEDSPACERS', N'DRAFT', N'NO_OF_BEDSPACERS', N'integer', N'NO OF BEDPACERS', NULL, N'[]', NULL, 0, NULL, NULL)
INSERT [dbo].[businessvariable] ([objid], [state], [name], [datatype], [caption], [description], [arrayvalues], [system], [sortorder], [category], [handler]) VALUES (N'NO_OF_BET_MANAGER', N'APPROVED', N'NO_OF_BET_MANAGER', N'integer', N'NO. OF BET MANAGER/MACIADOR/KASADOR', NULL, N'[]', NULL, 0, NULL, NULL)
INSERT [dbo].[businessvariable] ([objid], [state], [name], [datatype], [caption], [description], [arrayvalues], [system], [sortorder], [category], [handler]) VALUES (N'NO_OF_BET_TAKERS', N'APPROVED', N'NO_OF_BET_TAKERS', N'integer', N'NO. OF BET TAKERS/KRISTO/LLAMADOR', NULL, N'[]', NULL, 0, NULL, NULL)
INSERT [dbo].[businessvariable] ([objid], [state], [name], [datatype], [caption], [description], [arrayvalues], [system], [sortorder], [category], [handler]) VALUES (N'NO_OF_BOOTHS', N'DRAFT', N'NO_OF_BOOTHS', N'integer', N'NO OF BOOTHS', NULL, N'[]', NULL, 0, NULL, NULL)
INSERT [dbo].[businessvariable] ([objid], [state], [name], [datatype], [caption], [description], [arrayvalues], [system], [sortorder], [category], [handler]) VALUES (N'NO_OF_BUSSES', N'APPROVED', N'NO_OF_BUSSES', N'integer', N'NO. OF BUSSES', NULL, N'[]', NULL, 0, NULL, NULL)
INSERT [dbo].[businessvariable] ([objid], [state], [name], [datatype], [caption], [description], [arrayvalues], [system], [sortorder], [category], [handler]) VALUES (N'NO_OF_CARGOS', N'APPROVED', N'NO_OF_CARGOS', N'integer', N'NO. OF CARGOS', NULL, N'[]', NULL, 0, NULL, NULL)
INSERT [dbo].[businessvariable] ([objid], [state], [name], [datatype], [caption], [description], [arrayvalues], [system], [sortorder], [category], [handler]) VALUES (N'NO_OF_CHAIRS', N'APPROVED', N'NO_OF_CHAIRS', N'integer', N'NO. OF CHAIRS', N'NO. OF CHAIRS', N'[]', NULL, 0, NULL, NULL)
INSERT [dbo].[businessvariable] ([objid], [state], [name], [datatype], [caption], [description], [arrayvalues], [system], [sortorder], [category], [handler]) VALUES (N'NO_OF_COTTAGES', N'APPROVED', N'NO_OF_COTTAGES', N'integer', N'NO. OF COTTAGES', NULL, N'[]', NULL, 0, NULL, NULL)
INSERT [dbo].[businessvariable] ([objid], [state], [name], [datatype], [caption], [description], [arrayvalues], [system], [sortorder], [category], [handler]) VALUES (N'NO_OF_CUBICLES', N'APPROVED', N'NO_OF_CUBICLES', N'integer', N'NO. OF CUBICLES', NULL, N'[]', NULL, 0, NULL, NULL)
INSERT [dbo].[businessvariable] ([objid], [state], [name], [datatype], [caption], [description], [arrayvalues], [system], [sortorder], [category], [handler]) VALUES (N'NO_OF_DAYS', N'APPROVED', N'NO_OF_DAYS', N'integer', N'NO. OF DAYS', NULL, N'[]', NULL, 0, NULL, NULL)
INSERT [dbo].[businessvariable] ([objid], [state], [name], [datatype], [caption], [description], [arrayvalues], [system], [sortorder], [category], [handler]) VALUES (N'NO_OF_GAFFERS', N'APPROVED', N'NO_OF_GAFFERS', N'integer', N'NO. OF GAFFERS/MANANARI', NULL, N'[]', NULL, 0, NULL, NULL)
INSERT [dbo].[businessvariable] ([objid], [state], [name], [datatype], [caption], [description], [arrayvalues], [system], [sortorder], [category], [handler]) VALUES (N'NO_OF_HUTS_SHEDS', N'APPROVED', N'NO_OF_HUTS_SHEDS', N'integer', N'NO. OF HUTS AND SHEDS', NULL, N'[]', NULL, 0, NULL, NULL)
INSERT [dbo].[businessvariable] ([objid], [state], [name], [datatype], [caption], [description], [arrayvalues], [system], [sortorder], [category], [handler]) VALUES (N'NO_OF_ILLUMINATED_SB', N'APPROVED', N'NO_OF_ILLUMINATED_SB', N'integer', N'NO OF ILLUMINATED SIGNBOARD', NULL, N'[]', NULL, 0, NULL, NULL)
INSERT [dbo].[businessvariable] ([objid], [state], [name], [datatype], [caption], [description], [arrayvalues], [system], [sortorder], [category], [handler]) VALUES (N'NO_OF_JEEPNEYS_AND_TAXIS', N'APPROVED', N'NO_OF_JEEPNEYS_AND_TAXIS', N'integer', N'NO. OF JEEPNEYS AND TAXIS', NULL, N'[]', NULL, 0, NULL, NULL)
INSERT [dbo].[businessvariable] ([objid], [state], [name], [datatype], [caption], [description], [arrayvalues], [system], [sortorder], [category], [handler]) VALUES (N'NO_OF_KG_LPG', N'DRAFT', N'NO_OF_KG_LPG', N'integer', N'NO OF KG LPG', NULL, N'[]', 0, 1, NULL, NULL)
INSERT [dbo].[businessvariable] ([objid], [state], [name], [datatype], [caption], [description], [arrayvalues], [system], [sortorder], [category], [handler]) VALUES (N'NO_OF_LANES', N'APPROVED', N'NO_OF_LANES', N'integer', N'NO. OF LANES', NULL, N'[]', NULL, 0, NULL, NULL)
INSERT [dbo].[businessvariable] ([objid], [state], [name], [datatype], [caption], [description], [arrayvalues], [system], [sortorder], [category], [handler]) VALUES (N'NO_OF_LINEAR_MEASURE_1M', N'APPROVED', N'NO_OF_LINEAR_MEASURE_1M', N'integer', N'NO. OF LINEAR (METRIC MEASURES)', NULL, N'[]', NULL, 0, NULL, NULL)
INSERT [dbo].[businessvariable] ([objid], [state], [name], [datatype], [caption], [description], [arrayvalues], [system], [sortorder], [category], [handler]) VALUES (N'NO_OF_LINEAR_MEASURE_OVER_1M', N'APPROVED', N'NO_OF_LINEAR_MEASURE_OVER_1M', N'integer', N'NO. OF LINEAR (OVER 1 METRIC MEASURE)', NULL, N'[]', NULL, 0, NULL, NULL)
INSERT [dbo].[businessvariable] ([objid], [state], [name], [datatype], [caption], [description], [arrayvalues], [system], [sortorder], [category], [handler]) VALUES (N'NO_OF_LITERS_DIESEL', N'APPROVED', N'NO_OF_LITERS_DIESEL', N'integer', N'NO. OF LITERS - DIESEL', NULL, N'[]', NULL, 0, NULL, NULL)
INSERT [dbo].[businessvariable] ([objid], [state], [name], [datatype], [caption], [description], [arrayvalues], [system], [sortorder], [category], [handler]) VALUES (N'NO_OF_LITERS_FUEL', N'APPROVED', N'NO_OF_LITERS_FUEL', N'integer', N'NO. OF LITERS - FUEL', NULL, N'[]', NULL, 0, NULL, NULL)
INSERT [dbo].[businessvariable] ([objid], [state], [name], [datatype], [caption], [description], [arrayvalues], [system], [sortorder], [category], [handler]) VALUES (N'NO_OF_LITERS_GASOLINE', N'APPROVED', N'NO_OF_LITERS_GASOLINE', N'integer', N'NO. OF LITERS - GASOLINE', NULL, N'[]', NULL, 0, NULL, NULL)
INSERT [dbo].[businessvariable] ([objid], [state], [name], [datatype], [caption], [description], [arrayvalues], [system], [sortorder], [category], [handler]) VALUES (N'NO_OF_LITERS_KEROSENE', N'APPROVED', N'NO_OF_LITERS_KEROSENE', N'integer', N'NO. OF LITERS - KEROSENE', NULL, N'[]', NULL, 0, NULL, NULL)
INSERT [dbo].[businessvariable] ([objid], [state], [name], [datatype], [caption], [description], [arrayvalues], [system], [sortorder], [category], [handler]) VALUES (N'NO_OF_MOTOR_DELIVERY', N'APPROVED', N'NO_OF_MOTOR_DELIVERY', N'integer', N'NO. OF MOTOR DELIVERY', NULL, N'[]', NULL, 0, NULL, NULL)
INSERT [dbo].[businessvariable] ([objid], [state], [name], [datatype], [caption], [description], [arrayvalues], [system], [sortorder], [category], [handler]) VALUES (N'NO_OF_MOTORIZED_TRICYCLES', N'APPROVED', N'NO_OF_MOTORIZED_TRICYCLES', N'integer', N'NO. OF MOTORIZED TRICYCLES', NULL, N'[]', NULL, 0, NULL, NULL)
INSERT [dbo].[businessvariable] ([objid], [state], [name], [datatype], [caption], [description], [arrayvalues], [system], [sortorder], [category], [handler]) VALUES (N'NO_OF_NEON_SB', N'APPROVED', N'NO_OF_NEON_SB', N'integer', N'NO. OF NEON SIGNBOARD', NULL, N'[]', NULL, 0, NULL, NULL)
INSERT [dbo].[businessvariable] ([objid], [state], [name], [datatype], [caption], [description], [arrayvalues], [system], [sortorder], [category], [handler]) VALUES (N'NO_OF_ORDINARY_SB', N'APPROVED', N'NO_OF_ORDINARY_SB', N'integer', N'NO. OF ORDINARY SIGNBOARD', NULL, N'[]', NULL, 0, NULL, NULL)
INSERT [dbo].[businessvariable] ([objid], [state], [name], [datatype], [caption], [description], [arrayvalues], [system], [sortorder], [category], [handler]) VALUES (N'NO_OF_OTHERS_SB', N'APPROVED', N'NO_OF_OTHERS_SB', N'integer', N'NO. OF OTHERS SIGNBOARD', NULL, N'[]', NULL, 0, NULL, NULL)
INSERT [dbo].[businessvariable] ([objid], [state], [name], [datatype], [caption], [description], [arrayvalues], [system], [sortorder], [category], [handler]) VALUES (N'NO_OF_PIT_MANAGERS', N'APPROVED', N'NO_OF_PIT_MANAGERS', N'integer', N'NO. OF PIT MANAGERS', NULL, N'[]', NULL, 0, NULL, NULL)
INSERT [dbo].[businessvariable] ([objid], [state], [name], [datatype], [caption], [description], [arrayvalues], [system], [sortorder], [category], [handler]) VALUES (N'NO_OF_PLUMBING_UNIT', N'APPROVED', N'NO_OF_PLUMBING_UNIT', N'integer', N'NO. OF PLUMBING UNIT', NULL, N'[]', NULL, 0, NULL, NULL)
INSERT [dbo].[businessvariable] ([objid], [state], [name], [datatype], [caption], [description], [arrayvalues], [system], [sortorder], [category], [handler]) VALUES (N'NO_OF_PROMOTERS_HOSTS', N'APPROVED', N'NO_OF_PROMOTERS_HOSTS', N'integer', N'NO. OF PROMOTERS/HOSTS', NULL, N'[]', NULL, 0, NULL, NULL)
INSERT [dbo].[businessvariable] ([objid], [state], [name], [datatype], [caption], [description], [arrayvalues], [system], [sortorder], [category], [handler]) VALUES (N'NO_OF_REFEREES', N'APPROVED', N'NO_OF_REFEREES', N'integer', N'NO. OF REFEREES', NULL, N'[]', NULL, 0, NULL, NULL)
INSERT [dbo].[businessvariable] ([objid], [state], [name], [datatype], [caption], [description], [arrayvalues], [system], [sortorder], [category], [handler]) VALUES (N'NO_OF_ROOMS', N'APPROVED', N'NO_OF_ROOMS', N'integer', N'NO. OF ROOMS', NULL, N'[]', NULL, 0, NULL, NULL)
INSERT [dbo].[businessvariable] ([objid], [state], [name], [datatype], [caption], [description], [arrayvalues], [system], [sortorder], [category], [handler]) VALUES (N'NO_OF_SEATS', N'APPROVED', N'NO_OF_SEATS', N'integer', N'NO. OF SEATS', NULL, N'[]', NULL, 0, NULL, NULL)
INSERT [dbo].[businessvariable] ([objid], [state], [name], [datatype], [caption], [description], [arrayvalues], [system], [sortorder], [category], [handler]) VALUES (N'NO_OF_STUDENTS', N'DRAFT', N'NO_OF_STUDENTS', N'integer', N'NO OF STUDENTS', NULL, N'[]', NULL, 0, NULL, NULL)
INSERT [dbo].[businessvariable] ([objid], [state], [name], [datatype], [caption], [description], [arrayvalues], [system], [sortorder], [category], [handler]) VALUES (N'NO_OF_TABLES', N'APPROVED', N'NO_OF_TABLES', N'integer', N'NO. OF TABLES', N'NO. OF TABLES', N'[]', NULL, 0, NULL, NULL)
INSERT [dbo].[businessvariable] ([objid], [state], [name], [datatype], [caption], [description], [arrayvalues], [system], [sortorder], [category], [handler]) VALUES (N'NO_OF_TOURIST_BUSES_AND_VANS', N'APPROVED', N'NO_OF_TOURIST_BUSES_AND_VANS', N'integer', N'NO. OF TOURIST AND VANS', NULL, N'[]', NULL, 0, NULL, NULL)
INSERT [dbo].[businessvariable] ([objid], [state], [name], [datatype], [caption], [description], [arrayvalues], [system], [sortorder], [category], [handler]) VALUES (N'NO_OF_UNITS', N'APPROVED', N'NO_OF_UNITS', N'integer', N'NO. OF UNITS', NULL, N'[]', NULL, 0, NULL, NULL)
INSERT [dbo].[businessvariable] ([objid], [state], [name], [datatype], [caption], [description], [arrayvalues], [system], [sortorder], [category], [handler]) VALUES (N'NO_OF_WEIGHT_3001KG_OR_MORE', N'APPROVED', N'NO_OF_WEIGHT_3001KG_OR_MORE', N'integer', N'NO. OF WEIGHTS (3001KG OR MORE)', NULL, N'[]', NULL, 0, NULL, NULL)
INSERT [dbo].[businessvariable] ([objid], [state], [name], [datatype], [caption], [description], [arrayvalues], [system], [sortorder], [category], [handler]) VALUES (N'NO_OF_WEIGHT_300KG_TO_3000KG', N'APPROVED', N'NO_OF_WEIGHT_300KG_TO_3000KG', N'integer', N'NO. OF WEIGHTS ( 300KG TO 3000KG)', NULL, N'[]', NULL, 0, NULL, NULL)
INSERT [dbo].[businessvariable] ([objid], [state], [name], [datatype], [caption], [description], [arrayvalues], [system], [sortorder], [category], [handler]) VALUES (N'NO_OF_WEIGHT_30KG_OR_LESS', N'APPROVED', N'NO_OF_WEIGHT_30KG_OR_LESS', N'integer', N'NO. OF WEIGHTS (30KG OR LESS)', NULL, N'[]', NULL, 0, NULL, NULL)
INSERT [dbo].[businessvariable] ([objid], [state], [name], [datatype], [caption], [description], [arrayvalues], [system], [sortorder], [category], [handler]) VALUES (N'NO_OF_WEIGHT_31KG_TO_300KG', N'APPROVED', N'NO_OF_WEIGHT_31KG_TO_300KG', N'integer', N'NO. OF WEIGHTS (31KG TO 300KG)', NULL, N'[]', NULL, 0, NULL, NULL)
INSERT [dbo].[businessvariable] ([objid], [state], [name], [datatype], [caption], [description], [arrayvalues], [system], [sortorder], [category], [handler]) VALUES (N'NUM_EMPLOYEE', N'APPROVED', N'NUM_EMPLOYEE', N'integer', N'NO. OF EMPLOYEES', NULL, N'[]', 1, 0, N'EMPLOYEE INFO', NULL)
INSERT [dbo].[businessvariable] ([objid], [state], [name], [datatype], [caption], [description], [arrayvalues], [system], [sortorder], [category], [handler]) VALUES (N'NUM_EMPLOYEE_FEMALE', N'APPROVED', N'NUM_EMPLOYEE_FEMALE', N'integer', N'NO. OF FEMALE EMPLOYEES', NULL, N'[]', 1, 0, N'EMPLOYEE INFO', NULL)
INSERT [dbo].[businessvariable] ([objid], [state], [name], [datatype], [caption], [description], [arrayvalues], [system], [sortorder], [category], [handler]) VALUES (N'NUM_EMPLOYEE_MALE', N'APPROVED', N'NUM_EMPLOYEE_MALE', N'integer', N'NO. OF MALE EMPLOYEES', NULL, N'[]', 1, 0, N'EMPLOYEE INFO', NULL)
INSERT [dbo].[businessvariable] ([objid], [state], [name], [datatype], [caption], [description], [arrayvalues], [system], [sortorder], [category], [handler]) VALUES (N'NUM_EMPLOYEE_RESIDENT', N'APPROVED', N'NUM_EMPLOYEE_RESIDENT', N'integer', N'NO. OF RESIDENT EMPLOYEES', NULL, N'[]', 1, 0, N'EMPLOYEE RESIDING IN LGU', NULL)
INSERT [dbo].[businessvariable] ([objid], [state], [name], [datatype], [caption], [description], [arrayvalues], [system], [sortorder], [category], [handler]) VALUES (N'OFFICE_TYPE', N'APPROVED', N'OFFICE_TYPE', N'string_array', N'OFFICE TYPE', NULL, N'["MAIN","BRANCH"]', 1, 0, N'GENERAL', NULL)
INSERT [dbo].[businessvariable] ([objid], [state], [name], [datatype], [caption], [description], [arrayvalues], [system], [sortorder], [category], [handler]) VALUES (N'REQUIRE_CEO', N'DRAFT', N'REQUIRE_CEO', N'boolean', N'REQUIRES CITY ENGINEER FEES', NULL, N'[]', 0, 0, N'BUSINESS AREA', NULL)
INSERT [dbo].[businessvariable] ([objid], [state], [name], [datatype], [caption], [description], [arrayvalues], [system], [sortorder], [category], [handler]) VALUES (N'SINGLE_BED', N'DRAFT', N'SINGLE_BED', N'integer', N'SINGLE BED', NULL, N'[]', NULL, 0, NULL, NULL)
INSERT [dbo].[businessvariable] ([objid], [state], [name], [datatype], [caption], [description], [arrayvalues], [system], [sortorder], [category], [handler]) VALUES (N'SINGLE_NO_AC', N'DRAFT', N'SINGLE_NO_AC', N'integer', N'SINGLE NO AC', NULL, N'[]', NULL, 0, NULL, NULL)
INSERT [dbo].[businessvariable] ([objid], [state], [name], [datatype], [caption], [description], [arrayvalues], [system], [sortorder], [category], [handler]) VALUES (N'SUITE', N'DRAFT', N'SUITE', N'integer', N'SUITE', NULL, N'[]', NULL, 0, NULL, NULL)
INSERT [dbo].[businessvariable] ([objid], [state], [name], [datatype], [caption], [description], [arrayvalues], [system], [sortorder], [category], [handler]) VALUES (N'TAX_INCENTIVE_NAME', N'DRAFT', N'TAX_INCENTIVE_NAME', N'string_array', N'TAX INCENTIVE_NAME', NULL, N'[]', 0, 0, N'TAX INCENTIVE', NULL)
INSERT [dbo].[businessvariable] ([objid], [state], [name], [datatype], [caption], [description], [arrayvalues], [system], [sortorder], [category], [handler]) VALUES (N'TOTAL_GROSS', N'APPROVED', N'TOTAL_GROSS', N'decimal', N'TOTAL GROSS', NULL, N'[]', NULL, 0, NULL, NULL)
INSERT [dbo].[businessvariable] ([objid], [state], [name], [datatype], [caption], [description], [arrayvalues], [system], [sortorder], [category], [handler]) VALUES (N'VOLUME_AMT', N'DRAFT', N'VOLUME_AMT', N'integer', N'VOLUME AMT', NULL, N'[]', NULL, 0, NULL, NULL)
INSERT [dbo].[businessvariable] ([objid], [state], [name], [datatype], [caption], [description], [arrayvalues], [system], [sortorder], [category], [handler]) VALUES (N'WAREHOUSE_AREA_SQM', N'DRAFT', N'WAREHOUSE_AREA_SQM', N'decimal', N'AREA OF WAREHOUSE', NULL, N'[]', NULL, 0, NULL, NULL)
INSERT [dbo].[businessvariable] ([objid], [state], [name], [datatype], [caption], [description], [arrayvalues], [system], [sortorder], [category], [handler]) VALUES (N'WITH_AIRCON', N'DRAFT', N'WITH_AIRCON', N'integer', N'WITH AIRCON', NULL, N'[]', NULL, 0, NULL, NULL)
INSERT [dbo].[businessvariable] ([objid], [state], [name], [datatype], [caption], [description], [arrayvalues], [system], [sortorder], [category], [handler]) VALUES (N'WITH_WAREHOUSE', N'DRAFT', N'WITH_WAREHOUSE', N'boolean', N'WITH WAREHOUSE', NULL, N'[]', NULL, 0, NULL, NULL)
INSERT [dbo].[sys_var] ([name], [value], [description], [datatype], [category]) VALUES (N'allow_consolidation_with_balance', N'true', NULL, N'checkbox', N'ASSESSOR')
INSERT [dbo].[sys_var] ([name], [value], [description], [datatype], [category]) VALUES (N'allow_faas_transaction_with_balance', N'1', NULL, N'checkbox', N'ASSESSOR')
INSERT [dbo].[sys_var] ([name], [value], [description], [datatype], [category]) VALUES (N'allow_general_collection_discount', N'0', NULL, N'boolean', N'TC')
INSERT [dbo].[sys_var] ([name], [value], [description], [datatype], [category]) VALUES (N'allow_subdivision_with_balance', N'true', NULL, N'checkbox', N'ASSESSOR')
INSERT [dbo].[sys_var] ([name], [value], [description], [datatype], [category]) VALUES (N'ctc_brgyshare', N'0.50', N'CTC Barangay Share', NULL, N'CTC')
INSERT [dbo].[sys_var] ([name], [value], [description], [datatype], [category]) VALUES (N'current_ry', N'2014', NULL, N'integer', N'ASSESSOR')
INSERT [dbo].[sys_var] ([name], [value], [description], [datatype], [category]) VALUES (N'deposit_collection_by_bank_account', N'1', N'Deposit collection by bank account instead of by fund', N'checkbox', N'TC')
INSERT [dbo].[sys_var] ([name], [value], [description], [datatype], [category]) VALUES (N'deposit_print_date', N'0', NULL, NULL, N'TC')
INSERT [dbo].[sys_var] ([name], [value], [description], [datatype], [category]) VALUES (N'faas_datacapture_allow_edit_av', N'1', NULL, N'checkbox', N'ASSESSOR')
INSERT [dbo].[sys_var] ([name], [value], [description], [datatype], [category]) VALUES (N'gr_ordinance_date', N'2013-04-04', NULL, N'date', N'ASSESSOR')
INSERT [dbo].[sys_var] ([name], [value], [description], [datatype], [category]) VALUES (N'gr_ordinance_no', N'13-5985', NULL, N'text', N'ASSESSOR')
INSERT [dbo].[sys_var] ([name], [value], [description], [datatype], [category]) VALUES (N'gr_renumber_pin', N'0', NULL, N'checkbox', N'ASSESSOR')
INSERT [dbo].[sys_var] ([name], [value], [description], [datatype], [category]) VALUES (N'gr_td_autonumber', N'false', NULL, N'checkbox', N'ASSESSOR')
INSERT [dbo].[sys_var] ([name], [value], [description], [datatype], [category]) VALUES (N'invalid_login_access_date_interval', N'1m', N'number of hours/days access date is moved when failed_login_max_retries is reached( d=days, h=hours)', NULL, NULL)
INSERT [dbo].[sys_var] ([name], [value], [description], [datatype], [category]) VALUES (N'invalid_login_action', N'1', N'0 - suspend 1-move access to a later date', NULL, NULL)
INSERT [dbo].[sys_var] ([name], [value], [description], [datatype], [category]) VALUES (N'invalid_login_max_retries', N'5', N'No. of times a user can retry login before disabling account', NULL, NULL)
INSERT [dbo].[sys_var] ([name], [value], [description], [datatype], [category]) VALUES (N'landtax_certifiedby', N'-', NULL, N'text', N'LANDTAX')
INSERT [dbo].[sys_var] ([name], [value], [description], [datatype], [category]) VALUES (N'landtax_certifiedby_title', N'ASST. CITY TREASURER - OPERATION', NULL, N'text', N'LANDTAX')
INSERT [dbo].[sys_var] ([name], [value], [description], [datatype], [category]) VALUES (N'lgu_objid', N'169', NULL, N'text', N'ASSESSOR')
INSERT [dbo].[sys_var] ([name], [value], [description], [datatype], [category]) VALUES (N'lgu_region', N'REGION X', NULL, NULL, NULL)
INSERT [dbo].[sys_var] ([name], [value], [description], [datatype], [category]) VALUES (N'lgu_type', N'city', N'Type of LGU. Valid values are city, municipality and province', N'text', N'ASSESSOR')
INSERT [dbo].[sys_var] ([name], [value], [description], [datatype], [category]) VALUES (N'pin_autonumber', N'0', NULL, N'checkbox', N'ASSESSOR')
INSERT [dbo].[sys_var] ([name], [value], [description], [datatype], [category]) VALUES (N'pin_parcel_length', N'2', N'The number of digits in pin parcel.', N'integer', N'ASSESSOR')
INSERT [dbo].[sys_var] ([name], [value], [description], [datatype], [category]) VALUES (N'pin_section_length', N'3', N'The number of digits in pin section.', N'integer', N'ASSESSOR')
INSERT [dbo].[sys_var] ([name], [value], [description], [datatype], [category]) VALUES (N'pin_type', N'new', N'PIN Formatting Type valid values: old or new', N'text', N'ASSESSOR')
INSERT [dbo].[sys_var] ([name], [value], [description], [datatype], [category]) VALUES (N'pwd_change_cycle', N'1', N'No. of times the user cannot use a repeating password', NULL, N'SYSTEM')
INSERT [dbo].[sys_var] ([name], [value], [description], [datatype], [category]) VALUES (N'pwd_change_date_interval', N'365M', N'No. of days/months before a user is required to change their password (d=days, M=months)', NULL, N'SYSTEM')
INSERT [dbo].[sys_var] ([name], [value], [description], [datatype], [category]) VALUES (N'pwd_change_login_count', N'0', N'No. of times a user has successfully logged in before changing their password. (0=no limit) ', NULL, N'SYSTEM')
INSERT [dbo].[sys_var] ([name], [value], [description], [datatype], [category]) VALUES (N'receipt_item_printout_count', N'10', NULL, NULL, N'SYSTEM')
INSERT [dbo].[sys_var] ([name], [value], [description], [datatype], [category]) VALUES (N'rpt_round_to_ten_item_assessed_value', N'0', NULL, N'checkbox', N'ASSESSOR')
INSERT [dbo].[sys_var] ([name], [value], [description], [datatype], [category]) VALUES (N'rptbilling_assessed_value_fact_years', N'2002,2013', NULL, NULL, N'LANDTAX')
INSERT [dbo].[sys_var] ([name], [value], [description], [datatype], [category]) VALUES (N'sa_pwd', N'560145c20d7508ecb59223999c4654dd', NULL, NULL, NULL)
INSERT [dbo].[sys_var] ([name], [value], [description], [datatype], [category]) VALUES (N'sangguinan_name', N'SANGGUNIANG PANLUNGSOD', N'sangguinian name', N'text', N'ASSESSOR')
INSERT [dbo].[sys_var] ([name], [value], [description], [datatype], [category]) VALUES (N'secretary_name', NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_var] ([name], [value], [description], [datatype], [category]) VALUES (N'secretary_title', NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_var] ([name], [value], [description], [datatype], [category]) VALUES (N'server_timezone', N'Asia/Shanghai', N'this must be matched with default timezone of server', NULL, NULL)
INSERT [dbo].[sys_var] ([name], [value], [description], [datatype], [category]) VALUES (N'session_timeout_interval', N'1d ', N'expiry dates of inactive session (d=days, h=hours)', NULL, N'SYSTEM')
INSERT [dbo].[sys_var] ([name], [value], [description], [datatype], [category]) VALUES (N'subdivision_allow_equal_area_only', N'1', N'Allow Subdivision with equal area only ', N'checkbox', N'ASSESSOR')
INSERT [dbo].[sys_var] ([name], [value], [description], [datatype], [category]) VALUES (N'system_pwd', N'!12345', N'system password', NULL, N'SYSTEM')
INSERT [dbo].[sys_var] ([name], [value], [description], [datatype], [category]) VALUES (N'td_autonumber', N'true', NULL, N'checkbox', N'ASSESSOR')
INSERT [dbo].[sys_var] ([name], [value], [description], [datatype], [category]) VALUES (N'td_autonumber_sequence_count', N'5', NULL, N'integer', N'ASSESSOR')
INSERT [dbo].[sys_var] ([name], [value], [description], [datatype], [category]) VALUES (N'td_format', N'Y-B', N'Tax Declaration No. format. Options: Y- revision year, M-municipality index, C - city index, D-district index, B=-barangay index', N'text', N'ASSESSOR')
INSERT [dbo].[sys_var] ([name], [value], [description], [datatype], [category]) VALUES (N'td_report_display_appraisedby', N'0', NULL, N'checkbox', N'ASSESSOR')
INSERT [dbo].[sys_var] ([name], [value], [description], [datatype], [category]) VALUES (N'td_report_display_recommendedby', N'0', N'Display Recommended by ', NULL, N'ASSESSOR')
INSERT [dbo].[sys_var] ([name], [value], [description], [datatype], [category]) VALUES (N'td_report_item_format', N'BLGF', N'Valid Values: BLGF or MODIFIED', N'text', N'ASSESSOR')
INSERT [dbo].[sys_var] ([name], [value], [description], [datatype], [category]) VALUES (N'td_show_landinfo_on_improvements', N'1', N'Show the land information such as boundary etc in the improvement tax declaration. Options: 1 - show; 0 - hide', N'checkbox', N'ASSESSOR')
INSERT [dbo].[sys_var] ([name], [value], [description], [datatype], [category]) VALUES (N'url_logo_assessor', N'http://localhost/downloads/images/assessor.png', N'ASSESSOR URL LOG', NULL, N'ASSESSOR')
INSERT [dbo].[sys_var] ([name], [value], [description], [datatype], [category]) VALUES (N'url_logo_lgu', N'http://localhost/downloads/images/lgu.png', N'logo path', NULL, N'LGU')
INSERT [dbo].[sys_var] ([name], [value], [description], [datatype], [category]) VALUES (N'url_logo_treasury', N'http://localhost/downloads/images/treasury.png', N'TREASURY LOGO', NULL, N'TREASURY')
INSERT [dbo].[sys_terminal] ([terminalid], [parentid], [parentcode], [parenttype], [macaddress], [dtregistered], [registeredby], [info], [state]) VALUES (N'T001', NULL, NULL, NULL, N'08-00-27-00-98-25', CAST(0x0000A2E900B66808 AS DateTime), N'EMN', NULL, NULL)
INSERT [dbo].[sys_ruleset] ([name], [title], [packagename], [domain], [role], [permission]) VALUES (N'bpassessment', N'BP Assessment Rules', NULL, N'BPLS', N'DATAMGMT', NULL)
INSERT [dbo].[sys_ruleset] ([name], [title], [packagename], [domain], [role], [permission]) VALUES (N'bpbilling', N'BPLS Billing Rules', NULL, N'BPLS', N'DATAMGMT', NULL)
INSERT [dbo].[sys_ruleset] ([name], [title], [packagename], [domain], [role], [permission]) VALUES (N'bpinfo', N'BP Info', NULL, N'BPLS', N'DATAMGMT', NULL)
INSERT [dbo].[sys_ruleset] ([name], [title], [packagename], [domain], [role], [permission]) VALUES (N'ctccorporate', N'CTC Corporate Assessment Rules', N'ctccorporate', NULL, NULL, NULL)
INSERT [dbo].[sys_ruleset] ([name], [title], [packagename], [domain], [role], [permission]) VALUES (N'ctcindividual', N'CTC Individual Assessment Rules', N'ctcindividual', NULL, NULL, NULL)
INSERT [dbo].[sys_ruleset] ([name], [title], [packagename], [domain], [role], [permission]) VALUES (N'rptbilling', N'RPT Billing Rules', N'rptbilling', NULL, NULL, NULL)
INSERT [dbo].[sys_ruleset] ([name], [title], [packagename], [domain], [role], [permission]) VALUES (N'rptrequirement', N'RPT Requirement Rules', N'rptrequirement', NULL, NULL, NULL)
INSERT [dbo].[sys_rulegroup] ([name], [ruleset], [title], [sortorder]) VALUES (N'ADDITIONAL_TAX', N'ctccorporate', N'Additional Tax Computation', 2)
INSERT [dbo].[sys_rulegroup] ([name], [ruleset], [title], [sortorder]) VALUES (N'ADDITIONAL_TAX', N'ctcindividual', N'Additional Tax Computation', 2)
INSERT [dbo].[sys_rulegroup] ([name], [ruleset], [title], [sortorder]) VALUES (N'AFTER_DISCOUNT', N'rptbilling', N'After Discount Computation', 6)
INSERT [dbo].[sys_rulegroup] ([name], [ruleset], [title], [sortorder]) VALUES (N'AFTER_PENALTY', N'rptbilling', N'After Penalty Computation', 4)
INSERT [dbo].[sys_rulegroup] ([name], [ruleset], [title], [sortorder]) VALUES (N'AFTER_REQUIREMENT', N'rptrequirement', N'After Requirement', 2)
INSERT [dbo].[sys_rulegroup] ([name], [ruleset], [title], [sortorder]) VALUES (N'AFTER_TAX', N'ctccorporate', N'After Tax Computation', 3)
INSERT [dbo].[sys_rulegroup] ([name], [ruleset], [title], [sortorder]) VALUES (N'AFTER_TAX', N'ctcindividual', N'After Tax Computation', 3)
INSERT [dbo].[sys_rulegroup] ([name], [ruleset], [title], [sortorder]) VALUES (N'AFTER_TAX', N'rptbilling', N'After Tax Computation', 2)
INSERT [dbo].[sys_rulegroup] ([name], [ruleset], [title], [sortorder]) VALUES (N'appinfo', N'bpassessment', N'Application Info', 1)
INSERT [dbo].[sys_rulegroup] ([name], [ruleset], [title], [sortorder]) VALUES (N'BRGY_SHARE', N'rptbilling', N'Barangay Share Computation', 15)
INSERT [dbo].[sys_rulegroup] ([name], [ruleset], [title], [sortorder]) VALUES (N'businesstax', N'bpassessment', N'Business Tax Computation', 4)
INSERT [dbo].[sys_rulegroup] ([name], [ruleset], [title], [sortorder]) VALUES (N'default', N'bpinfo', N'Application Info', 0)
INSERT [dbo].[sys_rulegroup] ([name], [ruleset], [title], [sortorder]) VALUES (N'discount', N'bpbilling', N'Discount', 1)
INSERT [dbo].[sys_rulegroup] ([name], [ruleset], [title], [sortorder]) VALUES (N'DISCOUNT', N'rptbilling', N'Discount Computation', 5)
INSERT [dbo].[sys_rulegroup] ([name], [ruleset], [title], [sortorder]) VALUES (N'initial', N'bpbilling', N'Initialization', 0)
INSERT [dbo].[sys_rulegroup] ([name], [ruleset], [title], [sortorder]) VALUES (N'interest', N'bpbilling', N'Interest', 3)
INSERT [dbo].[sys_rulegroup] ([name], [ruleset], [title], [sortorder]) VALUES (N'INTEREST', N'ctccorporate', N'Interest Computation', 4)
INSERT [dbo].[sys_rulegroup] ([name], [ruleset], [title], [sortorder]) VALUES (N'INTEREST', N'ctcindividual', N'Interest Computation', 4)
INSERT [dbo].[sys_rulegroup] ([name], [ruleset], [title], [sortorder]) VALUES (N'LGU_SHARE', N'rptbilling', N'LGU Share Computation', 16)
INSERT [dbo].[sys_rulegroup] ([name], [ruleset], [title], [sortorder]) VALUES (N'othercharge', N'bpassessment', N'Other Charge Computation', 8)
INSERT [dbo].[sys_rulegroup] ([name], [ruleset], [title], [sortorder]) VALUES (N'PENALTY', N'rptbilling', N'Penalty Computation', 3)
INSERT [dbo].[sys_rulegroup] ([name], [ruleset], [title], [sortorder]) VALUES (N'postappinfo', N'bpassessment', N'Post Application Info', 2)
INSERT [dbo].[sys_rulegroup] ([name], [ruleset], [title], [sortorder]) VALUES (N'postbusinesstax', N'bpassessment', N'Post Business Tax Computation', 5)
INSERT [dbo].[sys_rulegroup] ([name], [ruleset], [title], [sortorder]) VALUES (N'postinfo', N'bpinfo', N'Post App Info', 1)
INSERT [dbo].[sys_rulegroup] ([name], [ruleset], [title], [sortorder]) VALUES (N'postothercharge', N'bpassessment', N'Post Other Charge Computation', 9)
INSERT [dbo].[sys_rulegroup] ([name], [ruleset], [title], [sortorder]) VALUES (N'postregfee', N'bpassessment', N'Post Regulatory Fee Computation', 7)
INSERT [dbo].[sys_rulegroup] ([name], [ruleset], [title], [sortorder]) VALUES (N'postsummary', N'bpassessment', N'Postsummary', 11)
INSERT [dbo].[sys_rulegroup] ([name], [ruleset], [title], [sortorder]) VALUES (N'preappinfo', N'bpassessment', N'Pre-Application Info', 0)
INSERT [dbo].[sys_rulegroup] ([name], [ruleset], [title], [sortorder]) VALUES (N'PROV_SHARE', N'rptbilling', N'Province Share Computation', 17)
INSERT [dbo].[sys_rulegroup] ([name], [ruleset], [title], [sortorder]) VALUES (N'regfee', N'bpassessment', N'Regulatory Fee Computation', 6)
INSERT [dbo].[sys_rulegroup] ([name], [ruleset], [title], [sortorder]) VALUES (N'requirement', N'bpassessment', N'Requirements', 3)
INSERT [dbo].[sys_rulegroup] ([name], [ruleset], [title], [sortorder]) VALUES (N'REQUIREMENT', N'rptrequirement', N'Requirement', 1)
INSERT [dbo].[sys_rulegroup] ([name], [ruleset], [title], [sortorder]) VALUES (N'SHARE', N'ctcindividual', N'Barangay Share Computation', 5)
INSERT [dbo].[sys_rulegroup] ([name], [ruleset], [title], [sortorder]) VALUES (N'SUMMARY', N'bpassessment', N'Summary', 10)
INSERT [dbo].[sys_rulegroup] ([name], [ruleset], [title], [sortorder]) VALUES (N'surcharge', N'bpbilling', N'Surcharge', 2)
INSERT [dbo].[sys_rulegroup] ([name], [ruleset], [title], [sortorder]) VALUES (N'TAX', N'ctccorporate', N'Tax Computation', 1)
INSERT [dbo].[sys_rulegroup] ([name], [ruleset], [title], [sortorder]) VALUES (N'TAX', N'ctcindividual', N'Tax Computation', 1)
INSERT [dbo].[sys_rulegroup] ([name], [ruleset], [title], [sortorder]) VALUES (N'TAX', N'rptbilling', N'Tax Computation', 1)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD-10f80dab:141dfb3f0a6:-7e8c', N'RULFACT17d6e7ce:141df4b60c2:-7fd3', N'backtax', N'Is Back Tax?', NULL, 12, N'boolean', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD-10f80dab:141dfb3f0a6:-7e93', N'RULFACT17d6e7ce:141df4b60c2:-7fd3', N'qtrlypaymentpaidontime', N'Is Quarterly Installment Paid On-Time?', NULL, 16, N'boolean', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD-10f80dab:141dfb3f0a6:-7e9a', N'RULFACT17d6e7ce:141df4b60c2:-7fd3', N'qtrlypaymentavailed', N'Is Quarterly Payment Availed?', NULL, 15, N'boolean', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD-10f80dab:141dfb3f0a6:-7ea1', N'RULFACT17d6e7ce:141df4b60c2:-7fd3', N'firstqtrpaidontime', N'1st Qtr Paid On-Time?', NULL, 17, N'boolean', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD17d6e7ce:141df4b60c2:-7c0c', N'RULFACT17d6e7ce:141df4b60c2:-7c21', N'assessedvalue', N'Assessed Value', N'decimal', 2, N'decimal', NULL, NULL, NULL, NULL, NULL, NULL, N'decimal', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD17d6e7ce:141df4b60c2:-7c13', N'RULFACT17d6e7ce:141df4b60c2:-7c21', N'year', N'Year', N'integer', 1, N'integer', NULL, NULL, NULL, NULL, NULL, NULL, N'integer', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD17d6e7ce:141df4b60c2:-7c4a', N'RULFACT17d6e7ce:141df4b60c2:-7fd3', N'originalav', N'Original Assessed Value', N'decimal', 29, N'decimal', NULL, NULL, NULL, NULL, NULL, NULL, N'decimal', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD17d6e7ce:141df4b60c2:-7c51', N'RULFACT17d6e7ce:141df4b60c2:-7fd3', N'firecode', N'Fire Code', N'decimal', 28, N'decimal', NULL, NULL, NULL, NULL, NULL, NULL, N'decimal', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD17d6e7ce:141df4b60c2:-7c58', N'RULFACT17d6e7ce:141df4b60c2:-7fd3', N'sefintamnesty', N'SEF Interest Amnesty', N'decimal', 27, N'decimal', NULL, NULL, NULL, NULL, NULL, NULL, N'decimal', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD17d6e7ce:141df4b60c2:-7c5f', N'RULFACT17d6e7ce:141df4b60c2:-7fd3', N'sefamnesty', N'SEF Amnesty', N'decimal', 26, N'decimal', NULL, NULL, NULL, NULL, NULL, NULL, N'decimal', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD17d6e7ce:141df4b60c2:-7c71', N'RULFACT17d6e7ce:141df4b60c2:-7fd3', N'sefdisc', N'SEF Discount', N'decimal', 24, N'decimal', NULL, NULL, NULL, NULL, NULL, NULL, N'decimal', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD17d6e7ce:141df4b60c2:-7c78', N'RULFACT17d6e7ce:141df4b60c2:-7fd3', N'sefint', N'SEF Interest', N'decimal', 25, N'decimal', NULL, NULL, NULL, NULL, NULL, NULL, N'decimal', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD17d6e7ce:141df4b60c2:-7c7f', N'RULFACT17d6e7ce:141df4b60c2:-7fd3', N'sef', N'SEF', N'decimal', 23, N'decimal', NULL, NULL, NULL, NULL, NULL, NULL, N'decimal', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD17d6e7ce:141df4b60c2:-7c86', N'RULFACT17d6e7ce:141df4b60c2:-7fd3', N'basicintamnesty', N'Basic Interest Amnesty', N'decimal', 22, N'decimal', NULL, NULL, NULL, NULL, NULL, NULL, N'decimal', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD17d6e7ce:141df4b60c2:-7c8d', N'RULFACT17d6e7ce:141df4b60c2:-7fd3', N'basicamnesty', N'Basic Amnesty', N'decimal', 21, N'decimal', NULL, NULL, NULL, NULL, NULL, NULL, N'decimal', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD17d6e7ce:141df4b60c2:-7c94', N'RULFACT17d6e7ce:141df4b60c2:-7fd3', N'basicdisc', N'Basic Discount', N'decimal', 19, N'decimal', NULL, NULL, NULL, NULL, NULL, NULL, N'decimal', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD17d6e7ce:141df4b60c2:-7c9b', N'RULFACT17d6e7ce:141df4b60c2:-7fd3', N'basicint', N'Basic Interest', N'decimal', 20, N'decimal', NULL, NULL, NULL, NULL, NULL, NULL, N'decimal', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD17d6e7ce:141df4b60c2:-7ca2', N'RULFACT17d6e7ce:141df4b60c2:-7fd3', N'basic', N'Basic', N'decimal', 18, N'decimal', NULL, NULL, NULL, NULL, NULL, NULL, N'decimal', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD17d6e7ce:141df4b60c2:-7ca9', N'RULFACT17d6e7ce:141df4b60c2:-7fd3', N'numberofmonthsfromjan', N'No. of Months from January', N'integer', 5, N'integer', NULL, NULL, NULL, NULL, NULL, NULL, N'integer', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD17d6e7ce:141df4b60c2:-7cb0', N'RULFACT17d6e7ce:141df4b60c2:-7fd3', N'numberofmonthsfromqtr', N'No. of Months from Quarter', N'integer', 6, N'integer', NULL, NULL, NULL, NULL, NULL, NULL, N'integer', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD17d6e7ce:141df4b60c2:-7cbf', N'RULFACT17d6e7ce:141df4b60c2:-7fd3', N'actualuse', N'Actual Use', N'string', 9, N'string', N'propertyclassification:lookup', N'objid', N'name', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD17d6e7ce:141df4b60c2:-7ce0', N'RULFACT17d6e7ce:141df4b60c2:-7fd3', N'classification', N'Classification', NULL, 8, N'lookup', N'propertyclassification:lookup', N'objid', N'name', NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD17d6e7ce:141df4b60c2:-7ce7', N'RULFACT17d6e7ce:141df4b60c2:-7fd3', N'rputype', N'Property Type', NULL, 10, N'lov', N'rputype:lookup', N'objid', N'objid', NULL, NULL, NULL, NULL, N'RPT_RPUTYPES')
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD17d6e7ce:141df4b60c2:-7cee', N'RULFACT17d6e7ce:141df4b60c2:-7fd3', N'txntype', N'Txn Type', N'string', 11, N'string', N'txntype:lookup', N'objid', N'objid', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD17d6e7ce:141df4b60c2:-7cf5', N'RULFACT17d6e7ce:141df4b60c2:-7fd3', N'av', N'Assessed Value', N'decimal', 4, N'decimal', NULL, NULL, NULL, NULL, NULL, NULL, N'decimal', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD17d6e7ce:141df4b60c2:-7cfc', N'RULFACT17d6e7ce:141df4b60c2:-7fd3', N'qtr', N'Qtr', N'integer', 3, N'integer', NULL, NULL, NULL, NULL, NULL, NULL, N'integer', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD17d6e7ce:141df4b60c2:-7d03', N'RULFACT17d6e7ce:141df4b60c2:-7fd3', N'year', N'Year', N'integer', 2, N'integer', NULL, NULL, NULL, NULL, NULL, NULL, N'integer', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD184d0b9f:142789765e5:-7da5', N'RULFACT-1f3e2b64:14230dd8f62:-7dd8', N'deadline', N'Deadline Date', N'date', 5, N'date', NULL, NULL, NULL, NULL, NULL, NULL, N'date', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD184d0b9f:142789765e5:-7de2', N'RULFACT-1f3e2b64:14230dd8f62:-7e29', N'deadline', N'Deadline Date', N'date', 5, N'date', NULL, NULL, NULL, NULL, NULL, NULL, N'date', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD184d0b9f:142789765e5:-7e5f', N'RULFACT-1f3e2b64:14230dd8f62:-7eb6', N'deadline', N'Deadline Date', N'date', 6, N'date', NULL, NULL, NULL, NULL, NULL, NULL, N'date', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD-1f3e2b64:14230dd8f62:-7da5', N'RULFACT-1f3e2b64:14230dd8f62:-7dd8', N'expired', N'Expired', N'boolean', 3, N'boolean', NULL, NULL, NULL, NULL, NULL, NULL, N'boolean', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD-1f3e2b64:14230dd8f62:-7db6', N'RULFACT-1f3e2b64:14230dd8f62:-7dd8', N'amtdue', N'Amount Due', N'decimal', 2, N'decimal', NULL, NULL, NULL, NULL, NULL, NULL, N'decimal', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD-1f3e2b64:14230dd8f62:-7dc7', N'RULFACT-1f3e2b64:14230dd8f62:-7dd8', N'acctid', N'Account', N'string', 1, N'lookup', N'revenueitem:lookup', N'objid', N'title', NULL, NULL, NULL, N'string', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD-1f3e2b64:14230dd8f62:-7dfe', N'RULFACT-1f3e2b64:14230dd8f62:-7e29', N'expired', N'Expired', N'boolean', 3, N'boolean', NULL, NULL, NULL, NULL, NULL, NULL, N'boolean', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD-1f3e2b64:14230dd8f62:-7e07', N'RULFACT-1f3e2b64:14230dd8f62:-7e29', N'amtdue', N'Amount Due', N'decimal', 2, N'decimal', NULL, NULL, NULL, NULL, NULL, NULL, N'decimal', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD-1f3e2b64:14230dd8f62:-7e18', N'RULFACT-1f3e2b64:14230dd8f62:-7e29', N'acctid', N'Account', N'string', 1, N'lookup', N'revenueitem:lookup', N'objid', N'title', NULL, NULL, NULL, N'string', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD-1f3e2b64:14230dd8f62:-7e8b', N'RULFACT-1f3e2b64:14230dd8f62:-7eb6', N'expired', N'Expired', N'boolean', 3, N'boolean', NULL, NULL, NULL, NULL, NULL, NULL, N'boolean', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD-1f3e2b64:14230dd8f62:-7e94', N'RULFACT-1f3e2b64:14230dd8f62:-7eb6', N'amtdue', N'Amount Due', N'decimal', 2, N'decimal', NULL, NULL, NULL, NULL, NULL, NULL, N'decimal', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD-1f3e2b64:14230dd8f62:-7ea5', N'RULFACT-1f3e2b64:14230dd8f62:-7eb6', N'acctid', N'Account', N'string', 1, N'lookup', N'revenueitem:lookup', N'objid', N'title', NULL, NULL, NULL, N'string', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD20ce1acc:141e456ed68:-7f35', N'RULFACT20ce1acc:141e456ed68:-7f43', N'month', N'Month', N'integer', 2, N'integer', NULL, NULL, NULL, NULL, NULL, NULL, N'integer', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD20ce1acc:141e456ed68:-7f3c', N'RULFACT20ce1acc:141e456ed68:-7f43', N'qtr', N'Qtr', N'integer', 1, N'integer', NULL, NULL, NULL, NULL, NULL, NULL, N'integer', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD-234b5263:142c77537de:-7af4', N'RULFACT-1f3e2b64:14230dd8f62:-7dd8', N'lob', N'Line of Business', N'string', 6, N'var', NULL, NULL, NULL, NULL, NULL, NULL, N'bpls.facts.LOB', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD-234b5263:142c77537de:-7b3b', N'RULFACT-1f3e2b64:14230dd8f62:-7e29', N'lob', N'Line of Business', N'string', 6, N'var', NULL, NULL, NULL, NULL, NULL, NULL, N'bpls.facts.LOB', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD-234b5263:142c77537de:-7c17', N'RULFACT-1f3e2b64:14230dd8f62:-7eb6', N'lob', N'Line of Business', N'string', 7, N'var', NULL, NULL, NULL, NULL, NULL, NULL, N'bpls.facts.LOB', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD-26aa09fd:1419696e71f:-7fe4', N'RULFACT-26aa09fd:1419696e71f:-7feb', N'apptype', N'App Type', N'BUSINESS_APP_TYPES', 1, N'lov', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'BUSINESS_APP_TYPES')
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD2701c487:141e346f838:-7f17', N'RULFACT17d6e7ce:141df4b60c2:-7fd3', N'rptledgerid', N'LedgerID', N'string', 1, N'string', NULL, NULL, NULL, NULL, NULL, NULL, N'string', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD2701c487:141e346f838:-7f2e', N'RULFACT17d6e7ce:141df4b60c2:-7c21', N'rptledgerid', N'LedgerID', N'string', 3, N'string', NULL, NULL, NULL, NULL, NULL, NULL, N'string', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD2701c487:141e346f838:-7f8e', N'RULFACT17d6e7ce:141df4b60c2:-7fd3', N'advancepayment', N'Is Advance Payment?', NULL, 14, N'boolean', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD2701c487:141e346f838:-7f95', N'RULFACT17d6e7ce:141df4b60c2:-7fd3', N'fullpayment', N'Is Full Payment?', NULL, 13, N'boolean', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD270217d9:143576614a1:-7f94', N'RULFACT17d6e7ce:141df4b60c2:-7fd3', N'reclassed', N'Reclassed?', N'boolean', 30, N'boolean', NULL, NULL, NULL, NULL, NULL, NULL, N'boolean', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD2713811e:141f3ed1502:-7ed5', N'RULFACT-bad19b4:141f3c18435:-7fa9', N'stringvalue', N'Value', N'string', 5, N'string', NULL, NULL, NULL, NULL, NULL, NULL, N'string', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD2713811e:141f3ed1502:-7ede', N'RULFACT-bad19b4:141f3c18435:-7fa9', N'booleanvalue', N'Value', N'boolean', 4, N'boolean', NULL, NULL, NULL, NULL, NULL, NULL, N'boolean', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD2713811e:141f3ed1502:-7ee7', N'RULFACT-bad19b4:141f3c18435:-7fa9', N'intvalue', N'Value', N'integer', 3, N'integer', NULL, NULL, NULL, NULL, NULL, NULL, N'integer', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD2713811e:141f3ed1502:-7ef0', N'RULFACT-bad19b4:141f3c18435:-7fa9', N'decimalvalue', N'Value', N'decimal', 2, N'decimal', NULL, NULL, NULL, NULL, NULL, NULL, N'decimal', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD2e8bac67:1422b41d3b3:-7f30', N'RULFACT2e8bac67:1422b41d3b3:-7f64', N'month', N'Month', N'integer', 3, N'integer', NULL, NULL, NULL, NULL, NULL, NULL, N'integer', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD2e8bac67:1422b41d3b3:-7f4a', N'RULFACT2e8bac67:1422b41d3b3:-7f64', N'year', N'Year', N'integer', 2, N'integer', NULL, NULL, NULL, NULL, NULL, NULL, N'integer', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD2e8bac67:1422b41d3b3:-7f53', N'RULFACT2e8bac67:1422b41d3b3:-7f64', N'qtr', N'Qtr', N'integer', 1, N'integer', NULL, NULL, NULL, NULL, NULL, NULL, N'integer', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD-301ea2a7:142daea52cd:-7a47', N'RULFACT33cb572b:142da8961f6:-7da3', N'interest', N'Interest', N'decimal', 10, N'decimal', NULL, NULL, NULL, NULL, NULL, NULL, N'decimal', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD-301ea2a7:142daea52cd:-7a50', N'RULFACT33cb572b:142da8961f6:-7da3', N'additionaltax', N'Additional Tax', N'decimal', 9, N'decimal', NULL, NULL, NULL, NULL, NULL, NULL, N'decimal', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD-301ea2a7:142daea52cd:-7a59', N'RULFACT33cb572b:142da8961f6:-7da3', N'propertyavtax', N'Property AV Tax', N'decimal', 8, N'decimal', NULL, NULL, NULL, NULL, NULL, NULL, N'decimal', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD-301ea2a7:142daea52cd:-7a67', N'RULFACT33cb572b:142da8961f6:-7da3', N'businessgrosstax', N'Business Gross Tax', N'decimal', 7, N'decimal', NULL, NULL, NULL, NULL, NULL, NULL, N'decimal', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD-301ea2a7:142daea52cd:-7a70', N'RULFACT33cb572b:142da8961f6:-7da3', N'basictax', N'Basic Tax', N'decimal', 6, N'decimal', NULL, NULL, NULL, NULL, NULL, NULL, N'decimal', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD-301ea2a7:142daea52cd:-7a79', N'RULFACT33cb572b:142da8961f6:-7da3', N'additional', N'Is Additional?', N'boolean', 5, N'boolean', NULL, NULL, NULL, NULL, NULL, NULL, N'boolean', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD-301ea2a7:142daea52cd:-7b22', N'RULFACT33cb572b:142da8961f6:-7f96', N'totaltax', N'Total Tax', N'decimal', 17, N'decimal', NULL, NULL, NULL, NULL, NULL, NULL, N'decimal', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD-301ea2a7:142daea52cd:-7b2f', N'RULFACT33cb572b:142da8961f6:-7f96', N'interest', N'Interest', N'decimal', 18, N'decimal', NULL, NULL, NULL, NULL, NULL, NULL, N'decimal', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD-301ea2a7:142daea52cd:-7b3c', N'RULFACT33cb572b:142da8961f6:-7f96', N'additionaltax', N'Additional Tax', N'decimal', 16, N'decimal', NULL, NULL, NULL, NULL, NULL, NULL, N'decimal', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD-301ea2a7:142daea52cd:-7b49', N'RULFACT33cb572b:142da8961f6:-7f96', N'propertyincometax', N'Property Income Tax', N'decimal', 15, N'decimal', NULL, NULL, NULL, NULL, NULL, NULL, N'decimal', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD-301ea2a7:142daea52cd:-7b56', N'RULFACT33cb572b:142da8961f6:-7f96', N'businessgrosstax', N'Business Gross Tax', N'decimal', 14, N'decimal', NULL, NULL, NULL, NULL, NULL, NULL, N'decimal', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD-301ea2a7:142daea52cd:-7b63', N'RULFACT33cb572b:142da8961f6:-7f96', N'salarytax', N'Salary Tax', N'decimal', 13, N'decimal', NULL, NULL, NULL, NULL, NULL, NULL, N'decimal', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD-301ea2a7:142daea52cd:-7b70', N'RULFACT33cb572b:142da8961f6:-7f96', N'basictax', N'Basic Tax', N'decimal', 12, N'decimal', NULL, NULL, NULL, NULL, NULL, NULL, N'decimal', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD-301ea2a7:142daea52cd:-7b7d', N'RULFACT33cb572b:142da8961f6:-7f96', N'additional', N'Is Additional?', N'boolean', 11, N'boolean', NULL, NULL, NULL, NULL, NULL, NULL, N'boolean', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD-301ea2a7:142daea52cd:-7b92', N'RULFACT33cb572b:142da8961f6:-7f96', N'barangayid', N'Barangay', N'string', 10, N'lookup', N'barangay:lookup', N'objid', N'name', NULL, NULL, NULL, N'string', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD33cb572b:142da8961f6:-7d66', N'RULFACT33cb572b:142da8961f6:-7da3', N'newbusiness', N'Is New Business?', N'boolean', 4, N'boolean', NULL, NULL, NULL, NULL, NULL, 0, N'boolean', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD33cb572b:142da8961f6:-7d6f', N'RULFACT33cb572b:142da8961f6:-7da3', N'businessgross', N'Business Gross', N'decimal', 3, N'decimal', NULL, NULL, NULL, NULL, NULL, 0, N'decimal', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD33cb572b:142da8961f6:-7d78', N'RULFACT33cb572b:142da8961f6:-7da3', N'realpropertyav', N'Real Property AV', N'decimal', 2, N'decimal', NULL, NULL, NULL, NULL, NULL, 0, N'decimal', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD33cb572b:142da8961f6:-7d89', N'RULFACT33cb572b:142da8961f6:-7da3', N'orgtype', N'Organization Type', N'string', 1, N'lov', NULL, NULL, NULL, NULL, NULL, 0, N'string', N'BUSINESS_ORG_TYPE')
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD33cb572b:142da8961f6:-7eba', N'RULFACT33cb572b:142da8961f6:-7f96', N'propertyincome', N'Property Income', N'decimal', 9, N'decimal', NULL, NULL, NULL, NULL, NULL, 0, N'decimal', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD33cb572b:142da8961f6:-7ec7', N'RULFACT33cb572b:142da8961f6:-7f96', N'businessgross', N'Business Gross', N'decimal', 8, N'decimal', NULL, NULL, NULL, NULL, NULL, 0, N'decimal', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD33cb572b:142da8961f6:-7ed4', N'RULFACT33cb572b:142da8961f6:-7f96', N'annualsalary', N'Annual Salary', N'decimal', 7, N'decimal', NULL, NULL, NULL, NULL, NULL, 0, N'decimal', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD33cb572b:142da8961f6:-7eed', N'RULFACT33cb572b:142da8961f6:-7f96', N'newbusiness', N'Is New Business?', N'boolean', 6, N'boolean', NULL, NULL, NULL, NULL, NULL, 0, N'boolean', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD33cb572b:142da8961f6:-7efa', N'RULFACT33cb572b:142da8961f6:-7f96', N'seniorcitizen', N'Is Senior Citizen?', N'boolean', 5, N'boolean', NULL, NULL, NULL, NULL, NULL, 0, N'boolean', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD33cb572b:142da8961f6:-7f1f', N'RULFACT33cb572b:142da8961f6:-7f96', N'civilstatus', N'Civil Status', N'string', 4, N'lov', NULL, NULL, NULL, NULL, NULL, 0, N'string', N'CIVIL_STATUS')
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD33cb572b:142da8961f6:-7f4d', N'RULFACT33cb572b:142da8961f6:-7f96', N'gender', N'Gender', N'string', 3, N'lov', NULL, NULL, NULL, NULL, NULL, 0, N'string', N'GENDER')
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD33cb572b:142da8961f6:-7f5a', N'RULFACT33cb572b:142da8961f6:-7f96', N'citizenship', N'Citizenship', N'string', 2, N'lov', NULL, NULL, NULL, NULL, NULL, 0, N'string', N'CITIZENSHIP')
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD33cb572b:142da8961f6:-7f67', N'RULFACT33cb572b:142da8961f6:-7f96', N'profession', N'Profession', N'string', 1, N'string', NULL, NULL, NULL, NULL, NULL, NULL, N'string', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD3a2b180:142b73535d5:-7f95', N'RULFACT3a2b180:142b73535d5:-7fb1', N'year', N'Year', N'integer', 1, N'integer', NULL, NULL, NULL, NULL, NULL, NULL, N'integer', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD40e16e9c:142df3e5af6:-54d8', N'RULFACT40e16e9c:142df3e5af6:-551d', N'day', N'Day', N'integer', 4, N'integer', NULL, NULL, NULL, NULL, NULL, NULL, N'integer', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD40e16e9c:142df3e5af6:-54e7', N'RULFACT40e16e9c:142df3e5af6:-551d', N'month', N'Month', N'integer', 3, N'integer', NULL, NULL, NULL, NULL, NULL, NULL, N'integer', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD40e16e9c:142df3e5af6:-54f6', N'RULFACT40e16e9c:142df3e5af6:-551d', N'qtr', N'Quarter', N'integer', 2, N'integer', NULL, NULL, NULL, NULL, NULL, NULL, N'integer', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD40e16e9c:142df3e5af6:-5505', N'RULFACT40e16e9c:142df3e5af6:-551d', N'year', N'Year', N'integer', 1, N'integer', NULL, NULL, NULL, NULL, NULL, NULL, N'integer', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD-42025b26:14237a79c92:-7f53', N'RULFACT-46f22f55:14231734d86:-7eca', N'date', N'Date', N'date', 4, N'date', NULL, NULL, NULL, NULL, NULL, NULL, N'date', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD-435133e2:142c7ca3c49:-7a9f', N'RULFACT-fd57605:142324ab5d2:-7f33', N'deadline', N'Deadline date', N'date', 5, N'date', NULL, NULL, NULL, NULL, NULL, NULL, N'date', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD-435133e2:142c7ca3c49:-7abe', N'RULFACT-fd57605:142324ab5d2:-7f33', N'beginQtrDate', N'Begin date of Qtr', N'date', 4, N'date', NULL, NULL, NULL, NULL, NULL, NULL, N'date', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD441bb08f:1436c079bff:-7f49', N'RULFACT17d6e7ce:141df4b60c2:-7fd3', N'barangayid', N'Barangay', N'string', 7, N'lookup', N'barangay:lookup', N'objid', N'name', NULL, NULL, NULL, N'string', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD441bb08f:1436c079bff:-7f52', N'RULFACT17d6e7ce:141df4b60c2:-7fd3', N'provintshare', N'Province Interest Share', N'decimal', 36, N'decimal', NULL, NULL, NULL, NULL, NULL, NULL, N'decimal', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD441bb08f:1436c079bff:-7f5b', N'RULFACT17d6e7ce:141df4b60c2:-7fd3', N'provshare', N'Province Share', N'decimal', 35, N'decimal', NULL, NULL, NULL, NULL, NULL, NULL, N'decimal', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD441bb08f:1436c079bff:-7f64', N'RULFACT17d6e7ce:141df4b60c2:-7fd3', N'brgyintshare', N'Barangay Interest Share', N'decimal', 34, N'decimal', NULL, NULL, NULL, NULL, NULL, NULL, N'decimal', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD441bb08f:1436c079bff:-7f6d', N'RULFACT17d6e7ce:141df4b60c2:-7fd3', N'brgyshare', N'Barangay Share', N'decimal', 33, N'decimal', NULL, NULL, NULL, NULL, NULL, NULL, N'decimal', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD441bb08f:1436c079bff:-7f76', N'RULFACT17d6e7ce:141df4b60c2:-7fd3', N'lguintshare', N'LGU Interest Share', N'decimal', 32, N'decimal', NULL, NULL, NULL, NULL, NULL, NULL, N'decimal', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD441bb08f:1436c079bff:-7f7f', N'RULFACT17d6e7ce:141df4b60c2:-7fd3', N'lgushare', N'LGU Share', N'decimal', 31, N'decimal', NULL, NULL, NULL, NULL, NULL, NULL, N'decimal', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD441bb08f:1436c079bff:-7fc1', N'RULFACT17d6e7ce:141df4b60c2:-7c21', N'qtrlyav', N'Quarterly Assessed Value', N'decimal', 4, N'decimal', NULL, NULL, NULL, NULL, NULL, NULL, N'decimal', NULL)
GO
print 'Processed 100 total records'
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD-45a06f70:141e85fbfd5:-7f6f', N'RULFACT-76732870:14196dc4027:-7f87', N'assessmenttype', N'Assessment Type', NULL, 4, N'lov', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'LOB_ASSESSMENT_TYPES')
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD-46f22f55:14231734d86:-7ea7', N'RULFACT-46f22f55:14231734d86:-7eca', N'day', N'Day', N'integer', 3, N'integer', NULL, NULL, NULL, NULL, NULL, NULL, N'integer', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD-46f22f55:14231734d86:-7eb0', N'RULFACT-46f22f55:14231734d86:-7eca', N'year', N'Year', N'integer', 2, N'integer', NULL, NULL, NULL, NULL, NULL, NULL, N'integer', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD-46f22f55:14231734d86:-7eb9', N'RULFACT-46f22f55:14231734d86:-7eca', N'month', N'Month', N'integer', 1, N'integer', NULL, NULL, NULL, NULL, NULL, NULL, N'integer', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD49ae4bad:141e3b6758c:-7b87', N'RULFACT49ae4bad:141e3b6758c:-7ba3', N'day', N'Day', N'integer', 4, N'integer', NULL, NULL, NULL, NULL, NULL, NULL, N'integer', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD49ae4bad:141e3b6758c:-7b8e', N'RULFACT49ae4bad:141e3b6758c:-7ba3', N'month', N'Month', N'integer', 3, N'integer', NULL, NULL, NULL, NULL, NULL, NULL, N'integer', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD49ae4bad:141e3b6758c:-7b95', N'RULFACT49ae4bad:141e3b6758c:-7ba3', N'qtr', N'Quarter', N'integer', 2, N'integer', NULL, NULL, NULL, NULL, NULL, NULL, N'integer', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD49ae4bad:141e3b6758c:-7b9c', N'RULFACT49ae4bad:141e3b6758c:-7ba3', N'year', N'Year', N'integer', 1, N'integer', NULL, NULL, NULL, NULL, NULL, NULL, N'integer', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD49f1ff47:142dfb342ca:-6cc1', N'RULFACT33cb572b:142da8961f6:-7da3', N'totaltax', N'Total Tax', N'decimal', 11, N'decimal', NULL, NULL, NULL, NULL, NULL, NULL, N'decimal', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD49f1ff47:142dfb342ca:-6f4e', N'RULFACT49f1ff47:142dfb342ca:-6f8c', N'day', N'Day', N'integer', 4, N'integer', NULL, NULL, NULL, NULL, NULL, NULL, N'integer', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD49f1ff47:142dfb342ca:-6f5b', N'RULFACT49f1ff47:142dfb342ca:-6f8c', N'month', N'Month', N'integer', 3, N'integer', NULL, NULL, NULL, NULL, NULL, NULL, N'integer', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD49f1ff47:142dfb342ca:-6f68', N'RULFACT49f1ff47:142dfb342ca:-6f8c', N'qtr', N'Qtr', N'integer', 2, N'integer', NULL, NULL, NULL, NULL, NULL, NULL, N'integer', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD49f1ff47:142dfb342ca:-6f75', N'RULFACT49f1ff47:142dfb342ca:-6f8c', N'year', N'Year', N'integer', 1, N'integer', NULL, NULL, NULL, NULL, NULL, NULL, N'integer', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD4a03cdfb:141f9a6dc3c:-7816', N'RULFACT4a03cdfb:141f9a6dc3c:-784a', N'stringvalue', N'Value', N'string', 5, N'string', NULL, NULL, NULL, NULL, NULL, 0, N'string', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD4a03cdfb:141f9a6dc3c:-781f', N'RULFACT4a03cdfb:141f9a6dc3c:-784a', N'intvalue', N'Value', N'integer', 4, N'integer', NULL, NULL, NULL, NULL, NULL, 0, N'integer', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD4a03cdfb:141f9a6dc3c:-7828', N'RULFACT4a03cdfb:141f9a6dc3c:-784a', N'decimalvalue', N'Value', N'decimal', 3, N'decimal', NULL, NULL, NULL, NULL, NULL, 0, N'decimal', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD4a03cdfb:141f9a6dc3c:-7831', N'RULFACT4a03cdfb:141f9a6dc3c:-784a', N'booleanvalue', N'Value', N'boolean', 2, N'boolean', NULL, NULL, NULL, NULL, NULL, 0, N'boolean', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD4a03cdfb:141f9a6dc3c:-783a', N'RULFACT4a03cdfb:141f9a6dc3c:-784a', N'lob', N'Line of Business', N'string', 1, N'var', NULL, NULL, NULL, NULL, NULL, 0, N'bpls.facts.LOB', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD4a03cdfb:141f9a6dc3c:-7b91', N'RULFACT72bb01b1:141b1fdca80:-7f86', N'lowest', N'Is Lowest Amount', N'boolean', 5, N'boolean', NULL, NULL, NULL, NULL, NULL, NULL, N'boolean', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD4a03cdfb:141f9a6dc3c:-7b9a', N'RULFACT72bb01b1:141b1fdca80:-7f86', N'highest', N'Is Highest Amount', N'boolean', 4, N'boolean', NULL, NULL, NULL, NULL, NULL, NULL, N'boolean', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD4b5f47bd:142219e4784:-7f46', N'RULFACT-26aa09fd:1419696e71f:-7feb', N'txnmode', N'Txn Mode', N'string', 4, N'lov', NULL, NULL, NULL, NULL, NULL, NULL, N'string', N'BP_TXNMODES')
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD4ca00100:141fe894560:-7d51', N'RULFACT4ca00100:141fe894560:-7d8e', N'lowest', N'Is Lowest Amount', N'boolean', 5, N'boolean', NULL, NULL, NULL, NULL, NULL, NULL, N'boolean', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD4ca00100:141fe894560:-7d5a', N'RULFACT4ca00100:141fe894560:-7d8e', N'highest', N'Is Highest Amount', N'boolean', 4, N'boolean', NULL, NULL, NULL, NULL, NULL, 0, N'boolean', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD4ca00100:141fe894560:-7d63', N'RULFACT4ca00100:141fe894560:-7d8e', N'amount', N'Amount', N'decimal', 3, N'decimal', NULL, NULL, NULL, NULL, NULL, NULL, N'decimal', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD4ca00100:141fe894560:-7d74', N'RULFACT4ca00100:141fe894560:-7d8e', N'acctid', N'Account', N'string', 2, N'lookup', N'revenueitem:lookup', N'objid', N'title', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD4ca00100:141fe894560:-7d7d', N'RULFACT4ca00100:141fe894560:-7d8e', N'lob', N'Line of Business', N'string', 1, N'var', NULL, NULL, NULL, NULL, NULL, NULL, N'bpls.facts.LOB', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD4ca00100:141fe894560:-7e02', N'RULFACT4ca00100:141fe894560:-7e3f', N'lowest', N'Is Lowest Amount', N'boolean', 5, N'boolean', NULL, NULL, NULL, NULL, NULL, NULL, N'boolean', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD4ca00100:141fe894560:-7e0b', N'RULFACT4ca00100:141fe894560:-7e3f', N'highest', N'Is Highest Amount', N'boolean', 4, N'boolean', NULL, NULL, NULL, NULL, NULL, NULL, N'boolean', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD4ca00100:141fe894560:-7e14', N'RULFACT4ca00100:141fe894560:-7e3f', N'amount', N'Amount', N'decimal', 3, N'decimal', NULL, NULL, NULL, NULL, NULL, NULL, N'decimal', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD4ca00100:141fe894560:-7e25', N'RULFACT4ca00100:141fe894560:-7e3f', N'acctid', N'Account', N'string', 2, N'lookup', N'revenueitem:lookup', N'objid', N'title', NULL, NULL, NULL, N'string', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD4ca00100:141fe894560:-7e2e', N'RULFACT4ca00100:141fe894560:-7e3f', N'lob', N'Line of Business', N'string', 1, N'var', NULL, NULL, NULL, NULL, NULL, NULL, N'bpls.facts.LOB', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD-5c8064e4:143fb646ea9:-7ec0', N'RULFACT-1f3e2b64:14230dd8f62:-7e29', N'surcharge', N'Surcharge', N'decimal', 7, N'decimal', NULL, NULL, NULL, NULL, NULL, NULL, N'decimal', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD5efee916:144597ae7de:-7f0e', N'RULFACT17d6e7ce:141df4b60c2:-7fd3', N'basicdisctaken', N'Basic Discount Taken', N'decimal', 39, N'decimal', NULL, NULL, NULL, NULL, NULL, NULL, N'decimal', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD5efee916:144597ae7de:-7f4b', N'RULFACT17d6e7ce:141df4b60c2:-7fd3', N'basicintpaid', N'Basic Interest Paid', N'decimal', 38, N'decimal', NULL, NULL, NULL, NULL, NULL, NULL, N'decimal', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD5efee916:144597ae7de:-7f72', N'RULFACT17d6e7ce:141df4b60c2:-7fd3', N'basicpaid', N'Basic Paid', N'decimal', 37, N'decimal', NULL, NULL, NULL, NULL, NULL, NULL, N'decimal', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD-62a762db:14201d65080:-7250', N'RULFACT-26aa09fd:1419696e71f:-7feb', N'appqtr', N'App Qtr', N'integer', 9, N'integer', NULL, NULL, NULL, NULL, NULL, NULL, N'integer', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD-62a762db:14201d65080:-72d8', N'RULFACT-26aa09fd:1419696e71f:-7feb', N'appdate', N'App date', N'integer', 8, N'integer', NULL, NULL, NULL, NULL, NULL, NULL, N'integer', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD-62a762db:14201d65080:-72e9', N'RULFACT-26aa09fd:1419696e71f:-7feb', N'appmonth', N'App. Month', N'integer', 7, N'integer', NULL, NULL, NULL, NULL, NULL, NULL, N'integer', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD-62a762db:14201d65080:-72f2', N'RULFACT-26aa09fd:1419696e71f:-7feb', N'appyear', N'Application Year', N'integer', 6, N'integer', NULL, NULL, NULL, NULL, NULL, NULL, N'integer', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD-62a762db:14201d65080:-7303', N'RULFACT-26aa09fd:1419696e71f:-7feb', N'yearstarted', N'Year Applied', N'integer', 5, N'integer', NULL, NULL, NULL, NULL, NULL, NULL, N'integer', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD64302071:14232ed987c:-7f3d', N'RULFACT64302071:14232ed987c:-7f4e', N'type', N'Type', N'string', 1, N'lov', NULL, NULL, NULL, NULL, NULL, NULL, N'string', N'BP_PAYOPTIONS')
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD6d66cc31:1446cc9522e:-7e84', N'RULFACT6d66cc31:1446cc9522e:-7ee1', N'planRequired', N'Approved Plan Required', N'boolean', 3, N'boolean', NULL, NULL, NULL, NULL, NULL, NULL, N'boolean', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD6d66cc31:1446cc9522e:-7ea0', N'RULFACT6d66cc31:1446cc9522e:-7ee1', N'txntypemode', N'Txn Type Mode', N'string', 2, N'lov', NULL, NULL, NULL, NULL, NULL, NULL, N'string', N'RPT_TXN_TYPE_MODES')
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD6d66cc31:1446cc9522e:-7ebd', N'RULFACT6d66cc31:1446cc9522e:-7ee1', N'txntype', N'Txn Type', N'string', 1, N'lov', NULL, NULL, NULL, NULL, NULL, NULL, N'string', N'RPT_TXN_TYPES')
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD72bb01b1:141b1fdca80:-7f45', N'RULFACT72bb01b1:141b1fdca80:-7f86', N'lob', N'Line of Business', NULL, 1, N'var', NULL, NULL, NULL, NULL, NULL, 0, N'bpls.facts.LOB', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD72bb01b1:141b1fdca80:-7f70', N'RULFACT72bb01b1:141b1fdca80:-7f86', N'amount', N'Amount', N'decimal', 3, N'decimal', NULL, NULL, NULL, NULL, NULL, NULL, N'decimal', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD72bb01b1:141b1fdca80:-7f7f', N'RULFACT72bb01b1:141b1fdca80:-7f86', N'acctid', N'Account', NULL, 2, N'lookup', N'revenueitem:lookup', N'objid', N'title', NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD-73089baf:141f3d279b0:-7f78', N'RULFACT-bad19b4:141f3c18435:-7fa9', N'lob', N'Line of Business', NULL, 1, N'var', NULL, NULL, NULL, NULL, NULL, 1, N'bpls.facts.LOB', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD-7387c51c:142dbad3349:-7393', N'RULFACT-7387c51c:142dbad3349:-73aa', N'objid', N'Barangay', N'string', 1, N'lookup', N'barangay:lookup', N'objid', N'name', NULL, NULL, NULL, N'string', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD-76732870:14196dc4027:-7f25', N'RULFACT-76732870:14196dc4027:-7f87', N'classification', N'Classification', N'string', 1, N'lookup', N'lobclassification:lookup', N'objid', N'name', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD-76732870:14196dc4027:-7f80', N'RULFACT-76732870:14196dc4027:-7f87', N'lobid', N'Name', N'string', 2, N'lookup', N'lob:lookup', N'objid', N'name', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD-76732870:14196dc4027:-7fbd', N'RULFACT-26aa09fd:1419696e71f:-7feb', N'barangayid', N'Barangay', N'string', 2, N'lookup', N'barangay:lookup', N'objid', N'name', NULL, NULL, NULL, N'barangay', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD-7c5c4c8f:141e84ee23e:-7f45', N'RULFACT-26aa09fd:1419696e71f:-7feb', N'orgtype', N'Org. Type', NULL, 3, N'lov', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'ORG_TYPES')
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD-7dcd2cc0:1419c36c939:-7f7f', N'RULFACT-76732870:14196dc4027:-7f87', N'attributes', N'Attributes', NULL, 3, N'lookup', N'lobattribute:lookup', N'name', N'name', NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD-7ea493a4:14237a0191b:-7f9d', N'RULFACT-7ea493a4:14237a0191b:-7fb7', N'amtpaid', N'Amount Paid', N'decimal', 2, N'decimal', NULL, NULL, NULL, NULL, NULL, NULL, N'decimal', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD-7ea493a4:14237a0191b:-7fa6', N'RULFACT-7ea493a4:14237a0191b:-7fb7', N'pmtdate', N'Payment Date', N'date', 1, N'date', NULL, NULL, NULL, NULL, NULL, NULL, N'date', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD7ee0ab5e:141b6a15885:-7fd5', N'RULFACT7ee0ab5e:141b6a15885:-7ff1', N'amtdue', N'Amount Due', N'decimal', 1, N'decimal', NULL, NULL, NULL, NULL, NULL, NULL, N'decimal', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD7ee0ab5e:141b6a15885:-7fdc', N'RULFACT7ee0ab5e:141b6a15885:-7ff1', N'qtr', N'Qtr', N'integer', 2, N'integer', NULL, NULL, NULL, NULL, NULL, NULL, N'integer', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD7ee0ab5e:141b6a15885:-7fe3', N'RULFACT7ee0ab5e:141b6a15885:-7ff1', N'year', N'Year', N'integer', 3, N'integer', NULL, NULL, NULL, NULL, NULL, NULL, N'integer', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD7ee0ab5e:141b6a15885:-7fea', N'RULFACT7ee0ab5e:141b6a15885:-7ff1', N'apptype', N'Application Type', NULL, 4, N'lov', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'BUSINESS_APP_TYPES')
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD-fd57605:142324ab5d2:-78ff', N'RULFACT-1f3e2b64:14230dd8f62:-7eb6', N'surcharge', N'Surcharge', N'decimal', 5, N'decimal', NULL, NULL, NULL, NULL, NULL, NULL, N'decimal', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD-fd57605:142324ab5d2:-7e3f', N'RULFACT-1f3e2b64:14230dd8f62:-7dd8', N'qtr', N'Qtr', N'integer', 4, N'integer', NULL, NULL, NULL, NULL, NULL, NULL, N'integer', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD-fd57605:142324ab5d2:-7e7b', N'RULFACT-1f3e2b64:14230dd8f62:-7e29', N'qtr', N'Qtr', N'integer', 4, N'integer', NULL, NULL, NULL, NULL, NULL, NULL, N'integer', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD-fd57605:142324ab5d2:-7eaf', N'RULFACT-1f3e2b64:14230dd8f62:-7eb6', N'qtr', N'Qtr', N'integer', 4, N'integer', NULL, NULL, NULL, NULL, NULL, NULL, N'integer', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD-fd57605:142324ab5d2:-7f08', N'RULFACT-fd57605:142324ab5d2:-7f33', N'qtr', N'Qtr', N'integer', 3, N'integer', NULL, NULL, NULL, NULL, NULL, NULL, N'integer', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD-fd57605:142324ab5d2:-7f19', N'RULFACT-fd57605:142324ab5d2:-7f33', N'year', N'Year', N'integer', 2, N'integer', NULL, NULL, NULL, NULL, NULL, NULL, N'integer', NULL)
INSERT [dbo].[sys_rule_fact_field] ([objid], [parentid], [name], [title], [datatype], [sortorder], [handler], [lookuphandler], [lookupkey], [lookupvalue], [lookupdatatype], [multivalued], [required], [vardatatype], [lovname]) VALUES (N'FACTFLD-fd57605:142324ab5d2:-7f22', N'RULFACT-fd57605:142324ab5d2:-7f33', N'month', N'Month', N'integer', 1, N'integer', NULL, NULL, NULL, NULL, NULL, NULL, N'integer', NULL)
INSERT [dbo].[sys_ruleset_fact] ([ruleset], [rulefact]) VALUES (N'bpassessment', N'RULFACT20ce1acc:141e456ed68:-7f43')
INSERT [dbo].[sys_ruleset_fact] ([ruleset], [rulefact]) VALUES (N'bpassessment', N'RULFACT-26aa09fd:1419696e71f:-7feb')
INSERT [dbo].[sys_ruleset_fact] ([ruleset], [rulefact]) VALUES (N'bpassessment', N'RULFACT3a2b180:142b73535d5:-7fb1')
INSERT [dbo].[sys_ruleset_fact] ([ruleset], [rulefact]) VALUES (N'bpassessment', N'RULFACT4a03cdfb:141f9a6dc3c:-784a')
INSERT [dbo].[sys_ruleset_fact] ([ruleset], [rulefact]) VALUES (N'bpassessment', N'RULFACT4ca00100:141fe894560:-7d8e')
INSERT [dbo].[sys_ruleset_fact] ([ruleset], [rulefact]) VALUES (N'bpassessment', N'RULFACT4ca00100:141fe894560:-7e3f')
INSERT [dbo].[sys_ruleset_fact] ([ruleset], [rulefact]) VALUES (N'bpassessment', N'RULFACT72bb01b1:141b1fdca80:-7f86')
INSERT [dbo].[sys_ruleset_fact] ([ruleset], [rulefact]) VALUES (N'bpassessment', N'RULFACT-76732870:14196dc4027:-7f87')
INSERT [dbo].[sys_ruleset_fact] ([ruleset], [rulefact]) VALUES (N'bpassessment', N'RULFACT-bad19b4:141f3c18435:-7fa9')
INSERT [dbo].[sys_ruleset_fact] ([ruleset], [rulefact]) VALUES (N'bpbilling', N'RULFACT-1f3e2b64:14230dd8f62:-7dd8')
INSERT [dbo].[sys_ruleset_fact] ([ruleset], [rulefact]) VALUES (N'bpbilling', N'RULFACT-1f3e2b64:14230dd8f62:-7e29')
INSERT [dbo].[sys_ruleset_fact] ([ruleset], [rulefact]) VALUES (N'bpbilling', N'RULFACT-1f3e2b64:14230dd8f62:-7eb6')
INSERT [dbo].[sys_ruleset_fact] ([ruleset], [rulefact]) VALUES (N'bpbilling', N'RULFACT20ce1acc:141e456ed68:-7f43')
INSERT [dbo].[sys_ruleset_fact] ([ruleset], [rulefact]) VALUES (N'bpbilling', N'RULFACT-26aa09fd:1419696e71f:-7feb')
INSERT [dbo].[sys_ruleset_fact] ([ruleset], [rulefact]) VALUES (N'bpbilling', N'RULFACT2e8bac67:1422b41d3b3:-7f64')
INSERT [dbo].[sys_ruleset_fact] ([ruleset], [rulefact]) VALUES (N'bpbilling', N'RULFACT-46f22f55:14231734d86:-7eca')
INSERT [dbo].[sys_ruleset_fact] ([ruleset], [rulefact]) VALUES (N'bpbilling', N'RULFACT64302071:14232ed987c:-7f4e')
INSERT [dbo].[sys_ruleset_fact] ([ruleset], [rulefact]) VALUES (N'bpbilling', N'RULFACT-76732870:14196dc4027:-7f87')
INSERT [dbo].[sys_ruleset_fact] ([ruleset], [rulefact]) VALUES (N'bpbilling', N'RULFACT-7ea493a4:14237a0191b:-7fb7')
INSERT [dbo].[sys_ruleset_fact] ([ruleset], [rulefact]) VALUES (N'bpbilling', N'RULFACT7ee0ab5e:141b6a15885:-7ff1')
INSERT [dbo].[sys_ruleset_fact] ([ruleset], [rulefact]) VALUES (N'bpbilling', N'RULFACT-fd57605:142324ab5d2:-7f33')
INSERT [dbo].[sys_ruleset_fact] ([ruleset], [rulefact]) VALUES (N'bpinfo', N'RULFACT20ce1acc:141e456ed68:-7f43')
INSERT [dbo].[sys_ruleset_fact] ([ruleset], [rulefact]) VALUES (N'bpinfo', N'RULFACT-26aa09fd:1419696e71f:-7feb')
INSERT [dbo].[sys_ruleset_fact] ([ruleset], [rulefact]) VALUES (N'bpinfo', N'RULFACT-bad19b4:141f3c18435:-7fa9')
INSERT [dbo].[sys_ruleset_fact] ([ruleset], [rulefact]) VALUES (N'ctccorporate', N'RULFACT33cb572b:142da8961f6:-7da3')
INSERT [dbo].[sys_ruleset_fact] ([ruleset], [rulefact]) VALUES (N'ctccorporate', N'RULFACT49f1ff47:142dfb342ca:-6f8c')
INSERT [dbo].[sys_ruleset_fact] ([ruleset], [rulefact]) VALUES (N'ctcindividual', N'RULFACT33cb572b:142da8961f6:-7f96')
INSERT [dbo].[sys_ruleset_fact] ([ruleset], [rulefact]) VALUES (N'ctcindividual', N'RULFACT40e16e9c:142df3e5af6:-551d')
INSERT [dbo].[sys_ruleset_fact] ([ruleset], [rulefact]) VALUES (N'ctcindividual', N'RULFACT-7387c51c:142dbad3349:-73aa')
INSERT [dbo].[sys_ruleset_fact] ([ruleset], [rulefact]) VALUES (N'rptbilling', N'RULFACT17d6e7ce:141df4b60c2:-7c21')
INSERT [dbo].[sys_ruleset_fact] ([ruleset], [rulefact]) VALUES (N'rptbilling', N'RULFACT17d6e7ce:141df4b60c2:-7fd3')
INSERT [dbo].[sys_ruleset_fact] ([ruleset], [rulefact]) VALUES (N'rptbilling', N'RULFACT49ae4bad:141e3b6758c:-7ba3')
INSERT [dbo].[sys_ruleset_fact] ([ruleset], [rulefact]) VALUES (N'rptrequirement', N'RULFACT6d66cc31:1446cc9522e:-7ee1')
INSERT [dbo].[sys_ruleset_actiondef] ([ruleset], [actiondef]) VALUES (N'bpassessment', N'RULADEF-2ead5abf:1419bd607e6:-7fd9')
INSERT [dbo].[sys_ruleset_actiondef] ([ruleset], [actiondef]) VALUES (N'bpassessment', N'RULADEF33e8cb24:1423c4b40b2:-6aeb')
INSERT [dbo].[sys_ruleset_actiondef] ([ruleset], [actiondef]) VALUES (N'bpassessment', N'RULADEF33e8cb24:1423c4b40b2:-7f34')
INSERT [dbo].[sys_ruleset_actiondef] ([ruleset], [actiondef]) VALUES (N'bpassessment', N'RULADEF367174cc:141a62bd0d8:-4486')
INSERT [dbo].[sys_ruleset_actiondef] ([ruleset], [actiondef]) VALUES (N'bpassessment', N'RULADEF-4a532d76:141ff563063:-7ef4')
INSERT [dbo].[sys_ruleset_actiondef] ([ruleset], [actiondef]) VALUES (N'bpassessment', N'RULADEF-627533eb:141ed7a179f:-7d7d')
INSERT [dbo].[sys_ruleset_actiondef] ([ruleset], [actiondef]) VALUES (N'bpassessment', N'RULADEF-62a762db:14201d65080:-7576')
INSERT [dbo].[sys_ruleset_actiondef] ([ruleset], [actiondef]) VALUES (N'bpassessment', N'RULADEF-67ecfd73:141f2b84ce7:-743c')
INSERT [dbo].[sys_ruleset_actiondef] ([ruleset], [actiondef]) VALUES (N'bpassessment', N'RULADEF-67ecfd73:141f2b84ce7:-7b54')
INSERT [dbo].[sys_ruleset_actiondef] ([ruleset], [actiondef]) VALUES (N'bpassessment', N'RULADEF72bb01b1:141b1fdca80:-7e34')
INSERT [dbo].[sys_ruleset_actiondef] ([ruleset], [actiondef]) VALUES (N'bpassessment', N'RULADEF-738e3cc6:14459101d11:-6b0b')
INSERT [dbo].[sys_ruleset_actiondef] ([ruleset], [actiondef]) VALUES (N'bpassessment', N'RULADEF73d37911:141edb9db9a:-7f30')
INSERT [dbo].[sys_ruleset_actiondef] ([ruleset], [actiondef]) VALUES (N'bpbilling', N'RULADEF-2889615e:142fa67fc85:-7b7c')
INSERT [dbo].[sys_ruleset_actiondef] ([ruleset], [actiondef]) VALUES (N'bpbilling', N'RULADEF-66879e9a:1422b236b58:-7d0f')
INSERT [dbo].[sys_ruleset_actiondef] ([ruleset], [actiondef]) VALUES (N'bpbilling', N'RULADEF-66879e9a:1422b236b58:-7d24')
INSERT [dbo].[sys_ruleset_actiondef] ([ruleset], [actiondef]) VALUES (N'bpbilling', N'RULADEF7ee0ab5e:141b6a15885:-7f52')
INSERT [dbo].[sys_ruleset_actiondef] ([ruleset], [actiondef]) VALUES (N'bpinfo', N'RULADEF367174cc:141a62bd0d8:-4486')
INSERT [dbo].[sys_ruleset_actiondef] ([ruleset], [actiondef]) VALUES (N'bpinfo', N'RULADEF-67ecfd73:141f2b84ce7:-7b54')
INSERT [dbo].[sys_ruleset_actiondef] ([ruleset], [actiondef]) VALUES (N'ctccorporate', N'RULADEF40e16e9c:142df3e5af6:-7ad7')
INSERT [dbo].[sys_ruleset_actiondef] ([ruleset], [actiondef]) VALUES (N'ctccorporate', N'RULADEF40e16e9c:142df3e5af6:-7b1e')
INSERT [dbo].[sys_ruleset_actiondef] ([ruleset], [actiondef]) VALUES (N'ctccorporate', N'RULADEF40e16e9c:142df3e5af6:-7b41')
INSERT [dbo].[sys_ruleset_actiondef] ([ruleset], [actiondef]) VALUES (N'ctccorporate', N'RULADEF40e16e9c:142df3e5af6:-7b7b')
INSERT [dbo].[sys_ruleset_actiondef] ([ruleset], [actiondef]) VALUES (N'ctccorporate', N'RULADEF-7b3bc8de:142e512eedb:-7dc5')
INSERT [dbo].[sys_ruleset_actiondef] ([ruleset], [actiondef]) VALUES (N'ctcindividual', N'RULADEF-301ea2a7:142daea52cd:-7611')
INSERT [dbo].[sys_ruleset_actiondef] ([ruleset], [actiondef]) VALUES (N'ctcindividual', N'RULADEF-301ea2a7:142daea52cd:-7649')
INSERT [dbo].[sys_ruleset_actiondef] ([ruleset], [actiondef]) VALUES (N'ctcindividual', N'RULADEF-301ea2a7:142daea52cd:-7707')
INSERT [dbo].[sys_ruleset_actiondef] ([ruleset], [actiondef]) VALUES (N'ctcindividual', N'RULADEF-301ea2a7:142daea52cd:-776c')
INSERT [dbo].[sys_ruleset_actiondef] ([ruleset], [actiondef]) VALUES (N'ctcindividual', N'RULADEF-301ea2a7:142daea52cd:-7887')
INSERT [dbo].[sys_ruleset_actiondef] ([ruleset], [actiondef]) VALUES (N'ctcindividual', N'RULADEF-301ea2a7:142daea52cd:-7ed8')
INSERT [dbo].[sys_ruleset_actiondef] ([ruleset], [actiondef]) VALUES (N'ctcindividual', N'RULADEF-7387c51c:142dbad3349:-74e2')
INSERT [dbo].[sys_ruleset_actiondef] ([ruleset], [actiondef]) VALUES (N'ctcindividual', N'RULADEF-7387c51c:142dbad3349:-75a7')
INSERT [dbo].[sys_ruleset_actiondef] ([ruleset], [actiondef]) VALUES (N'rptbilling', N'RULADEF17d6e7ce:141df4b60c2:-7e9e')
INSERT [dbo].[sys_ruleset_actiondef] ([ruleset], [actiondef]) VALUES (N'rptbilling', N'RULADEF208348b4:141e2d2bd58:-7b83')
INSERT [dbo].[sys_ruleset_actiondef] ([ruleset], [actiondef]) VALUES (N'rptbilling', N'RULADEF208348b4:141e2d2bd58:-7bdb')
INSERT [dbo].[sys_ruleset_actiondef] ([ruleset], [actiondef]) VALUES (N'rptbilling', N'RULADEF208348b4:141e2d2bd58:-7c7b')
INSERT [dbo].[sys_ruleset_actiondef] ([ruleset], [actiondef]) VALUES (N'rptbilling', N'RULADEF208348b4:141e2d2bd58:-7cba')
INSERT [dbo].[sys_ruleset_actiondef] ([ruleset], [actiondef]) VALUES (N'rptbilling', N'RULADEF208348b4:141e2d2bd58:-7d1e')
INSERT [dbo].[sys_ruleset_actiondef] ([ruleset], [actiondef]) VALUES (N'rptbilling', N'RULADEF208348b4:141e2d2bd58:-7d5f')
INSERT [dbo].[sys_ruleset_actiondef] ([ruleset], [actiondef]) VALUES (N'rptbilling', N'RULADEF208348b4:141e2d2bd58:-7d97')
INSERT [dbo].[sys_ruleset_actiondef] ([ruleset], [actiondef]) VALUES (N'rptbilling', N'RULADEF208348b4:141e2d2bd58:-7dc2')
INSERT [dbo].[sys_ruleset_actiondef] ([ruleset], [actiondef]) VALUES (N'rptbilling', N'RULADEF208348b4:141e2d2bd58:-7de8')
INSERT [dbo].[sys_ruleset_actiondef] ([ruleset], [actiondef]) VALUES (N'rptbilling', N'RULADEF208348b4:141e2d2bd58:-7e60')
INSERT [dbo].[sys_ruleset_actiondef] ([ruleset], [actiondef]) VALUES (N'rptbilling', N'RULADEF441bb08f:1436c079bff:-76b4')
INSERT [dbo].[sys_ruleset_actiondef] ([ruleset], [actiondef]) VALUES (N'rptbilling', N'RULADEF441bb08f:1436c079bff:-771e')
INSERT [dbo].[sys_ruleset_actiondef] ([ruleset], [actiondef]) VALUES (N'rptbilling', N'RULADEF441bb08f:1436c079bff:-77e1')
INSERT [dbo].[sys_ruleset_actiondef] ([ruleset], [actiondef]) VALUES (N'rptbilling', N'RULADEF441bb08f:1436c079bff:-7831')
INSERT [dbo].[sys_ruleset_actiondef] ([ruleset], [actiondef]) VALUES (N'rptbilling', N'RULADEF441bb08f:1436c079bff:-7891')
INSERT [dbo].[sys_ruleset_actiondef] ([ruleset], [actiondef]) VALUES (N'rptbilling', N'RULADEF441bb08f:1436c079bff:-78ee')
INSERT [dbo].[sys_ruleset_actiondef] ([ruleset], [actiondef]) VALUES (N'rptrequirement', N'RULADEF6d66cc31:1446cc9522e:-7d56')
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM14a6f1c4:1419beaa022:-7fcf', N'RULADEF-2ead5abf:1419bd607e6:-7fd9', N'amount', 3, N'Amount', NULL, N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM17d6e7ce:141df4b60c2:-7b72', N'RULADEF17d6e7ce:141df4b60c2:-7e9e', N'revtype', 1, N'Revenue Period', NULL, N'lookup', N'rptrevtype:lookup', N'value', N'value', NULL, NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM17d6e7ce:141df4b60c2:-7b7f', N'RULADEF17d6e7ce:141df4b60c2:-7e9e', N'basicacct', 2, N'Basic Account', NULL, N'lookup', N'revenueitem:lookup', N'objid', N'title', NULL, NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM17d6e7ce:141df4b60c2:-7b86', N'RULADEF17d6e7ce:141df4b60c2:-7e9e', N'expr', 3, N'Computation Formula', NULL, N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM17d6e7ce:141df4b60c2:-7b8d', N'RULADEF17d6e7ce:141df4b60c2:-7e9e', N'rptledger', 4, N'Ledger', NULL, N'var', NULL, NULL, NULL, N'RPTLedgerFact', NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM208348b4:141e2d2bd58:-7b6f', N'RULADEF208348b4:141e2d2bd58:-7b83', N'firecodeacct', 1, N'Account', NULL, N'lookup', N'revenueitem:lookup', N'objid', N'title', NULL, NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM208348b4:141e2d2bd58:-7b76', N'RULADEF208348b4:141e2d2bd58:-7b83', N'expr', 2, N'Computation Formula', NULL, N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM208348b4:141e2d2bd58:-7b7d', N'RULADEF208348b4:141e2d2bd58:-7b83', N'rptledger', 3, N'Ledger', NULL, N'var', NULL, NULL, NULL, N'RPTLedgerFact', NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM208348b4:141e2d2bd58:-7bce', N'RULADEF208348b4:141e2d2bd58:-7bdb', N'expr', 1, N'Computation Formula', NULL, N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM208348b4:141e2d2bd58:-7bd5', N'RULADEF208348b4:141e2d2bd58:-7bdb', N'rptledger', 2, N'Ledger', NULL, N'var', NULL, NULL, NULL, N'RPTLedgerFact', NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM208348b4:141e2d2bd58:-7c6e', N'RULADEF208348b4:141e2d2bd58:-7c7b', N'expr', 1, N'Computation Formula', NULL, N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM208348b4:141e2d2bd58:-7c75', N'RULADEF208348b4:141e2d2bd58:-7c7b', N'rptledger', 2, N'Ledger', NULL, N'var', NULL, NULL, NULL, N'RPTLedgerFact', NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM208348b4:141e2d2bd58:-7cad', N'RULADEF208348b4:141e2d2bd58:-7cba', N'expr', 1, N'Computation Formula', NULL, N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM208348b4:141e2d2bd58:-7cb4', N'RULADEF208348b4:141e2d2bd58:-7cba', N'rptledger', 2, N'Ledger', NULL, N'var', NULL, NULL, NULL, N'RPTLedgerFact', NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM208348b4:141e2d2bd58:-7cfe', N'RULADEF208348b4:141e2d2bd58:-7d1e', N'sefintacct', 1, N'Account', NULL, N'lookup', N'revenueitem:lookup', N'objid', N'title', NULL, NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM208348b4:141e2d2bd58:-7d05', N'RULADEF208348b4:141e2d2bd58:-7d1e', N'expr', 2, N'Computation Formula', NULL, N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM208348b4:141e2d2bd58:-7d18', N'RULADEF208348b4:141e2d2bd58:-7d1e', N'rptledger', 3, N'Ledger', NULL, N'var', NULL, NULL, NULL, N'RPTLedgerFact', NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM208348b4:141e2d2bd58:-7d4b', N'RULADEF208348b4:141e2d2bd58:-7d5f', N'sefacct', 1, N'Account', NULL, N'lookup', N'revenueitem:lookup', N'objid', N'title', NULL, NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM208348b4:141e2d2bd58:-7d52', N'RULADEF208348b4:141e2d2bd58:-7d5f', N'expr', 2, N'Computation Formula', NULL, N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM208348b4:141e2d2bd58:-7d59', N'RULADEF208348b4:141e2d2bd58:-7d5f', N'rptledger', 3, N'Ledger', NULL, N'var', NULL, NULL, NULL, N'RPTLedgerFact', NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM208348b4:141e2d2bd58:-7d8a', N'RULADEF208348b4:141e2d2bd58:-7d97', N'expr', 1, N'Computation Formula', NULL, N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM208348b4:141e2d2bd58:-7d91', N'RULADEF208348b4:141e2d2bd58:-7d97', N'rptledger', 2, N'Ledger', NULL, N'var', NULL, NULL, NULL, N'RPTLedgerFact', NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM208348b4:141e2d2bd58:-7db5', N'RULADEF208348b4:141e2d2bd58:-7dc2', N'expr', 1, N'Computation Formula', NULL, N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM208348b4:141e2d2bd58:-7dbc', N'RULADEF208348b4:141e2d2bd58:-7dc2', N'rptledger', 2, N'Ledger', NULL, N'var', NULL, NULL, NULL, N'RPTLedgerFact', NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM208348b4:141e2d2bd58:-7ddb', N'RULADEF208348b4:141e2d2bd58:-7de8', N'expr', 1, N'Computation Formula', NULL, N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM208348b4:141e2d2bd58:-7de2', N'RULADEF208348b4:141e2d2bd58:-7de8', N'rptledger', 2, N'Ledger', NULL, N'var', NULL, NULL, NULL, N'RPTLedgerFact', NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM208348b4:141e2d2bd58:-7e4c', N'RULADEF208348b4:141e2d2bd58:-7e60', N'basicintacct', 1, N'Account', NULL, N'lookup', N'revenueitem:lookup', N'objid', N'title', NULL, NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM208348b4:141e2d2bd58:-7e53', N'RULADEF208348b4:141e2d2bd58:-7e60', N'expr', 2, N'Computation Formula', NULL, N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM208348b4:141e2d2bd58:-7e5a', N'RULADEF208348b4:141e2d2bd58:-7e60', N'rptledger', 3, N'Ledger', NULL, N'var', NULL, NULL, NULL, N'RPTLedgerFact', NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM-2889615e:142fa67fc85:-7b71', N'RULADEF-2889615e:142fa67fc85:-7b7c', N'billitem', 1, N'Bill Item Account', NULL, N'var', NULL, NULL, NULL, N'bpls.facts.BillItem', NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM-301ea2a7:142daea52cd:-75fd', N'RULADEF-301ea2a7:142daea52cd:-7611', N'expr', 3, N'Computation', NULL, N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM-301ea2a7:142daea52cd:-7606', N'RULADEF-301ea2a7:142daea52cd:-7611', N'ctc', 1, N'CTC', NULL, N'var', NULL, NULL, NULL, N'IndividualCTC', NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM-301ea2a7:142daea52cd:-7635', N'RULADEF-301ea2a7:142daea52cd:-7649', N'expr', 2, N'Computation', NULL, N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM-301ea2a7:142daea52cd:-763e', N'RULADEF-301ea2a7:142daea52cd:-7649', N'ctc', 1, N'CTC', NULL, N'var', NULL, NULL, NULL, N'IndividualCTC', NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM-301ea2a7:142daea52cd:-76f5', N'RULADEF-301ea2a7:142daea52cd:-7707', N'expr', 2, N'Computation', NULL, N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM-301ea2a7:142daea52cd:-76fc', N'RULADEF-301ea2a7:142daea52cd:-7707', N'ctc', 1, N'CTC', NULL, N'var', NULL, NULL, NULL, N'IndividualCTC', NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM-301ea2a7:142daea52cd:-773d', N'RULADEF-301ea2a7:142daea52cd:-776c', N'expr', 2, N'Computation', NULL, N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM-301ea2a7:142daea52cd:-7744', N'RULADEF-301ea2a7:142daea52cd:-776c', N'ctc', 1, N'CTC', NULL, N'var', NULL, NULL, NULL, N'IndividualCTC', NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM-301ea2a7:142daea52cd:-7875', N'RULADEF-301ea2a7:142daea52cd:-7887', N'expr', 2, N'Computation', NULL, N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM-301ea2a7:142daea52cd:-787c', N'RULADEF-301ea2a7:142daea52cd:-7887', N'ctc', 1, N'CTC', NULL, N'var', NULL, NULL, NULL, N'IndividualCTC', NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM-301ea2a7:142daea52cd:-7ebc', N'RULADEF-301ea2a7:142daea52cd:-7ed8', N'expr', 3, N'Computation', NULL, N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM-301ea2a7:142daea52cd:-7ec3', N'RULADEF-301ea2a7:142daea52cd:-7ed8', N'ctc', 1, N'CTC', NULL, N'var', NULL, NULL, NULL, N'IndividualCTC', NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM33e8cb24:1423c4b40b2:-6adc', N'RULADEF33e8cb24:1423c4b40b2:-6aeb', N'taxfeeaccount', 1, N'Tax Fee Account', NULL, N'var', NULL, NULL, NULL, N'bpls.facts.TaxFeeAccount', NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM33e8cb24:1423c4b40b2:-7e2a', N'RULADEF33e8cb24:1423c4b40b2:-7f34', N'taxfee', 1, N'Tax Fee Account', NULL, N'var', NULL, NULL, NULL, N'bpls.facts.TaxFeeAccount', NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM367174cc:141a62bd0d8:18c4', N'RULADEF367174cc:141a62bd0d8:-4486', N'attribute', 2, N'Attribute', NULL, N'lookup', N'businessvariable:lookup', N'objid', N'name', N'string', NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM-38b4c365:141f3574da5:-7f8f', N'RULADEF-67ecfd73:141f2b84ce7:-743c', N'aggregate', 2, N'Aggregate Type', NULL, N'lov', NULL, NULL, NULL, NULL, N'RULE_AGGREGATE_FUNCTIONS')
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM-3f19ce39:141ff0de421:-7e8a', N'RULADEF72bb01b1:141b1fdca80:-7e34', N'taxfee', 1, N'Tax Fee', NULL, N'var', NULL, NULL, NULL, N'bpls.facts.TaxFeeAccount', NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM40e16e9c:142df3e5af6:-6fed', N'RULADEF40e16e9c:142df3e5af6:-7ad7', N'ctc', 1, N'CTC Reference', NULL, N'var', NULL, NULL, NULL, N'CorporateCTC', NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM40e16e9c:142df3e5af6:-704f', N'RULADEF40e16e9c:142df3e5af6:-7b1e', N'ctc', 1, N'CTC Reference', NULL, N'var', NULL, NULL, NULL, N'CorporateCTC', NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM40e16e9c:142df3e5af6:-7073', N'RULADEF40e16e9c:142df3e5af6:-7b41', N'ctc', 1, N'CTC Reference', NULL, N'var', NULL, NULL, NULL, N'CorporateCTC', NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM40e16e9c:142df3e5af6:-70b1', N'RULADEF40e16e9c:142df3e5af6:-7b7b', N'ctc', 1, N'CTC Reference', NULL, N'var', NULL, NULL, NULL, N'CorporateCTC', NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM40e16e9c:142df3e5af6:-7abf', N'RULADEF40e16e9c:142df3e5af6:-7ad7', N'expr', 3, N'Computation', NULL, N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM40e16e9c:142df3e5af6:-7acc', N'RULADEF40e16e9c:142df3e5af6:-7ad7', N'acct', 2, N'Account', NULL, N'lookup', N'revenueitem:lookup', N'objid', N'title', NULL, NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM40e16e9c:142df3e5af6:-7b13', N'RULADEF40e16e9c:142df3e5af6:-7b1e', N'expr', 2, N'Computation', NULL, N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM40e16e9c:142df3e5af6:-7b36', N'RULADEF40e16e9c:142df3e5af6:-7b41', N'expr', 2, N'Computation', NULL, N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM40e16e9c:142df3e5af6:-7b62', N'RULADEF40e16e9c:142df3e5af6:-7b7b', N'expr', 3, N'Computation', NULL, N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM40e16e9c:142df3e5af6:-7b70', N'RULADEF40e16e9c:142df3e5af6:-7b7b', N'acct', 2, N'Account', NULL, N'lookup', N'revenueitem:lookup', N'objid', N'title', NULL, NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM-42dc4039:141afcf5119:-7e59', N'RULADEF367174cc:141a62bd0d8:-4486', N'lob', 1, N'Line of Business', NULL, N'var', NULL, NULL, NULL, N'bpls.facts.LOB', NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM-42dc4039:141afcf5119:-7fc4', N'RULADEF-2ead5abf:1419bd607e6:-7fd9', N'account', 2, N'Account', NULL, N'lookup', N'revenueitem:lookup', N'objid', N'title', NULL, NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM441bb08f:1436c079bff:-7697', N'RULADEF441bb08f:1436c079bff:-76b4', N'expr', 3, N'Computation', NULL, N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM441bb08f:1436c079bff:-76a4', N'RULADEF441bb08f:1436c079bff:-76b4', N'brgyintshareacct', 2, N'Account', NULL, N'lookup', N'revenueitem:lookup', N'objid', N'title', NULL, NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM441bb08f:1436c079bff:-76ab', N'RULADEF441bb08f:1436c079bff:-76b4', N'rptledger', 1, N'Ledger Reference', NULL, N'var', NULL, NULL, NULL, N'RPTLedgerFact', NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM441bb08f:1436c079bff:-76ff', N'RULADEF441bb08f:1436c079bff:-771e', N'expr', 3, N'Computation', NULL, N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM441bb08f:1436c079bff:-770c', N'RULADEF441bb08f:1436c079bff:-771e', N'brgyshareacct', 2, N'Account', NULL, N'lookup', N'revenueitem:lookup', N'objid', N'title', NULL, NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM441bb08f:1436c079bff:-7713', N'RULADEF441bb08f:1436c079bff:-771e', N'rptledger', 1, N'Ledger Reference', NULL, N'var', NULL, NULL, NULL, N'RPTLedgerFact', NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM441bb08f:1436c079bff:-77cf', N'RULADEF441bb08f:1436c079bff:-77e1', N'expr', 2, N'Computation', NULL, N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM441bb08f:1436c079bff:-77d6', N'RULADEF441bb08f:1436c079bff:-77e1', N'rptledger', 1, N'Ledger Reference', NULL, N'var', NULL, NULL, NULL, N'RPTLedgerFact', NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM441bb08f:1436c079bff:-781f', N'RULADEF441bb08f:1436c079bff:-7831', N'expr', 2, N'Computation', NULL, N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM441bb08f:1436c079bff:-7826', N'RULADEF441bb08f:1436c079bff:-7831', N'rptledger', 1, N'Ledger Reference', NULL, N'var', NULL, NULL, NULL, N'RPTLedgerFact', NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM441bb08f:1436c079bff:-7872', N'RULADEF441bb08f:1436c079bff:-7891', N'expr', 3, N'Computation', NULL, N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM441bb08f:1436c079bff:-787f', N'RULADEF441bb08f:1436c079bff:-7891', N'provintshareacct', 2, N'Account', NULL, N'lookup', N'revenueitem:lookup', N'objid', N'title', NULL, NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM441bb08f:1436c079bff:-7886', N'RULADEF441bb08f:1436c079bff:-7891', N'rptledger', 1, N'Ledger Reference', NULL, N'var', NULL, NULL, NULL, N'RPTLedgerFact', NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM441bb08f:1436c079bff:-78cf', N'RULADEF441bb08f:1436c079bff:-78ee', N'expr', 3, N'Computation', NULL, N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM441bb08f:1436c079bff:-78dc', N'RULADEF441bb08f:1436c079bff:-78ee', N'provshareacct', 2, N'Account', NULL, N'lookup', N'revenueitem:lookup', N'objid', N'title', NULL, NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM441bb08f:1436c079bff:-78e3', N'RULADEF441bb08f:1436c079bff:-78ee', N'rptledger', 1, N'Ledger Reference', NULL, N'var', NULL, NULL, NULL, N'RPTLedgerFact', NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM-4a532d76:141ff563063:-7edf', N'RULADEF-4a532d76:141ff563063:-7ef4', N'step', 2, N'Required Before', NULL, N'lov', NULL, NULL, NULL, NULL, N'BP_APPLICATION_STEPS')
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM-4a532d76:141ff563063:-7eec', N'RULADEF-4a532d76:141ff563063:-7ef4', N'type', 1, N'Requirement Type', NULL, N'lookup', N'businessrequirement:lookup', N'objid', N'title', NULL, NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM61c9e5c1:1423cdbf146:-7dcd', N'RULADEF33e8cb24:1423c4b40b2:-6aeb', N'selectoption', 2, N'Select Option', NULL, N'lov', NULL, NULL, NULL, NULL, N'TAXFEE_SELECT_OPTION')
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM-627533eb:141ed7a179f:-7d61', N'RULADEF-627533eb:141ed7a179f:-7d7d', N'amount', 3, N'Amount', NULL, N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM-627533eb:141ed7a179f:-7d6e', N'RULADEF-627533eb:141ed7a179f:-7d7d', N'account', 2, N'Account', NULL, N'lookup', N'revenueitem:lookup', N'objid', N'title', NULL, NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM-627533eb:141ed7a179f:-7d75', N'RULADEF-627533eb:141ed7a179f:-7d7d', N'lob', 1, N'Line of Business', NULL, N'var', NULL, NULL, NULL, N'bpls.facts.LOB', NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM-62a762db:14201d65080:-756e', N'RULADEF-62a762db:14201d65080:-7576', N'message', 1, N'Message', NULL, N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM-66879e9a:1422b236b58:-7b1c', N'RULADEF-66879e9a:1422b236b58:-7d0f', N'amount', 2, N'Amount', NULL, N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM-66879e9a:1422b236b58:-7b23', N'RULADEF-66879e9a:1422b236b58:-7d0f', N'billitem', 1, N'Bill Item', NULL, N'var', NULL, NULL, NULL, N'bpls.facts.BillItem', NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM-66879e9a:1422b236b58:-7b40', N'RULADEF-66879e9a:1422b236b58:-7d24', N'amount', 2, N'Amount', NULL, N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM-66879e9a:1422b236b58:-7b47', N'RULADEF-66879e9a:1422b236b58:-7d24', N'billitem', 1, N'Bill Item', NULL, N'var', NULL, NULL, NULL, N'bpls.facts.BillItem', NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM-66879e9a:1422b236b58:-7ca9', N'RULADEF7ee0ab5e:141b6a15885:-7f52', N'billitem', 1, N'Bill Item', NULL, N'var', NULL, NULL, NULL, N'bpls.facts.BillItem', NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM-67ecfd73:141f2b84ce7:-724b', N'RULADEF-67ecfd73:141f2b84ce7:-743c', N'datatype', 3, N'Value Data Type', NULL, N'lov', NULL, NULL, NULL, NULL, N'RULE_VAR_DATATYPE')
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM-67ecfd73:141f2b84ce7:-739d', N'RULADEF-67ecfd73:141f2b84ce7:-743c', N'value', 4, N'Value', NULL, N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM-67ecfd73:141f2b84ce7:-73a4', N'RULADEF-67ecfd73:141f2b84ce7:-743c', N'name', 1, N'Variable Name', N'string', N'string', NULL, NULL, NULL, N'string', NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM-67ecfd73:141f2b84ce7:-79b7', N'RULADEF-67ecfd73:141f2b84ce7:-7b54', N'value', 3, N'Value', NULL, N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM-67ecfd73:141f2b84ce7:-7a33', N'RULADEF-67ecfd73:141f2b84ce7:-7b54', N'attribute', 2, N'Attribute', NULL, N'lookup', N'businessvariable:lookup', N'objid', N'name', NULL, NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM-67ecfd73:141f2b84ce7:-7b4c', N'RULADEF-67ecfd73:141f2b84ce7:-7b54', N'lob', 1, N'Line of Business', NULL, N'var', NULL, NULL, NULL, N'bpls.facts.LOB', NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM6d66cc31:1446cc9522e:-7d3c', N'RULADEF6d66cc31:1446cc9522e:-7d56', N'requirementtype', 1, N'Requirement Type', NULL, N'lookup', N'rptrequirementtype:lookup', N'objid', N'name', NULL, NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM-70cdc17d:141ab4f4c27:-7ebb', N'RULADEF-2ead5abf:1419bd607e6:-7fd9', N'lob', 1, N'LOB', NULL, N'var', NULL, NULL, NULL, N'bpls.facts.LOB', NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM72bb01b1:141b1fdca80:-7d98', N'RULADEF72bb01b1:141b1fdca80:-7e34', N'amount', 2, N'Amount', NULL, N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM-7387c51c:142dbad3349:-725b', N'RULADEF-7387c51c:142dbad3349:-74e2', N'brgy', 1, N'Barangay', NULL, N'var', NULL, NULL, NULL, N'Barangay', NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM-7387c51c:142dbad3349:-7299', N'RULADEF-7387c51c:142dbad3349:-75a7', N'brgy', 1, N'Barangay', NULL, N'var', NULL, NULL, NULL, N'Barangay', NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM-7387c51c:142dbad3349:-74cc', N'RULADEF-7387c51c:142dbad3349:-74e2', N'expr', 3, N'Computation', NULL, N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM-7387c51c:142dbad3349:-74d9', N'RULADEF-7387c51c:142dbad3349:-74e2', N'acct', 2, N'Account', NULL, N'lookup', N'revenueitem:lookup', N'objid', N'title', NULL, NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM-7387c51c:142dbad3349:-7560', N'RULADEF-7387c51c:142dbad3349:-75a7', N'expr', 3, N'Computation', NULL, N'expression', NULL, NULL, NULL, NULL, NULL)
GO
print 'Processed 100 total records'
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM-7387c51c:142dbad3349:-7580', N'RULADEF-7387c51c:142dbad3349:-75a7', N'acct', 2, N'Account', NULL, N'lookup', N'revenueitem:lookup', N'objid', N'title', NULL, NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM-7387c51c:142dbad3349:-77cd', N'RULADEF-301ea2a7:142daea52cd:-7611', N'acct', 2, N'Account', NULL, N'lookup', N'revenueitem:lookup', N'objid', N'title', NULL, NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM-7387c51c:142dbad3349:-7801', N'RULADEF-301ea2a7:142daea52cd:-7ed8', N'acct', 2, N'Account', NULL, N'lookup', N'revenueitem:lookup', N'objid', N'title', NULL, NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM-738e3cc6:14459101d11:-6afb', N'RULADEF-738e3cc6:14459101d11:-6b0b', N'account', 2, N'Business Account', NULL, N'lookup', N'revenueitem:lookup', N'objid', N'title', NULL, NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM-738e3cc6:14459101d11:-6b02', N'RULADEF-738e3cc6:14459101d11:-6b0b', N'taxfee', 1, N'Tax Fee Account', NULL, N'var', NULL, NULL, NULL, N'bpls.facts.TaxFeeAccount', NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM-738e3cc6:14459101d11:-7f43', N'RULADEF-66879e9a:1422b236b58:-7d24', N'account', 3, N'Interest Account', NULL, N'lookup', N'revenueitem:lookup', N'objid', N'title', NULL, NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM-738e3cc6:14459101d11:-7f63', N'RULADEF7ee0ab5e:141b6a15885:-7f52', N'account', 3, N'Surcharge Account', NULL, N'lookup', N'revenueitem:lookup', N'objid', N'title', NULL, NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM73d37911:141edb9db9a:-7f14', N'RULADEF73d37911:141edb9db9a:-7f30', N'amount', 3, N'Amount', NULL, N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM73d37911:141edb9db9a:-7f21', N'RULADEF73d37911:141edb9db9a:-7f30', N'account', 2, N'Account', NULL, N'lookup', N'revenueitem:lookup', N'objid', N'title', NULL, NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM73d37911:141edb9db9a:-7f28', N'RULADEF73d37911:141edb9db9a:-7f30', N'lob', 1, N'Line of Business', NULL, N'var', NULL, NULL, NULL, N'bpls.facts.LOB', NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM-7b3bc8de:142e512eedb:-7daf', N'RULADEF-7b3bc8de:142e512eedb:-7dc5', N'expr', 2, N'Computation', NULL, N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM-7b3bc8de:142e512eedb:-7db6', N'RULADEF-7b3bc8de:142e512eedb:-7dc5', N'ctc', 1, N'CTC Reference', NULL, N'var', NULL, NULL, NULL, N'CorporateCTC', NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM7c61bd6d:1423fce917f:-7e73', N'RULADEF367174cc:141a62bd0d8:-4486', N'defaultvalue', 3, N'Default Value', N'string', N'string', NULL, NULL, NULL, N'string', NULL)
INSERT [dbo].[sys_rule_actiondef_param] ([objid], [parentid], [name], [sortorder], [title], [datatype], [handler], [lookuphandler], [lookupkey], [lookupvalue], [vardatatype], [lovname]) VALUES (N'ACTPARAM7ee0ab5e:141b6a15885:-7f4c', N'RULADEF7ee0ab5e:141b6a15885:-7f52', N'amount', 2, N'Amount', NULL, N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[afserial] ([objid], [serieslength]) VALUES (N'0016', 8)
INSERT [dbo].[afserial] ([objid], [serieslength]) VALUES (N'51', 7)
INSERT [dbo].[afserial] ([objid], [serieslength]) VALUES (N'52', 7)
INSERT [dbo].[afserial] ([objid], [serieslength]) VALUES (N'53', 7)
INSERT [dbo].[afserial] ([objid], [serieslength]) VALUES (N'54', 7)
INSERT [dbo].[afserial] ([objid], [serieslength]) VALUES (N'56', 7)
INSERT [dbo].[afserial] ([objid], [serieslength]) VALUES (N'57', 7)
INSERT [dbo].[afserial] ([objid], [serieslength]) VALUES (N'58', 7)
INSERT [dbo].[afserial] ([objid], [serieslength]) VALUES (N'907', 8)
INSERT [dbo].[cashticket] ([objid], [denomination]) VALUES (N'CT1', CAST(1.00 AS Decimal(10, 2)))
INSERT [dbo].[cashticket] ([objid], [denomination]) VALUES (N'CT10', CAST(10.00 AS Decimal(10, 2)))
INSERT [dbo].[cashticket] ([objid], [denomination]) VALUES (N'CT2', CAST(2.00 AS Decimal(10, 2)))
INSERT [dbo].[cashticket] ([objid], [denomination]) VALUES (N'CT5', CAST(5.00 AS Decimal(10, 2)))
INSERT [dbo].[stockitem_unit] ([itemid], [unit], [qty]) VALUES (N'0016', N'STUB', 50)
INSERT [dbo].[stockitem_unit] ([itemid], [unit], [qty]) VALUES (N'51', N'STUB', 50)
INSERT [dbo].[stockitem_unit] ([itemid], [unit], [qty]) VALUES (N'52', N'STUB', 50)
INSERT [dbo].[stockitem_unit] ([itemid], [unit], [qty]) VALUES (N'53', N'STUB', 50)
INSERT [dbo].[stockitem_unit] ([itemid], [unit], [qty]) VALUES (N'54', N'STUB', 50)
INSERT [dbo].[stockitem_unit] ([itemid], [unit], [qty]) VALUES (N'56', N'STUB', 50)
INSERT [dbo].[stockitem_unit] ([itemid], [unit], [qty]) VALUES (N'57', N'STUB', 50)
INSERT [dbo].[stockitem_unit] ([itemid], [unit], [qty]) VALUES (N'58', N'STUB', 50)
INSERT [dbo].[stockitem_unit] ([itemid], [unit], [qty]) VALUES (N'907', N'STUB', 50)
INSERT [dbo].[stockitem_unit] ([itemid], [unit], [qty]) VALUES (N'CT1', N'PAD', 2000)
INSERT [dbo].[stockitem_unit] ([itemid], [unit], [qty]) VALUES (N'CT10', N'PAD', 2000)
INSERT [dbo].[stockitem_unit] ([itemid], [unit], [qty]) VALUES (N'CT2', N'PAD', 2000)
INSERT [dbo].[stockitem_unit] ([itemid], [unit], [qty]) VALUES (N'CT5', N'PAD', 2000)
INSERT [dbo].[sys_rule] ([objid], [state], [name], [ruleset], [rulegroup], [title], [description], [salience], [effectivefrom], [effectiveto], [dtfiled], [user_objid], [user_name]) VALUES (N'RUL-111ed864:1437daca74c:-3aa5', N'DEPLOYED', N'ASK_IF_OFFICE_IS_RENTED', N'bpinfo', N'default', N'ask if office is rented ', NULL, 50000, NULL, NULL, CAST(0x0000A2AF0126D3BC AS DateTime), N'USR-477c34ca:1424b1892e7:-7fd2', N'ANNIE')
INSERT [dbo].[sys_rule] ([objid], [state], [name], [ruleset], [rulegroup], [title], [description], [salience], [effectivefrom], [effectiveto], [dtfiled], [user_objid], [user_name]) VALUES (N'RUL-111ed864:1437daca74c:-4082', N'DEPLOYED', N'REQUIRES_CEO_IF_WITHIN_GOV_PROP', N'bpinfo', N'postinfo', N'requires ceo if within government property', NULL, 50000, NULL, NULL, CAST(0x0000A2AF01247900 AS DateTime), N'USR-477c34ca:1424b1892e7:-7fd2', N'ANNIE')
INSERT [dbo].[sys_rule] ([objid], [state], [name], [ruleset], [rulegroup], [title], [description], [salience], [effectivefrom], [effectiveto], [dtfiled], [user_objid], [user_name]) VALUES (N'RUL-111ed864:1437daca74c:-49b1', N'DEPLOYED', N'ASK_IF_WITHIN_GOVERNMENT_PROPERTY', N'bpinfo', N'default', N'asks if establishments are within government property', NULL, 30000, NULL, NULL, CAST(0x0000A2AF012134C1 AS DateTime), N'USR-477c34ca:1424b1892e7:-7fd2', N'ANNIE')
INSERT [dbo].[sys_rule] ([objid], [state], [name], [ruleset], [rulegroup], [title], [description], [salience], [effectivefrom], [effectiveto], [dtfiled], [user_objid], [user_name]) VALUES (N'RUL1dc7a3de:142b70df9f8:-7fb7', N'DRAFT', N'SUMMARIZE_EMPLOYEE', N'bpinfo', N'postinfo', N'create a total number of employee variable based on male and female count', NULL, 50000, NULL, NULL, CAST(0x0000A28900E806C3 AS DateTime), N'USR11700b22:1407632636b:-7e71', N'jz')
INSERT [dbo].[sys_rule] ([objid], [state], [name], [ruleset], [rulegroup], [title], [description], [salience], [effectivefrom], [effectiveto], [dtfiled], [user_objid], [user_name]) VALUES (N'RUL-20919e10:141e3f76dc8:-6107', N'DEPLOYED', N'ADVANCE_DISCOUNT_QTRLY', N'rptbilling', N'DISCOUNT', N'ADVANCE DISCOUNT QTRLY', NULL, 50000, CAST(0xBB370B00 AS Date), NULL, CAST(0x0000A26000FE5CA3 AS DateTime), N'USR11700b22:1407632636b:-7e71', N'JZ')
INSERT [dbo].[sys_rule] ([objid], [state], [name], [ruleset], [rulegroup], [title], [description], [salience], [effectivefrom], [effectiveto], [dtfiled], [user_objid], [user_name]) VALUES (N'RUL-20919e10:141e3f76dc8:-651b', N'DEPLOYED', N'ADVANCE_DISCOUNT_FULL', N'rptbilling', N'DISCOUNT', N'ADVANCE DISCOUNT FULL', NULL, 50000, CAST(0xBB370B00 AS Date), NULL, CAST(0x0000A26000FD4198 AS DateTime), N'USR11700b22:1407632636b:-7e71', N'JZ')
INSERT [dbo].[sys_rule] ([objid], [state], [name], [ruleset], [rulegroup], [title], [description], [salience], [effectivefrom], [effectiveto], [dtfiled], [user_objid], [user_name]) VALUES (N'RUL-20919e10:141e3f76dc8:-6fa4', N'DEPLOYED', N'BASIC_SEF_CURRENT_INTEREST', N'rptbilling', N'PENALTY', N'BASIC SEF CURRENT INTEREST', NULL, 50000, CAST(0xBB370B00 AS Date), NULL, CAST(0x0000A26000FA4432 AS DateTime), N'USR11700b22:1407632636b:-7e71', N'JZ')
INSERT [dbo].[sys_rule] ([objid], [state], [name], [ruleset], [rulegroup], [title], [description], [salience], [effectivefrom], [effectiveto], [dtfiled], [user_objid], [user_name]) VALUES (N'RUL-20919e10:141e3f76dc8:-777f', N'DEPLOYED', N'BASIC_SEF_PREVIOUS_INTEREST', N'rptbilling', N'PENALTY', N'BASIC SEF PREVIOUS INTEREST', NULL, 50000, NULL, NULL, CAST(0x0000A26000F34BA4 AS DateTime), N'USR11700b22:1407632636b:-7e71', N'JZ')
INSERT [dbo].[sys_rule] ([objid], [state], [name], [ruleset], [rulegroup], [title], [description], [salience], [effectivefrom], [effectiveto], [dtfiled], [user_objid], [user_name]) VALUES (N'RUL-20919e10:141e3f76dc8:-7be8', N'DEPLOYED', N'BASIC_SEF_ADVANCE_TAX', N'rptbilling', N'TAX', N'BASIC SEF ADVANCE TAX', NULL, 50000, NULL, NULL, CAST(0x0000A26000F0BF44 AS DateTime), N'USR11700b22:1407632636b:-7e71', N'JZ')
INSERT [dbo].[sys_rule] ([objid], [state], [name], [ruleset], [rulegroup], [title], [description], [salience], [effectivefrom], [effectiveto], [dtfiled], [user_objid], [user_name]) VALUES (N'RUL-20919e10:141e3f76dc8:-7e4f', N'DEPLOYED', N'BASIC_SEF_CURRENT_TAX', N'rptbilling', N'TAX', N'BASIC SEF CURRENT TAX', NULL, 50000, NULL, NULL, CAST(0x0000A26000EF9FC3 AS DateTime), N'USR11700b22:1407632636b:-7e71', N'JZ')
INSERT [dbo].[sys_rule] ([objid], [state], [name], [ruleset], [rulegroup], [title], [description], [salience], [effectivefrom], [effectiveto], [dtfiled], [user_objid], [user_name]) VALUES (N'RUL2659bca9:142b667ccd3:-7f3f', N'DEPLOYED', N'ASK_EMPLOYEE_INFO', N'bpinfo', N'default', N'Ask employee info', NULL, 50000, NULL, NULL, CAST(0x0000A28900B63A30 AS DateTime), N'USR11700b22:1407632636b:-7e71', N'jz')
INSERT [dbo].[sys_rule] ([objid], [state], [name], [ruleset], [rulegroup], [title], [description], [salience], [effectivefrom], [effectiveto], [dtfiled], [user_objid], [user_name]) VALUES (N'RUL270217d9:143576614a1:-7c3c', N'DEPLOYED', N'STAGGERED_BASIC_SEF_2015', N'rptbilling', N'AFTER_TAX', N'STAGGERED BASIC AND SEF 2015', NULL, 50000, NULL, NULL, CAST(0x0000A2A8011DA7FC AS DateTime), N'USR11700b22:1407632636b:-7e71', N'JZ')
INSERT [dbo].[sys_rule] ([objid], [state], [name], [ruleset], [rulegroup], [title], [description], [salience], [effectivefrom], [effectiveto], [dtfiled], [user_objid], [user_name]) VALUES (N'RUL29ba689e:144612b8ef4:-7def', N'DEPLOYED', N'NEW_DISCOVERY_PENALTY_ADJ', N'rptbilling', N'AFTER_PENALTY', N'NEW DISCOVERY PENALTY ADJ TO ZERO', NULL, 50000, NULL, NULL, CAST(0x0000A2DC00837416 AS DateTime), N'USR11700b22:1407632636b:-7e71', N'JZ')
INSERT [dbo].[sys_rule] ([objid], [state], [name], [ruleset], [rulegroup], [title], [description], [salience], [effectivefrom], [effectiveto], [dtfiled], [user_objid], [user_name]) VALUES (N'RUL-2a4d2fa5:1422bad4acc:-7957', N'DEPLOYED', N'FIRE_CODE', N'rptbilling', N'AFTER_TAX', N'FIRE CODE', NULL, 50000, NULL, NULL, CAST(0x0000A26E00CEEB5D AS DateTime), N'USR11700b22:1407632636b:-7e71', N'JZ')
INSERT [dbo].[sys_rule] ([objid], [state], [name], [ruleset], [rulegroup], [title], [description], [salience], [effectivefrom], [effectiveto], [dtfiled], [user_objid], [user_name]) VALUES (N'RUL36552f88:142c18ff1a4:-7f16', N'DEPLOYED', N'ASK_BUSINESS_AREA', N'bpinfo', N'default', N'Ask Business Area in sqm requirement for unified form', NULL, 50000, NULL, NULL, CAST(0x0000A28B00F86C03 AS DateTime), N'USR11700b22:1407632636b:-7e71', N'jz')
INSERT [dbo].[sys_rule] ([objid], [state], [name], [ruleset], [rulegroup], [title], [description], [salience], [effectivefrom], [effectiveto], [dtfiled], [user_objid], [user_name]) VALUES (N'RUL-36ba5ccb:1430894b791:-42b0', N'DEPLOYED', N'ASK_IF_LOCATED_IN_ILIGAN', N'bpinfo', N'default', N'asks if business located in Iligan', NULL, 50000, NULL, NULL, CAST(0x0000A2AA00B88814 AS DateTime), N'USR2b9dbb39:141c905a2b9:-7e30', N'NENE')
INSERT [dbo].[sys_rule] ([objid], [state], [name], [ruleset], [rulegroup], [title], [description], [salience], [effectivefrom], [effectiveto], [dtfiled], [user_objid], [user_name]) VALUES (N'RUL-3a26f3ae:142d1e8ff98:-7f41', N'DEPLOYED', N'ASK_ADMINISTRATOR_INFO', N'bpinfo', N'default', N'specify name of administrator', NULL, 50000, NULL, NULL, CAST(0x0000A28E013D030C AS DateTime), N'USR-4930dbb8:14269adbd3f:-7f5a', N'coll')
INSERT [dbo].[sys_rule] ([objid], [state], [name], [ruleset], [rulegroup], [title], [description], [salience], [effectivefrom], [effectiveto], [dtfiled], [user_objid], [user_name]) VALUES (N'RUL41c8b101:142adfe2a5c:-7b59', N'DEPLOYED', N'SPECIFY_TAX_INCENTIVE_NAME', N'bpinfo', N'default', N'specify tax incentive name if it has tax incentive', NULL, 50000, NULL, NULL, CAST(0x0000A28701493FF2 AS DateTime), N'USR11700b22:1407632636b:-7e71', N'jz')
INSERT [dbo].[sys_rule] ([objid], [state], [name], [ruleset], [rulegroup], [title], [description], [salience], [effectivefrom], [effectiveto], [dtfiled], [user_objid], [user_name]) VALUES (N'RUL41c8b101:142adfe2a5c:-7ce7', N'DEPLOYED', N'RENT_INFO', N'bpinfo', N'default', N'ask rent information if rented', NULL, 50000, NULL, NULL, CAST(0x0000A2870148BAC2 AS DateTime), N'USR11700b22:1407632636b:-7e71', N'jz')
INSERT [dbo].[sys_rule] ([objid], [state], [name], [ruleset], [rulegroup], [title], [description], [salience], [effectivefrom], [effectiveto], [dtfiled], [user_objid], [user_name]) VALUES (N'RUL4258911a:142f00f9c9e:-7f92', N'DEPLOYED', N'TAX_ON_INDIVIDUAL', N'ctcindividual', N'TAX', N'compute tax for individual', NULL, 50000, NULL, NULL, CAST(0x0000A2940104108D AS DateTime), N'USR-305e983c:1409a56d534:-7ff7', N'RAOUL')
INSERT [dbo].[sys_rule] ([objid], [state], [name], [ruleset], [rulegroup], [title], [description], [salience], [effectivefrom], [effectiveto], [dtfiled], [user_objid], [user_name]) VALUES (N'RUL441bb08f:1436c079bff:-6fa7', N'DEPLOYED', N'BRGY_POBLACION_SHARE', N'rptbilling', N'BRGY_SHARE', N'BRGY POBLACION SHARE', NULL, 50000, NULL, NULL, CAST(0x0000A2AC012597CB AS DateTime), N'USR11700b22:1407632636b:-7e71', N'JZ')
INSERT [dbo].[sys_rule] ([objid], [state], [name], [ruleset], [rulegroup], [title], [description], [salience], [effectivefrom], [effectiveto], [dtfiled], [user_objid], [user_name]) VALUES (N'RUL441bb08f:1436c079bff:-6fa7-0002', N'DEPLOYED', N'BRGY_ABUNO_SHARE', N'rptbilling', N'BRGY_SHARE', N'BRGY. ABUNO SHARE', NULL, 50000, NULL, NULL, CAST(0x0000A2AC012597CB AS DateTime), N'USR11700b22:1407632636b:-7e71', N'JZ')
INSERT [dbo].[sys_rule] ([objid], [state], [name], [ruleset], [rulegroup], [title], [description], [salience], [effectivefrom], [effectiveto], [dtfiled], [user_objid], [user_name]) VALUES (N'RUL441bb08f:1436c079bff:-6fa7-0003', N'DEPLOYED', N'BRGY_ACMAC_SHARE', N'rptbilling', N'BRGY_SHARE', N'BRGY. ACMAC SHARE', NULL, 50000, NULL, NULL, CAST(0x0000A2AC012597CB AS DateTime), N'USR11700b22:1407632636b:-7e71', N'JZ')
INSERT [dbo].[sys_rule] ([objid], [state], [name], [ruleset], [rulegroup], [title], [description], [salience], [effectivefrom], [effectiveto], [dtfiled], [user_objid], [user_name]) VALUES (N'RUL441bb08f:1436c079bff:-6fa7-0004', N'DEPLOYED', N'BRGY_BAGONG_SILANG_SHARE', N'rptbilling', N'BRGY_SHARE', N'BRGY. BAGONG SILANG SHARE', NULL, 50000, NULL, NULL, CAST(0x0000A2AC012597CB AS DateTime), N'USR11700b22:1407632636b:-7e71', N'JZ')
INSERT [dbo].[sys_rule] ([objid], [state], [name], [ruleset], [rulegroup], [title], [description], [salience], [effectivefrom], [effectiveto], [dtfiled], [user_objid], [user_name]) VALUES (N'RUL441bb08f:1436c079bff:-6fa7-0005', N'DEPLOYED', N'BRGY_BONBONON_SHARE', N'rptbilling', N'BRGY_SHARE', N'BRGY. BONBONON SHARE', NULL, 50000, NULL, NULL, CAST(0x0000A2AC012597CB AS DateTime), N'USR11700b22:1407632636b:-7e71', N'JZ')
INSERT [dbo].[sys_rule] ([objid], [state], [name], [ruleset], [rulegroup], [title], [description], [salience], [effectivefrom], [effectiveto], [dtfiled], [user_objid], [user_name]) VALUES (N'RUL441bb08f:1436c079bff:-6fa7-0006', N'DEPLOYED', N'BRGY_BUNAWAN_SHARE', N'rptbilling', N'BRGY_SHARE', N'BRGY. BUNAWAN SHARE', NULL, 50000, NULL, NULL, CAST(0x0000A2AC012597CB AS DateTime), N'USR11700b22:1407632636b:-7e71', N'JZ')
INSERT [dbo].[sys_rule] ([objid], [state], [name], [ruleset], [rulegroup], [title], [description], [salience], [effectivefrom], [effectiveto], [dtfiled], [user_objid], [user_name]) VALUES (N'RUL441bb08f:1436c079bff:-6fa7-0007', N'DEPLOYED', N'BRGY_BURUUN_SHARE', N'rptbilling', N'BRGY_SHARE', N'BRGY. BURU-UN SHARE', NULL, 50000, NULL, NULL, CAST(0x0000A2AC012597CB AS DateTime), N'USR11700b22:1407632636b:-7e71', N'JZ')
INSERT [dbo].[sys_rule] ([objid], [state], [name], [ruleset], [rulegroup], [title], [description], [salience], [effectivefrom], [effectiveto], [dtfiled], [user_objid], [user_name]) VALUES (N'RUL441bb08f:1436c079bff:-6fa7-0008', N'DEPLOYED', N'BRGY_CABACSANAN_SHARE', N'rptbilling', N'BRGY_SHARE', N'BRGY. CABACSANAN SHARE', NULL, 50000, NULL, NULL, CAST(0x0000A2AC012597CB AS DateTime), N'USR11700b22:1407632636b:-7e71', N'JZ')
INSERT [dbo].[sys_rule] ([objid], [state], [name], [ruleset], [rulegroup], [title], [description], [salience], [effectivefrom], [effectiveto], [dtfiled], [user_objid], [user_name]) VALUES (N'RUL441bb08f:1436c079bff:-6fa7-0009', N'DEPLOYED', N'BRGY_DALIPUGA_SHARE', N'rptbilling', N'BRGY_SHARE', N'BRGY. DALIPUGA SHARE', NULL, 50000, NULL, NULL, CAST(0x0000A2AC012597CB AS DateTime), N'USR11700b22:1407632636b:-7e71', N'JZ')
INSERT [dbo].[sys_rule] ([objid], [state], [name], [ruleset], [rulegroup], [title], [description], [salience], [effectivefrom], [effectiveto], [dtfiled], [user_objid], [user_name]) VALUES (N'RUL441bb08f:1436c079bff:-6fa7-0010', N'DEPLOYED', N'BRGY_DEL_CARMEN_SHARE', N'rptbilling', N'BRGY_SHARE', N'BRGY. DEL CARMEN SHARE', NULL, 50000, NULL, NULL, CAST(0x0000A2AC012597CB AS DateTime), N'USR11700b22:1407632636b:-7e71', N'JZ')
INSERT [dbo].[sys_rule] ([objid], [state], [name], [ruleset], [rulegroup], [title], [description], [salience], [effectivefrom], [effectiveto], [dtfiled], [user_objid], [user_name]) VALUES (N'RUL441bb08f:1436c079bff:-6fa7-0011', N'DEPLOYED', N'BRGY_DIGKILAAN_SHARE', N'rptbilling', N'BRGY_SHARE', N'BRGY. DIGKILAAN SHARE', NULL, 50000, NULL, NULL, CAST(0x0000A2AC012597CB AS DateTime), N'USR11700b22:1407632636b:-7e71', N'JZ')
INSERT [dbo].[sys_rule] ([objid], [state], [name], [ruleset], [rulegroup], [title], [description], [salience], [effectivefrom], [effectiveto], [dtfiled], [user_objid], [user_name]) VALUES (N'RUL441bb08f:1436c079bff:-6fa7-0012', N'DEPLOYED', N'BRGY_DITUCALAN_SHARE', N'rptbilling', N'BRGY_SHARE', N'BRGY. DITUCALAN SHARE', NULL, 50000, NULL, NULL, CAST(0x0000A2AC012597CB AS DateTime), N'USR11700b22:1407632636b:-7e71', N'JZ')
INSERT [dbo].[sys_rule] ([objid], [state], [name], [ruleset], [rulegroup], [title], [description], [salience], [effectivefrom], [effectiveto], [dtfiled], [user_objid], [user_name]) VALUES (N'RUL441bb08f:1436c079bff:-6fa7-0013', N'DEPLOYED', N'BRGY_DULAG_SHARE', N'rptbilling', N'BRGY_SHARE', N'BRGY. DULAG SHARE', NULL, 50000, NULL, NULL, CAST(0x0000A2AC012597CB AS DateTime), N'USR11700b22:1407632636b:-7e71', N'JZ')
INSERT [dbo].[sys_rule] ([objid], [state], [name], [ruleset], [rulegroup], [title], [description], [salience], [effectivefrom], [effectiveto], [dtfiled], [user_objid], [user_name]) VALUES (N'RUL441bb08f:1436c079bff:-6fa7-0014', N'DEPLOYED', N'BRGY_HINAPLANON_SHARE', N'rptbilling', N'BRGY_SHARE', N'BRGY. HINAPLANON SHARE', NULL, 50000, NULL, NULL, CAST(0x0000A2AC012597CB AS DateTime), N'USR11700b22:1407632636b:-7e71', N'JZ')
INSERT [dbo].[sys_rule] ([objid], [state], [name], [ruleset], [rulegroup], [title], [description], [salience], [effectivefrom], [effectiveto], [dtfiled], [user_objid], [user_name]) VALUES (N'RUL441bb08f:1436c079bff:-6fa7-0015', N'DEPLOYED', N'BRGY_HINDANG_SHARE', N'rptbilling', N'BRGY_SHARE', N'BRGY. HINDANG SHARE', NULL, 50000, NULL, NULL, CAST(0x0000A2AC012597CB AS DateTime), N'USR11700b22:1407632636b:-7e71', N'JZ')
INSERT [dbo].[sys_rule] ([objid], [state], [name], [ruleset], [rulegroup], [title], [description], [salience], [effectivefrom], [effectiveto], [dtfiled], [user_objid], [user_name]) VALUES (N'RUL441bb08f:1436c079bff:-6fa7-0016', N'DEPLOYED', N'BRGY_KALILANGAN_SHARE', N'rptbilling', N'BRGY_SHARE', N'BRGY. KALILANGAN SHARE', NULL, 50000, NULL, NULL, CAST(0x0000A2AC012597CB AS DateTime), N'USR11700b22:1407632636b:-7e71', N'JZ')
INSERT [dbo].[sys_rule] ([objid], [state], [name], [ruleset], [rulegroup], [title], [description], [salience], [effectivefrom], [effectiveto], [dtfiled], [user_objid], [user_name]) VALUES (N'RUL441bb08f:1436c079bff:-6fa7-0017', N'DEPLOYED', N'BRGY_KIWALAN_SHARE', N'rptbilling', N'BRGY_SHARE', N'BRGY. KIWALAN SHARE', NULL, 50000, NULL, NULL, CAST(0x0000A2AC012597CB AS DateTime), N'USR11700b22:1407632636b:-7e71', N'JZ')
INSERT [dbo].[sys_rule] ([objid], [state], [name], [ruleset], [rulegroup], [title], [description], [salience], [effectivefrom], [effectiveto], [dtfiled], [user_objid], [user_name]) VALUES (N'RUL441bb08f:1436c079bff:-6fa7-0018', N'DEPLOYED', N'BRGY_LANIPAO_SHARE', N'rptbilling', N'BRGY_SHARE', N'BRGY. LANIPAO SHARE', NULL, 50000, NULL, NULL, CAST(0x0000A2AC012597CB AS DateTime), N'USR11700b22:1407632636b:-7e71', N'JZ')
INSERT [dbo].[sys_rule] ([objid], [state], [name], [ruleset], [rulegroup], [title], [description], [salience], [effectivefrom], [effectiveto], [dtfiled], [user_objid], [user_name]) VALUES (N'RUL441bb08f:1436c079bff:-6fa7-0019', N'DEPLOYED', N'BRGY_LUINAB_SHARE', N'rptbilling', N'BRGY_SHARE', N'BRGY. LUINAB SHARE', NULL, 50000, NULL, NULL, CAST(0x0000A2AC012597CB AS DateTime), N'USR11700b22:1407632636b:-7e71', N'JZ')
INSERT [dbo].[sys_rule] ([objid], [state], [name], [ruleset], [rulegroup], [title], [description], [salience], [effectivefrom], [effectiveto], [dtfiled], [user_objid], [user_name]) VALUES (N'RUL441bb08f:1436c079bff:-6fa7-0020', N'DEPLOYED', N'BRGY_MAHAYAHAY_SHARE', N'rptbilling', N'BRGY_SHARE', N'BRGY. MAHAYAHAY SHARE', NULL, 50000, NULL, NULL, CAST(0x0000A2AC012597CB AS DateTime), N'USR11700b22:1407632636b:-7e71', N'JZ')
INSERT [dbo].[sys_rule] ([objid], [state], [name], [ruleset], [rulegroup], [title], [description], [salience], [effectivefrom], [effectiveto], [dtfiled], [user_objid], [user_name]) VALUES (N'RUL441bb08f:1436c079bff:-6fa7-0021', N'DEPLOYED', N'BRGY_MAINIT_SHARE', N'rptbilling', N'BRGY_SHARE', N'BRGY. MAINIT SHARE', NULL, 50000, NULL, NULL, CAST(0x0000A2AC012597CB AS DateTime), N'USR11700b22:1407632636b:-7e71', N'JZ')
INSERT [dbo].[sys_rule] ([objid], [state], [name], [ruleset], [rulegroup], [title], [description], [salience], [effectivefrom], [effectiveto], [dtfiled], [user_objid], [user_name]) VALUES (N'RUL441bb08f:1436c079bff:-6fa7-0022', N'DEPLOYED', N'BRGY_MANDULOG_SHARE', N'rptbilling', N'BRGY_SHARE', N'BRGY. MANDULOG SHARE', NULL, 50000, NULL, NULL, CAST(0x0000A2AC012597CB AS DateTime), N'USR11700b22:1407632636b:-7e71', N'JZ')
INSERT [dbo].[sys_rule] ([objid], [state], [name], [ruleset], [rulegroup], [title], [description], [salience], [effectivefrom], [effectiveto], [dtfiled], [user_objid], [user_name]) VALUES (N'RUL441bb08f:1436c079bff:-6fa7-0023', N'DEPLOYED', N'BRGY_MA_CRISTINA_SHARE', N'rptbilling', N'BRGY_SHARE', N'BRGY. MA. CRISTINA SHARE', NULL, 50000, NULL, NULL, CAST(0x0000A2AC012597CB AS DateTime), N'USR11700b22:1407632636b:-7e71', N'JZ')
INSERT [dbo].[sys_rule] ([objid], [state], [name], [ruleset], [rulegroup], [title], [description], [salience], [effectivefrom], [effectiveto], [dtfiled], [user_objid], [user_name]) VALUES (N'RUL441bb08f:1436c079bff:-6fa7-0024', N'DEPLOYED', N'BRGY_PALAO_SHARE', N'rptbilling', N'BRGY_SHARE', N'BRGY. PALA-O SHARE', NULL, 50000, NULL, NULL, CAST(0x0000A2AC012597CB AS DateTime), N'USR11700b22:1407632636b:-7e71', N'JZ')
INSERT [dbo].[sys_rule] ([objid], [state], [name], [ruleset], [rulegroup], [title], [description], [salience], [effectivefrom], [effectiveto], [dtfiled], [user_objid], [user_name]) VALUES (N'RUL441bb08f:1436c079bff:-6fa7-0025', N'DEPLOYED', N'BRGY_PANOROGANAN_SHARE', N'rptbilling', N'BRGY_SHARE', N'BRGY. PANOROGANAN SHARE', NULL, 50000, NULL, NULL, CAST(0x0000A2AC012597CB AS DateTime), N'USR11700b22:1407632636b:-7e71', N'JZ')
INSERT [dbo].[sys_rule] ([objid], [state], [name], [ruleset], [rulegroup], [title], [description], [salience], [effectivefrom], [effectiveto], [dtfiled], [user_objid], [user_name]) VALUES (N'RUL441bb08f:1436c079bff:-6fa7-0026', N'DEPLOYED', N'BRGY_PUGAAN_SHARE', N'rptbilling', N'BRGY_SHARE', N'BRGY. PUGA-AN SHARE', NULL, 50000, NULL, NULL, CAST(0x0000A2AC012597CB AS DateTime), N'USR11700b22:1407632636b:-7e71', N'JZ')
INSERT [dbo].[sys_rule] ([objid], [state], [name], [ruleset], [rulegroup], [title], [description], [salience], [effectivefrom], [effectiveto], [dtfiled], [user_objid], [user_name]) VALUES (N'RUL441bb08f:1436c079bff:-6fa7-0027', N'DEPLOYED', N'BRGY_TOMINOBO_PROPER_SHARE', N'rptbilling', N'BRGY_SHARE', N'BRGY. TOMINOBO PROPER SHARE', NULL, 50000, NULL, NULL, CAST(0x0000A2AC012597CB AS DateTime), N'USR11700b22:1407632636b:-7e71', N'JZ')
INSERT [dbo].[sys_rule] ([objid], [state], [name], [ruleset], [rulegroup], [title], [description], [salience], [effectivefrom], [effectiveto], [dtfiled], [user_objid], [user_name]) VALUES (N'RUL441bb08f:1436c079bff:-6fa7-0028', N'DEPLOYED', N'BRGY_ROGONGON_SHARE', N'rptbilling', N'BRGY_SHARE', N'BRGY. ROGONGON SHARE', NULL, 50000, NULL, NULL, CAST(0x0000A2AC012597CB AS DateTime), N'USR11700b22:1407632636b:-7e71', N'JZ')
INSERT [dbo].[sys_rule] ([objid], [state], [name], [ruleset], [rulegroup], [title], [description], [salience], [effectivefrom], [effectiveto], [dtfiled], [user_objid], [user_name]) VALUES (N'RUL441bb08f:1436c079bff:-6fa7-0029', N'DEPLOYED', N'BRGY_SAN_MIGUEL_SHARE', N'rptbilling', N'BRGY_SHARE', N'BRGY. SAN MIGUEL SHARE', NULL, 50000, NULL, NULL, CAST(0x0000A2AC012597CB AS DateTime), N'USR11700b22:1407632636b:-7e71', N'JZ')
INSERT [dbo].[sys_rule] ([objid], [state], [name], [ruleset], [rulegroup], [title], [description], [salience], [effectivefrom], [effectiveto], [dtfiled], [user_objid], [user_name]) VALUES (N'RUL441bb08f:1436c079bff:-6fa7-0030', N'DEPLOYED', N'BRGY_SAN_ROQUE_SHARE', N'rptbilling', N'BRGY_SHARE', N'BRGY. SAN ROQUE SHARE', NULL, 50000, NULL, NULL, CAST(0x0000A2AC012597CB AS DateTime), N'USR11700b22:1407632636b:-7e71', N'JZ')
INSERT [dbo].[sys_rule] ([objid], [state], [name], [ruleset], [rulegroup], [title], [description], [salience], [effectivefrom], [effectiveto], [dtfiled], [user_objid], [user_name]) VALUES (N'RUL441bb08f:1436c079bff:-6fa7-0031', N'DEPLOYED', N'BRGY_SANTIAGO_SHARE', N'rptbilling', N'BRGY_SHARE', N'BRGY. SANTIAGO SHARE', NULL, 50000, NULL, NULL, CAST(0x0000A2AC012597CB AS DateTime), N'USR11700b22:1407632636b:-7e71', N'JZ')
INSERT [dbo].[sys_rule] ([objid], [state], [name], [ruleset], [rulegroup], [title], [description], [salience], [effectivefrom], [effectiveto], [dtfiled], [user_objid], [user_name]) VALUES (N'RUL441bb08f:1436c079bff:-6fa7-0032', N'DEPLOYED', N'BRGY_STA_ELENA_SHARE', N'rptbilling', N'BRGY_SHARE', N'BRGY. STA. ELENA SHARE', NULL, 50000, NULL, NULL, CAST(0x0000A2AC012597CB AS DateTime), N'USR11700b22:1407632636b:-7e71', N'JZ')
INSERT [dbo].[sys_rule] ([objid], [state], [name], [ruleset], [rulegroup], [title], [description], [salience], [effectivefrom], [effectiveto], [dtfiled], [user_objid], [user_name]) VALUES (N'RUL441bb08f:1436c079bff:-6fa7-0033', N'DEPLOYED', N'BRGY_STA_FILOMENA_SHARE', N'rptbilling', N'BRGY_SHARE', N'BRGY. STA. FILOMENA SHARE', NULL, 50000, NULL, NULL, CAST(0x0000A2AC012597CB AS DateTime), N'USR11700b22:1407632636b:-7e71', N'JZ')
INSERT [dbo].[sys_rule] ([objid], [state], [name], [ruleset], [rulegroup], [title], [description], [salience], [effectivefrom], [effectiveto], [dtfiled], [user_objid], [user_name]) VALUES (N'RUL441bb08f:1436c079bff:-6fa7-0034', N'DEPLOYED', N'BRGY_STO_ROSARIO_SHARE', N'rptbilling', N'BRGY_SHARE', N'BRGY. STO. ROSARIO SHARE', NULL, 50000, NULL, NULL, CAST(0x0000A2AC012597CB AS DateTime), N'USR11700b22:1407632636b:-7e71', N'JZ')
INSERT [dbo].[sys_rule] ([objid], [state], [name], [ruleset], [rulegroup], [title], [description], [salience], [effectivefrom], [effectiveto], [dtfiled], [user_objid], [user_name]) VALUES (N'RUL441bb08f:1436c079bff:-6fa7-0035', N'APPROVED', N'BRGY_SARAY_SHARE', N'rptbilling', N'BRGY_SHARE', N'BRGY. SARAY SHARE', NULL, 50000, NULL, NULL, CAST(0x0000A2AC012597CB AS DateTime), N'USR11700b22:1407632636b:-7e71', N'JZ')
INSERT [dbo].[sys_rule] ([objid], [state], [name], [ruleset], [rulegroup], [title], [description], [salience], [effectivefrom], [effectiveto], [dtfiled], [user_objid], [user_name]) VALUES (N'RUL441bb08f:1436c079bff:-6fa7-0036', N'DEPLOYED', N'BRGY_SUAREZ_SHARE', N'rptbilling', N'BRGY_SHARE', N'BRGY. SUAREZ SHARE', NULL, 50000, NULL, NULL, CAST(0x0000A2AC012597CB AS DateTime), N'USR11700b22:1407632636b:-7e71', N'JZ')
INSERT [dbo].[sys_rule] ([objid], [state], [name], [ruleset], [rulegroup], [title], [description], [salience], [effectivefrom], [effectiveto], [dtfiled], [user_objid], [user_name]) VALUES (N'RUL441bb08f:1436c079bff:-6fa7-0037', N'DEPLOYED', N'BRGY_TAMBACAN_SHARE', N'rptbilling', N'BRGY_SHARE', N'BRGY. TAMBACAN SHARE', NULL, 50000, NULL, NULL, CAST(0x0000A2AC012597CB AS DateTime), N'USR11700b22:1407632636b:-7e71', N'JZ')
INSERT [dbo].[sys_rule] ([objid], [state], [name], [ruleset], [rulegroup], [title], [description], [salience], [effectivefrom], [effectiveto], [dtfiled], [user_objid], [user_name]) VALUES (N'RUL441bb08f:1436c079bff:-6fa7-0038', N'DEPLOYED', N'BRGY_TIBANGA_SHARE', N'rptbilling', N'BRGY_SHARE', N'BRGY. TIBANGA SHARE', NULL, 50000, NULL, NULL, CAST(0x0000A2AC012597CB AS DateTime), N'USR11700b22:1407632636b:-7e71', N'JZ')
INSERT [dbo].[sys_rule] ([objid], [state], [name], [ruleset], [rulegroup], [title], [description], [salience], [effectivefrom], [effectiveto], [dtfiled], [user_objid], [user_name]) VALUES (N'RUL441bb08f:1436c079bff:-6fa7-0039', N'DEPLOYED', N'BRGY_TIPANOY_SHARE', N'rptbilling', N'BRGY_SHARE', N'BRGY. TIPANOY SHARE', NULL, 50000, NULL, NULL, CAST(0x0000A2AC012597CB AS DateTime), N'USR11700b22:1407632636b:-7e71', N'JZ')
INSERT [dbo].[sys_rule] ([objid], [state], [name], [ruleset], [rulegroup], [title], [description], [salience], [effectivefrom], [effectiveto], [dtfiled], [user_objid], [user_name]) VALUES (N'RUL441bb08f:1436c079bff:-6fa7-0040', N'DEPLOYED', N'BRGY_TUBOD_SHARE', N'rptbilling', N'BRGY_SHARE', N'BRGY. TUBOD SHARE', NULL, 50000, NULL, NULL, CAST(0x0000A2AC012597CB AS DateTime), N'USR11700b22:1407632636b:-7e71', N'JZ')
INSERT [dbo].[sys_rule] ([objid], [state], [name], [ruleset], [rulegroup], [title], [description], [salience], [effectivefrom], [effectiveto], [dtfiled], [user_objid], [user_name]) VALUES (N'RUL441bb08f:1436c079bff:-6fa7-0041', N'DEPLOYED', N'BRGY_UBALDO_LAYA_SHARE', N'rptbilling', N'BRGY_SHARE', N'BRGY. UBALDO LAYA SHARE', NULL, 50000, NULL, NULL, CAST(0x0000A2AC012597CB AS DateTime), N'USR11700b22:1407632636b:-7e71', N'JZ')
INSERT [dbo].[sys_rule] ([objid], [state], [name], [ruleset], [rulegroup], [title], [description], [salience], [effectivefrom], [effectiveto], [dtfiled], [user_objid], [user_name]) VALUES (N'RUL441bb08f:1436c079bff:-6fa7-0042', N'DEPLOYED', N'BRGY_UPPER_HINAPLANON_SHARE', N'rptbilling', N'BRGY_SHARE', N'BRGY. UPPER HINAPLANON SHARE', NULL, 50000, NULL, NULL, CAST(0x0000A2AC012597CB AS DateTime), N'USR11700b22:1407632636b:-7e71', N'JZ')
INSERT [dbo].[sys_rule] ([objid], [state], [name], [ruleset], [rulegroup], [title], [description], [salience], [effectivefrom], [effectiveto], [dtfiled], [user_objid], [user_name]) VALUES (N'RUL441bb08f:1436c079bff:-6fa7-0043', N'DEPLOYED', N'BRGY_UPPER_TOMINOBO_SHARE', N'rptbilling', N'BRGY_SHARE', N'BRGY. UPPER TOMINOBO SHARE', NULL, 50000, NULL, NULL, CAST(0x0000A2AC012597CB AS DateTime), N'USR11700b22:1407632636b:-7e71', N'JZ')
INSERT [dbo].[sys_rule] ([objid], [state], [name], [ruleset], [rulegroup], [title], [description], [salience], [effectivefrom], [effectiveto], [dtfiled], [user_objid], [user_name]) VALUES (N'RUL441bb08f:1436c079bff:-6fa7-0044', N'DEPLOYED', N'BRGY_VILLAVERDE_SHARE', N'rptbilling', N'BRGY_SHARE', N'BRGY. VILLAVERDE SHARE', NULL, 50000, NULL, NULL, CAST(0x0000A2AC012597CB AS DateTime), N'USR11700b22:1407632636b:-7e71', N'JZ')
INSERT [dbo].[sys_rule] ([objid], [state], [name], [ruleset], [rulegroup], [title], [description], [salience], [effectivefrom], [effectiveto], [dtfiled], [user_objid], [user_name]) VALUES (N'RUL441bb08f:1436c079bff:-755d', N'DEPLOYED', N'LGU_SHARE', N'rptbilling', N'LGU_SHARE', N'LGU SHARE', NULL, 50000, NULL, NULL, CAST(0x0000A2AC01240EC2 AS DateTime), N'USR11700b22:1407632636b:-7e71', N'JZ')
INSERT [dbo].[sys_rule] ([objid], [state], [name], [ruleset], [rulegroup], [title], [description], [salience], [effectivefrom], [effectiveto], [dtfiled], [user_objid], [user_name]) VALUES (N'RUL-5287a583:143748e3d5b:-7caa', N'DEPLOYED', N'ADDL_TAX_ADJ', N'ctcindividual', N'ADDITIONAL_TAX', N'ADDL TAX ADJ', NULL, 50000, NULL, NULL, CAST(0x0000A2AE00974D34 AS DateTime), N'USR11700b22:1407632636b:-7e71', N'JZ')
INSERT [dbo].[sys_rule] ([objid], [state], [name], [ruleset], [rulegroup], [title], [description], [salience], [effectivefrom], [effectiveto], [dtfiled], [user_objid], [user_name]) VALUES (N'RUL52ab3945:14357604d15:-7c1a', N'DEPLOYED', N'STAGGERED_BASIC_SEF_2014', N'rptbilling', N'AFTER_TAX', N'STAGGERED BASIC SEF 2014', NULL, 50000, NULL, NULL, CAST(0x0000A2A8011C0F51 AS DateTime), N'USR11700b22:1407632636b:-7e71', N'JZ')
INSERT [dbo].[sys_rule] ([objid], [state], [name], [ruleset], [rulegroup], [title], [description], [salience], [effectivefrom], [effectiveto], [dtfiled], [user_objid], [user_name]) VALUES (N'RUL53eaacea:143600ac457:-7fb2', N'DEPLOYED', N'ASK_OFFICE_TYPE', N'bpinfo', N'default', N'Ask office type if main or branch', NULL, 50000, NULL, NULL, CAST(0x0000A2AA009D4A60 AS DateTime), N'USR24bdb45:1422c01c4ee:-7f82', N'ELMO')
INSERT [dbo].[sys_rule] ([objid], [state], [name], [ruleset], [rulegroup], [title], [description], [salience], [effectivefrom], [effectiveto], [dtfiled], [user_objid], [user_name]) VALUES (N'RUL559c0dba:14361bac6db:-78df', N'DEPLOYED', N'CTC_CORPORATION_INT', N'ctccorporate', N'INTEREST', N'CTC CORPORATION INTEREST', NULL, 50000, NULL, NULL, CAST(0x0000A2AA0122E978 AS DateTime), N'USR-305e983c:1409a56d534:-7ff7', N'RAOUL')
INSERT [dbo].[sys_rule] ([objid], [state], [name], [ruleset], [rulegroup], [title], [description], [salience], [effectivefrom], [effectiveto], [dtfiled], [user_objid], [user_name]) VALUES (N'RUL559c0dba:14361bac6db:-7ad6', N'DEPLOYED', N'CTC_CORPORATION', N'ctccorporate', N'TAX', N'CTC CORPORATION', NULL, 50000, NULL, NULL, CAST(0x0000A2AA0120E4BB AS DateTime), N'USR-305e983c:1409a56d534:-7ff7', N'RAOUL')
INSERT [dbo].[sys_rule] ([objid], [state], [name], [ruleset], [rulegroup], [title], [description], [salience], [effectivefrom], [effectiveto], [dtfiled], [user_objid], [user_name]) VALUES (N'RUL559c0dba:14361bac6db:-7fd1', N'DEPLOYED', N'CTC_INDIVIDUAL_INTEREST', N'ctcindividual', N'INTEREST', N'CTC INDIVIDUAL INTEREST', NULL, 50000, NULL, NULL, CAST(0x0000A2AA011B8FD6 AS DateTime), N'USR-305e983c:1409a56d534:-7ff7', N'RAOUL')
INSERT [dbo].[sys_rule] ([objid], [state], [name], [ruleset], [rulegroup], [title], [description], [salience], [effectivefrom], [effectiveto], [dtfiled], [user_objid], [user_name]) VALUES (N'RUL6d66cc31:1446cc9522e:-7bb3', N'DEPLOYED', N'COMMON_REQUIREMENTS', N'rptrequirement', N'REQUIREMENT', N'COMMON REQUIREMENTS', NULL, 50000, NULL, NULL, CAST(0x0000A2DE00E9A24B AS DateTime), N'USR11700b22:1407632636b:-7e71', N'JZ')
INSERT [dbo].[sys_rule] ([objid], [state], [name], [ruleset], [rulegroup], [title], [description], [salience], [effectivefrom], [effectiveto], [dtfiled], [user_objid], [user_name]) VALUES (N'RUL-727f5592:144018f96a2:-7f25', N'DEPLOYED', N'ASKS_IF_LOCATED_ON_NIGHT_MARKET', N'bpinfo', N'default', N'asks if a business is located on night market', NULL, 50000, NULL, NULL, CAST(0x0000A2C9012A1606 AS DateTime), N'USR-477c34ca:1424b1892e7:-7fd2', N'ANNIE')
INSERT [dbo].[sys_rule] ([objid], [state], [name], [ruleset], [rulegroup], [title], [description], [salience], [effectivefrom], [effectiveto], [dtfiled], [user_objid], [user_name]) VALUES (N'RUL-72a9958a:141e4770339:-6728', N'DEPLOYED', N'BASIC_SEF_CURRENT_DISCOUNT', N'rptbilling', N'DISCOUNT', N'BASIC SEF CURRENT DISCOUNT', NULL, 50000, CAST(0xBB370B00 AS Date), NULL, CAST(0x0000A2600120D598 AS DateTime), N'USR11700b22:1407632636b:-7e71', N'JZ')
INSERT [dbo].[sys_rule] ([objid], [state], [name], [ruleset], [rulegroup], [title], [description], [salience], [effectivefrom], [effectiveto], [dtfiled], [user_objid], [user_name]) VALUES (N'RUL-7c13908b:1435065d2a1:-66d7', N'DEPLOYED', N'BASIC_SEF_PREVIOUS_TAX', N'rptbilling', N'TAX', N'calculate previous tax', NULL, 50000, NULL, NULL, CAST(0x0000A2A700B54B50 AS DateTime), N'USR-305e983c:1409a56d534:-7ff7', N'RAOUL')
INSERT [dbo].[sys_rule] ([objid], [state], [name], [ruleset], [rulegroup], [title], [description], [salience], [effectivefrom], [effectiveto], [dtfiled], [user_objid], [user_name]) VALUES (N'RUL-7e9d4ac4:1421b9d7ba4:-7d51', N'DEPLOYED', N'BASIC_SEF_DISCOUNT_FULLPAYMENT', N'rptbilling', N'AFTER_DISCOUNT', N'BASIC SEF DISCOUNT FULLPAYMENT', NULL, 50000, NULL, NULL, CAST(0x0000A26B00A0CEE6 AS DateTime), N'USR11700b22:1407632636b:-7e71', N'JZ')
INSERT [dbo].[sys_rule] ([objid], [state], [name], [ruleset], [rulegroup], [title], [description], [salience], [effectivefrom], [effectiveto], [dtfiled], [user_objid], [user_name]) VALUES (N'RULaa4e683:143e6f7bbf2:-69f4', N'DEPLOYED', N'DISCOUNT_EXTENSION', N'rptbilling', N'AFTER_DISCOUNT', N'DISCOUNT_EXTTENSION', NULL, 50000, NULL, NULL, CAST(0x0000A2C400FB571E AS DateTime), N'USR-305e983c:1409a56d534:-7ff7', N'RAOUL')
INSERT [dbo].[sys_rule_condition] ([objid], [parentid], [fact_name], [fact_objid], [varname], [pos], [ruletext], [displaytext], [dynamic_datatype], [dynamic_key], [dynamic_value]) VALUES (N'RCOND-111ed864:1437daca74c:-33c8', N'RUL36552f88:142c18ff1a4:-7f16', N'businessinfo', N'RULFACT-bad19b4:141f3c18435:-7fa9', NULL, 1, NULL, NULL, N'boolean', N'IS_LOCATED_IN_ILIGAN', N'IS_LOCATED_IN_ILIGAN')
INSERT [dbo].[sys_rule_condition] ([objid], [parentid], [fact_name], [fact_objid], [varname], [pos], [ruletext], [displaytext], [dynamic_datatype], [dynamic_key], [dynamic_value]) VALUES (N'RCOND-111ed864:1437daca74c:-3a76', N'RUL-111ed864:1437daca74c:-3aa5', N'businessinfo', N'RULFACT-bad19b4:141f3c18435:-7fa9', NULL, 0, NULL, NULL, N'boolean', N'IS_LOCATED_IN_ILIGAN', N'IS_LOCATED_IN_ILIGAN')
INSERT [dbo].[sys_rule_condition] ([objid], [parentid], [fact_name], [fact_objid], [varname], [pos], [ruletext], [displaytext], [dynamic_datatype], [dynamic_key], [dynamic_value]) VALUES (N'RCOND-111ed864:1437daca74c:-3fbd', N'RUL-111ed864:1437daca74c:-4082', N'businessinfo', N'RULFACT-bad19b4:141f3c18435:-7fa9', NULL, 1, NULL, NULL, N'boolean', N'LOCATED_ON_GOVERNMENT_PROPERTY', N'LOCATED_ON_GOVERNMENT_PROPERTY')
INSERT [dbo].[sys_rule_condition] ([objid], [parentid], [fact_name], [fact_objid], [varname], [pos], [ruletext], [displaytext], [dynamic_datatype], [dynamic_key], [dynamic_value]) VALUES (N'RCOND-111ed864:1437daca74c:-4050', N'RUL-111ed864:1437daca74c:-4082', N'bpapplication', N'RULFACT-26aa09fd:1419696e71f:-7feb', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_condition] ([objid], [parentid], [fact_name], [fact_objid], [varname], [pos], [ruletext], [displaytext], [dynamic_datatype], [dynamic_key], [dynamic_value]) VALUES (N'RCOND-111ed864:1437daca74c:-4983', N'RUL-111ed864:1437daca74c:-49b1', N'businessinfo', N'RULFACT-bad19b4:141f3c18435:-7fa9', NULL, 0, NULL, NULL, N'boolean', N'IS_LOCATED_IN_ILIGAN', N'IS_LOCATED_IN_ILIGAN')
INSERT [dbo].[sys_rule_condition] ([objid], [parentid], [fact_name], [fact_objid], [varname], [pos], [ruletext], [displaytext], [dynamic_datatype], [dynamic_key], [dynamic_value]) VALUES (N'RCOND1dc7a3de:142b70df9f8:-7f13', N'RUL1dc7a3de:142b70df9f8:-7fb7', N'businessinfo', N'RULFACT-bad19b4:141f3c18435:-7fa9', NULL, 1, NULL, NULL, N'integer', N'NUM_EMPLOYEE_FEMALE', N'NUM_EMPLOYEE_FEMALE')
INSERT [dbo].[sys_rule_condition] ([objid], [parentid], [fact_name], [fact_objid], [varname], [pos], [ruletext], [displaytext], [dynamic_datatype], [dynamic_key], [dynamic_value]) VALUES (N'RCOND1dc7a3de:142b70df9f8:-7f5e', N'RUL1dc7a3de:142b70df9f8:-7fb7', N'businessinfo', N'RULFACT-bad19b4:141f3c18435:-7fa9', NULL, 0, NULL, NULL, N'integer', N'NUM_EMPLOYEE_MALE', N'NUM_EMPLOYEE_MALE')
INSERT [dbo].[sys_rule_condition] ([objid], [parentid], [fact_name], [fact_objid], [varname], [pos], [ruletext], [displaytext], [dynamic_datatype], [dynamic_key], [dynamic_value]) VALUES (N'RCOND-20919e10:141e3f76dc8:-64b1', N'RUL-20919e10:141e3f76dc8:-651b', N'rptledger', N'RULFACT17d6e7ce:141df4b60c2:-7fd3', N'RL', 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_condition] ([objid], [parentid], [fact_name], [fact_objid], [varname], [pos], [ruletext], [displaytext], [dynamic_datatype], [dynamic_key], [dynamic_value]) VALUES (N'RCOND-20919e10:141e3f76dc8:-64eb', N'RUL-20919e10:141e3f76dc8:-651b', N'currentdate', N'RULFACT49ae4bad:141e3b6758c:-7ba3', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_condition] ([objid], [parentid], [fact_name], [fact_objid], [varname], [pos], [ruletext], [displaytext], [dynamic_datatype], [dynamic_key], [dynamic_value]) VALUES (N'RCOND-20919e10:141e3f76dc8:-6cfe', N'RUL-20919e10:141e3f76dc8:-6fa4', N'currentdate', N'RULFACT49ae4bad:141e3b6758c:-7ba3', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_condition] ([objid], [parentid], [fact_name], [fact_objid], [varname], [pos], [ruletext], [displaytext], [dynamic_datatype], [dynamic_key], [dynamic_value]) VALUES (N'RCOND-20919e10:141e3f76dc8:-7715', N'RUL-20919e10:141e3f76dc8:-777f', N'rptledger', N'RULFACT17d6e7ce:141df4b60c2:-7fd3', N'RL', 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_condition] ([objid], [parentid], [fact_name], [fact_objid], [varname], [pos], [ruletext], [displaytext], [dynamic_datatype], [dynamic_key], [dynamic_value]) VALUES (N'RCOND-20919e10:141e3f76dc8:-774f', N'RUL-20919e10:141e3f76dc8:-777f', N'currentdate', N'RULFACT49ae4bad:141e3b6758c:-7ba3', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_condition] ([objid], [parentid], [fact_name], [fact_objid], [varname], [pos], [ruletext], [displaytext], [dynamic_datatype], [dynamic_key], [dynamic_value]) VALUES (N'RCOND-20919e10:141e3f76dc8:-7b76', N'RUL-20919e10:141e3f76dc8:-7be8', N'rptledger', N'RULFACT17d6e7ce:141df4b60c2:-7fd3', N'RL', 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_condition] ([objid], [parentid], [fact_name], [fact_objid], [varname], [pos], [ruletext], [displaytext], [dynamic_datatype], [dynamic_key], [dynamic_value]) VALUES (N'RCOND-20919e10:141e3f76dc8:-7bb8', N'RUL-20919e10:141e3f76dc8:-7be8', N'currentdate', N'RULFACT49ae4bad:141e3b6758c:-7ba3', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_condition] ([objid], [parentid], [fact_name], [fact_objid], [varname], [pos], [ruletext], [displaytext], [dynamic_datatype], [dynamic_key], [dynamic_value]) VALUES (N'RCOND-20919e10:141e3f76dc8:-7de5', N'RUL-20919e10:141e3f76dc8:-7e4f', N'rptledger', N'RULFACT17d6e7ce:141df4b60c2:-7fd3', N'RL', 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_condition] ([objid], [parentid], [fact_name], [fact_objid], [varname], [pos], [ruletext], [displaytext], [dynamic_datatype], [dynamic_key], [dynamic_value]) VALUES (N'RCOND-20919e10:141e3f76dc8:-7e1f', N'RUL-20919e10:141e3f76dc8:-7e4f', N'currentdate', N'RULFACT49ae4bad:141e3b6758c:-7ba3', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_condition] ([objid], [parentid], [fact_name], [fact_objid], [varname], [pos], [ruletext], [displaytext], [dynamic_datatype], [dynamic_key], [dynamic_value]) VALUES (N'RCOND2659bca9:142b667ccd3:-7d1c', N'RUL2659bca9:142b667ccd3:-7f3f', N'bpapplication', N'RULFACT-26aa09fd:1419696e71f:-7feb', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_condition] ([objid], [parentid], [fact_name], [fact_objid], [varname], [pos], [ruletext], [displaytext], [dynamic_datatype], [dynamic_key], [dynamic_value]) VALUES (N'RCOND270217d9:143576614a1:-7a52', N'RUL270217d9:143576614a1:-7c3c', N'assessedvalue', N'RULFACT17d6e7ce:141df4b60c2:-7c21', NULL, 2, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_condition] ([objid], [parentid], [fact_name], [fact_objid], [varname], [pos], [ruletext], [displaytext], [dynamic_datatype], [dynamic_key], [dynamic_value]) VALUES (N'RCOND270217d9:143576614a1:-7a8c', N'RUL270217d9:143576614a1:-7c3c', N'currentdate', N'RULFACT49ae4bad:141e3b6758c:-7ba3', NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_condition] ([objid], [parentid], [fact_name], [fact_objid], [varname], [pos], [ruletext], [displaytext], [dynamic_datatype], [dynamic_key], [dynamic_value]) VALUES (N'RCOND270217d9:143576614a1:-7c0e', N'RUL270217d9:143576614a1:-7c3c', N'rptledger', N'RULFACT17d6e7ce:141df4b60c2:-7fd3', N'RL', 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_condition] ([objid], [parentid], [fact_name], [fact_objid], [varname], [pos], [ruletext], [displaytext], [dynamic_datatype], [dynamic_key], [dynamic_value]) VALUES (N'RCOND270217d9:143576614a1:-7d89', N'RUL52ab3945:14357604d15:-7c1a', N'assessedvalue', N'RULFACT17d6e7ce:141df4b60c2:-7c21', NULL, 2, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_condition] ([objid], [parentid], [fact_name], [fact_objid], [varname], [pos], [ruletext], [displaytext], [dynamic_datatype], [dynamic_key], [dynamic_value]) VALUES (N'RCOND270217d9:143576614a1:-7dcb', N'RUL52ab3945:14357604d15:-7c1a', N'currentdate', N'RULFACT49ae4bad:141e3b6758c:-7ba3', NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_condition] ([objid], [parentid], [fact_name], [fact_objid], [varname], [pos], [ruletext], [displaytext], [dynamic_datatype], [dynamic_key], [dynamic_value]) VALUES (N'RCOND270217d9:143576614a1:-7f4d', N'RUL52ab3945:14357604d15:-7c1a', N'rptledger', N'RULFACT17d6e7ce:141df4b60c2:-7fd3', N'RL', 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_condition] ([objid], [parentid], [fact_name], [fact_objid], [varname], [pos], [ruletext], [displaytext], [dynamic_datatype], [dynamic_key], [dynamic_value]) VALUES (N'RCOND29ba689e:144612b8ef4:-79fe', N'RUL29ba689e:144612b8ef4:-7def', N'rptledger', N'RULFACT17d6e7ce:141df4b60c2:-7fd3', N'RL', 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_condition] ([objid], [parentid], [fact_name], [fact_objid], [varname], [pos], [ruletext], [displaytext], [dynamic_datatype], [dynamic_key], [dynamic_value]) VALUES (N'RCOND29ba689e:144612b8ef4:-7a3b', N'RUL29ba689e:144612b8ef4:-7def', N'currentdate', N'RULFACT49ae4bad:141e3b6758c:-7ba3', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_condition] ([objid], [parentid], [fact_name], [fact_objid], [varname], [pos], [ruletext], [displaytext], [dynamic_datatype], [dynamic_key], [dynamic_value]) VALUES (N'RCOND-2a4d2fa5:1422bad4acc:-7919', N'RUL-2a4d2fa5:1422bad4acc:-7957', N'rptledger', N'RULFACT17d6e7ce:141df4b60c2:-7fd3', N'RL', 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_condition] ([objid], [parentid], [fact_name], [fact_objid], [varname], [pos], [ruletext], [displaytext], [dynamic_datatype], [dynamic_key], [dynamic_value]) VALUES (N'RCOND-335216e7:142b6e37e20:-7dd0', N'RUL41c8b101:142adfe2a5c:-7ce7', N'businessinfo', N'RULFACT-bad19b4:141f3c18435:-7fa9', NULL, 0, NULL, NULL, N'boolean', N'IS_RENTED', N'IS_RENTED')
INSERT [dbo].[sys_rule_condition] ([objid], [parentid], [fact_name], [fact_objid], [varname], [pos], [ruletext], [displaytext], [dynamic_datatype], [dynamic_key], [dynamic_value]) VALUES (N'RCOND36552f88:142c18ff1a4:-7eea', N'RUL36552f88:142c18ff1a4:-7f16', N'bpapplication', N'RULFACT-26aa09fd:1419696e71f:-7feb', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_condition] ([objid], [parentid], [fact_name], [fact_objid], [varname], [pos], [ruletext], [displaytext], [dynamic_datatype], [dynamic_key], [dynamic_value]) VALUES (N'RCOND-36ba5ccb:1430894b791:-4282', N'RUL-36ba5ccb:1430894b791:-42b0', N'bpapplication', N'RULFACT-26aa09fd:1419696e71f:-7feb', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_condition] ([objid], [parentid], [fact_name], [fact_objid], [varname], [pos], [ruletext], [displaytext], [dynamic_datatype], [dynamic_key], [dynamic_value]) VALUES (N'RCOND-3a26f3ae:142d1e8ff98:-7f05', N'RUL-3a26f3ae:142d1e8ff98:-7f41', N'bpapplication', N'RULFACT-26aa09fd:1419696e71f:-7feb', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_condition] ([objid], [parentid], [fact_name], [fact_objid], [varname], [pos], [ruletext], [displaytext], [dynamic_datatype], [dynamic_key], [dynamic_value]) VALUES (N'RCOND41c8b101:142adfe2a5c:-7a8a', N'RUL41c8b101:142adfe2a5c:-7b59', N'businessinfo', N'RULFACT-bad19b4:141f3c18435:-7fa9', NULL, 0, NULL, NULL, N'boolean', N'HAS_TAX_INCENTIVE', N'HAS_TAX_INCENTIVE')
INSERT [dbo].[sys_rule_condition] ([objid], [parentid], [fact_name], [fact_objid], [varname], [pos], [ruletext], [displaytext], [dynamic_datatype], [dynamic_key], [dynamic_value]) VALUES (N'RCOND-43d54639:143600ea5ae:-7e0e', N'RUL53eaacea:143600ac457:-7fb2', N'bpapplication', N'RULFACT-26aa09fd:1419696e71f:-7feb', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_condition] ([objid], [parentid], [fact_name], [fact_objid], [varname], [pos], [ruletext], [displaytext], [dynamic_datatype], [dynamic_key], [dynamic_value]) VALUES (N'RCOND441bb08f:1436c079bff:-6f73', N'RUL441bb08f:1436c079bff:-6fa7', N'rptledger', N'RULFACT17d6e7ce:141df4b60c2:-7fd3', N'RL', 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_condition] ([objid], [parentid], [fact_name], [fact_objid], [varname], [pos], [ruletext], [displaytext], [dynamic_datatype], [dynamic_key], [dynamic_value]) VALUES (N'RCOND441bb08f:1436c079bff:-6f73-0002', N'RUL441bb08f:1436c079bff:-6fa7-0002', N'rptledger', N'RULFACT17d6e7ce:141df4b60c2:-7fd3', N'RL', 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_condition] ([objid], [parentid], [fact_name], [fact_objid], [varname], [pos], [ruletext], [displaytext], [dynamic_datatype], [dynamic_key], [dynamic_value]) VALUES (N'RCOND441bb08f:1436c079bff:-6f73-0003', N'RUL441bb08f:1436c079bff:-6fa7-0003', N'rptledger', N'RULFACT17d6e7ce:141df4b60c2:-7fd3', N'RL', 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_condition] ([objid], [parentid], [fact_name], [fact_objid], [varname], [pos], [ruletext], [displaytext], [dynamic_datatype], [dynamic_key], [dynamic_value]) VALUES (N'RCOND441bb08f:1436c079bff:-6f73-0004', N'RUL441bb08f:1436c079bff:-6fa7-0004', N'rptledger', N'RULFACT17d6e7ce:141df4b60c2:-7fd3', N'RL', 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_condition] ([objid], [parentid], [fact_name], [fact_objid], [varname], [pos], [ruletext], [displaytext], [dynamic_datatype], [dynamic_key], [dynamic_value]) VALUES (N'RCOND441bb08f:1436c079bff:-6f73-0005', N'RUL441bb08f:1436c079bff:-6fa7-0005', N'rptledger', N'RULFACT17d6e7ce:141df4b60c2:-7fd3', N'RL', 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_condition] ([objid], [parentid], [fact_name], [fact_objid], [varname], [pos], [ruletext], [displaytext], [dynamic_datatype], [dynamic_key], [dynamic_value]) VALUES (N'RCOND441bb08f:1436c079bff:-6f73-0006', N'RUL441bb08f:1436c079bff:-6fa7-0006', N'rptledger', N'RULFACT17d6e7ce:141df4b60c2:-7fd3', N'RL', 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_condition] ([objid], [parentid], [fact_name], [fact_objid], [varname], [pos], [ruletext], [displaytext], [dynamic_datatype], [dynamic_key], [dynamic_value]) VALUES (N'RCOND441bb08f:1436c079bff:-6f73-0007', N'RUL441bb08f:1436c079bff:-6fa7-0007', N'rptledger', N'RULFACT17d6e7ce:141df4b60c2:-7fd3', N'RL', 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_condition] ([objid], [parentid], [fact_name], [fact_objid], [varname], [pos], [ruletext], [displaytext], [dynamic_datatype], [dynamic_key], [dynamic_value]) VALUES (N'RCOND441bb08f:1436c079bff:-6f73-0008', N'RUL441bb08f:1436c079bff:-6fa7-0008', N'rptledger', N'RULFACT17d6e7ce:141df4b60c2:-7fd3', N'RL', 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_condition] ([objid], [parentid], [fact_name], [fact_objid], [varname], [pos], [ruletext], [displaytext], [dynamic_datatype], [dynamic_key], [dynamic_value]) VALUES (N'RCOND441bb08f:1436c079bff:-6f73-0009', N'RUL441bb08f:1436c079bff:-6fa7-0009', N'rptledger', N'RULFACT17d6e7ce:141df4b60c2:-7fd3', N'RL', 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_condition] ([objid], [parentid], [fact_name], [fact_objid], [varname], [pos], [ruletext], [displaytext], [dynamic_datatype], [dynamic_key], [dynamic_value]) VALUES (N'RCOND441bb08f:1436c079bff:-6f73-0010', N'RUL441bb08f:1436c079bff:-6fa7-0010', N'rptledger', N'RULFACT17d6e7ce:141df4b60c2:-7fd3', N'RL', 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_condition] ([objid], [parentid], [fact_name], [fact_objid], [varname], [pos], [ruletext], [displaytext], [dynamic_datatype], [dynamic_key], [dynamic_value]) VALUES (N'RCOND441bb08f:1436c079bff:-6f73-0011', N'RUL441bb08f:1436c079bff:-6fa7-0011', N'rptledger', N'RULFACT17d6e7ce:141df4b60c2:-7fd3', N'RL', 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_condition] ([objid], [parentid], [fact_name], [fact_objid], [varname], [pos], [ruletext], [displaytext], [dynamic_datatype], [dynamic_key], [dynamic_value]) VALUES (N'RCOND441bb08f:1436c079bff:-6f73-0012', N'RUL441bb08f:1436c079bff:-6fa7-0012', N'rptledger', N'RULFACT17d6e7ce:141df4b60c2:-7fd3', N'RL', 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_condition] ([objid], [parentid], [fact_name], [fact_objid], [varname], [pos], [ruletext], [displaytext], [dynamic_datatype], [dynamic_key], [dynamic_value]) VALUES (N'RCOND441bb08f:1436c079bff:-6f73-0013', N'RUL441bb08f:1436c079bff:-6fa7-0013', N'rptledger', N'RULFACT17d6e7ce:141df4b60c2:-7fd3', N'RL', 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_condition] ([objid], [parentid], [fact_name], [fact_objid], [varname], [pos], [ruletext], [displaytext], [dynamic_datatype], [dynamic_key], [dynamic_value]) VALUES (N'RCOND441bb08f:1436c079bff:-6f73-0014', N'RUL441bb08f:1436c079bff:-6fa7-0014', N'rptledger', N'RULFACT17d6e7ce:141df4b60c2:-7fd3', N'RL', 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_condition] ([objid], [parentid], [fact_name], [fact_objid], [varname], [pos], [ruletext], [displaytext], [dynamic_datatype], [dynamic_key], [dynamic_value]) VALUES (N'RCOND441bb08f:1436c079bff:-6f73-0015', N'RUL441bb08f:1436c079bff:-6fa7-0015', N'rptledger', N'RULFACT17d6e7ce:141df4b60c2:-7fd3', N'RL', 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_condition] ([objid], [parentid], [fact_name], [fact_objid], [varname], [pos], [ruletext], [displaytext], [dynamic_datatype], [dynamic_key], [dynamic_value]) VALUES (N'RCOND441bb08f:1436c079bff:-6f73-0016', N'RUL441bb08f:1436c079bff:-6fa7-0016', N'rptledger', N'RULFACT17d6e7ce:141df4b60c2:-7fd3', N'RL', 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_condition] ([objid], [parentid], [fact_name], [fact_objid], [varname], [pos], [ruletext], [displaytext], [dynamic_datatype], [dynamic_key], [dynamic_value]) VALUES (N'RCOND441bb08f:1436c079bff:-6f73-0017', N'RUL441bb08f:1436c079bff:-6fa7-0017', N'rptledger', N'RULFACT17d6e7ce:141df4b60c2:-7fd3', N'RL', 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_condition] ([objid], [parentid], [fact_name], [fact_objid], [varname], [pos], [ruletext], [displaytext], [dynamic_datatype], [dynamic_key], [dynamic_value]) VALUES (N'RCOND441bb08f:1436c079bff:-6f73-0018', N'RUL441bb08f:1436c079bff:-6fa7-0018', N'rptledger', N'RULFACT17d6e7ce:141df4b60c2:-7fd3', N'RL', 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_condition] ([objid], [parentid], [fact_name], [fact_objid], [varname], [pos], [ruletext], [displaytext], [dynamic_datatype], [dynamic_key], [dynamic_value]) VALUES (N'RCOND441bb08f:1436c079bff:-6f73-0019', N'RUL441bb08f:1436c079bff:-6fa7-0019', N'rptledger', N'RULFACT17d6e7ce:141df4b60c2:-7fd3', N'RL', 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_condition] ([objid], [parentid], [fact_name], [fact_objid], [varname], [pos], [ruletext], [displaytext], [dynamic_datatype], [dynamic_key], [dynamic_value]) VALUES (N'RCOND441bb08f:1436c079bff:-6f73-0020', N'RUL441bb08f:1436c079bff:-6fa7-0020', N'rptledger', N'RULFACT17d6e7ce:141df4b60c2:-7fd3', N'RL', 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_condition] ([objid], [parentid], [fact_name], [fact_objid], [varname], [pos], [ruletext], [displaytext], [dynamic_datatype], [dynamic_key], [dynamic_value]) VALUES (N'RCOND441bb08f:1436c079bff:-6f73-0021', N'RUL441bb08f:1436c079bff:-6fa7-0021', N'rptledger', N'RULFACT17d6e7ce:141df4b60c2:-7fd3', N'RL', 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_condition] ([objid], [parentid], [fact_name], [fact_objid], [varname], [pos], [ruletext], [displaytext], [dynamic_datatype], [dynamic_key], [dynamic_value]) VALUES (N'RCOND441bb08f:1436c079bff:-6f73-0022', N'RUL441bb08f:1436c079bff:-6fa7-0022', N'rptledger', N'RULFACT17d6e7ce:141df4b60c2:-7fd3', N'RL', 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_condition] ([objid], [parentid], [fact_name], [fact_objid], [varname], [pos], [ruletext], [displaytext], [dynamic_datatype], [dynamic_key], [dynamic_value]) VALUES (N'RCOND441bb08f:1436c079bff:-6f73-0023', N'RUL441bb08f:1436c079bff:-6fa7-0023', N'rptledger', N'RULFACT17d6e7ce:141df4b60c2:-7fd3', N'RL', 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_condition] ([objid], [parentid], [fact_name], [fact_objid], [varname], [pos], [ruletext], [displaytext], [dynamic_datatype], [dynamic_key], [dynamic_value]) VALUES (N'RCOND441bb08f:1436c079bff:-6f73-0024', N'RUL441bb08f:1436c079bff:-6fa7-0024', N'rptledger', N'RULFACT17d6e7ce:141df4b60c2:-7fd3', N'RL', 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_condition] ([objid], [parentid], [fact_name], [fact_objid], [varname], [pos], [ruletext], [displaytext], [dynamic_datatype], [dynamic_key], [dynamic_value]) VALUES (N'RCOND441bb08f:1436c079bff:-6f73-0025', N'RUL441bb08f:1436c079bff:-6fa7-0025', N'rptledger', N'RULFACT17d6e7ce:141df4b60c2:-7fd3', N'RL', 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_condition] ([objid], [parentid], [fact_name], [fact_objid], [varname], [pos], [ruletext], [displaytext], [dynamic_datatype], [dynamic_key], [dynamic_value]) VALUES (N'RCOND441bb08f:1436c079bff:-6f73-0026', N'RUL441bb08f:1436c079bff:-6fa7-0026', N'rptledger', N'RULFACT17d6e7ce:141df4b60c2:-7fd3', N'RL', 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_condition] ([objid], [parentid], [fact_name], [fact_objid], [varname], [pos], [ruletext], [displaytext], [dynamic_datatype], [dynamic_key], [dynamic_value]) VALUES (N'RCOND441bb08f:1436c079bff:-6f73-0027', N'RUL441bb08f:1436c079bff:-6fa7-0027', N'rptledger', N'RULFACT17d6e7ce:141df4b60c2:-7fd3', N'RL', 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_condition] ([objid], [parentid], [fact_name], [fact_objid], [varname], [pos], [ruletext], [displaytext], [dynamic_datatype], [dynamic_key], [dynamic_value]) VALUES (N'RCOND441bb08f:1436c079bff:-6f73-0028', N'RUL441bb08f:1436c079bff:-6fa7-0028', N'rptledger', N'RULFACT17d6e7ce:141df4b60c2:-7fd3', N'RL', 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_condition] ([objid], [parentid], [fact_name], [fact_objid], [varname], [pos], [ruletext], [displaytext], [dynamic_datatype], [dynamic_key], [dynamic_value]) VALUES (N'RCOND441bb08f:1436c079bff:-6f73-0029', N'RUL441bb08f:1436c079bff:-6fa7-0029', N'rptledger', N'RULFACT17d6e7ce:141df4b60c2:-7fd3', N'RL', 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_condition] ([objid], [parentid], [fact_name], [fact_objid], [varname], [pos], [ruletext], [displaytext], [dynamic_datatype], [dynamic_key], [dynamic_value]) VALUES (N'RCOND441bb08f:1436c079bff:-6f73-0030', N'RUL441bb08f:1436c079bff:-6fa7-0030', N'rptledger', N'RULFACT17d6e7ce:141df4b60c2:-7fd3', N'RL', 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_condition] ([objid], [parentid], [fact_name], [fact_objid], [varname], [pos], [ruletext], [displaytext], [dynamic_datatype], [dynamic_key], [dynamic_value]) VALUES (N'RCOND441bb08f:1436c079bff:-6f73-0031', N'RUL441bb08f:1436c079bff:-6fa7-0031', N'rptledger', N'RULFACT17d6e7ce:141df4b60c2:-7fd3', N'RL', 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_condition] ([objid], [parentid], [fact_name], [fact_objid], [varname], [pos], [ruletext], [displaytext], [dynamic_datatype], [dynamic_key], [dynamic_value]) VALUES (N'RCOND441bb08f:1436c079bff:-6f73-0032', N'RUL441bb08f:1436c079bff:-6fa7-0032', N'rptledger', N'RULFACT17d6e7ce:141df4b60c2:-7fd3', N'RL', 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_condition] ([objid], [parentid], [fact_name], [fact_objid], [varname], [pos], [ruletext], [displaytext], [dynamic_datatype], [dynamic_key], [dynamic_value]) VALUES (N'RCOND441bb08f:1436c079bff:-6f73-0033', N'RUL441bb08f:1436c079bff:-6fa7-0033', N'rptledger', N'RULFACT17d6e7ce:141df4b60c2:-7fd3', N'RL', 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_condition] ([objid], [parentid], [fact_name], [fact_objid], [varname], [pos], [ruletext], [displaytext], [dynamic_datatype], [dynamic_key], [dynamic_value]) VALUES (N'RCOND441bb08f:1436c079bff:-6f73-0034', N'RUL441bb08f:1436c079bff:-6fa7-0034', N'rptledger', N'RULFACT17d6e7ce:141df4b60c2:-7fd3', N'RL', 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_condition] ([objid], [parentid], [fact_name], [fact_objid], [varname], [pos], [ruletext], [displaytext], [dynamic_datatype], [dynamic_key], [dynamic_value]) VALUES (N'RCOND441bb08f:1436c079bff:-6f73-0035', N'RUL441bb08f:1436c079bff:-6fa7-0035', N'rptledger', N'RULFACT17d6e7ce:141df4b60c2:-7fd3', N'RL', 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_condition] ([objid], [parentid], [fact_name], [fact_objid], [varname], [pos], [ruletext], [displaytext], [dynamic_datatype], [dynamic_key], [dynamic_value]) VALUES (N'RCOND441bb08f:1436c079bff:-6f73-0036', N'RUL441bb08f:1436c079bff:-6fa7-0036', N'rptledger', N'RULFACT17d6e7ce:141df4b60c2:-7fd3', N'RL', 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_condition] ([objid], [parentid], [fact_name], [fact_objid], [varname], [pos], [ruletext], [displaytext], [dynamic_datatype], [dynamic_key], [dynamic_value]) VALUES (N'RCOND441bb08f:1436c079bff:-6f73-0037', N'RUL441bb08f:1436c079bff:-6fa7-0037', N'rptledger', N'RULFACT17d6e7ce:141df4b60c2:-7fd3', N'RL', 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_condition] ([objid], [parentid], [fact_name], [fact_objid], [varname], [pos], [ruletext], [displaytext], [dynamic_datatype], [dynamic_key], [dynamic_value]) VALUES (N'RCOND441bb08f:1436c079bff:-6f73-0038', N'RUL441bb08f:1436c079bff:-6fa7-0038', N'rptledger', N'RULFACT17d6e7ce:141df4b60c2:-7fd3', N'RL', 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_condition] ([objid], [parentid], [fact_name], [fact_objid], [varname], [pos], [ruletext], [displaytext], [dynamic_datatype], [dynamic_key], [dynamic_value]) VALUES (N'RCOND441bb08f:1436c079bff:-6f73-0039', N'RUL441bb08f:1436c079bff:-6fa7-0039', N'rptledger', N'RULFACT17d6e7ce:141df4b60c2:-7fd3', N'RL', 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_condition] ([objid], [parentid], [fact_name], [fact_objid], [varname], [pos], [ruletext], [displaytext], [dynamic_datatype], [dynamic_key], [dynamic_value]) VALUES (N'RCOND441bb08f:1436c079bff:-6f73-0040', N'RUL441bb08f:1436c079bff:-6fa7-0040', N'rptledger', N'RULFACT17d6e7ce:141df4b60c2:-7fd3', N'RL', 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_condition] ([objid], [parentid], [fact_name], [fact_objid], [varname], [pos], [ruletext], [displaytext], [dynamic_datatype], [dynamic_key], [dynamic_value]) VALUES (N'RCOND441bb08f:1436c079bff:-6f73-0041', N'RUL441bb08f:1436c079bff:-6fa7-0041', N'rptledger', N'RULFACT17d6e7ce:141df4b60c2:-7fd3', N'RL', 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_condition] ([objid], [parentid], [fact_name], [fact_objid], [varname], [pos], [ruletext], [displaytext], [dynamic_datatype], [dynamic_key], [dynamic_value]) VALUES (N'RCOND441bb08f:1436c079bff:-6f73-0042', N'RUL441bb08f:1436c079bff:-6fa7-0042', N'rptledger', N'RULFACT17d6e7ce:141df4b60c2:-7fd3', N'RL', 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_condition] ([objid], [parentid], [fact_name], [fact_objid], [varname], [pos], [ruletext], [displaytext], [dynamic_datatype], [dynamic_key], [dynamic_value]) VALUES (N'RCOND441bb08f:1436c079bff:-6f73-0043', N'RUL441bb08f:1436c079bff:-6fa7-0043', N'rptledger', N'RULFACT17d6e7ce:141df4b60c2:-7fd3', N'RL', 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_condition] ([objid], [parentid], [fact_name], [fact_objid], [varname], [pos], [ruletext], [displaytext], [dynamic_datatype], [dynamic_key], [dynamic_value]) VALUES (N'RCOND441bb08f:1436c079bff:-6f73-0044', N'RUL441bb08f:1436c079bff:-6fa7-0044', N'rptledger', N'RULFACT17d6e7ce:141df4b60c2:-7fd3', N'RL', 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_condition] ([objid], [parentid], [fact_name], [fact_objid], [varname], [pos], [ruletext], [displaytext], [dynamic_datatype], [dynamic_key], [dynamic_value]) VALUES (N'RCOND441bb08f:1436c079bff:-7529', N'RUL441bb08f:1436c079bff:-755d', N'rptledger', N'RULFACT17d6e7ce:141df4b60c2:-7fd3', N'RL', 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_condition] ([objid], [parentid], [fact_name], [fact_objid], [varname], [pos], [ruletext], [displaytext], [dynamic_datatype], [dynamic_key], [dynamic_value]) VALUES (N'RCOND-5287a583:143748e3d5b:-7c7c', N'RUL-5287a583:143748e3d5b:-7caa', N'IndividualCTC', N'RULFACT33cb572b:142da8961f6:-7f96', N'CTC', 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_condition] ([objid], [parentid], [fact_name], [fact_objid], [varname], [pos], [ruletext], [displaytext], [dynamic_datatype], [dynamic_key], [dynamic_value]) VALUES (N'RCOND559c0dba:14361bac6db:-7848', N'RUL559c0dba:14361bac6db:-78df', N'CurrentDate', N'RULFACT49f1ff47:142dfb342ca:-6f8c', NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_condition] ([objid], [parentid], [fact_name], [fact_objid], [varname], [pos], [ruletext], [displaytext], [dynamic_datatype], [dynamic_key], [dynamic_value]) VALUES (N'RCOND559c0dba:14361bac6db:-78b0', N'RUL559c0dba:14361bac6db:-78df', N'CorporateCTC', N'RULFACT33cb572b:142da8961f6:-7da3', N'CCTC', 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_condition] ([objid], [parentid], [fact_name], [fact_objid], [varname], [pos], [ruletext], [displaytext], [dynamic_datatype], [dynamic_key], [dynamic_value]) VALUES (N'RCOND559c0dba:14361bac6db:-7aaf', N'RUL559c0dba:14361bac6db:-7ad6', N'CorporateCTC', N'RULFACT33cb572b:142da8961f6:-7da3', N'CCTC', 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_condition] ([objid], [parentid], [fact_name], [fact_objid], [varname], [pos], [ruletext], [displaytext], [dynamic_datatype], [dynamic_key], [dynamic_value]) VALUES (N'RCOND559c0dba:14361bac6db:-7ea4', N'RUL559c0dba:14361bac6db:-7fd1', N'currentdate', N'RULFACT40e16e9c:142df3e5af6:-551d', NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_condition] ([objid], [parentid], [fact_name], [fact_objid], [varname], [pos], [ruletext], [displaytext], [dynamic_datatype], [dynamic_key], [dynamic_value]) VALUES (N'RCOND559c0dba:14361bac6db:-7f5b', N'RUL559c0dba:14361bac6db:-7fd1', N'IndividualCTC', N'RULFACT33cb572b:142da8961f6:-7f96', N'CTCI', 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_condition] ([objid], [parentid], [fact_name], [fact_objid], [varname], [pos], [ruletext], [displaytext], [dynamic_datatype], [dynamic_key], [dynamic_value]) VALUES (N'RCOND5e124146:141e4410702:-7771', N'RUL-20919e10:141e3f76dc8:-6107', N'currentdate', N'RULFACT49ae4bad:141e3b6758c:-7ba3', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_condition] ([objid], [parentid], [fact_name], [fact_objid], [varname], [pos], [ruletext], [displaytext], [dynamic_datatype], [dynamic_key], [dynamic_value]) VALUES (N'RCOND-6bef6bd6:14303fc14ea:-7f77', N'RUL-2a4d2fa5:1422bad4acc:-7957', N'currentdate', N'RULFACT49ae4bad:141e3b6758c:-7ba3', NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_condition] ([objid], [parentid], [fact_name], [fact_objid], [varname], [pos], [ruletext], [displaytext], [dynamic_datatype], [dynamic_key], [dynamic_value]) VALUES (N'RCOND6d66cc31:1446cc9522e:-7b91', N'RUL6d66cc31:1446cc9522e:-7bb3', N'RPTTxnInfoFact', N'RULFACT6d66cc31:1446cc9522e:-7ee1', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_condition] ([objid], [parentid], [fact_name], [fact_objid], [varname], [pos], [ruletext], [displaytext], [dynamic_datatype], [dynamic_key], [dynamic_value]) VALUES (N'RCOND-70b3ef1:142f01dbd80:-7fc4', N'RUL4258911a:142f00f9c9e:-7f92', N'IndividualCTC', N'RULFACT33cb572b:142da8961f6:-7f96', N'CTCI', 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_condition] ([objid], [parentid], [fact_name], [fact_objid], [varname], [pos], [ruletext], [displaytext], [dynamic_datatype], [dynamic_key], [dynamic_value]) VALUES (N'RCOND-727f5592:144018f96a2:-7eec', N'RUL-727f5592:144018f96a2:-7f25', N'businessinfo', N'RULFACT-bad19b4:141f3c18435:-7fa9', NULL, 0, NULL, NULL, N'boolean', N'LOCATED_ON_GOVERNMENT_PROPERTY', N'LOCATED_ON_GOVERNMENT_PROPERTY')
INSERT [dbo].[sys_rule_condition] ([objid], [parentid], [fact_name], [fact_objid], [varname], [pos], [ruletext], [displaytext], [dynamic_datatype], [dynamic_key], [dynamic_value]) VALUES (N'RCOND-72a9958a:141e4770339:-6684', N'RUL-72a9958a:141e4770339:-6728', N'rptledger', N'RULFACT17d6e7ce:141df4b60c2:-7fd3', N'RL', 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_condition] ([objid], [parentid], [fact_name], [fact_objid], [varname], [pos], [ruletext], [displaytext], [dynamic_datatype], [dynamic_key], [dynamic_value]) VALUES (N'RCOND-72a9958a:141e4770339:-66eb', N'RUL-72a9958a:141e4770339:-6728', N'currentdate', N'RULFACT49ae4bad:141e3b6758c:-7ba3', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_condition] ([objid], [parentid], [fact_name], [fact_objid], [varname], [pos], [ruletext], [displaytext], [dynamic_datatype], [dynamic_key], [dynamic_value]) VALUES (N'RCOND-72a9958a:141e4770339:-7a15', N'RUL-20919e10:141e3f76dc8:-6107', N'rptledger', N'RULFACT17d6e7ce:141df4b60c2:-7fd3', N'RL', 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_condition] ([objid], [parentid], [fact_name], [fact_objid], [varname], [pos], [ruletext], [displaytext], [dynamic_datatype], [dynamic_key], [dynamic_value]) VALUES (N'RCOND-72a9958a:141e4770339:-7f00', N'RUL-20919e10:141e3f76dc8:-6fa4', N'rptledger', N'RULFACT17d6e7ce:141df4b60c2:-7fd3', N'RL', 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_condition] ([objid], [parentid], [fact_name], [fact_objid], [varname], [pos], [ruletext], [displaytext], [dynamic_datatype], [dynamic_key], [dynamic_value]) VALUES (N'RCOND-7c13908b:1435065d2a1:-661a', N'RUL-7c13908b:1435065d2a1:-66d7', N'rptledger', N'RULFACT17d6e7ce:141df4b60c2:-7fd3', N'RL', 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_condition] ([objid], [parentid], [fact_name], [fact_objid], [varname], [pos], [ruletext], [displaytext], [dynamic_datatype], [dynamic_key], [dynamic_value]) VALUES (N'RCOND-7c13908b:1435065d2a1:-6657', N'RUL-7c13908b:1435065d2a1:-66d7', N'currentdate', N'RULFACT49ae4bad:141e3b6758c:-7ba3', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_condition] ([objid], [parentid], [fact_name], [fact_objid], [varname], [pos], [ruletext], [displaytext], [dynamic_datatype], [dynamic_key], [dynamic_value]) VALUES (N'RCOND-7e9d4ac4:1421b9d7ba4:-7c48', N'RUL-7e9d4ac4:1421b9d7ba4:-7d51', N'rptledger', N'RULFACT17d6e7ce:141df4b60c2:-7fd3', N'RL', 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_condition] ([objid], [parentid], [fact_name], [fact_objid], [varname], [pos], [ruletext], [displaytext], [dynamic_datatype], [dynamic_key], [dynamic_value]) VALUES (N'RCOND-7e9d4ac4:1421b9d7ba4:-7cb5', N'RUL-7e9d4ac4:1421b9d7ba4:-7d51', N'currentdate', N'RULFACT49ae4bad:141e3b6758c:-7ba3', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_condition] ([objid], [parentid], [fact_name], [fact_objid], [varname], [pos], [ruletext], [displaytext], [dynamic_datatype], [dynamic_key], [dynamic_value]) VALUES (N'RCONDaa4e683:143e6f7bbf2:-693d', N'RULaa4e683:143e6f7bbf2:-69f4', N'rptledger', N'RULFACT17d6e7ce:141df4b60c2:-7fd3', N'RL', 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_condition] ([objid], [parentid], [fact_name], [fact_objid], [varname], [pos], [ruletext], [displaytext], [dynamic_datatype], [dynamic_key], [dynamic_value]) VALUES (N'RCONDaa4e683:143e6f7bbf2:-69b5', N'RULaa4e683:143e6f7bbf2:-69f4', N'currentdate', N'RULFACT49ae4bad:141e3b6758c:-7ba3', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT-111ed864:1437daca74c:-3a47', N'RUL-111ed864:1437daca74c:-3aa5', N'RULADEF367174cc:141a62bd0d8:-4486', N'ask_business_info', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT-111ed864:1437daca74c:-3f63', N'RUL-111ed864:1437daca74c:-4082', N'RULADEF-67ecfd73:141f2b84ce7:-7b54', N'assert_business_info', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT-111ed864:1437daca74c:-4954', N'RUL-111ed864:1437daca74c:-49b1', N'RULADEF367174cc:141a62bd0d8:-4486', N'ask_business_info', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT1dc7a3de:142b70df9f8:-7ec1', N'RUL1dc7a3de:142b70df9f8:-7fb7', N'RULADEF-67ecfd73:141f2b84ce7:-7b54', N'assert_business_info', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT-20919e10:141e3f76dc8:-6298', N'RUL-20919e10:141e3f76dc8:-651b', N'RULADEF208348b4:141e2d2bd58:-7cba', N'calc-sefdisc', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT-20919e10:141e3f76dc8:-62df', N'RUL-20919e10:141e3f76dc8:-651b', N'RULADEF208348b4:141e2d2bd58:-7de8', N'calc-basicdisc', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT-20919e10:141e3f76dc8:-7448', N'RUL-20919e10:141e3f76dc8:-777f', N'RULADEF208348b4:141e2d2bd58:-7d1e', N'calc-sefint', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT-20919e10:141e3f76dc8:-74a9', N'RUL-20919e10:141e3f76dc8:-777f', N'RULADEF208348b4:141e2d2bd58:-7e60', N'calc-basicint', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT-20919e10:141e3f76dc8:-7990', N'RUL-20919e10:141e3f76dc8:-7be8', N'RULADEF208348b4:141e2d2bd58:-7d5f', N'calc-sef', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT-20919e10:141e3f76dc8:-79e5', N'RUL-20919e10:141e3f76dc8:-7be8', N'RULADEF17d6e7ce:141df4b60c2:-7e9e', N'calc-basic', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT-20919e10:141e3f76dc8:-7c33', N'RUL-20919e10:141e3f76dc8:-7e4f', N'RULADEF208348b4:141e2d2bd58:-7d5f', N'calc-sef', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT-20919e10:141e3f76dc8:-7c9b', N'RUL-20919e10:141e3f76dc8:-7e4f', N'RULADEF17d6e7ce:141df4b60c2:-7e9e', N'calc-basic', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT270217d9:143576614a1:-793f', N'RUL270217d9:143576614a1:-7c3c', N'RULADEF208348b4:141e2d2bd58:-7d5f', N'calc-sef', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT270217d9:143576614a1:-79d7', N'RUL270217d9:143576614a1:-7c3c', N'RULADEF17d6e7ce:141df4b60c2:-7e9e', N'calc-basic', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT270217d9:143576614a1:-7cb2', N'RUL52ab3945:14357604d15:-7c1a', N'RULADEF17d6e7ce:141df4b60c2:-7e9e', N'calc-basic', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT270217d9:143576614a1:-7d00', N'RUL52ab3945:14357604d15:-7c1a', N'RULADEF208348b4:141e2d2bd58:-7d5f', N'calc-sef', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT29ba689e:144612b8ef4:-7a92', N'RUL29ba689e:144612b8ef4:-7def', N'RULADEF208348b4:141e2d2bd58:-7d1e', N'calc-sefint', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT29ba689e:144612b8ef4:-7b08', N'RUL29ba689e:144612b8ef4:-7def', N'RULADEF208348b4:141e2d2bd58:-7e60', N'calc-basicint', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT-2a4d2fa5:1422bad4acc:-776a', N'RUL-2a4d2fa5:1422bad4acc:-7957', N'RULADEF208348b4:141e2d2bd58:-7b83', N'calc-firecode', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT35d5ad64:142c5cb42d2:-7f1c', N'RUL36552f88:142c18ff1a4:-7f16', N'RULADEF367174cc:141a62bd0d8:-4486', N'ask_business_info', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT-36ba5ccb:1430894b791:-3e79', N'RUL-36ba5ccb:1430894b791:-42b0', N'RULADEF367174cc:141a62bd0d8:-4486', N'ask_business_info', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT-3a26f3ae:142d1e8ff98:-7e55', N'RUL-3a26f3ae:142d1e8ff98:-7f41', N'RULADEF367174cc:141a62bd0d8:-4486', N'ask_business_info', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT-3a26f3ae:142d1e8ff98:-7e77', N'RUL-3a26f3ae:142d1e8ff98:-7f41', N'RULADEF367174cc:141a62bd0d8:-4486', N'ask_business_info', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT-3a26f3ae:142d1e8ff98:-7e99', N'RUL-3a26f3ae:142d1e8ff98:-7f41', N'RULADEF367174cc:141a62bd0d8:-4486', N'ask_business_info', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT-3a26f3ae:142d1e8ff98:-7ebb', N'RUL-3a26f3ae:142d1e8ff98:-7f41', N'RULADEF367174cc:141a62bd0d8:-4486', N'ask_business_info', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT41c8b101:142adfe2a5c:-7a3b', N'RUL41c8b101:142adfe2a5c:-7b59', N'RULADEF367174cc:141a62bd0d8:-4486', N'ask_business_info', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT-43d54639:143600ea5ae:-7db9', N'RUL53eaacea:143600ac457:-7fb2', N'RULADEF367174cc:141a62bd0d8:-4486', N'ask_business_info', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT441bb08f:1436c079bff:-6c30', N'RUL441bb08f:1436c079bff:-6fa7', N'RULADEF441bb08f:1436c079bff:-76b4', N'calc-brgyint-share', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT441bb08f:1436c079bff:-6c30-0002', N'RUL441bb08f:1436c079bff:-6fa7-0002', N'RULADEF441bb08f:1436c079bff:-76b4', N'calc-brgyint-share', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT441bb08f:1436c079bff:-6c30-0003', N'RUL441bb08f:1436c079bff:-6fa7-0003', N'RULADEF441bb08f:1436c079bff:-76b4', N'calc-brgyint-share', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT441bb08f:1436c079bff:-6c30-0004', N'RUL441bb08f:1436c079bff:-6fa7-0004', N'RULADEF441bb08f:1436c079bff:-76b4', N'calc-brgyint-share', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT441bb08f:1436c079bff:-6c30-0005', N'RUL441bb08f:1436c079bff:-6fa7-0005', N'RULADEF441bb08f:1436c079bff:-76b4', N'calc-brgyint-share', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT441bb08f:1436c079bff:-6c30-0006', N'RUL441bb08f:1436c079bff:-6fa7-0006', N'RULADEF441bb08f:1436c079bff:-76b4', N'calc-brgyint-share', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT441bb08f:1436c079bff:-6c30-0007', N'RUL441bb08f:1436c079bff:-6fa7-0007', N'RULADEF441bb08f:1436c079bff:-76b4', N'calc-brgyint-share', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT441bb08f:1436c079bff:-6c30-0008', N'RUL441bb08f:1436c079bff:-6fa7-0008', N'RULADEF441bb08f:1436c079bff:-76b4', N'calc-brgyint-share', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT441bb08f:1436c079bff:-6c30-0009', N'RUL441bb08f:1436c079bff:-6fa7-0009', N'RULADEF441bb08f:1436c079bff:-76b4', N'calc-brgyint-share', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT441bb08f:1436c079bff:-6c30-0010', N'RUL441bb08f:1436c079bff:-6fa7-0010', N'RULADEF441bb08f:1436c079bff:-76b4', N'calc-brgyint-share', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT441bb08f:1436c079bff:-6c30-0011', N'RUL441bb08f:1436c079bff:-6fa7-0011', N'RULADEF441bb08f:1436c079bff:-76b4', N'calc-brgyint-share', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT441bb08f:1436c079bff:-6c30-0012', N'RUL441bb08f:1436c079bff:-6fa7-0012', N'RULADEF441bb08f:1436c079bff:-76b4', N'calc-brgyint-share', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT441bb08f:1436c079bff:-6c30-0013', N'RUL441bb08f:1436c079bff:-6fa7-0013', N'RULADEF441bb08f:1436c079bff:-76b4', N'calc-brgyint-share', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT441bb08f:1436c079bff:-6c30-0014', N'RUL441bb08f:1436c079bff:-6fa7-0014', N'RULADEF441bb08f:1436c079bff:-76b4', N'calc-brgyint-share', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT441bb08f:1436c079bff:-6c30-0015', N'RUL441bb08f:1436c079bff:-6fa7-0015', N'RULADEF441bb08f:1436c079bff:-76b4', N'calc-brgyint-share', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT441bb08f:1436c079bff:-6c30-0016', N'RUL441bb08f:1436c079bff:-6fa7-0016', N'RULADEF441bb08f:1436c079bff:-76b4', N'calc-brgyint-share', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT441bb08f:1436c079bff:-6c30-0017', N'RUL441bb08f:1436c079bff:-6fa7-0017', N'RULADEF441bb08f:1436c079bff:-76b4', N'calc-brgyint-share', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT441bb08f:1436c079bff:-6c30-0018', N'RUL441bb08f:1436c079bff:-6fa7-0018', N'RULADEF441bb08f:1436c079bff:-76b4', N'calc-brgyint-share', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT441bb08f:1436c079bff:-6c30-0019', N'RUL441bb08f:1436c079bff:-6fa7-0019', N'RULADEF441bb08f:1436c079bff:-76b4', N'calc-brgyint-share', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT441bb08f:1436c079bff:-6c30-0020', N'RUL441bb08f:1436c079bff:-6fa7-0020', N'RULADEF441bb08f:1436c079bff:-76b4', N'calc-brgyint-share', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT441bb08f:1436c079bff:-6c30-0021', N'RUL441bb08f:1436c079bff:-6fa7-0021', N'RULADEF441bb08f:1436c079bff:-76b4', N'calc-brgyint-share', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT441bb08f:1436c079bff:-6c30-0022', N'RUL441bb08f:1436c079bff:-6fa7-0022', N'RULADEF441bb08f:1436c079bff:-76b4', N'calc-brgyint-share', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT441bb08f:1436c079bff:-6c30-0023', N'RUL441bb08f:1436c079bff:-6fa7-0023', N'RULADEF441bb08f:1436c079bff:-76b4', N'calc-brgyint-share', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT441bb08f:1436c079bff:-6c30-0024', N'RUL441bb08f:1436c079bff:-6fa7-0024', N'RULADEF441bb08f:1436c079bff:-76b4', N'calc-brgyint-share', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT441bb08f:1436c079bff:-6c30-0025', N'RUL441bb08f:1436c079bff:-6fa7-0025', N'RULADEF441bb08f:1436c079bff:-76b4', N'calc-brgyint-share', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT441bb08f:1436c079bff:-6c30-0026', N'RUL441bb08f:1436c079bff:-6fa7-0026', N'RULADEF441bb08f:1436c079bff:-76b4', N'calc-brgyint-share', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT441bb08f:1436c079bff:-6c30-0027', N'RUL441bb08f:1436c079bff:-6fa7-0027', N'RULADEF441bb08f:1436c079bff:-76b4', N'calc-brgyint-share', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT441bb08f:1436c079bff:-6c30-0028', N'RUL441bb08f:1436c079bff:-6fa7-0028', N'RULADEF441bb08f:1436c079bff:-76b4', N'calc-brgyint-share', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT441bb08f:1436c079bff:-6c30-0029', N'RUL441bb08f:1436c079bff:-6fa7-0029', N'RULADEF441bb08f:1436c079bff:-76b4', N'calc-brgyint-share', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT441bb08f:1436c079bff:-6c30-0030', N'RUL441bb08f:1436c079bff:-6fa7-0030', N'RULADEF441bb08f:1436c079bff:-76b4', N'calc-brgyint-share', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT441bb08f:1436c079bff:-6c30-0031', N'RUL441bb08f:1436c079bff:-6fa7-0031', N'RULADEF441bb08f:1436c079bff:-76b4', N'calc-brgyint-share', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT441bb08f:1436c079bff:-6c30-0032', N'RUL441bb08f:1436c079bff:-6fa7-0032', N'RULADEF441bb08f:1436c079bff:-76b4', N'calc-brgyint-share', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT441bb08f:1436c079bff:-6c30-0033', N'RUL441bb08f:1436c079bff:-6fa7-0033', N'RULADEF441bb08f:1436c079bff:-76b4', N'calc-brgyint-share', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT441bb08f:1436c079bff:-6c30-0034', N'RUL441bb08f:1436c079bff:-6fa7-0034', N'RULADEF441bb08f:1436c079bff:-76b4', N'calc-brgyint-share', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT441bb08f:1436c079bff:-6c30-0035', N'RUL441bb08f:1436c079bff:-6fa7-0035', N'RULADEF441bb08f:1436c079bff:-76b4', N'calc-brgyint-share', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT441bb08f:1436c079bff:-6c30-0036', N'RUL441bb08f:1436c079bff:-6fa7-0036', N'RULADEF441bb08f:1436c079bff:-76b4', N'calc-brgyint-share', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT441bb08f:1436c079bff:-6c30-0037', N'RUL441bb08f:1436c079bff:-6fa7-0037', N'RULADEF441bb08f:1436c079bff:-76b4', N'calc-brgyint-share', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT441bb08f:1436c079bff:-6c30-0038', N'RUL441bb08f:1436c079bff:-6fa7-0038', N'RULADEF441bb08f:1436c079bff:-76b4', N'calc-brgyint-share', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT441bb08f:1436c079bff:-6c30-0039', N'RUL441bb08f:1436c079bff:-6fa7-0039', N'RULADEF441bb08f:1436c079bff:-76b4', N'calc-brgyint-share', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT441bb08f:1436c079bff:-6c30-0040', N'RUL441bb08f:1436c079bff:-6fa7-0040', N'RULADEF441bb08f:1436c079bff:-76b4', N'calc-brgyint-share', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT441bb08f:1436c079bff:-6c30-0041', N'RUL441bb08f:1436c079bff:-6fa7-0041', N'RULADEF441bb08f:1436c079bff:-76b4', N'calc-brgyint-share', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT441bb08f:1436c079bff:-6c30-0042', N'RUL441bb08f:1436c079bff:-6fa7-0042', N'RULADEF441bb08f:1436c079bff:-76b4', N'calc-brgyint-share', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT441bb08f:1436c079bff:-6c30-0043', N'RUL441bb08f:1436c079bff:-6fa7-0043', N'RULADEF441bb08f:1436c079bff:-76b4', N'calc-brgyint-share', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT441bb08f:1436c079bff:-6c30-0044', N'RUL441bb08f:1436c079bff:-6fa7-0044', N'RULADEF441bb08f:1436c079bff:-76b4', N'calc-brgyint-share', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT441bb08f:1436c079bff:-6cc4', N'RUL441bb08f:1436c079bff:-6fa7', N'RULADEF441bb08f:1436c079bff:-771e', N'calc-brgyshare', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT441bb08f:1436c079bff:-6cc4-0002', N'RUL441bb08f:1436c079bff:-6fa7-0002', N'RULADEF441bb08f:1436c079bff:-771e', N'calc-brgyshare', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT441bb08f:1436c079bff:-6cc4-0003', N'RUL441bb08f:1436c079bff:-6fa7-0003', N'RULADEF441bb08f:1436c079bff:-771e', N'calc-brgyshare', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT441bb08f:1436c079bff:-6cc4-0004', N'RUL441bb08f:1436c079bff:-6fa7-0004', N'RULADEF441bb08f:1436c079bff:-771e', N'calc-brgyshare', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT441bb08f:1436c079bff:-6cc4-0005', N'RUL441bb08f:1436c079bff:-6fa7-0005', N'RULADEF441bb08f:1436c079bff:-771e', N'calc-brgyshare', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT441bb08f:1436c079bff:-6cc4-0006', N'RUL441bb08f:1436c079bff:-6fa7-0006', N'RULADEF441bb08f:1436c079bff:-771e', N'calc-brgyshare', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT441bb08f:1436c079bff:-6cc4-0007', N'RUL441bb08f:1436c079bff:-6fa7-0007', N'RULADEF441bb08f:1436c079bff:-771e', N'calc-brgyshare', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT441bb08f:1436c079bff:-6cc4-0008', N'RUL441bb08f:1436c079bff:-6fa7-0008', N'RULADEF441bb08f:1436c079bff:-771e', N'calc-brgyshare', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT441bb08f:1436c079bff:-6cc4-0009', N'RUL441bb08f:1436c079bff:-6fa7-0009', N'RULADEF441bb08f:1436c079bff:-771e', N'calc-brgyshare', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT441bb08f:1436c079bff:-6cc4-0010', N'RUL441bb08f:1436c079bff:-6fa7-0010', N'RULADEF441bb08f:1436c079bff:-771e', N'calc-brgyshare', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT441bb08f:1436c079bff:-6cc4-0011', N'RUL441bb08f:1436c079bff:-6fa7-0011', N'RULADEF441bb08f:1436c079bff:-771e', N'calc-brgyshare', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT441bb08f:1436c079bff:-6cc4-0012', N'RUL441bb08f:1436c079bff:-6fa7-0012', N'RULADEF441bb08f:1436c079bff:-771e', N'calc-brgyshare', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT441bb08f:1436c079bff:-6cc4-0013', N'RUL441bb08f:1436c079bff:-6fa7-0013', N'RULADEF441bb08f:1436c079bff:-771e', N'calc-brgyshare', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT441bb08f:1436c079bff:-6cc4-0014', N'RUL441bb08f:1436c079bff:-6fa7-0014', N'RULADEF441bb08f:1436c079bff:-771e', N'calc-brgyshare', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT441bb08f:1436c079bff:-6cc4-0015', N'RUL441bb08f:1436c079bff:-6fa7-0015', N'RULADEF441bb08f:1436c079bff:-771e', N'calc-brgyshare', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT441bb08f:1436c079bff:-6cc4-0016', N'RUL441bb08f:1436c079bff:-6fa7-0016', N'RULADEF441bb08f:1436c079bff:-771e', N'calc-brgyshare', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT441bb08f:1436c079bff:-6cc4-0017', N'RUL441bb08f:1436c079bff:-6fa7-0017', N'RULADEF441bb08f:1436c079bff:-771e', N'calc-brgyshare', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT441bb08f:1436c079bff:-6cc4-0018', N'RUL441bb08f:1436c079bff:-6fa7-0018', N'RULADEF441bb08f:1436c079bff:-771e', N'calc-brgyshare', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT441bb08f:1436c079bff:-6cc4-0019', N'RUL441bb08f:1436c079bff:-6fa7-0019', N'RULADEF441bb08f:1436c079bff:-771e', N'calc-brgyshare', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT441bb08f:1436c079bff:-6cc4-0020', N'RUL441bb08f:1436c079bff:-6fa7-0020', N'RULADEF441bb08f:1436c079bff:-771e', N'calc-brgyshare', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT441bb08f:1436c079bff:-6cc4-0021', N'RUL441bb08f:1436c079bff:-6fa7-0021', N'RULADEF441bb08f:1436c079bff:-771e', N'calc-brgyshare', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT441bb08f:1436c079bff:-6cc4-0022', N'RUL441bb08f:1436c079bff:-6fa7-0022', N'RULADEF441bb08f:1436c079bff:-771e', N'calc-brgyshare', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT441bb08f:1436c079bff:-6cc4-0023', N'RUL441bb08f:1436c079bff:-6fa7-0023', N'RULADEF441bb08f:1436c079bff:-771e', N'calc-brgyshare', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT441bb08f:1436c079bff:-6cc4-0024', N'RUL441bb08f:1436c079bff:-6fa7-0024', N'RULADEF441bb08f:1436c079bff:-771e', N'calc-brgyshare', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT441bb08f:1436c079bff:-6cc4-0025', N'RUL441bb08f:1436c079bff:-6fa7-0025', N'RULADEF441bb08f:1436c079bff:-771e', N'calc-brgyshare', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT441bb08f:1436c079bff:-6cc4-0026', N'RUL441bb08f:1436c079bff:-6fa7-0026', N'RULADEF441bb08f:1436c079bff:-771e', N'calc-brgyshare', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT441bb08f:1436c079bff:-6cc4-0027', N'RUL441bb08f:1436c079bff:-6fa7-0027', N'RULADEF441bb08f:1436c079bff:-771e', N'calc-brgyshare', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT441bb08f:1436c079bff:-6cc4-0028', N'RUL441bb08f:1436c079bff:-6fa7-0028', N'RULADEF441bb08f:1436c079bff:-771e', N'calc-brgyshare', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT441bb08f:1436c079bff:-6cc4-0029', N'RUL441bb08f:1436c079bff:-6fa7-0029', N'RULADEF441bb08f:1436c079bff:-771e', N'calc-brgyshare', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT441bb08f:1436c079bff:-6cc4-0030', N'RUL441bb08f:1436c079bff:-6fa7-0030', N'RULADEF441bb08f:1436c079bff:-771e', N'calc-brgyshare', 0)
GO
print 'Processed 100 total records'
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT441bb08f:1436c079bff:-6cc4-0031', N'RUL441bb08f:1436c079bff:-6fa7-0031', N'RULADEF441bb08f:1436c079bff:-771e', N'calc-brgyshare', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT441bb08f:1436c079bff:-6cc4-0032', N'RUL441bb08f:1436c079bff:-6fa7-0032', N'RULADEF441bb08f:1436c079bff:-771e', N'calc-brgyshare', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT441bb08f:1436c079bff:-6cc4-0033', N'RUL441bb08f:1436c079bff:-6fa7-0033', N'RULADEF441bb08f:1436c079bff:-771e', N'calc-brgyshare', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT441bb08f:1436c079bff:-6cc4-0034', N'RUL441bb08f:1436c079bff:-6fa7-0034', N'RULADEF441bb08f:1436c079bff:-771e', N'calc-brgyshare', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT441bb08f:1436c079bff:-6cc4-0035', N'RUL441bb08f:1436c079bff:-6fa7-0035', N'RULADEF441bb08f:1436c079bff:-771e', N'calc-brgyshare', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT441bb08f:1436c079bff:-6cc4-0036', N'RUL441bb08f:1436c079bff:-6fa7-0036', N'RULADEF441bb08f:1436c079bff:-771e', N'calc-brgyshare', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT441bb08f:1436c079bff:-6cc4-0037', N'RUL441bb08f:1436c079bff:-6fa7-0037', N'RULADEF441bb08f:1436c079bff:-771e', N'calc-brgyshare', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT441bb08f:1436c079bff:-6cc4-0038', N'RUL441bb08f:1436c079bff:-6fa7-0038', N'RULADEF441bb08f:1436c079bff:-771e', N'calc-brgyshare', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT441bb08f:1436c079bff:-6cc4-0039', N'RUL441bb08f:1436c079bff:-6fa7-0039', N'RULADEF441bb08f:1436c079bff:-771e', N'calc-brgyshare', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT441bb08f:1436c079bff:-6cc4-0040', N'RUL441bb08f:1436c079bff:-6fa7-0040', N'RULADEF441bb08f:1436c079bff:-771e', N'calc-brgyshare', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT441bb08f:1436c079bff:-6cc4-0041', N'RUL441bb08f:1436c079bff:-6fa7-0041', N'RULADEF441bb08f:1436c079bff:-771e', N'calc-brgyshare', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT441bb08f:1436c079bff:-6cc4-0042', N'RUL441bb08f:1436c079bff:-6fa7-0042', N'RULADEF441bb08f:1436c079bff:-771e', N'calc-brgyshare', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT441bb08f:1436c079bff:-6cc4-0043', N'RUL441bb08f:1436c079bff:-6fa7-0043', N'RULADEF441bb08f:1436c079bff:-771e', N'calc-brgyshare', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT441bb08f:1436c079bff:-6cc4-0044', N'RUL441bb08f:1436c079bff:-6fa7-0044', N'RULADEF441bb08f:1436c079bff:-771e', N'calc-brgyshare', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT441bb08f:1436c079bff:-7048', N'RUL441bb08f:1436c079bff:-755d', N'RULADEF441bb08f:1436c079bff:-77e1', N'calc-lguint-share', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT441bb08f:1436c079bff:-711d', N'RUL441bb08f:1436c079bff:-755d', N'RULADEF441bb08f:1436c079bff:-7831', N'calc-lgushare', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT-5287a583:143748e3d5b:-7b87', N'RUL-5287a583:143748e3d5b:-7caa', N'RULADEF-301ea2a7:142daea52cd:-7ed8', N'calc-basic-tax', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT559c0dba:14361bac6db:-77f9', N'RUL559c0dba:14361bac6db:-78df', N'RULADEF40e16e9c:142df3e5af6:-7ad7', N'calc-interest', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT559c0dba:14361bac6db:-7942', N'RUL559c0dba:14361bac6db:-7ad6', N'RULADEF40e16e9c:142df3e5af6:-7b1e', N'calc-propertyav-tax', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT559c0dba:14361bac6db:-7996', N'RUL559c0dba:14361bac6db:-7ad6', N'RULADEF40e16e9c:142df3e5af6:-7b41', N'calc-businessgross-tax', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT559c0dba:14361bac6db:-79e9', N'RUL559c0dba:14361bac6db:-7ad6', N'RULADEF40e16e9c:142df3e5af6:-7b7b', N'calc-basic-tax', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT559c0dba:14361bac6db:-7d6f', N'RUL559c0dba:14361bac6db:-7fd1', N'RULADEF-301ea2a7:142daea52cd:-7611', N'calc-interest', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT-68ca73a4:142c149a9bf:-7c44', N'RUL2659bca9:142b667ccd3:-7f3f', N'RULADEF367174cc:141a62bd0d8:-4486', N'ask_business_info', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT-68ca73a4:142c149a9bf:-7c66', N'RUL2659bca9:142b667ccd3:-7f3f', N'RULADEF367174cc:141a62bd0d8:-4486', N'ask_business_info', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT-68ca73a4:142c149a9bf:-7c88', N'RUL2659bca9:142b667ccd3:-7f3f', N'RULADEF367174cc:141a62bd0d8:-4486', N'ask_business_info', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT6d66cc31:1446cc9522e:-7a12', N'RUL6d66cc31:1446cc9522e:-7bb3', N'RULADEF6d66cc31:1446cc9522e:-7d56', N'add-requirement', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT6d66cc31:1446cc9522e:-7a2c', N'RUL6d66cc31:1446cc9522e:-7bb3', N'RULADEF6d66cc31:1446cc9522e:-7d56', N'add-requirement', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT6d66cc31:1446cc9522e:-7a46', N'RUL6d66cc31:1446cc9522e:-7bb3', N'RULADEF6d66cc31:1446cc9522e:-7d56', N'add-requirement', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT6d66cc31:1446cc9522e:-7a6c', N'RUL6d66cc31:1446cc9522e:-7bb3', N'RULADEF6d66cc31:1446cc9522e:-7d56', N'add-requirement', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT-70b3ef1:142f01dbd80:-7ca8', N'RUL4258911a:142f00f9c9e:-7f92', N'RULADEF-301ea2a7:142daea52cd:-7707', N'calc-propertyincome-tax', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT-70b3ef1:142f01dbd80:-7d3b', N'RUL4258911a:142f00f9c9e:-7f92', N'RULADEF-301ea2a7:142daea52cd:-776c', N'calc-businessgross-tax', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT-70b3ef1:142f01dbd80:-7d9c', N'RUL4258911a:142f00f9c9e:-7f92', N'RULADEF-301ea2a7:142daea52cd:-7887', N'calc-salary-tax', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT-70b3ef1:142f01dbd80:-7dfd', N'RUL4258911a:142f00f9c9e:-7f92', N'RULADEF-301ea2a7:142daea52cd:-7ed8', N'calc-basic-tax', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT-727f5592:144018f96a2:-7ebb', N'RUL-727f5592:144018f96a2:-7f25', N'RULADEF367174cc:141a62bd0d8:-4486', N'ask_business_info', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT-72a9958a:141e4770339:-63fb', N'RUL-72a9958a:141e4770339:-6728', N'RULADEF208348b4:141e2d2bd58:-7cba', N'calc-sefdisc', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT-72a9958a:141e4770339:-6442', N'RUL-72a9958a:141e4770339:-6728', N'RULADEF208348b4:141e2d2bd58:-7de8', N'calc-basicdisc', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT-72a9958a:141e4770339:-7663', N'RUL-20919e10:141e3f76dc8:-6107', N'RULADEF208348b4:141e2d2bd58:-7cba', N'calc-sefdisc', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT-72a9958a:141e4770339:-76aa', N'RUL-20919e10:141e3f76dc8:-6107', N'RULADEF208348b4:141e2d2bd58:-7de8', N'calc-basicdisc', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT-72a9958a:141e4770339:-7acc', N'RUL-20919e10:141e3f76dc8:-6fa4', N'RULADEF208348b4:141e2d2bd58:-7d1e', N'calc-sefint', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT-72a9958a:141e4770339:-7bd8', N'RUL-20919e10:141e3f76dc8:-6fa4', N'RULADEF208348b4:141e2d2bd58:-7e60', N'calc-basicint', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT-7c13908b:1435065d2a1:-5c42', N'RUL-7c13908b:1435065d2a1:-66d7', N'RULADEF208348b4:141e2d2bd58:-7d5f', N'calc-sef', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT-7c13908b:1435065d2a1:-5ced', N'RUL-7c13908b:1435065d2a1:-66d7', N'RULADEF17d6e7ce:141df4b60c2:-7e9e', N'calc-basic', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT-7e9d4ac4:1421b9d7ba4:-79b2', N'RUL-7e9d4ac4:1421b9d7ba4:-7d51', N'RULADEF208348b4:141e2d2bd58:-7cba', N'calc-sefdisc', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT-7e9d4ac4:1421b9d7ba4:-7a0e', N'RUL-7e9d4ac4:1421b9d7ba4:-7d51', N'RULADEF208348b4:141e2d2bd58:-7de8', N'calc-basicdisc', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACTaa4e683:143e6f7bbf2:-65d3', N'RULaa4e683:143e6f7bbf2:-69f4', N'RULADEF208348b4:141e2d2bd58:-7cba', N'calc-sefdisc', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACTaa4e683:143e6f7bbf2:-6652', N'RULaa4e683:143e6f7bbf2:-69f4', N'RULADEF208348b4:141e2d2bd58:-7de8', N'calc-basicdisc', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT-d6be24f:142d1c006d9:-7dd1', N'RUL41c8b101:142adfe2a5c:-7ce7', N'RULADEF367174cc:141a62bd0d8:-4486', N'ask_business_info', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT-d6be24f:142d1c006d9:-7df3', N'RUL41c8b101:142adfe2a5c:-7ce7', N'RULADEF367174cc:141a62bd0d8:-4486', N'ask_business_info', 0)
INSERT [dbo].[sys_rule_action] ([objid], [parentid], [actiondef_objid], [actiondef_name], [pos]) VALUES (N'RACT-d6be24f:142d1c006d9:-7e15', N'RUL41c8b101:142adfe2a5c:-7ce7', N'RULADEF367174cc:141a62bd0d8:-4486', N'ask_business_info', 0)
INSERT [dbo].[sys_rule_deployed] ([objid], [ruletext]) VALUES (N'RUL-111ed864:1437daca74c:-3aa5', N'
package bpinfo.ASK_IF_OFFICE_IS_RENTED;
import bpinfo.*;
import java.util.*;
import com.rameses.rules.common.*;

global RuleAction action;

rule "ASK_IF_OFFICE_IS_RENTED"
	agenda-group "default"
	salience 50000
	no-loop
	when
		
		
		 bpls.facts.BusinessInfo (  name=="IS_LOCATED_IN_ILIGAN" ,lob == null,IS_LOCATED_IN_ILIGAN:booleanvalue == true  )
		
	then
		Map bindings = new HashMap();
		
		bindings.put("IS_LOCATED_IN_ILIGAN", IS_LOCATED_IN_ILIGAN );
		
	Map _p0 = new HashMap();
_p0.put( "lob", null );
_p0.put( "attribute", new KeyValue("IS_RENTED", "IS_RENTED") );
_p0.put( "defaultvalue", "true" );
action.execute( "ask_business_info",_p0,drools);

end


	')
INSERT [dbo].[sys_rule_deployed] ([objid], [ruletext]) VALUES (N'RUL-111ed864:1437daca74c:-4082', N'
package bpinfo.REQUIRES_CEO_IF_WITHIN_GOV_PROP;
import bpinfo.*;
import java.util.*;
import com.rameses.rules.common.*;

global RuleAction action;

rule "REQUIRES_CEO_IF_WITHIN_GOV_PROP"
	agenda-group "postinfo"
	salience 50000
	no-loop
	when
		
		
		 bpls.facts.BPApplication (  apptype matches "NEW|RENEW",orgtype not matches "COOP" )
		
		 bpls.facts.BusinessInfo (  name=="LOCATED_ON_GOVERNMENT_PROPERTY" ,lob == null,LOCATED_ON_GOVERNMENT_PROPERTY:booleanvalue == false  )
		
	then
		Map bindings = new HashMap();
		
		bindings.put("LOCATED_ON_GOVERNMENT_PROPERTY", LOCATED_ON_GOVERNMENT_PROPERTY );
		
	Map _p0 = new HashMap();
_p0.put( "lob", null );
_p0.put( "attribute", new KeyValue("REQUIRE_CEO", "REQUIRE_CEO") );
_p0.put( "value", (new ActionExpression("true", bindings)) );
action.execute( "assert_business_info",_p0,drools);

end


	')
INSERT [dbo].[sys_rule_deployed] ([objid], [ruletext]) VALUES (N'RUL-111ed864:1437daca74c:-49b1', N'
package bpinfo.ASK_IF_WITHIN_GOVERNMENT_PROPERTY;
import bpinfo.*;
import java.util.*;
import com.rameses.rules.common.*;

global RuleAction action;

rule "ASK_IF_WITHIN_GOVERNMENT_PROPERTY"
	agenda-group "default"
	salience 30000
	no-loop
	when
		
		
		 bpls.facts.BusinessInfo (  name=="IS_LOCATED_IN_ILIGAN" ,lob == null,IS_LOCATED_IN_ILIGAN:booleanvalue == true  )
		
	then
		Map bindings = new HashMap();
		
		bindings.put("IS_LOCATED_IN_ILIGAN", IS_LOCATED_IN_ILIGAN );
		
	Map _p0 = new HashMap();
_p0.put( "lob", null );
_p0.put( "attribute", new KeyValue("LOCATED_ON_GOVERNMENT_PROPERTY", "LOCATED_ON_GOVERNMENT_PROPERTY") );
_p0.put( "defaultvalue", "false" );
action.execute( "ask_business_info",_p0,drools);

end


	')
INSERT [dbo].[sys_rule_deployed] ([objid], [ruletext]) VALUES (N'RUL-20919e10:141e3f76dc8:-6107', N'
package rptbilling.ADVANCE_DISCOUNT_QTRLY;
import rptbilling.*;
import java.util.*;
import com.rameses.rules.common.*;

global RuleAction action;

rule "ADVANCE_DISCOUNT_QTRLY"
	agenda-group "DISCOUNT"
	salience 50000
	no-loop
	when
		EffectiveDate(numericDate >= 20131023)
		
		 CurrentDate (  CY:year,CQTR:qtr )
		
		RL: RPTLedgerFact (  year > CY,BASIC:basic,SEF:sef,fullpayment == false  )
		
	then
		Map bindings = new HashMap();
		
		bindings.put("CY", CY );
		
		bindings.put("RL", RL );
		
		bindings.put("CQTR", CQTR );
		
		bindings.put("BASIC", BASIC );
		
		bindings.put("SEF", SEF );
		
	Map _p0 = new HashMap();
_p0.put( "expr", (new ActionExpression("SEF * 0.10", bindings)) );
_p0.put( "rptledger", RL );
action.execute( "calc-sefdisc",_p0,drools);
Map _p1 = new HashMap();
_p1.put( "expr", (new ActionExpression("BASIC * 0.10", bindings)) );
_p1.put( "rptledger", RL );
action.execute( "calc-basicdisc",_p1,drools);

end


	')
INSERT [dbo].[sys_rule_deployed] ([objid], [ruletext]) VALUES (N'RUL-20919e10:141e3f76dc8:-651b', N'
package rptbilling.ADVANCE_DISCOUNT_FULL;
import rptbilling.*;
import java.util.*;
import com.rameses.rules.common.*;

global RuleAction action;

rule "ADVANCE_DISCOUNT_FULL"
	agenda-group "DISCOUNT"
	salience 50000
	no-loop
	when
		EffectiveDate(numericDate >= 20131023)
		
		 CurrentDate (  CY:year )
		
		RL: RPTLedgerFact (  year > CY,BASIC:basic,SEF:sef,fullpayment == true  )
		
	then
		Map bindings = new HashMap();
		
		bindings.put("CY", CY );
		
		bindings.put("BASIC", BASIC );
		
		bindings.put("RL", RL );
		
		bindings.put("SEF", SEF );
		
	Map _p0 = new HashMap();
_p0.put( "expr", (new ActionExpression("SEF * 0.15", bindings)) );
_p0.put( "rptledger", RL );
action.execute( "calc-sefdisc",_p0,drools);
Map _p1 = new HashMap();
_p1.put( "expr", (new ActionExpression("BASIC * 0.15", bindings)) );
_p1.put( "rptledger", RL );
action.execute( "calc-basicdisc",_p1,drools);

end


	')
INSERT [dbo].[sys_rule_deployed] ([objid], [ruletext]) VALUES (N'RUL-20919e10:141e3f76dc8:-6fa4', N'
package rptbilling.BASIC_SEF_CURRENT_INTEREST;
import rptbilling.*;
import java.util.*;
import com.rameses.rules.common.*;

global RuleAction action;

rule "BASIC_SEF_CURRENT_INTEREST"
	agenda-group "PENALTY"
	salience 50000
	no-loop
	when
		EffectiveDate(numericDate >= 20131023)
		
		 CurrentDate (  CY:year,CQTR:qtr )
		
		RL: RPTLedgerFact (  year == CY,qtr < CQTR,BASIC:basic,SEF:sef,NMON:numberofmonthsfromjan )
		
	then
		Map bindings = new HashMap();
		
		bindings.put("CY", CY );
		
		bindings.put("RL", RL );
		
		bindings.put("CQTR", CQTR );
		
		bindings.put("BASIC", BASIC );
		
		bindings.put("SEF", SEF );
		
		bindings.put("NMON", NMON );
		
	Map _p0 = new HashMap();
_p0.put( "sefintacct", new KeyValue("REVITEM-1c2fcd63:140c2c7c557:-7f70", "SEF CURRENT INTEREST") );
_p0.put( "expr", (new ActionExpression("SEF * NMON * 0.02", bindings)) );
_p0.put( "rptledger", RL );
action.execute( "calc-sefint",_p0,drools);
Map _p1 = new HashMap();
_p1.put( "basicintacct", new KeyValue("REVITEM217a91b:1409e6ae44e:-7faa", "RPT BASIC CURRENT INTEREST") );
_p1.put( "expr", (new ActionExpression("BASIC * NMON * 0.02", bindings)) );
_p1.put( "rptledger", RL );
action.execute( "calc-basicint",_p1,drools);

end


	')
INSERT [dbo].[sys_rule_deployed] ([objid], [ruletext]) VALUES (N'RUL-20919e10:141e3f76dc8:-777f', N'
package rptbilling.BASIC_SEF_PREVIOUS_INTEREST;
import rptbilling.*;
import java.util.*;
import com.rameses.rules.common.*;

global RuleAction action;

rule "BASIC_SEF_PREVIOUS_INTEREST"
	agenda-group "PENALTY"
	salience 50000
	no-loop
	when
		
		
		 CurrentDate (  CY:year )
		
		RL: RPTLedgerFact (  year < CY,BASIC:basic,SEF:sef,NMON:numberofmonthsfromjan )
		
	then
		Map bindings = new HashMap();
		
		bindings.put("CY", CY );
		
		bindings.put("RL", RL );
		
		bindings.put("BASIC", BASIC );
		
		bindings.put("SEF", SEF );
		
		bindings.put("NMON", NMON );
		
	Map _p0 = new HashMap();
_p0.put( "sefintacct", new KeyValue("REVITEM-1c2fcd63:140c2c7c557:-7f6c", "SEF PREVIOUS INTEREST") );
_p0.put( "expr", (new ActionExpression("@IIF( NMON * 0.02 > 0.72, SEF * 0.72, SEF * NMON * 0.02 )", bindings)) );
_p0.put( "rptledger", RL );
action.execute( "calc-sefint",_p0,drools);
Map _p1 = new HashMap();
_p1.put( "basicintacct", new KeyValue("REVITEM217a91b:1409e6ae44e:-7fa6", "RPT BASIC PREVIOUS INTEREST") );
_p1.put( "expr", (new ActionExpression("@IIF( NMON * 0.02 > 0.72, BASIC * 0.72, BASIC * NMON * 0.02 )", bindings)) );
_p1.put( "rptledger", RL );
action.execute( "calc-basicint",_p1,drools);

end


	')
INSERT [dbo].[sys_rule_deployed] ([objid], [ruletext]) VALUES (N'RUL-20919e10:141e3f76dc8:-7be8', N'
package rptbilling.BASIC_SEF_ADVANCE_TAX;
import rptbilling.*;
import java.util.*;
import com.rameses.rules.common.*;

global RuleAction action;

rule "BASIC_SEF_ADVANCE_TAX"
	agenda-group "TAX"
	salience 50000
	no-loop
	when
		
		
		 CurrentDate (  CY:year )
		
		RL: RPTLedgerFact (  year > CY,AV:av )
		
	then
		Map bindings = new HashMap();
		
		bindings.put("CY", CY );
		
		bindings.put("RL", RL );
		
		bindings.put("AV", AV );
		
	Map _p0 = new HashMap();
_p0.put( "sefacct", new KeyValue("REVITEM-1c2fcd63:140c2c7c557:-7f7d", "SEF ADVANCE") );
_p0.put( "expr", (new ActionExpression("AV * 0.01", bindings)) );
_p0.put( "rptledger", RL );
action.execute( "calc-sef",_p0,drools);
Map _p1 = new HashMap();
_p1.put( "revtype", new KeyValue("advance", "advance") );
_p1.put( "basicacct", new KeyValue("REVITEM217a91b:1409e6ae44e:-7f3a", "RPT BASIC ADVANCE") );
_p1.put( "expr", (new ActionExpression("AV * 0.01375", bindings)) );
_p1.put( "rptledger", RL );
action.execute( "calc-basic",_p1,drools);

end


	')
INSERT [dbo].[sys_rule_deployed] ([objid], [ruletext]) VALUES (N'RUL-20919e10:141e3f76dc8:-7e4f', N'
package rptbilling.BASIC_SEF_CURRENT_TAX;
import rptbilling.*;
import java.util.*;
import com.rameses.rules.common.*;

global RuleAction action;

rule "BASIC_SEF_CURRENT_TAX"
	agenda-group "TAX"
	salience 50000
	no-loop
	when
		
		
		 CurrentDate (  CY:year == CY )
		
		RL: RPTLedgerFact (  year == CY,AV:av )
		
	then
		Map bindings = new HashMap();
		
		bindings.put("CY", CY );
		
		bindings.put("RL", RL );
		
		bindings.put("AV", AV );
		
	Map _p0 = new HashMap();
_p0.put( "sefacct", new KeyValue("REVITEM-1c2fcd63:140c2c7c557:-7f81", "SEF CURRENT") );
_p0.put( "expr", (new ActionExpression("AV * 0.01", bindings)) );
_p0.put( "rptledger", RL );
action.execute( "calc-sef",_p0,drools);
Map _p1 = new HashMap();
_p1.put( "revtype", new KeyValue("current", "current") );
_p1.put( "basicacct", new KeyValue("REVITEM217a91b:1409e6ae44e:-7fb4", "RPT BASIC CURRENT") );
_p1.put( "expr", (new ActionExpression("AV  * 0.01375", bindings)) );
_p1.put( "rptledger", RL );
action.execute( "calc-basic",_p1,drools);

end


	')
INSERT [dbo].[sys_rule_deployed] ([objid], [ruletext]) VALUES (N'RUL2659bca9:142b667ccd3:-7f3f', N'
package bpinfo.ASK_EMPLOYEE_INFO;
import bpinfo.*;
import java.util.*;
import com.rameses.rules.common.*;

global RuleAction action;

rule "ASK_EMPLOYEE_INFO"
	agenda-group "default"
	salience 50000
	no-loop
	when
		
		
		 bpls.facts.BPApplication (  apptype matches "NEW|RENEW" )
		
	then
		Map bindings = new HashMap();
		
	Map _p0 = new HashMap();
_p0.put( "lob", null );
_p0.put( "attribute", new KeyValue("NUM_EMPLOYEE_MALE", "NUM_EMPLOYEE_MALE") );
_p0.put( "defaultvalue", "null" );
action.execute( "ask_business_info",_p0,drools);
Map _p1 = new HashMap();
_p1.put( "lob", null );
_p1.put( "attribute", new KeyValue("NUM_EMPLOYEE_FEMALE", "NUM_EMPLOYEE_FEMALE") );
_p1.put( "defaultvalue", "null" );
action.execute( "ask_business_info",_p1,drools);
Map _p2 = new HashMap();
_p2.put( "lob", null );
_p2.put( "attribute", new KeyValue("NUM_EMPLOYEE_RESIDENT", "NUM_EMPLOYEE_RESIDENT") );
_p2.put( "defaultvalue", "null" );
action.execute( "ask_business_info",_p2,drools);

end


	')
INSERT [dbo].[sys_rule_deployed] ([objid], [ruletext]) VALUES (N'RUL270217d9:143576614a1:-7c3c', N'
package rptbilling.STAGGERED_BASIC_SEF_2015;
import rptbilling.*;
import java.util.*;
import com.rameses.rules.common.*;

global RuleAction action;

rule "STAGGERED_BASIC_SEF_2015"
	agenda-group "AFTER_TAX"
	salience 50000
	no-loop
	when
		
		
		RL: RPTLedgerFact (  YR2015:year == 2015,AV:av,reclassed == true  )
		
		 CurrentDate (  year == YR2015 )
		
		 AssessedValueFact (  year == 2013,AV2013:assessedvalue )
		
	then
		Map bindings = new HashMap();
		
		bindings.put("RL", RL );
		
		bindings.put("YR2015", YR2015 );
		
		bindings.put("AV2013", AV2013 );
		
		bindings.put("AV", AV );
		
	Map _p0 = new HashMap();
_p0.put( "sefacct", new KeyValue("REVITEM-1c2fcd63:140c2c7c557:-7f81", "RPT SEF CURRENT") );
_p0.put( "expr", (new ActionExpression("( (AV2013 / 4.0) + ( AV - (AV2013 / 4.0) ) * 0.60 ) * 0.01", bindings)) );
_p0.put( "rptledger", RL );
action.execute( "calc-sef",_p0,drools);
Map _p1 = new HashMap();
_p1.put( "revtype", new KeyValue("current", "current") );
_p1.put( "basicacct", new KeyValue("REVITEM217a91b:1409e6ae44e:-7fb4", "RPT BASIC CURRENT") );
_p1.put( "expr", (new ActionExpression("( (AV2013 / 4.0) + ( AV - (AV2013 / 4.0) ) * 0.60 ) * 0.01375", bindings)) );
_p1.put( "rptledger", RL );
action.execute( "calc-basic",_p1,drools);

end


	')
INSERT [dbo].[sys_rule_deployed] ([objid], [ruletext]) VALUES (N'RUL29ba689e:144612b8ef4:-7def', N'
package rptbilling.NEW_DISCOVERY_PENALTY_ADJ;
import rptbilling.*;
import java.util.*;
import com.rameses.rules.common.*;

global RuleAction action;

rule "NEW_DISCOVERY_PENALTY_ADJ"
	agenda-group "AFTER_PENALTY"
	salience 50000
	no-loop
	when
		
		
		 CurrentDate (  CY:year )
		
		RL: RPTLedgerFact (  year < CY,txntype matches "ND" )
		
	then
		Map bindings = new HashMap();
		
		bindings.put("CY", CY );
		
		bindings.put("RL", RL );
		
	Map _p0 = new HashMap();
_p0.put( "sefintacct", new KeyValue("REVITEM-1c2fcd63:140c2c7c557:-7f6c", "RPT SEF PENALTY PRIOR YEAR/S") );
_p0.put( "expr", (new ActionExpression("0.0", bindings)) );
_p0.put( "rptledger", RL );
action.execute( "calc-sefint",_p0,drools);
Map _p1 = new HashMap();
_p1.put( "basicintacct", new KeyValue("REVITEM217a91b:1409e6ae44e:-7fa6", "RPT BASIC PENALTY PRIOR YEAR/S") );
_p1.put( "expr", (new ActionExpression("0.0", bindings)) );
_p1.put( "rptledger", RL );
action.execute( "calc-basicint",_p1,drools);

end


	')
INSERT [dbo].[sys_rule_deployed] ([objid], [ruletext]) VALUES (N'RUL-2a4d2fa5:1422bad4acc:-7957', N'
package rptbilling.FIRE_CODE;
import rptbilling.*;
import java.util.*;
import com.rameses.rules.common.*;

global RuleAction action;

rule "FIRE_CODE"
	agenda-group "AFTER_TAX"
	salience 50000
	no-loop
	when
		
		
		RL: RPTLedgerFact (  rputype matches "bldg",classification matches "INDUSTRIAL|COMMERCIAL",SEF:sef )
		
		 CurrentDate (  qtr == 1 )
		
	then
		Map bindings = new HashMap();
		
		bindings.put("RL", RL );
		
		bindings.put("SEF", SEF );
		
	Map _p0 = new HashMap();
_p0.put( "firecodeacct", new KeyValue("REVITEM-329af841:14104a5dd77:-6a30", "RPT FIRE CODE") );
_p0.put( "expr", (new ActionExpression("SEF * 0.01", bindings)) );
_p0.put( "rptledger", RL );
action.execute( "calc-firecode",_p0,drools);

end


	')
INSERT [dbo].[sys_rule_deployed] ([objid], [ruletext]) VALUES (N'RUL36552f88:142c18ff1a4:-7f16', N'
package bpinfo.ASK_BUSINESS_AREA;
import bpinfo.*;
import java.util.*;
import com.rameses.rules.common.*;

global RuleAction action;

rule "ASK_BUSINESS_AREA"
	agenda-group "default"
	salience 50000
	no-loop
	when
		
		
		 bpls.facts.BPApplication (  apptype matches "NEW|RENEW" )
		
		 bpls.facts.BusinessInfo (  name=="IS_LOCATED_IN_ILIGAN" ,lob == null,IS_LOCATED_IN_ILIGAN:booleanvalue == true  )
		
	then
		Map bindings = new HashMap();
		
		bindings.put("IS_LOCATED_IN_ILIGAN", IS_LOCATED_IN_ILIGAN );
		
	Map _p0 = new HashMap();
_p0.put( "lob", null );
_p0.put( "attribute", new KeyValue("AREA_SQM", "AREA_SQM") );
_p0.put( "defaultvalue", "null" );
action.execute( "ask_business_info",_p0,drools);

end


	')
INSERT [dbo].[sys_rule_deployed] ([objid], [ruletext]) VALUES (N'RUL-36ba5ccb:1430894b791:-42b0', N'
package bpinfo.ASK_IF_LOCATED_IN_ILIGAN;
import bpinfo.*;
import java.util.*;
import com.rameses.rules.common.*;

global RuleAction action;

rule "ASK_IF_LOCATED_IN_ILIGAN"
	agenda-group "default"
	salience 50000
	no-loop
	when
		
		
		 bpls.facts.BPApplication (  apptype matches "NEW|RENEW" )
		
	then
		Map bindings = new HashMap();
		
	Map _p0 = new HashMap();
_p0.put( "lob", null );
_p0.put( "attribute", new KeyValue("IS_LOCATED_IN_ILIGAN", "IS_LOCATED_IN_ILIGAN") );
_p0.put( "defaultvalue", "true" );
action.execute( "ask_business_info",_p0,drools);

end


	')
INSERT [dbo].[sys_rule_deployed] ([objid], [ruletext]) VALUES (N'RUL-3a26f3ae:142d1e8ff98:-7f41', N'
package bpinfo.ASK_ADMINISTRATOR_INFO;
import bpinfo.*;
import java.util.*;
import com.rameses.rules.common.*;

global RuleAction action;

rule "ASK_ADMINISTRATOR_INFO"
	agenda-group "default"
	salience 50000
	no-loop
	when
		
		
		 bpls.facts.BPApplication (  apptype matches "NEW",orgtype not matches "SING" )
		
	then
		Map bindings = new HashMap();
		
	Map _p0 = new HashMap();
_p0.put( "lob", null );
_p0.put( "attribute", new KeyValue("ADMINISTRATOR_PHONE", "ADMINISTRATOR_PHONE") );
_p0.put( "defaultvalue", "null" );
action.execute( "ask_business_info",_p0,drools);
Map _p1 = new HashMap();
_p1.put( "lob", null );
_p1.put( "attribute", new KeyValue("ADMINISTRATOR_ADDRESS", "ADMINISTRATOR_ADDRESS") );
_p1.put( "defaultvalue", "null" );
action.execute( "ask_business_info",_p1,drools);
Map _p2 = new HashMap();
_p2.put( "lob", null );
_p2.put( "attribute", new KeyValue("ADMINISTRATOR_POSITION", "ADMINISTRATOR_POSITION") );
_p2.put( "defaultvalue", "null" );
action.execute( "ask_business_info",_p2,drools);
Map _p3 = new HashMap();
_p3.put( "lob", null );
_p3.put( "attribute", new KeyValue("ADMINISTRATOR_NAME", "ADMINISTRATOR_NAME") );
_p3.put( "defaultvalue", "null" );
action.execute( "ask_business_info",_p3,drools);

end


	')
INSERT [dbo].[sys_rule_deployed] ([objid], [ruletext]) VALUES (N'RUL41c8b101:142adfe2a5c:-7b59', N'
package bpinfo.SPECIFY_TAX_INCENTIVE_NAME;
import bpinfo.*;
import java.util.*;
import com.rameses.rules.common.*;

global RuleAction action;

rule "SPECIFY_TAX_INCENTIVE_NAME"
	agenda-group "default"
	salience 50000
	no-loop
	when
		
		
		 bpls.facts.BusinessInfo (  name=="HAS_TAX_INCENTIVE" ,lob == null,HAS_TAX_INCENTIVE:booleanvalue == true  )
		
	then
		Map bindings = new HashMap();
		
		bindings.put("HAS_TAX_INCENTIVE", HAS_TAX_INCENTIVE );
		
	Map _p0 = new HashMap();
_p0.put( "lob", null );
_p0.put( "attribute", new KeyValue("TAX_INCENTIVE_NAME", "TAX_INCENTIVE_NAME") );
_p0.put( "defaultvalue", "null" );
action.execute( "ask_business_info",_p0,drools);

end


	')
INSERT [dbo].[sys_rule_deployed] ([objid], [ruletext]) VALUES (N'RUL41c8b101:142adfe2a5c:-7ce7', N'
package bpinfo.RENT_INFO;
import bpinfo.*;
import java.util.*;
import com.rameses.rules.common.*;

global RuleAction action;

rule "RENT_INFO"
	agenda-group "default"
	salience 50000
	no-loop
	when
		
		
		 bpls.facts.BusinessInfo (  name=="IS_RENTED" ,IS_RENTED:booleanvalue == true  )
		
	then
		Map bindings = new HashMap();
		
		bindings.put("IS_RENTED", IS_RENTED );
		
	Map _p0 = new HashMap();
_p0.put( "lob", null );
_p0.put( "attribute", new KeyValue("MONTHLY_RENTAL", "MONTHLY_RENTAL") );
_p0.put( "defaultvalue", "null" );
action.execute( "ask_business_info",_p0,drools);
Map _p1 = new HashMap();
_p1.put( "lob", null );
_p1.put( "attribute", new KeyValue("LESSOR_ADDRESS", "LESSOR_ADDRESS") );
_p1.put( "defaultvalue", "null" );
action.execute( "ask_business_info",_p1,drools);
Map _p2 = new HashMap();
_p2.put( "lob", null );
_p2.put( "attribute", new KeyValue("LESSOR_NAME", "LESSOR_NAME") );
_p2.put( "defaultvalue", "null" );
action.execute( "ask_business_info",_p2,drools);

end


	')
INSERT [dbo].[sys_rule_deployed] ([objid], [ruletext]) VALUES (N'RUL4258911a:142f00f9c9e:-7f92', N'
package ctcindividual.TAX_ON_INDIVIDUAL;
import ctcindividual.*;
import java.util.*;
import com.rameses.rules.common.*;

global RuleAction action;

rule "TAX_ON_INDIVIDUAL"
	agenda-group "TAX"
	salience 50000
	no-loop
	when
		
		
		CTCI: IndividualCTC (  ASALARY:annualsalary,BGROSS:businessgross,PINCOME:propertyincome )
		
	then
		Map bindings = new HashMap();
		
		bindings.put("CTCI", CTCI );
		
		bindings.put("ASALARY", ASALARY );
		
		bindings.put("BGROSS", BGROSS );
		
		bindings.put("PINCOME", PINCOME );
		
	Map _p0 = new HashMap();
_p0.put( "ctc", CTCI );
_p0.put( "expr", (new ActionExpression("(PINCOME/1000 > 5000.0) ? 5000.0 : PINCOME/1000", bindings)) );
action.execute( "calc-propertyincome-tax",_p0,drools);
Map _p1 = new HashMap();
_p1.put( "ctc", CTCI );
_p1.put( "expr", (new ActionExpression("( BGROSS/1000 > 5000.0) ? 5000.0 : BGROSS/1000", bindings)) );
action.execute( "calc-businessgross-tax",_p1,drools);
Map _p2 = new HashMap();
_p2.put( "ctc", CTCI );
_p2.put( "expr", (new ActionExpression("( ASALARY/1000 > 5000.0) ? 5000.0 : ASALARY/1000", bindings)) );
action.execute( "calc-salary-tax",_p2,drools);
Map _p3 = new HashMap();
_p3.put( "ctc", CTCI );
_p3.put( "acct", new KeyValue("REVITEM217a91b:1409e6ae44e:-7d75", "COMMUNITY TAX INDIVIDUAL") );
_p3.put( "expr", (new ActionExpression("5.0", bindings)) );
action.execute( "calc-basic-tax",_p3,drools);

end


	')
INSERT [dbo].[sys_rule_deployed] ([objid], [ruletext]) VALUES (N'RUL441bb08f:1436c079bff:-6fa7', N'
package rptbilling.BRGY_POBLACION_SHARE;
import rptbilling.*;
import java.util.*;
import com.rameses.rules.common.*;

global RuleAction action;

rule "BRGY_POBLACION_SHARE"
	agenda-group "BRGY_SHARE"
	salience 50000
	no-loop
	when
		
		
		RL: RPTLedgerFact (  barangayid matches "BRGY00000029",BASIC:basic,BASICDISC:basicdisc,BASICINT:basicint,BASICPAID:basicpaid,BASICINTPAID:basicintpaid,BASICDISCTAKEN:basicdisctaken )
		
	then
		Map bindings = new HashMap();
		
		bindings.put("RL", RL );
		
		bindings.put("BASIC", BASIC );
		
		bindings.put("BASICDISC", BASICDISC );
		
		bindings.put("BASICINT", BASICINT );
		
		bindings.put("BASICPAID", BASICPAID );
		
		bindings.put("BASICINTPAID", BASICINTPAID );
		
		bindings.put("BASICDISCTAKEN", BASICDISCTAKEN );
		
	Map _p0 = new HashMap();
_p0.put( "rptledger", RL );
_p0.put( "brgyintshareacct", new KeyValue("REVITEM1e022843:141baeeb514:-7070", "BRGY. POBLACION RPT SHARE (30%)") );
_p0.put( "expr", (new ActionExpression("( BASICINT - BASICINTPAID ) *  0.30", bindings)) );
action.execute( "calc-brgyint-share",_p0,drools);
Map _p1 = new HashMap();
_p1.put( "rptledger", RL );
_p1.put( "brgyshareacct", new KeyValue("REVITEM1e022843:141baeeb514:-7070", "BRGY. POBLACION RPT SHARE (30%)") );
_p1.put( "expr", (new ActionExpression("( BASIC - BASICPAID - (BASICDISC - BASICDISCTAKEN)) * 0.30", bindings)) );
action.execute( "calc-brgyshare",_p1,drools);

end


	')
INSERT [dbo].[sys_rule_deployed] ([objid], [ruletext]) VALUES (N'RUL441bb08f:1436c079bff:-6fa7-0002', N'
package rptbilling.BRGY_ABUNO_SHARE;
import rptbilling.*;
import java.util.*;
import com.rameses.rules.common.*;

global RuleAction action;

rule "BRGY_ABUNO_SHARE"
	agenda-group "BRGY_SHARE"
	salience 50000
	no-loop
	when
		
		
		RL: RPTLedgerFact (  barangayid matches "BRGY00000030",BASIC:basic,BASICDISC:basicdisc,BASICINT:basicint,BASICPAID:basicpaid,BASICINTPAID:basicintpaid,BASICDISCTAKEN:basicdisctaken )
		
	then
		Map bindings = new HashMap();
		
		bindings.put("RL", RL );
		
		bindings.put("BASIC", BASIC );
		
		bindings.put("BASICDISC", BASICDISC );
		
		bindings.put("BASICINT", BASICINT );
		
		bindings.put("BASICPAID", BASICPAID );
		
		bindings.put("BASICINTPAID", BASICINTPAID );
		
		bindings.put("BASICDISCTAKEN", BASICDISCTAKEN );
		
	Map _p0 = new HashMap();
_p0.put( "rptledger", RL );
_p0.put( "brgyintshareacct", new KeyValue("REVITEM1e022843:141baf35a67:-2bbd", "BRGY. ABUNO RPT SHARE (30%)") );
_p0.put( "expr", (new ActionExpression("(BASICINT - BASICINTPAID) *  0.30", bindings)) );
action.execute( "calc-brgyint-share",_p0,drools);
Map _p1 = new HashMap();
_p1.put( "rptledger", RL );
_p1.put( "brgyshareacct", new KeyValue("REVITEM1e022843:141baf35a67:-2bbd", "BRGY. ABUNO RPT SHARE (30%)") );
_p1.put( "expr", (new ActionExpression("( BASIC - BASICPAID - (BASICDISC - BASICDISCTAKEN)) * 0.30", bindings)) );
action.execute( "calc-brgyshare",_p1,drools);

end


	')
INSERT [dbo].[sys_rule_deployed] ([objid], [ruletext]) VALUES (N'RUL441bb08f:1436c079bff:-6fa7-0003', N'
package rptbilling.BRGY_ACMAC_SHARE;
import rptbilling.*;
import java.util.*;
import com.rameses.rules.common.*;

global RuleAction action;

rule "BRGY_ACMAC_SHARE"
	agenda-group "BRGY_SHARE"
	salience 50000
	no-loop
	when
		
		
		RL: RPTLedgerFact (  barangayid matches "BRGY00000031",BASIC:basic,BASICDISC:basicdisc,BASICINT:basicint,BASICPAID:basicpaid,BASICINTPAID:basicintpaid,BASICDISCTAKEN:basicdisctaken )
		
	then
		Map bindings = new HashMap();
		
		bindings.put("RL", RL );
		
		bindings.put("BASIC", BASIC );
		
		bindings.put("BASICDISC", BASICDISC );
		
		bindings.put("BASICINT", BASICINT );
		
		bindings.put("BASICPAID", BASICPAID );
		
		bindings.put("BASICINTPAID", BASICINTPAID );
		
		bindings.put("BASICDISCTAKEN", BASICDISCTAKEN );
		
	Map _p0 = new HashMap();
_p0.put( "rptledger", RL );
_p0.put( "brgyintshareacct", new KeyValue("REVITEM1e022843:141baf35a67:670b", "BRGY. ACMAC RPT SHARE (30%)") );
_p0.put( "expr", (new ActionExpression("(BASICINT - BASICINTPAID) *  0.30", bindings)) );
action.execute( "calc-brgyint-share",_p0,drools);
Map _p1 = new HashMap();
_p1.put( "rptledger", RL );
_p1.put( "brgyshareacct", new KeyValue("REVITEM1e022843:141baf35a67:670b", "BRGY. ACMAC RPT SHARE (30%)") );
_p1.put( "expr", (new ActionExpression("( BASIC - BASICPAID - (BASICDISC - BASICDISCTAKEN)) * 0.30", bindings)) );
action.execute( "calc-brgyshare",_p1,drools);

end


	')
INSERT [dbo].[sys_rule_deployed] ([objid], [ruletext]) VALUES (N'RUL441bb08f:1436c079bff:-6fa7-0004', N'
package rptbilling.BRGY_BAGONG_SILANG_SHARE;
import rptbilling.*;
import java.util.*;
import com.rameses.rules.common.*;

global RuleAction action;

rule "BRGY_BAGONG_SILANG_SHARE"
	agenda-group "BRGY_SHARE"
	salience 50000
	no-loop
	when
		
		
		RL: RPTLedgerFact (  barangayid matches "BRGY00000032",BASIC:basic,BASICDISC:basicdisc,BASICINT:basicint,BASICPAID:basicpaid,BASICINTPAID:basicintpaid,BASICDISCTAKEN:basicdisctaken )
		
	then
		Map bindings = new HashMap();
		
		bindings.put("RL", RL );
		
		bindings.put("BASIC", BASIC );
		
		bindings.put("BASICDISC", BASICDISC );
		
		bindings.put("BASICINT", BASICINT );
		
		bindings.put("BASICPAID", BASICPAID );
		
		bindings.put("BASICINTPAID", BASICINTPAID );
		
		bindings.put("BASICDISCTAKEN", BASICDISCTAKEN );
		
	Map _p0 = new HashMap();
_p0.put( "rptledger", RL );
_p0.put( "brgyintshareacct", new KeyValue("REVITEM1e022843:141bb42b11a:b82", "BRGY. BAGONG SILANG RPT SHARE (30%)") );
_p0.put( "expr", (new ActionExpression("(BASICINT - BASICINTPAID) *  0.30", bindings)) );
action.execute( "calc-brgyint-share",_p0,drools);
Map _p1 = new HashMap();
_p1.put( "rptledger", RL );
_p1.put( "brgyshareacct", new KeyValue("REVITEM1e022843:141bb42b11a:b82", "BRGY. BAGONG SILANG RPT SHARE (30%)") );
_p1.put( "expr", (new ActionExpression("( BASIC - BASICPAID - (BASICDISC - BASICDISCTAKEN)) * 0.30", bindings)) );
action.execute( "calc-brgyshare",_p1,drools);

end


	')
INSERT [dbo].[sys_rule_deployed] ([objid], [ruletext]) VALUES (N'RUL441bb08f:1436c079bff:-6fa7-0005', N'
package rptbilling.BRGY_BONBONON_SHARE;
import rptbilling.*;
import java.util.*;
import com.rameses.rules.common.*;

global RuleAction action;

rule "BRGY_BONBONON_SHARE"
	agenda-group "BRGY_SHARE"
	salience 50000
	no-loop
	when
		
		
		RL: RPTLedgerFact (  barangayid matches "BRGY00000033",BASIC:basic,BASICDISC:basicdisc,BASICINT:basicint,BASICPAID:basicpaid,BASICINTPAID:basicintpaid,BASICDISCTAKEN:basicdisctaken )
		
	then
		Map bindings = new HashMap();
		
		bindings.put("RL", RL );
		
		bindings.put("BASIC", BASIC );
		
		bindings.put("BASICDISC", BASICDISC );
		
		bindings.put("BASICINT", BASICINT );
		
		bindings.put("BASICPAID", BASICPAID );
		
		bindings.put("BASICINTPAID", BASICINTPAID );
		
		bindings.put("BASICDISCTAKEN", BASICDISCTAKEN );
		
	Map _p0 = new HashMap();
_p0.put( "rptledger", RL );
_p0.put( "brgyintshareacct", new KeyValue("REVITEM1e022843:141bb42b11a:59e2", "BRGY. BONBONON RPT SHARE (30%)") );
_p0.put( "expr", (new ActionExpression("(BASICINT - BASICINTPAID) *  0.30", bindings)) );
action.execute( "calc-brgyint-share",_p0,drools);
Map _p1 = new HashMap();
_p1.put( "rptledger", RL );
_p1.put( "brgyshareacct", new KeyValue("REVITEM1e022843:141bb42b11a:59e2", "BRGY. BONBONON RPT SHARE (30%)") );
_p1.put( "expr", (new ActionExpression("( BASIC - BASICPAID - (BASICDISC - BASICDISCTAKEN)) * 0.30", bindings)) );
action.execute( "calc-brgyshare",_p1,drools);

end


	')
INSERT [dbo].[sys_rule_deployed] ([objid], [ruletext]) VALUES (N'RUL441bb08f:1436c079bff:-6fa7-0006', N'
package rptbilling.BRGY_BUNAWAN_SHARE;
import rptbilling.*;
import java.util.*;
import com.rameses.rules.common.*;

global RuleAction action;

rule "BRGY_BUNAWAN_SHARE"
	agenda-group "BRGY_SHARE"
	salience 50000
	no-loop
	when
		
		
		RL: RPTLedgerFact (  barangayid matches "BRGY00000034",BASIC:basic,BASICDISC:basicdisc,BASICINT:basicint,BASICPAID:basicpaid,BASICINTPAID:basicintpaid,BASICDISCTAKEN:basicdisctaken )
		
	then
		Map bindings = new HashMap();
		
		bindings.put("RL", RL );
		
		bindings.put("BASIC", BASIC );
		
		bindings.put("BASICDISC", BASICDISC );
		
		bindings.put("BASICINT", BASICINT );
		
		bindings.put("BASICPAID", BASICPAID );
		
		bindings.put("BASICINTPAID", BASICINTPAID );
		
		bindings.put("BASICDISCTAKEN", BASICDISCTAKEN );
		
	Map _p0 = new HashMap();
_p0.put( "rptledger", RL );
_p0.put( "brgyintshareacct", new KeyValue("REVITEM1e022843:141bb476afa:-5af3", "BRGY. BUNAWAN RPT SHARE (30%)") );
_p0.put( "expr", (new ActionExpression("(BASICINT - BASICINTPAID) *  0.30", bindings)) );
action.execute( "calc-brgyint-share",_p0,drools);
Map _p1 = new HashMap();
_p1.put( "rptledger", RL );
_p1.put( "brgyshareacct", new KeyValue("REVITEM1e022843:141bb476afa:-5af3", "BRGY. BUNAWAN RPT SHARE (30%)") );
_p1.put( "expr", (new ActionExpression("( BASIC - BASICPAID - (BASICDISC - BASICDISCTAKEN)) * 0.30", bindings)) );
action.execute( "calc-brgyshare",_p1,drools);

end


	')
INSERT [dbo].[sys_rule_deployed] ([objid], [ruletext]) VALUES (N'RUL441bb08f:1436c079bff:-6fa7-0007', N'
package rptbilling.BRGY_BURUUN_SHARE;
import rptbilling.*;
import java.util.*;
import com.rameses.rules.common.*;

global RuleAction action;

rule "BRGY_BURUUN_SHARE"
	agenda-group "BRGY_SHARE"
	salience 50000
	no-loop
	when
		
		
		RL: RPTLedgerFact (  barangayid matches "BRGY00000035",BASIC:basic,BASICDISC:basicdisc,BASICINT:basicint,BASICPAID:basicpaid,BASICINTPAID:basicintpaid,BASICDISCTAKEN:basicdisctaken )
		
	then
		Map bindings = new HashMap();
		
		bindings.put("RL", RL );
		
		bindings.put("BASIC", BASIC );
		
		bindings.put("BASICDISC", BASICDISC );
		
		bindings.put("BASICINT", BASICINT );
		
		bindings.put("BASICPAID", BASICPAID );
		
		bindings.put("BASICINTPAID", BASICINTPAID );
		
		bindings.put("BASICDISCTAKEN", BASICDISCTAKEN );
		
	Map _p0 = new HashMap();
_p0.put( "rptledger", RL );
_p0.put( "brgyintshareacct", new KeyValue("REVITEM1e022843:141bb476afa:-29f6", "BRGY. BURU-UN RPT SHARE (30%)") );
_p0.put( "expr", (new ActionExpression("(BASICINT - BASICINTPAID) *  0.30", bindings)) );
action.execute( "calc-brgyint-share",_p0,drools);
Map _p1 = new HashMap();
_p1.put( "rptledger", RL );
_p1.put( "brgyshareacct", new KeyValue("REVITEM1e022843:141bb476afa:-29f6", "BRGY. BURU-UN RPT SHARE (30%)") );
_p1.put( "expr", (new ActionExpression("( BASIC - BASICPAID - (BASICDISC - BASICDISCTAKEN)) * 0.30", bindings)) );
action.execute( "calc-brgyshare",_p1,drools);

end


	')
INSERT [dbo].[sys_rule_deployed] ([objid], [ruletext]) VALUES (N'RUL441bb08f:1436c079bff:-6fa7-0008', N'
package rptbilling.BRGY_CABACSANAN_SHARE;
import rptbilling.*;
import java.util.*;
import com.rameses.rules.common.*;

global RuleAction action;

rule "BRGY_CABACSANAN_SHARE"
	agenda-group "BRGY_SHARE"
	salience 50000
	no-loop
	when
		
		
		RL: RPTLedgerFact (  barangayid matches "BRGY00000036",BASIC:basic,BASICDISC:basicdisc,BASICINT:basicint,BASICPAID:basicpaid,BASICINTPAID:basicintpaid,BASICDISCTAKEN:basicdisctaken )
		
	then
		Map bindings = new HashMap();
		
		bindings.put("RL", RL );
		
		bindings.put("BASIC", BASIC );
		
		bindings.put("BASICDISC", BASICDISC );
		
		bindings.put("BASICINT", BASICINT );
		
		bindings.put("BASICPAID", BASICPAID );
		
		bindings.put("BASICINTPAID", BASICINTPAID );
		
		bindings.put("BASICDISCTAKEN", BASICDISCTAKEN );
		
	Map _p0 = new HashMap();
_p0.put( "rptledger", RL );
_p0.put( "brgyintshareacct", new KeyValue("REVITEM1e022843:141bb476afa:-879", "BRGY. CABACSANAN RPT SHARE (30%)") );
_p0.put( "expr", (new ActionExpression("(BASICINT - BASICINTPAID) *  0.30", bindings)) );
action.execute( "calc-brgyint-share",_p0,drools);
Map _p1 = new HashMap();
_p1.put( "rptledger", RL );
_p1.put( "brgyshareacct", new KeyValue("REVITEM1e022843:141bb476afa:-879", "BRGY. CABACSANAN RPT SHARE (30%)") );
_p1.put( "expr", (new ActionExpression("( BASIC - BASICPAID - (BASICDISC - BASICDISCTAKEN)) * 0.30", bindings)) );
action.execute( "calc-brgyshare",_p1,drools);

end


	')
INSERT [dbo].[sys_rule_deployed] ([objid], [ruletext]) VALUES (N'RUL441bb08f:1436c079bff:-6fa7-0009', N'
package rptbilling.BRGY_DALIPUGA_SHARE;
import rptbilling.*;
import java.util.*;
import com.rameses.rules.common.*;

global RuleAction action;

rule "BRGY_DALIPUGA_SHARE"
	agenda-group "BRGY_SHARE"
	salience 50000
	no-loop
	when
		
		
		RL: RPTLedgerFact (  barangayid matches "BRGY00000037",BASIC:basic,BASICDISC:basicdisc,BASICINT:basicint,BASICPAID:basicpaid,BASICINTPAID:basicintpaid,BASICDISCTAKEN:basicdisctaken )
		
	then
		Map bindings = new HashMap();
		
		bindings.put("RL", RL );
		
		bindings.put("BASIC", BASIC );
		
		bindings.put("BASICDISC", BASICDISC );
		
		bindings.put("BASICINT", BASICINT );
		
		bindings.put("BASICPAID", BASICPAID );
		
		bindings.put("BASICINTPAID", BASICINTPAID );
		
		bindings.put("BASICDISCTAKEN", BASICDISCTAKEN );
		
	Map _p0 = new HashMap();
_p0.put( "rptledger", RL );
_p0.put( "brgyintshareacct", new KeyValue("REVITEM1e022843:141bb476afa:256e", "BRGY. DALIPUGA RPT SHARE (30%)") );
_p0.put( "expr", (new ActionExpression("(BASICINT - BASICINTPAID) *  0.30", bindings)) );
action.execute( "calc-brgyint-share",_p0,drools);
Map _p1 = new HashMap();
_p1.put( "rptledger", RL );
_p1.put( "brgyshareacct", new KeyValue("REVITEM1e022843:141bb476afa:256e", "BRGY. DALIPUGA RPT SHARE (30%)") );
_p1.put( "expr", (new ActionExpression("( BASIC - BASICPAID - (BASICDISC - BASICDISCTAKEN)) * 0.30", bindings)) );
action.execute( "calc-brgyshare",_p1,drools);

end


	')
INSERT [dbo].[sys_rule_deployed] ([objid], [ruletext]) VALUES (N'RUL441bb08f:1436c079bff:-6fa7-0010', N'
package rptbilling.BRGY_DEL_CARMEN_SHARE;
import rptbilling.*;
import java.util.*;
import com.rameses.rules.common.*;

global RuleAction action;

rule "BRGY_DEL_CARMEN_SHARE"
	agenda-group "BRGY_SHARE"
	salience 50000
	no-loop
	when
		
		
		RL: RPTLedgerFact (  barangayid matches "BRGY00000038",BASIC:basic,BASICDISC:basicdisc,BASICINT:basicint,BASICPAID:basicpaid,BASICINTPAID:basicintpaid,BASICDISCTAKEN:basicdisctaken )
		
	then
		Map bindings = new HashMap();
		
		bindings.put("RL", RL );
		
		bindings.put("BASIC", BASIC );
		
		bindings.put("BASICDISC", BASICDISC );
		
		bindings.put("BASICINT", BASICINT );
		
		bindings.put("BASICPAID", BASICPAID );
		
		bindings.put("BASICINTPAID", BASICINTPAID );
		
		bindings.put("BASICDISCTAKEN", BASICDISCTAKEN );
		
	Map _p0 = new HashMap();
_p0.put( "rptledger", RL );
_p0.put( "brgyintshareacct", new KeyValue("REVITEM1e022843:141bb476afa:508a", "BRGY. DEL CARMEN RPT SHARE (30%)") );
_p0.put( "expr", (new ActionExpression("(BASICINT - BASICINTPAID) *  0.30", bindings)) );
action.execute( "calc-brgyint-share",_p0,drools);
Map _p1 = new HashMap();
_p1.put( "rptledger", RL );
_p1.put( "brgyshareacct", new KeyValue("REVITEM1e022843:141bb476afa:508a", "BRGY. DEL CARMEN RPT SHARE (30%)") );
_p1.put( "expr", (new ActionExpression("( BASIC - BASICPAID - (BASICDISC - BASICDISCTAKEN)) * 0.30", bindings)) );
action.execute( "calc-brgyshare",_p1,drools);

end


	')
INSERT [dbo].[sys_rule_deployed] ([objid], [ruletext]) VALUES (N'RUL441bb08f:1436c079bff:-6fa7-0011', N'
package rptbilling.BRGY_DIGKILAAN_SHARE;
import rptbilling.*;
import java.util.*;
import com.rameses.rules.common.*;

global RuleAction action;

rule "BRGY_DIGKILAAN_SHARE"
	agenda-group "BRGY_SHARE"
	salience 50000
	no-loop
	when
		
		
		RL: RPTLedgerFact (  barangayid matches "BRGY00000039",BASIC:basic,BASICDISC:basicdisc,BASICINT:basicint,BASICPAID:basicpaid,BASICINTPAID:basicintpaid,BASICDISCTAKEN:basicdisctaken )
		
	then
		Map bindings = new HashMap();
		
		bindings.put("RL", RL );
		
		bindings.put("BASIC", BASIC );
		
		bindings.put("BASICDISC", BASICDISC );
		
		bindings.put("BASICINT", BASICINT );
		
		bindings.put("BASICPAID", BASICPAID );
		
		bindings.put("BASICINTPAID", BASICINTPAID );
		
		bindings.put("BASICDISCTAKEN", BASICDISCTAKEN );
		
	Map _p0 = new HashMap();
_p0.put( "rptledger", RL );
_p0.put( "brgyintshareacct", new KeyValue("REVITEM1e022843:141bb4c4cfa:-4ba5", "BRGY. DIGKILAAN RPT SHARE (30%)") );
_p0.put( "expr", (new ActionExpression("(BASICINT - BASICINTPAID) *  0.30", bindings)) );
action.execute( "calc-brgyint-share",_p0,drools);
Map _p1 = new HashMap();
_p1.put( "rptledger", RL );
_p1.put( "brgyshareacct", new KeyValue("REVITEM1e022843:141bb4c4cfa:-4ba5", "BRGY. DIGKILAAN RPT SHARE (30%)") );
_p1.put( "expr", (new ActionExpression("( BASIC - BASICPAID - (BASICDISC - BASICDISCTAKEN)) * 0.30", bindings)) );
action.execute( "calc-brgyshare",_p1,drools);

end


	')
INSERT [dbo].[sys_rule_deployed] ([objid], [ruletext]) VALUES (N'RUL441bb08f:1436c079bff:-6fa7-0012', N'
package rptbilling.BRGY_DITUCALAN_SHARE;
import rptbilling.*;
import java.util.*;
import com.rameses.rules.common.*;

global RuleAction action;

rule "BRGY_DITUCALAN_SHARE"
	agenda-group "BRGY_SHARE"
	salience 50000
	no-loop
	when
		
		
		RL: RPTLedgerFact (  barangayid matches "BRGY00000040",BASIC:basic,BASICDISC:basicdisc,BASICINT:basicint,BASICPAID:basicpaid,BASICINTPAID:basicintpaid,BASICDISCTAKEN:basicdisctaken )
		
	then
		Map bindings = new HashMap();
		
		bindings.put("RL", RL );
		
		bindings.put("BASIC", BASIC );
		
		bindings.put("BASICDISC", BASICDISC );
		
		bindings.put("BASICINT", BASICINT );
		
		bindings.put("BASICPAID", BASICPAID );
		
		bindings.put("BASICINTPAID", BASICINTPAID );
		
		bindings.put("BASICDISCTAKEN", BASICDISCTAKEN );
		
	Map _p0 = new HashMap();
_p0.put( "rptledger", RL );
_p0.put( "brgyintshareacct", new KeyValue("REVITEM1e022843:141bb4c4cfa:-1cd3", "BRGY. DITUCALAN RPT SHARE (30%)") );
_p0.put( "expr", (new ActionExpression("(BASICINT - BASICINTPAID) *  0.30", bindings)) );
action.execute( "calc-brgyint-share",_p0,drools);
Map _p1 = new HashMap();
_p1.put( "rptledger", RL );
_p1.put( "brgyshareacct", new KeyValue("REVITEM1e022843:141bb4c4cfa:-1cd3", "BRGY. DITUCALAN RPT SHARE (30%)") );
_p1.put( "expr", (new ActionExpression("( BASIC - BASICPAID - (BASICDISC - BASICDISCTAKEN)) * 0.30", bindings)) );
action.execute( "calc-brgyshare",_p1,drools);

end


	')
INSERT [dbo].[sys_rule_deployed] ([objid], [ruletext]) VALUES (N'RUL441bb08f:1436c079bff:-6fa7-0013', N'
package rptbilling.BRGY_DULAG_SHARE;
import rptbilling.*;
import java.util.*;
import com.rameses.rules.common.*;

global RuleAction action;

rule "BRGY_DULAG_SHARE"
	agenda-group "BRGY_SHARE"
	salience 50000
	no-loop
	when
		
		
		RL: RPTLedgerFact (  barangayid matches "BRGY00000041",BASIC:basic,BASICDISC:basicdisc,BASICINT:basicint,BASICPAID:basicpaid,BASICINTPAID:basicintpaid,BASICDISCTAKEN:basicdisctaken )
		
	then
		Map bindings = new HashMap();
		
		bindings.put("RL", RL );
		
		bindings.put("BASIC", BASIC );
		
		bindings.put("BASICDISC", BASICDISC );
		
		bindings.put("BASICINT", BASICINT );
		
		bindings.put("BASICPAID", BASICPAID );
		
		bindings.put("BASICINTPAID", BASICINTPAID );
		
		bindings.put("BASICDISCTAKEN", BASICDISCTAKEN );
		
	Map _p0 = new HashMap();
_p0.put( "rptledger", RL );
_p0.put( "brgyintshareacct", new KeyValue("REVITEM1e022843:141bb4c4cfa:21f3", "BRGY. DULAG RPT SHARE (30%)") );
_p0.put( "expr", (new ActionExpression("(BASICINT - BASICINTPAID) *  0.30", bindings)) );
action.execute( "calc-brgyint-share",_p0,drools);
Map _p1 = new HashMap();
_p1.put( "rptledger", RL );
_p1.put( "brgyshareacct", new KeyValue("REVITEM1e022843:141bb4c4cfa:21f3", "BRGY. DULAG RPT SHARE (30%)") );
_p1.put( "expr", (new ActionExpression("( BASIC - BASICPAID - (BASICDISC - BASICDISCTAKEN)) * 0.30", bindings)) );
action.execute( "calc-brgyshare",_p1,drools);

end


	')
INSERT [dbo].[sys_rule_deployed] ([objid], [ruletext]) VALUES (N'RUL441bb08f:1436c079bff:-6fa7-0014', N'
package rptbilling.BRGY_HINAPLANON_SHARE;
import rptbilling.*;
import java.util.*;
import com.rameses.rules.common.*;

global RuleAction action;

rule "BRGY_HINAPLANON_SHARE"
	agenda-group "BRGY_SHARE"
	salience 50000
	no-loop
	when
		
		
		RL: RPTLedgerFact (  barangayid matches "BRGY00000042",BASIC:basic,BASICDISC:basicdisc,BASICINT:basicint,BASICPAID:basicpaid,BASICINTPAID:basicintpaid,BASICDISCTAKEN:basicdisctaken )
		
	then
		Map bindings = new HashMap();
		
		bindings.put("RL", RL );
		
		bindings.put("BASIC", BASIC );
		
		bindings.put("BASICDISC", BASICDISC );
		
		bindings.put("BASICINT", BASICINT );
		
		bindings.put("BASICPAID", BASICPAID );
		
		bindings.put("BASICINTPAID", BASICINTPAID );
		
		bindings.put("BASICDISCTAKEN", BASICDISCTAKEN );
		
	Map _p0 = new HashMap();
_p0.put( "rptledger", RL );
_p0.put( "brgyintshareacct", new KeyValue("REVITEM1e022843:141bb4c4cfa:6491", "BRGY. HINAPLANON RPT SHARE (30%)") );
_p0.put( "expr", (new ActionExpression("(BASICINT - BASICINTPAID) *  0.30", bindings)) );
action.execute( "calc-brgyint-share",_p0,drools);
Map _p1 = new HashMap();
_p1.put( "rptledger", RL );
_p1.put( "brgyshareacct", new KeyValue("REVITEM1e022843:141bb4c4cfa:6491", "BRGY. HINAPLANON RPT SHARE (30%)") );
_p1.put( "expr", (new ActionExpression("( BASIC - BASICPAID - (BASICDISC - BASICDISCTAKEN)) * 0.30", bindings)) );
action.execute( "calc-brgyshare",_p1,drools);

end


	')
INSERT [dbo].[sys_rule_deployed] ([objid], [ruletext]) VALUES (N'RUL441bb08f:1436c079bff:-6fa7-0015', N'
package rptbilling.BRGY_HINDANG_SHARE;
import rptbilling.*;
import java.util.*;
import com.rameses.rules.common.*;

global RuleAction action;

rule "BRGY_HINDANG_SHARE"
	agenda-group "BRGY_SHARE"
	salience 50000
	no-loop
	when
		
		
		RL: RPTLedgerFact (  barangayid matches "BRGY00000043",BASIC:basic,BASICDISC:basicdisc,BASICINT:basicint,BASICPAID:basicpaid,BASICINTPAID:basicintpaid,BASICDISCTAKEN:basicdisctaken )
		
	then
		Map bindings = new HashMap();
		
		bindings.put("RL", RL );
		
		bindings.put("BASIC", BASIC );
		
		bindings.put("BASICDISC", BASICDISC );
		
		bindings.put("BASICINT", BASICINT );
		
		bindings.put("BASICPAID", BASICPAID );
		
		bindings.put("BASICINTPAID", BASICINTPAID );
		
		bindings.put("BASICDISCTAKEN", BASICDISCTAKEN );
		
	Map _p0 = new HashMap();
_p0.put( "rptledger", RL );
_p0.put( "brgyintshareacct", new KeyValue("REVITEM1e022843:141bb51155f:-77fc", "BRGY. HINDANG RPT SHARE (30%)") );
_p0.put( "expr", (new ActionExpression("(BASICINT - BASICINTPAID) *  0.30", bindings)) );
action.execute( "calc-brgyint-share",_p0,drools);
Map _p1 = new HashMap();
_p1.put( "rptledger", RL );
_p1.put( "brgyshareacct", new KeyValue("REVITEM1e022843:141bb51155f:-77fc", "BRGY. HINDANG RPT SHARE (30%)") );
_p1.put( "expr", (new ActionExpression("( BASIC - BASICPAID - (BASICDISC - BASICDISCTAKEN)) * 0.30", bindings)) );
action.execute( "calc-brgyshare",_p1,drools);

end


	')
INSERT [dbo].[sys_rule_deployed] ([objid], [ruletext]) VALUES (N'RUL441bb08f:1436c079bff:-6fa7-0016', N'
package rptbilling.BRGY_KALILANGAN_SHARE;
import rptbilling.*;
import java.util.*;
import com.rameses.rules.common.*;

global RuleAction action;

rule "BRGY_KALILANGAN_SHARE"
	agenda-group "BRGY_SHARE"
	salience 50000
	no-loop
	when
		
		
		RL: RPTLedgerFact (  barangayid matches "BRGY00000044",BASIC:basic,BASICDISC:basicdisc,BASICINT:basicint,BASICPAID:basicpaid,BASICINTPAID:basicintpaid,BASICDISCTAKEN:basicdisctaken )
		
	then
		Map bindings = new HashMap();
		
		bindings.put("RL", RL );
		
		bindings.put("BASIC", BASIC );
		
		bindings.put("BASICDISC", BASICDISC );
		
		bindings.put("BASICINT", BASICINT );
		
		bindings.put("BASICPAID", BASICPAID );
		
		bindings.put("BASICINTPAID", BASICINTPAID );
		
		bindings.put("BASICDISCTAKEN", BASICDISCTAKEN );
		
	Map _p0 = new HashMap();
_p0.put( "rptledger", RL );
_p0.put( "brgyintshareacct", new KeyValue("REVITEM1e022843:141bb51155f:-4579", "BRGY. KALILANGAN RPT SHARE (30%)") );
_p0.put( "expr", (new ActionExpression("(BASICINT - BASICINTPAID) *  0.30", bindings)) );
action.execute( "calc-brgyint-share",_p0,drools);
Map _p1 = new HashMap();
_p1.put( "rptledger", RL );
_p1.put( "brgyshareacct", new KeyValue("REVITEM1e022843:141bb51155f:-4579", "BRGY. KALILANGAN RPT SHARE (30%)") );
_p1.put( "expr", (new ActionExpression("( BASIC - BASICPAID - (BASICDISC - BASICDISCTAKEN)) * 0.30", bindings)) );
action.execute( "calc-brgyshare",_p1,drools);

end


	')
INSERT [dbo].[sys_rule_deployed] ([objid], [ruletext]) VALUES (N'RUL441bb08f:1436c079bff:-6fa7-0017', N'
package rptbilling.BRGY_KIWALAN_SHARE;
import rptbilling.*;
import java.util.*;
import com.rameses.rules.common.*;

global RuleAction action;

rule "BRGY_KIWALAN_SHARE"
	agenda-group "BRGY_SHARE"
	salience 50000
	no-loop
	when
		
		
		RL: RPTLedgerFact (  barangayid matches "BRGY00000001",BASIC:basic,BASICDISC:basicdisc,BASICINT:basicint,BASICPAID:basicpaid,BASICINTPAID:basicintpaid,BASICDISCTAKEN:basicdisctaken )
		
	then
		Map bindings = new HashMap();
		
		bindings.put("RL", RL );
		
		bindings.put("BASIC", BASIC );
		
		bindings.put("BASICDISC", BASICDISC );
		
		bindings.put("BASICINT", BASICINT );
		
		bindings.put("BASICPAID", BASICPAID );
		
		bindings.put("BASICINTPAID", BASICINTPAID );
		
		bindings.put("BASICDISCTAKEN", BASICDISCTAKEN );
		
	Map _p0 = new HashMap();
_p0.put( "rptledger", RL );
_p0.put( "brgyintshareacct", new KeyValue("REVITEM1e022843:141bb51155f:-235f", "BRGY.KIWALAN RPT SHARE (30%)") );
_p0.put( "expr", (new ActionExpression("(BASICINT - BASICINTPAID) *  0.30", bindings)) );
action.execute( "calc-brgyint-share",_p0,drools);
Map _p1 = new HashMap();
_p1.put( "rptledger", RL );
_p1.put( "brgyshareacct", new KeyValue("REVITEM1e022843:141bb51155f:-235f", "BRGY.KIWALAN RPT SHARE (30%)") );
_p1.put( "expr", (new ActionExpression("( BASIC - BASICPAID - (BASICDISC - BASICDISCTAKEN)) * 0.30", bindings)) );
action.execute( "calc-brgyshare",_p1,drools);

end


	')
INSERT [dbo].[sys_rule_deployed] ([objid], [ruletext]) VALUES (N'RUL441bb08f:1436c079bff:-6fa7-0018', N'
package rptbilling.BRGY_LANIPAO_SHARE;
import rptbilling.*;
import java.util.*;
import com.rameses.rules.common.*;

global RuleAction action;

rule "BRGY_LANIPAO_SHARE"
	agenda-group "BRGY_SHARE"
	salience 50000
	no-loop
	when
		
		
		RL: RPTLedgerFact (  barangayid matches "BRGY00000002",BASIC:basic,BASICDISC:basicdisc,BASICINT:basicint,BASICPAID:basicpaid,BASICINTPAID:basicintpaid,BASICDISCTAKEN:basicdisctaken )
		
	then
		Map bindings = new HashMap();
		
		bindings.put("RL", RL );
		
		bindings.put("BASIC", BASIC );
		
		bindings.put("BASICDISC", BASICDISC );
		
		bindings.put("BASICINT", BASICINT );
		
		bindings.put("BASICPAID", BASICPAID );
		
		bindings.put("BASICINTPAID", BASICINTPAID );
		
		bindings.put("BASICDISCTAKEN", BASICDISCTAKEN );
		
	Map _p0 = new HashMap();
_p0.put( "rptledger", RL );
_p0.put( "brgyintshareacct", new KeyValue("REVITEM1e022843:141bb51155f:266", "BRGY. LANIPAO RPT SHARE (30%)") );
_p0.put( "expr", (new ActionExpression("(BASICINT - BASICINTPAID) *  0.30", bindings)) );
action.execute( "calc-brgyint-share",_p0,drools);
Map _p1 = new HashMap();
_p1.put( "rptledger", RL );
_p1.put( "brgyshareacct", new KeyValue("REVITEM1e022843:141bb51155f:266", "BRGY. LANIPAO RPT SHARE (30%)") );
_p1.put( "expr", (new ActionExpression("( BASIC - BASICPAID - (BASICDISC - BASICDISCTAKEN)) * 0.30", bindings)) );
action.execute( "calc-brgyshare",_p1,drools);

end


	')
INSERT [dbo].[sys_rule_deployed] ([objid], [ruletext]) VALUES (N'RUL441bb08f:1436c079bff:-6fa7-0019', N'
package rptbilling.BRGY_LUINAB_SHARE;
import rptbilling.*;
import java.util.*;
import com.rameses.rules.common.*;

global RuleAction action;

rule "BRGY_LUINAB_SHARE"
	agenda-group "BRGY_SHARE"
	salience 50000
	no-loop
	when
		
		
		RL: RPTLedgerFact (  barangayid matches "BRGY00000003",BASIC:basic,BASICDISC:basicdisc,BASICINT:basicint,BASICPAID:basicpaid,BASICINTPAID:basicintpaid,BASICDISCTAKEN:basicdisctaken )
		
	then
		Map bindings = new HashMap();
		
		bindings.put("RL", RL );
		
		bindings.put("BASIC", BASIC );
		
		bindings.put("BASICDISC", BASICDISC );
		
		bindings.put("BASICINT", BASICINT );
		
		bindings.put("BASICPAID", BASICPAID );
		
		bindings.put("BASICINTPAID", BASICINTPAID );
		
		bindings.put("BASICDISCTAKEN", BASICDISCTAKEN );
		
	Map _p0 = new HashMap();
_p0.put( "rptledger", RL );
_p0.put( "brgyintshareacct", new KeyValue("REVITEM1e022843:141bb51155f:2c41", "BRGY. LUINAB RPT SHARE (30%)") );
_p0.put( "expr", (new ActionExpression("(BASICINT - BASICINTPAID) *  0.30", bindings)) );
action.execute( "calc-brgyint-share",_p0,drools);
Map _p1 = new HashMap();
_p1.put( "rptledger", RL );
_p1.put( "brgyshareacct", new KeyValue("REVITEM1e022843:141bb51155f:2c41", "BRGY. LUINAB RPT SHARE (30%)") );
_p1.put( "expr", (new ActionExpression("( BASIC - BASICPAID - (BASICDISC - BASICDISCTAKEN)) * 0.30", bindings)) );
action.execute( "calc-brgyshare",_p1,drools);

end


	')
INSERT [dbo].[sys_rule_deployed] ([objid], [ruletext]) VALUES (N'RUL441bb08f:1436c079bff:-6fa7-0020', N'
package rptbilling.BRGY_MAHAYAHAY_SHARE;
import rptbilling.*;
import java.util.*;
import com.rameses.rules.common.*;

global RuleAction action;

rule "BRGY_MAHAYAHAY_SHARE"
	agenda-group "BRGY_SHARE"
	salience 50000
	no-loop
	when
		
		
		RL: RPTLedgerFact (  barangayid matches "BRGY00000004",BASIC:basic,BASICDISC:basicdisc,BASICINT:basicint,BASICPAID:basicpaid,BASICINTPAID:basicintpaid,BASICDISCTAKEN:basicdisctaken )
		
	then
		Map bindings = new HashMap();
		
		bindings.put("RL", RL );
		
		bindings.put("BASIC", BASIC );
		
		bindings.put("BASICDISC", BASICDISC );
		
		bindings.put("BASICINT", BASICINT );
		
		bindings.put("BASICPAID", BASICPAID );
		
		bindings.put("BASICINTPAID", BASICINTPAID );
		
		bindings.put("BASICDISCTAKEN", BASICDISCTAKEN );
		
	Map _p0 = new HashMap();
_p0.put( "rptledger", RL );
_p0.put( "brgyintshareacct", new KeyValue("REVITEM1e022843:141bb51155f:5177", "BRGY. MAHAYAHAY RPT SHARE (30%)") );
_p0.put( "expr", (new ActionExpression("(BASICINT - BASICINTPAID) *  0.30", bindings)) );
action.execute( "calc-brgyint-share",_p0,drools);
Map _p1 = new HashMap();
_p1.put( "rptledger", RL );
_p1.put( "brgyshareacct", new KeyValue("REVITEM1e022843:141bb51155f:5177", "BRGY. MAHAYAHAY RPT SHARE (30%)") );
_p1.put( "expr", (new ActionExpression("( BASIC - BASICPAID - (BASICDISC - BASICDISCTAKEN)) * 0.30", bindings)) );
action.execute( "calc-brgyshare",_p1,drools);

end


	')
INSERT [dbo].[sys_rule_deployed] ([objid], [ruletext]) VALUES (N'RUL441bb08f:1436c079bff:-6fa7-0021', N'
package rptbilling.BRGY_MAINIT_SHARE;
import rptbilling.*;
import java.util.*;
import com.rameses.rules.common.*;

global RuleAction action;

rule "BRGY_MAINIT_SHARE"
	agenda-group "BRGY_SHARE"
	salience 50000
	no-loop
	when
		
		
		RL: RPTLedgerFact (  barangayid matches "BRGY00000005",BASIC:basic,BASICDISC:basicdisc,BASICINT:basicint,BASICPAID:basicpaid,BASICINTPAID:basicintpaid,BASICDISCTAKEN:basicdisctaken )
		
	then
		Map bindings = new HashMap();
		
		bindings.put("RL", RL );
		
		bindings.put("BASIC", BASIC );
		
		bindings.put("BASICDISC", BASICDISC );
		
		bindings.put("BASICINT", BASICINT );
		
		bindings.put("BASICPAID", BASICPAID );
		
		bindings.put("BASICINTPAID", BASICINTPAID );
		
		bindings.put("BASICDISCTAKEN", BASICDISCTAKEN );
		
	Map _p0 = new HashMap();
_p0.put( "rptledger", RL );
_p0.put( "brgyintshareacct", new KeyValue("REVITEM1e022843:141bb51155f:6ef8", "BRGY. MAINIT RPT SHARE (30%)") );
_p0.put( "expr", (new ActionExpression("(BASICINT - BASICINTPAID) *  0.30", bindings)) );
action.execute( "calc-brgyint-share",_p0,drools);
Map _p1 = new HashMap();
_p1.put( "rptledger", RL );
_p1.put( "brgyshareacct", new KeyValue("REVITEM1e022843:141bb51155f:6ef8", "BRGY. MAINIT RPT SHARE (30%)") );
_p1.put( "expr", (new ActionExpression("( BASIC - BASICPAID - (BASICDISC - BASICDISCTAKEN)) * 0.30", bindings)) );
action.execute( "calc-brgyshare",_p1,drools);

end


	')
INSERT [dbo].[sys_rule_deployed] ([objid], [ruletext]) VALUES (N'RUL441bb08f:1436c079bff:-6fa7-0022', N'
package rptbilling.BRGY_MANDULOG_SHARE;
import rptbilling.*;
import java.util.*;
import com.rameses.rules.common.*;

global RuleAction action;

rule "BRGY_MANDULOG_SHARE"
	agenda-group "BRGY_SHARE"
	salience 50000
	no-loop
	when
		
		
		RL: RPTLedgerFact (  barangayid matches "BRGY00000006",BASIC:basic,BASICDISC:basicdisc,BASICINT:basicint,BASICPAID:basicpaid,BASICINTPAID:basicintpaid,BASICDISCTAKEN:basicdisctaken )
		
	then
		Map bindings = new HashMap();
		
		bindings.put("RL", RL );
		
		bindings.put("BASIC", BASIC );
		
		bindings.put("BASICDISC", BASICDISC );
		
		bindings.put("BASICINT", BASICINT );
		
		bindings.put("BASICPAID", BASICPAID );
		
		bindings.put("BASICINTPAID", BASICINTPAID );
		
		bindings.put("BASICDISCTAKEN", BASICDISCTAKEN );
		
	Map _p0 = new HashMap();
_p0.put( "rptledger", RL );
_p0.put( "brgyintshareacct", new KeyValue("REVITEM1e022843:141bb55e9df:-6791", "BRGY. MANDULOG RPT SHARE (30%)") );
_p0.put( "expr", (new ActionExpression("(BASICINT - BASICINTPAID) *  0.30", bindings)) );
action.execute( "calc-brgyint-share",_p0,drools);
Map _p1 = new HashMap();
_p1.put( "rptledger", RL );
_p1.put( "brgyshareacct", new KeyValue("REVITEM1e022843:141bb55e9df:-6791", "BRGY. MANDULOG RPT SHARE (30%)") );
_p1.put( "expr", (new ActionExpression("( BASIC - BASICPAID - (BASICDISC - BASICDISCTAKEN)) * 0.30", bindings)) );
action.execute( "calc-brgyshare",_p1,drools);

end


	')
INSERT [dbo].[sys_rule_deployed] ([objid], [ruletext]) VALUES (N'RUL441bb08f:1436c079bff:-6fa7-0023', N'
package rptbilling.BRGY_MA_CRISTINA_SHARE;
import rptbilling.*;
import java.util.*;
import com.rameses.rules.common.*;

global RuleAction action;

rule "BRGY_MA_CRISTINA_SHARE"
	agenda-group "BRGY_SHARE"
	salience 50000
	no-loop
	when
		
		
		RL: RPTLedgerFact (  barangayid matches "BRGY00000007",BASIC:basic,BASICDISC:basicdisc,BASICINT:basicint,BASICPAID:basicpaid,BASICINTPAID:basicintpaid,BASICDISCTAKEN:basicdisctaken )
		
	then
		Map bindings = new HashMap();
		
		bindings.put("RL", RL );
		
		bindings.put("BASIC", BASIC );
		
		bindings.put("BASICDISC", BASICDISC );
		
		bindings.put("BASICINT", BASICINT );
		
		bindings.put("BASICPAID", BASICPAID );
		
		bindings.put("BASICINTPAID", BASICINTPAID );
		
		bindings.put("BASICDISCTAKEN", BASICDISCTAKEN );
		
	Map _p0 = new HashMap();
_p0.put( "rptledger", RL );
_p0.put( "brgyintshareacct", new KeyValue("REVITEM1e022843:141bb55e9df:-43b8", "BRGY. MARIA CRISTINA RPT SHARE (30%)") );
_p0.put( "expr", (new ActionExpression("(BASICINT - BASICINTPAID) *  0.30", bindings)) );
action.execute( "calc-brgyint-share",_p0,drools);
Map _p1 = new HashMap();
_p1.put( "rptledger", RL );
_p1.put( "brgyshareacct", new KeyValue("REVITEM1e022843:141bb55e9df:-43b8", "BRGY. MARIA CRISTINA RPT SHARE (30%)") );
_p1.put( "expr", (new ActionExpression("( BASIC - BASICPAID - (BASICDISC - BASICDISCTAKEN)) * 0.30", bindings)) );
action.execute( "calc-brgyshare",_p1,drools);

end


	')
INSERT [dbo].[sys_rule_deployed] ([objid], [ruletext]) VALUES (N'RUL441bb08f:1436c079bff:-6fa7-0024', N'
package rptbilling.BRGY_PALAO_SHARE;
import rptbilling.*;
import java.util.*;
import com.rameses.rules.common.*;

global RuleAction action;

rule "BRGY_PALAO_SHARE"
	agenda-group "BRGY_SHARE"
	salience 50000
	no-loop
	when
		
		
		RL: RPTLedgerFact (  barangayid matches "BRGY00000008",BASIC:basic,BASICDISC:basicdisc,BASICINT:basicint,BASICPAID:basicpaid,BASICINTPAID:basicintpaid,BASICDISCTAKEN:basicdisctaken )
		
	then
		Map bindings = new HashMap();
		
		bindings.put("RL", RL );
		
		bindings.put("BASIC", BASIC );
		
		bindings.put("BASICDISC", BASICDISC );
		
		bindings.put("BASICINT", BASICINT );
		
		bindings.put("BASICPAID", BASICPAID );
		
		bindings.put("BASICINTPAID", BASICINTPAID );
		
		bindings.put("BASICDISCTAKEN", BASICDISCTAKEN );
		
	Map _p0 = new HashMap();
_p0.put( "rptledger", RL );
_p0.put( "brgyintshareacct", new KeyValue("REVITEM1e022843:141bb55e9df:1844", "BRGY. PALA-O RPT SHARE (30%)") );
_p0.put( "expr", (new ActionExpression("(BASICINT - BASICINTPAID) *  0.30", bindings)) );
action.execute( "calc-brgyint-share",_p0,drools);
Map _p1 = new HashMap();
_p1.put( "rptledger", RL );
_p1.put( "brgyshareacct", new KeyValue("REVITEM1e022843:141bb55e9df:1844", "BRGY. PALA-O RPT SHARE (30%)") );
_p1.put( "expr", (new ActionExpression("( BASIC - BASICPAID - (BASICDISC - BASICDISCTAKEN)) * 0.30", bindings)) );
action.execute( "calc-brgyshare",_p1,drools);

end


	')
INSERT [dbo].[sys_rule_deployed] ([objid], [ruletext]) VALUES (N'RUL441bb08f:1436c079bff:-6fa7-0025', N'
package rptbilling.BRGY_PANOROGANAN_SHARE;
import rptbilling.*;
import java.util.*;
import com.rameses.rules.common.*;

global RuleAction action;

rule "BRGY_PANOROGANAN_SHARE"
	agenda-group "BRGY_SHARE"
	salience 50000
	no-loop
	when
		
		
		RL: RPTLedgerFact (  barangayid matches "BRGY00000009",BASIC:basic,BASICDISC:basicdisc,BASICINT:basicint,BASICPAID:basicpaid,BASICINTPAID:basicintpaid,BASICDISCTAKEN:basicdisctaken )
		
	then
		Map bindings = new HashMap();
		
		bindings.put("RL", RL );
		
		bindings.put("BASIC", BASIC );
		
		bindings.put("BASICDISC", BASICDISC );
		
		bindings.put("BASICINT", BASICINT );
		
		bindings.put("BASICPAID", BASICPAID );
		
		bindings.put("BASICINTPAID", BASICINTPAID );
		
		bindings.put("BASICDISCTAKEN", BASICDISCTAKEN );
		
	Map _p0 = new HashMap();
_p0.put( "rptledger", RL );
_p0.put( "brgyintshareacct", new KeyValue("REVITEM1e022843:141bb55e9df:3d21", "BRGY. PANOROGANAN RPT SHARE (30%)") );
_p0.put( "expr", (new ActionExpression("(BASICINT - BASICINTPAID) *  0.30", bindings)) );
action.execute( "calc-brgyint-share",_p0,drools);
Map _p1 = new HashMap();
_p1.put( "rptledger", RL );
_p1.put( "brgyshareacct", new KeyValue("REVITEM1e022843:141bb55e9df:3d21", "BRGY. PANOROGANAN RPT SHARE (30%)") );
_p1.put( "expr", (new ActionExpression("( BASIC - BASICPAID - (BASICDISC - BASICDISCTAKEN)) * 0.30", bindings)) );
action.execute( "calc-brgyshare",_p1,drools);

end


	')
INSERT [dbo].[sys_rule_deployed] ([objid], [ruletext]) VALUES (N'RUL441bb08f:1436c079bff:-6fa7-0026', N'
package rptbilling.BRGY_PUGAAN_SHARE;
import rptbilling.*;
import java.util.*;
import com.rameses.rules.common.*;

global RuleAction action;

rule "BRGY_PUGAAN_SHARE"
	agenda-group "BRGY_SHARE"
	salience 50000
	no-loop
	when
		
		
		RL: RPTLedgerFact (  barangayid matches "BRGY00000010",BASIC:basic,BASICDISC:basicdisc,BASICINT:basicint,BASICPAID:basicpaid,BASICINTPAID:basicintpaid,BASICDISCTAKEN:basicdisctaken )
		
	then
		Map bindings = new HashMap();
		
		bindings.put("RL", RL );
		
		bindings.put("BASIC", BASIC );
		
		bindings.put("BASICDISC", BASICDISC );
		
		bindings.put("BASICINT", BASICINT );
		
		bindings.put("BASICPAID", BASICPAID );
		
		bindings.put("BASICINTPAID", BASICINTPAID );
		
		bindings.put("BASICDISCTAKEN", BASICDISCTAKEN );
		
	Map _p0 = new HashMap();
_p0.put( "rptledger", RL );
_p0.put( "brgyintshareacct", new KeyValue("REVITEM1e022843:141bb55e9df:6153", "BRGY. PUGA-AN RPT SHARE (30%)") );
_p0.put( "expr", (new ActionExpression("(BASICINT - BASICINTPAID) *  0.30", bindings)) );
action.execute( "calc-brgyint-share",_p0,drools);
Map _p1 = new HashMap();
_p1.put( "rptledger", RL );
_p1.put( "brgyshareacct", new KeyValue("REVITEM1e022843:141bb55e9df:6153", "BRGY. PUGA-AN RPT SHARE (30%)") );
_p1.put( "expr", (new ActionExpression("( BASIC - BASICPAID - (BASICDISC - BASICDISCTAKEN)) * 0.30", bindings)) );
action.execute( "calc-brgyshare",_p1,drools);

end


	')
INSERT [dbo].[sys_rule_deployed] ([objid], [ruletext]) VALUES (N'RUL441bb08f:1436c079bff:-6fa7-0027', N'
package rptbilling.BRGY_TOMINOBO_PROPER_SHARE;
import rptbilling.*;
import java.util.*;
import com.rameses.rules.common.*;

global RuleAction action;

rule "BRGY_TOMINOBO_PROPER_SHARE"
	agenda-group "BRGY_SHARE"
	salience 50000
	no-loop
	when
		
		
		RL: RPTLedgerFact (  barangayid matches "BRGY00000011",BASIC:basic,BASICDISC:basicdisc,BASICINT:basicint,BASICPAID:basicpaid,BASICINTPAID:basicintpaid,BASICDISCTAKEN:basicdisctaken )
		
	then
		Map bindings = new HashMap();
		
		bindings.put("RL", RL );
		
		bindings.put("BASIC", BASIC );
		
		bindings.put("BASICDISC", BASICDISC );
		
		bindings.put("BASICINT", BASICINT );
		
		bindings.put("BASICPAID", BASICPAID );
		
		bindings.put("BASICINTPAID", BASICINTPAID );
		
		bindings.put("BASICDISCTAKEN", BASICDISCTAKEN );
		
	Map _p0 = new HashMap();
_p0.put( "rptledger", RL );
_p0.put( "brgyintshareacct", new KeyValue("REVITEM1e022843:141bb5ad19b:-7849", "BRGY. TOMINOBO PROPER RPT SHARE (30%)") );
_p0.put( "expr", (new ActionExpression("(BASICINT - BASICINTPAID) *  0.30", bindings)) );
action.execute( "calc-brgyint-share",_p0,drools);
Map _p1 = new HashMap();
_p1.put( "rptledger", RL );
_p1.put( "brgyshareacct", new KeyValue("REVITEM1e022843:141bb5ad19b:-7849", "BRGY. TOMINOBO PROPER RPT SHARE (30%)") );
_p1.put( "expr", (new ActionExpression("( BASIC - BASICPAID - (BASICDISC - BASICDISCTAKEN)) * 0.30", bindings)) );
action.execute( "calc-brgyshare",_p1,drools);

end


	')
INSERT [dbo].[sys_rule_deployed] ([objid], [ruletext]) VALUES (N'RUL441bb08f:1436c079bff:-6fa7-0028', N'
package rptbilling.BRGY_ROGONGON_SHARE;
import rptbilling.*;
import java.util.*;
import com.rameses.rules.common.*;

global RuleAction action;

rule "BRGY_ROGONGON_SHARE"
	agenda-group "BRGY_SHARE"
	salience 50000
	no-loop
	when
		
		
		RL: RPTLedgerFact (  barangayid matches "BRGY00000012",BASIC:basic,BASICDISC:basicdisc,BASICINT:basicint,BASICPAID:basicpaid,BASICINTPAID:basicintpaid,BASICDISCTAKEN:basicdisctaken )
		
	then
		Map bindings = new HashMap();
		
		bindings.put("RL", RL );
		
		bindings.put("BASIC", BASIC );
		
		bindings.put("BASICDISC", BASICDISC );
		
		bindings.put("BASICINT", BASICINT );
		
		bindings.put("BASICPAID", BASICPAID );
		
		bindings.put("BASICINTPAID", BASICINTPAID );
		
		bindings.put("BASICDISCTAKEN", BASICDISCTAKEN );
		
	Map _p0 = new HashMap();
_p0.put( "rptledger", RL );
_p0.put( "brgyintshareacct", new KeyValue("REVITEM1e022843:141bb5ad19b:-259a", "BRGY. ROGONGON RPT SHARE (30%)") );
_p0.put( "expr", (new ActionExpression("(BASICINT - BASICINTPAID) *  0.30", bindings)) );
action.execute( "calc-brgyint-share",_p0,drools);
Map _p1 = new HashMap();
_p1.put( "rptledger", RL );
_p1.put( "brgyshareacct", new KeyValue("REVITEM1e022843:141bb5ad19b:-259a", "BRGY. ROGONGON RPT SHARE (30%)") );
_p1.put( "expr", (new ActionExpression("( BASIC - BASICPAID - (BASICDISC - BASICDISCTAKEN)) * 0.30", bindings)) );
action.execute( "calc-brgyshare",_p1,drools);

end


	')
INSERT [dbo].[sys_rule_deployed] ([objid], [ruletext]) VALUES (N'RUL441bb08f:1436c079bff:-6fa7-0029', N'
package rptbilling.BRGY_SAN_MIGUEL_SHARE;
import rptbilling.*;
import java.util.*;
import com.rameses.rules.common.*;

global RuleAction action;

rule "BRGY_SAN_MIGUEL_SHARE"
	agenda-group "BRGY_SHARE"
	salience 50000
	no-loop
	when
		
		
		RL: RPTLedgerFact (  barangayid matches "BRGY00000013",BASIC:basic,BASICDISC:basicdisc,BASICINT:basicint,BASICPAID:basicpaid,BASICINTPAID:basicintpaid,BASICDISCTAKEN:basicdisctaken )
		
	then
		Map bindings = new HashMap();
		
		bindings.put("RL", RL );
		
		bindings.put("BASIC", BASIC );
		
		bindings.put("BASICDISC", BASICDISC );
		
		bindings.put("BASICINT", BASICINT );
		
		bindings.put("BASICPAID", BASICPAID );
		
		bindings.put("BASICINTPAID", BASICINTPAID );
		
		bindings.put("BASICDISCTAKEN", BASICDISCTAKEN );
		
	Map _p0 = new HashMap();
_p0.put( "rptledger", RL );
_p0.put( "brgyintshareacct", new KeyValue("REVITEM1e022843:141bb5ad19b:-2da", "BRGY. SAN MIGUEL RPT SHARE (30%)") );
_p0.put( "expr", (new ActionExpression("(BASICINT - BASICINTPAID) *  0.30", bindings)) );
action.execute( "calc-brgyint-share",_p0,drools);
Map _p1 = new HashMap();
_p1.put( "rptledger", RL );
_p1.put( "brgyshareacct", new KeyValue("REVITEM1e022843:141bb5ad19b:-2da", "BRGY. SAN MIGUEL RPT SHARE (30%)") );
_p1.put( "expr", (new ActionExpression("( BASIC - BASICPAID - (BASICDISC - BASICDISCTAKEN)) * 0.30", bindings)) );
action.execute( "calc-brgyshare",_p1,drools);

end


	')
INSERT [dbo].[sys_rule_deployed] ([objid], [ruletext]) VALUES (N'RUL441bb08f:1436c079bff:-6fa7-0030', N'
package rptbilling.BRGY_SAN_ROQUE_SHARE;
import rptbilling.*;
import java.util.*;
import com.rameses.rules.common.*;

global RuleAction action;

rule "BRGY_SAN_ROQUE_SHARE"
	agenda-group "BRGY_SHARE"
	salience 50000
	no-loop
	when
		
		
		RL: RPTLedgerFact (  barangayid matches "BRGY00000014",BASIC:basic,BASICDISC:basicdisc,BASICINT:basicint,BASICPAID:basicpaid,BASICINTPAID:basicintpaid,BASICDISCTAKEN:basicdisctaken )
		
	then
		Map bindings = new HashMap();
		
		bindings.put("RL", RL );
		
		bindings.put("BASIC", BASIC );
		
		bindings.put("BASICDISC", BASICDISC );
		
		bindings.put("BASICINT", BASICINT );
		
		bindings.put("BASICPAID", BASICPAID );
		
		bindings.put("BASICINTPAID", BASICINTPAID );
		
		bindings.put("BASICDISCTAKEN", BASICDISCTAKEN );
		
	Map _p0 = new HashMap();
_p0.put( "rptledger", RL );
_p0.put( "brgyintshareacct", new KeyValue("REVITEM1e022843:141bb5ad19b:1a09", "BRGY. SAN ROQUE RPT SHARE (30%)") );
_p0.put( "expr", (new ActionExpression("(BASICINT - BASICINTPAID) *  0.30", bindings)) );
action.execute( "calc-brgyint-share",_p0,drools);
Map _p1 = new HashMap();
_p1.put( "rptledger", RL );
_p1.put( "brgyshareacct", new KeyValue("REVITEM1e022843:141bb5ad19b:1a09", "BRGY. SAN ROQUE RPT SHARE (30%)") );
_p1.put( "expr", (new ActionExpression("( BASIC - BASICPAID - (BASICDISC - BASICDISCTAKEN)) * 0.30", bindings)) );
action.execute( "calc-brgyshare",_p1,drools);

end


	')
INSERT [dbo].[sys_rule_deployed] ([objid], [ruletext]) VALUES (N'RUL441bb08f:1436c079bff:-6fa7-0031', N'
package rptbilling.BRGY_SANTIAGO_SHARE;
import rptbilling.*;
import java.util.*;
import com.rameses.rules.common.*;

global RuleAction action;

rule "BRGY_SANTIAGO_SHARE"
	agenda-group "BRGY_SHARE"
	salience 50000
	no-loop
	when
		
		
		RL: RPTLedgerFact (  barangayid matches "BRGY00000015",BASIC:basic,BASICDISC:basicdisc,BASICINT:basicint,BASICPAID:basicpaid,BASICINTPAID:basicintpaid,BASICDISCTAKEN:basicdisctaken )
		
	then
		Map bindings = new HashMap();
		
		bindings.put("RL", RL );
		
		bindings.put("BASIC", BASIC );
		
		bindings.put("BASICDISC", BASICDISC );
		
		bindings.put("BASICINT", BASICINT );
		
		bindings.put("BASICPAID", BASICPAID );
		
		bindings.put("BASICINTPAID", BASICINTPAID );
		
		bindings.put("BASICDISCTAKEN", BASICDISCTAKEN );
		
	Map _p0 = new HashMap();
_p0.put( "rptledger", RL );
_p0.put( "brgyintshareacct", new KeyValue("REVITEM1e022843:141bb5ad19b:3a8a", "BRGY. SANTIAGO RPT SHARE (30%)") );
_p0.put( "expr", (new ActionExpression("(BASICINT - BASICINTPAID) *  0.30", bindings)) );
action.execute( "calc-brgyint-share",_p0,drools);
Map _p1 = new HashMap();
_p1.put( "rptledger", RL );
_p1.put( "brgyshareacct", new KeyValue("REVITEM1e022843:141bb5ad19b:3a8a", "BRGY. SANTIAGO RPT SHARE (30%)") );
_p1.put( "expr", (new ActionExpression("( BASIC - BASICPAID - (BASICDISC - BASICDISCTAKEN)) * 0.30", bindings)) );
action.execute( "calc-brgyshare",_p1,drools);

end


	')
INSERT [dbo].[sys_rule_deployed] ([objid], [ruletext]) VALUES (N'RUL441bb08f:1436c079bff:-6fa7-0032', N'
package rptbilling.BRGY_STA_ELENA_SHARE;
import rptbilling.*;
import java.util.*;
import com.rameses.rules.common.*;

global RuleAction action;

rule "BRGY_STA_ELENA_SHARE"
	agenda-group "BRGY_SHARE"
	salience 50000
	no-loop
	when
		
		
		RL: RPTLedgerFact (  barangayid matches "BRGY00000016",BASIC:basic,BASICDISC:basicdisc,BASICINT:basicint,BASICPAID:basicpaid,BASICINTPAID:basicintpaid,BASICDISCTAKEN:basicdisctaken )
		
	then
		Map bindings = new HashMap();
		
		bindings.put("RL", RL );
		
		bindings.put("BASIC", BASIC );
		
		bindings.put("BASICDISC", BASICDISC );
		
		bindings.put("BASICINT", BASICINT );
		
		bindings.put("BASICPAID", BASICPAID );
		
		bindings.put("BASICINTPAID", BASICINTPAID );
		
		bindings.put("BASICDISCTAKEN", BASICDISCTAKEN );
		
	Map _p0 = new HashMap();
_p0.put( "rptledger", RL );
_p0.put( "brgyintshareacct", new KeyValue("REVITEM1e022843:141bb5ad19b:50ef", "BRGY. STA. ELENA RPT SHARE (30%)") );
_p0.put( "expr", (new ActionExpression("(BASICINT - BASICINTPAID) *  0.30", bindings)) );
action.execute( "calc-brgyint-share",_p0,drools);
Map _p1 = new HashMap();
_p1.put( "rptledger", RL );
_p1.put( "brgyshareacct", new KeyValue("REVITEM1e022843:141bb5ad19b:50ef", "BRGY. STA. ELENA RPT SHARE (30%)") );
_p1.put( "expr", (new ActionExpression("( BASIC - BASICPAID - (BASICDISC - BASICDISCTAKEN)) * 0.30", bindings)) );
action.execute( "calc-brgyshare",_p1,drools);

end


	')
INSERT [dbo].[sys_rule_deployed] ([objid], [ruletext]) VALUES (N'RUL441bb08f:1436c079bff:-6fa7-0033', N'
package rptbilling.BRGY_STA_FILOMENA_SHARE;
import rptbilling.*;
import java.util.*;
import com.rameses.rules.common.*;

global RuleAction action;

rule "BRGY_STA_FILOMENA_SHARE"
	agenda-group "BRGY_SHARE"
	salience 50000
	no-loop
	when
		
		
		RL: RPTLedgerFact (  barangayid matches "BRGY00000017",BASIC:basic,BASICDISC:basicdisc,BASICINT:basicint,BASICPAID:basicpaid,BASICINTPAID:basicintpaid,BASICDISCTAKEN:basicdisctaken )
		
	then
		Map bindings = new HashMap();
		
		bindings.put("RL", RL );
		
		bindings.put("BASIC", BASIC );
		
		bindings.put("BASICDISC", BASICDISC );
		
		bindings.put("BASICINT", BASICINT );
		
		bindings.put("BASICPAID", BASICPAID );
		
		bindings.put("BASICINTPAID", BASICINTPAID );
		
		bindings.put("BASICDISCTAKEN", BASICDISCTAKEN );
		
	Map _p0 = new HashMap();
_p0.put( "rptledger", RL );
_p0.put( "brgyintshareacct", new KeyValue("REVITEM1e022843:141bb6442b8:-6fad", "BRGY. STA. FILOMENA RPT SHARE (30%)") );
_p0.put( "expr", (new ActionExpression("(BASICINT - BASICINTPAID) *  0.30", bindings)) );
action.execute( "calc-brgyint-share",_p0,drools);
Map _p1 = new HashMap();
_p1.put( "rptledger", RL );
_p1.put( "brgyshareacct", new KeyValue("REVITEM1e022843:141bb6442b8:-6fad", "BRGY. STA. FILOMENA RPT SHARE (30%)") );
_p1.put( "expr", (new ActionExpression("( BASIC - BASICPAID - (BASICDISC - BASICDISCTAKEN)) * 0.30", bindings)) );
action.execute( "calc-brgyshare",_p1,drools);

end


	')
INSERT [dbo].[sys_rule_deployed] ([objid], [ruletext]) VALUES (N'RUL441bb08f:1436c079bff:-6fa7-0034', N'
package rptbilling.BRGY_STO_ROSARIO_SHARE;
import rptbilling.*;
import java.util.*;
import com.rameses.rules.common.*;

global RuleAction action;

rule "BRGY_STO_ROSARIO_SHARE"
	agenda-group "BRGY_SHARE"
	salience 50000
	no-loop
	when
		
		
		RL: RPTLedgerFact (  barangayid matches "BRGY00000018",BASIC:basic,BASICDISC:basicdisc,BASICINT:basicint,BASICPAID:basicpaid,BASICINTPAID:basicintpaid,BASICDISCTAKEN:basicdisctaken )
		
	then
		Map bindings = new HashMap();
		
		bindings.put("RL", RL );
		
		bindings.put("BASIC", BASIC );
		
		bindings.put("BASICDISC", BASICDISC );
		
		bindings.put("BASICINT", BASICINT );
		
		bindings.put("BASICPAID", BASICPAID );
		
		bindings.put("BASICINTPAID", BASICINTPAID );
		
		bindings.put("BASICDISCTAKEN", BASICDISCTAKEN );
		
	Map _p0 = new HashMap();
_p0.put( "rptledger", RL );
_p0.put( "brgyintshareacct", new KeyValue("REVITEM1e022843:141bb6442b8:6121", "BRGY. STO. ROSARIO RPT SHARE (30%)") );
_p0.put( "expr", (new ActionExpression("(BASICINT - BASICINTPAID) *  0.30", bindings)) );
action.execute( "calc-brgyint-share",_p0,drools);
Map _p1 = new HashMap();
_p1.put( "rptledger", RL );
_p1.put( "brgyshareacct", new KeyValue("REVITEM1e022843:141bb6442b8:6121", "BRGY. STO. ROSARIO RPT SHARE (30%)") );
_p1.put( "expr", (new ActionExpression("( BASIC - BASICPAID - (BASICDISC - BASICDISCTAKEN)) * 0.30", bindings)) );
action.execute( "calc-brgyshare",_p1,drools);

end


	')
INSERT [dbo].[sys_rule_deployed] ([objid], [ruletext]) VALUES (N'RUL441bb08f:1436c079bff:-6fa7-0036', N'
package rptbilling.BRGY_SUAREZ_SHARE;
import rptbilling.*;
import java.util.*;
import com.rameses.rules.common.*;

global RuleAction action;

rule "BRGY_SUAREZ_SHARE"
	agenda-group "BRGY_SHARE"
	salience 50000
	no-loop
	when
		
		
		RL: RPTLedgerFact (  barangayid matches "BRGY00000020",BASIC:basic,BASICDISC:basicdisc,BASICINT:basicint,BASICPAID:basicpaid,BASICINTPAID:basicintpaid,BASICDISCTAKEN:basicdisctaken )
		
	then
		Map bindings = new HashMap();
		
		bindings.put("RL", RL );
		
		bindings.put("BASIC", BASIC );
		
		bindings.put("BASICDISC", BASICDISC );
		
		bindings.put("BASICINT", BASICINT );
		
		bindings.put("BASICPAID", BASICPAID );
		
		bindings.put("BASICINTPAID", BASICINTPAID );
		
		bindings.put("BASICDISCTAKEN", BASICDISCTAKEN );
		
	Map _p0 = new HashMap();
_p0.put( "rptledger", RL );
_p0.put( "brgyintshareacct", new KeyValue("REVITEM1e022843:141bb68fbf8:38d", "BRGY. SUAREZ RPT SHARE (30%)") );
_p0.put( "expr", (new ActionExpression("(BASICINT - BASICINTPAID) *  0.30", bindings)) );
action.execute( "calc-brgyint-share",_p0,drools);
Map _p1 = new HashMap();
_p1.put( "rptledger", RL );
_p1.put( "brgyshareacct", new KeyValue("REVITEM1e022843:141bb68fbf8:38d", "BRGY. SUAREZ RPT SHARE (30%)") );
_p1.put( "expr", (new ActionExpression("( BASIC - BASICPAID - (BASICDISC - BASICDISCTAKEN)) * 0.30", bindings)) );
action.execute( "calc-brgyshare",_p1,drools);

end


	')
INSERT [dbo].[sys_rule_deployed] ([objid], [ruletext]) VALUES (N'RUL441bb08f:1436c079bff:-6fa7-0037', N'
package rptbilling.BRGY_TAMBACAN_SHARE;
import rptbilling.*;
import java.util.*;
import com.rameses.rules.common.*;

global RuleAction action;

rule "BRGY_TAMBACAN_SHARE"
	agenda-group "BRGY_SHARE"
	salience 50000
	no-loop
	when
		
		
		RL: RPTLedgerFact (  barangayid matches "BRGY00000021",BASIC:basic,BASICDISC:basicdisc,BASICINT:basicint,BASICPAID:basicpaid,BASICINTPAID:basicintpaid,BASICDISCTAKEN:basicdisctaken )
		
	then
		Map bindings = new HashMap();
		
		bindings.put("RL", RL );
		
		bindings.put("BASIC", BASIC );
		
		bindings.put("BASICDISC", BASICDISC );
		
		bindings.put("BASICINT", BASICINT );
		
		bindings.put("BASICPAID", BASICPAID );
		
		bindings.put("BASICINTPAID", BASICINTPAID );
		
		bindings.put("BASICDISCTAKEN", BASICDISCTAKEN );
		
	Map _p0 = new HashMap();
_p0.put( "rptledger", RL );
_p0.put( "brgyintshareacct", new KeyValue("REVITEM-1e253c27:1429d242e9c:-53aa", "BRGY. TAMBACAN RPT SHARE (30%)") );
_p0.put( "expr", (new ActionExpression("(BASICINT - BASICINTPAID) *  0.30", bindings)) );
action.execute( "calc-brgyint-share",_p0,drools);
Map _p1 = new HashMap();
_p1.put( "rptledger", RL );
_p1.put( "brgyshareacct", new KeyValue("REVITEM-1e253c27:1429d242e9c:-53aa", "BRGY. TAMBACAN RPT SHARE (30%)") );
_p1.put( "expr", (new ActionExpression("( BASIC - BASICPAID - (BASICDISC - BASICDISCTAKEN)) * 0.30", bindings)) );
action.execute( "calc-brgyshare",_p1,drools);

end


	')
INSERT [dbo].[sys_rule_deployed] ([objid], [ruletext]) VALUES (N'RUL441bb08f:1436c079bff:-6fa7-0038', N'
package rptbilling.BRGY_TIBANGA_SHARE;
import rptbilling.*;
import java.util.*;
import com.rameses.rules.common.*;

global RuleAction action;

rule "BRGY_TIBANGA_SHARE"
	agenda-group "BRGY_SHARE"
	salience 50000
	no-loop
	when
		
		
		RL: RPTLedgerFact (  barangayid matches "BRGY00000022",BASIC:basic,BASICDISC:basicdisc,BASICINT:basicint,BASICPAID:basicpaid,BASICINTPAID:basicintpaid,BASICDISCTAKEN:basicdisctaken )
		
	then
		Map bindings = new HashMap();
		
		bindings.put("RL", RL );
		
		bindings.put("BASIC", BASIC );
		
		bindings.put("BASICDISC", BASICDISC );
		
		bindings.put("BASICINT", BASICINT );
		
		bindings.put("BASICPAID", BASICPAID );
		
		bindings.put("BASICINTPAID", BASICINTPAID );
		
		bindings.put("BASICDISCTAKEN", BASICDISCTAKEN );
		
	Map _p0 = new HashMap();
_p0.put( "rptledger", RL );
_p0.put( "brgyintshareacct", new KeyValue("REVITEM1e022843:141bb68fbf8:3e54", "BRGY. TIBANGA RPT SHARE (30%)") );
_p0.put( "expr", (new ActionExpression("(BASICINT - BASICINTPAID) *  0.30", bindings)) );
action.execute( "calc-brgyint-share",_p0,drools);
Map _p1 = new HashMap();
_p1.put( "rptledger", RL );
_p1.put( "brgyshareacct", new KeyValue("REVITEM1e022843:141bb68fbf8:3e54", "BRGY. TIBANGA RPT SHARE (30%)") );
_p1.put( "expr", (new ActionExpression("( BASIC - BASICPAID - (BASICDISC - BASICDISCTAKEN)) * 0.30", bindings)) );
action.execute( "calc-brgyshare",_p1,drools);

end


	')
INSERT [dbo].[sys_rule_deployed] ([objid], [ruletext]) VALUES (N'RUL441bb08f:1436c079bff:-6fa7-0039', N'
package rptbilling.BRGY_TIPANOY_SHARE;
import rptbilling.*;
import java.util.*;
import com.rameses.rules.common.*;

global RuleAction action;

rule "BRGY_TIPANOY_SHARE"
	agenda-group "BRGY_SHARE"
	salience 50000
	no-loop
	when
		
		
		RL: RPTLedgerFact (  barangayid matches "BRGY00000023",BASIC:basic,BASICDISC:basicdisc,BASICINT:basicint,BASICPAID:basicpaid,BASICINTPAID:basicintpaid,BASICDISCTAKEN:basicdisctaken )
		
	then
		Map bindings = new HashMap();
		
		bindings.put("RL", RL );
		
		bindings.put("BASIC", BASIC );
		
		bindings.put("BASICDISC", BASICDISC );
		
		bindings.put("BASICINT", BASICINT );
		
		bindings.put("BASICPAID", BASICPAID );
		
		bindings.put("BASICINTPAID", BASICINTPAID );
		
		bindings.put("BASICDISCTAKEN", BASICDISCTAKEN );
		
	Map _p0 = new HashMap();
_p0.put( "rptledger", RL );
_p0.put( "brgyintshareacct", new KeyValue("REVITEM1e022843:141bb68fbf8:6dca", "BRGY. TIPANOY RPT SHARE (30%)") );
_p0.put( "expr", (new ActionExpression("(BASICINT - BASICINTPAID) *  0.30", bindings)) );
action.execute( "calc-brgyint-share",_p0,drools);
Map _p1 = new HashMap();
_p1.put( "rptledger", RL );
_p1.put( "brgyshareacct", new KeyValue("REVITEM1e022843:141bb68fbf8:6dca", "BRGY. TIPANOY RPT SHARE (30%)") );
_p1.put( "expr", (new ActionExpression("( BASIC - BASICPAID - (BASICDISC - BASICDISCTAKEN)) * 0.30", bindings)) );
action.execute( "calc-brgyshare",_p1,drools);

end


	')
INSERT [dbo].[sys_rule_deployed] ([objid], [ruletext]) VALUES (N'RUL441bb08f:1436c079bff:-6fa7-0040', N'
package rptbilling.BRGY_TUBOD_SHARE;
import rptbilling.*;
import java.util.*;
import com.rameses.rules.common.*;

global RuleAction action;

rule "BRGY_TUBOD_SHARE"
	agenda-group "BRGY_SHARE"
	salience 50000
	no-loop
	when
		
		
		RL: RPTLedgerFact (  barangayid matches "BRGY00000024",BASIC:basic,BASICDISC:basicdisc,BASICINT:basicint,BASICPAID:basicpaid,BASICINTPAID:basicintpaid,BASICDISCTAKEN:basicdisctaken )
		
	then
		Map bindings = new HashMap();
		
		bindings.put("RL", RL );
		
		bindings.put("BASIC", BASIC );
		
		bindings.put("BASICDISC", BASICDISC );
		
		bindings.put("BASICINT", BASICINT );
		
		bindings.put("BASICPAID", BASICPAID );
		
		bindings.put("BASICINTPAID", BASICINTPAID );
		
		bindings.put("BASICDISCTAKEN", BASICDISCTAKEN );
		
	Map _p0 = new HashMap();
_p0.put( "rptledger", RL );
_p0.put( "brgyintshareacct", new KeyValue("REVITEM1e022843:141bb6db72b:-7316", "BRGY. TUBOD RPT SHARE (30%)") );
_p0.put( "expr", (new ActionExpression("(BASICINT - BASICINTPAID) *  0.30", bindings)) );
action.execute( "calc-brgyint-share",_p0,drools);
Map _p1 = new HashMap();
_p1.put( "rptledger", RL );
_p1.put( "brgyshareacct", new KeyValue("REVITEM1e022843:141bb6db72b:-7316", "BRGY. TUBOD RPT SHARE (30%)") );
_p1.put( "expr", (new ActionExpression("( BASIC - BASICPAID - (BASICDISC - BASICDISCTAKEN)) * 0.30", bindings)) );
action.execute( "calc-brgyshare",_p1,drools);

end


	')
INSERT [dbo].[sys_rule_deployed] ([objid], [ruletext]) VALUES (N'RUL441bb08f:1436c079bff:-6fa7-0041', N'
package rptbilling.BRGY_UBALDO_LAYA_SHARE;
import rptbilling.*;
import java.util.*;
import com.rameses.rules.common.*;

global RuleAction action;

rule "BRGY_UBALDO_LAYA_SHARE"
	agenda-group "BRGY_SHARE"
	salience 50000
	no-loop
	when
		
		
		RL: RPTLedgerFact (  barangayid matches "BRGY00000025",BASIC:basic,BASICDISC:basicdisc,BASICINT:basicint,BASICPAID:basicpaid,BASICINTPAID:basicintpaid,BASICDISCTAKEN:basicdisctaken )
		
	then
		Map bindings = new HashMap();
		
		bindings.put("RL", RL );
		
		bindings.put("BASIC", BASIC );
		
		bindings.put("BASICDISC", BASICDISC );
		
		bindings.put("BASICINT", BASICINT );
		
		bindings.put("BASICPAID", BASICPAID );
		
		bindings.put("BASICINTPAID", BASICINTPAID );
		
		bindings.put("BASICDISCTAKEN", BASICDISCTAKEN );
		
	Map _p0 = new HashMap();
_p0.put( "rptledger", RL );
_p0.put( "brgyintshareacct", new KeyValue("REVITEM1e022843:141bb6db72b:-5691", "BRGY. UBALDO LAYA RPT SHARE (30%)") );
_p0.put( "expr", (new ActionExpression("(BASICINT - BASICINTPAID) *  0.30", bindings)) );
action.execute( "calc-brgyint-share",_p0,drools);
Map _p1 = new HashMap();
_p1.put( "rptledger", RL );
_p1.put( "brgyshareacct", new KeyValue("REVITEM1e022843:141bb6db72b:-5691", "BRGY. UBALDO LAYA RPT SHARE (30%)") );
_p1.put( "expr", (new ActionExpression("( BASIC - BASICPAID - (BASICDISC - BASICDISCTAKEN)) * 0.30 ", bindings)) );
action.execute( "calc-brgyshare",_p1,drools);

end


	')
INSERT [dbo].[sys_rule_deployed] ([objid], [ruletext]) VALUES (N'RUL441bb08f:1436c079bff:-6fa7-0042', N'
package rptbilling.BRGY_UPPER_HINAPLANON_SHARE;
import rptbilling.*;
import java.util.*;
import com.rameses.rules.common.*;

global RuleAction action;

rule "BRGY_UPPER_HINAPLANON_SHARE"
	agenda-group "BRGY_SHARE"
	salience 50000
	no-loop
	when
		
		
		RL: RPTLedgerFact (  barangayid matches "BRGY00000026",BASIC:basic,BASICDISC:basicdisc,BASICINT:basicint,BASICPAID:basicpaid,BASICINTPAID:basicintpaid,BASICDISCTAKEN:basicdisctaken )
		
	then
		Map bindings = new HashMap();
		
		bindings.put("RL", RL );
		
		bindings.put("BASIC", BASIC );
		
		bindings.put("BASICDISC", BASICDISC );
		
		bindings.put("BASICINT", BASICINT );
		
		bindings.put("BASICPAID", BASICPAID );
		
		bindings.put("BASICINTPAID", BASICINTPAID );
		
		bindings.put("BASICDISCTAKEN", BASICDISCTAKEN );
		
	Map _p0 = new HashMap();
_p0.put( "rptledger", RL );
_p0.put( "brgyintshareacct", new KeyValue("REVITEM1e022843:141bb6db72b:-3858", "BRGY. UPPER HINAPLANON RPT SHARE (30%)") );
_p0.put( "expr", (new ActionExpression("(BASICINT - BASICINTPAID) *  0.30", bindings)) );
action.execute( "calc-brgyint-share",_p0,drools);
Map _p1 = new HashMap();
_p1.put( "rptledger", RL );
_p1.put( "brgyshareacct", new KeyValue("REVITEM1e022843:141bb6db72b:-3858", "BRGY. UPPER HINAPLANON RPT SHARE (30%)") );
_p1.put( "expr", (new ActionExpression("( BASIC - BASICPAID - (BASICDISC - BASICDISCTAKEN)) * 0.30 ", bindings)) );
action.execute( "calc-brgyshare",_p1,drools);

end


	')
INSERT [dbo].[sys_rule_deployed] ([objid], [ruletext]) VALUES (N'RUL441bb08f:1436c079bff:-6fa7-0043', N'
package rptbilling.BRGY_UPPER_TOMINOBO_SHARE;
import rptbilling.*;
import java.util.*;
import com.rameses.rules.common.*;

global RuleAction action;

rule "BRGY_UPPER_TOMINOBO_SHARE"
	agenda-group "BRGY_SHARE"
	salience 50000
	no-loop
	when
		
		
		RL: RPTLedgerFact (  barangayid matches "BRGY00000027",BASIC:basic,BASICDISC:basicdisc,BASICINT:basicint,BASICPAID:basicpaid,BASICINTPAID:basicintpaid,BASICDISCTAKEN:basicdisctaken )
		
	then
		Map bindings = new HashMap();
		
		bindings.put("RL", RL );
		
		bindings.put("BASIC", BASIC );
		
		bindings.put("BASICDISC", BASICDISC );
		
		bindings.put("BASICINT", BASICINT );
		
		bindings.put("BASICPAID", BASICPAID );
		
		bindings.put("BASICINTPAID", BASICINTPAID );
		
		bindings.put("BASICDISCTAKEN", BASICDISCTAKEN );
		
	Map _p0 = new HashMap();
_p0.put( "rptledger", RL );
_p0.put( "brgyintshareacct", new KeyValue("REVITEM1e022843:141bb6db72b:-f5d", "BRGY. TOMINOBO UPPER RPT SHARE (30%)") );
_p0.put( "expr", (new ActionExpression("(BASICINT - BASICINTPAID) *  0.30", bindings)) );
action.execute( "calc-brgyint-share",_p0,drools);
Map _p1 = new HashMap();
_p1.put( "rptledger", RL );
_p1.put( "brgyshareacct", new KeyValue("REVITEM1e022843:141bb6db72b:-f5d", "BRGY. TOMINOBO UPPER RPT SHARE (30%)") );
_p1.put( "expr", (new ActionExpression("( BASIC - BASICPAID - (BASICDISC - BASICDISCTAKEN)) * 0.30", bindings)) );
action.execute( "calc-brgyshare",_p1,drools);

end


	')
INSERT [dbo].[sys_rule_deployed] ([objid], [ruletext]) VALUES (N'RUL441bb08f:1436c079bff:-6fa7-0044', N'
package rptbilling.BRGY_VILLAVERDE_SHARE;
import rptbilling.*;
import java.util.*;
import com.rameses.rules.common.*;

global RuleAction action;

rule "BRGY_VILLAVERDE_SHARE"
	agenda-group "BRGY_SHARE"
	salience 50000
	no-loop
	when
		
		
		RL: RPTLedgerFact (  barangayid matches "BRGY00000028",BASIC:basic,BASICDISC:basicdisc,BASICINT:basicint,BASICPAID:basicpaid,BASICINTPAID:basicintpaid,BASICDISCTAKEN:basicdisctaken )
		
	then
		Map bindings = new HashMap();
		
		bindings.put("RL", RL );
		
		bindings.put("BASIC", BASIC );
		
		bindings.put("BASICDISC", BASICDISC );
		
		bindings.put("BASICINT", BASICINT );
		
		bindings.put("BASICPAID", BASICPAID );
		
		bindings.put("BASICINTPAID", BASICINTPAID );
		
		bindings.put("BASICDISCTAKEN", BASICDISCTAKEN );
		
	Map _p0 = new HashMap();
_p0.put( "rptledger", RL );
_p0.put( "brgyintshareacct", new KeyValue("REVITEM1e022843:141bb6db72b:2235", "BRGY. VILLAVERDE RPT SHARE (30%)") );
_p0.put( "expr", (new ActionExpression("(BASICINT - BASICINTPAID) *  0.30", bindings)) );
action.execute( "calc-brgyint-share",_p0,drools);
Map _p1 = new HashMap();
_p1.put( "rptledger", RL );
_p1.put( "brgyshareacct", new KeyValue("REVITEM1e022843:141bb6db72b:2235", "BRGY. VILLAVERDE RPT SHARE (30%)") );
_p1.put( "expr", (new ActionExpression("( BASIC - BASICPAID - (BASICDISC - BASICDISCTAKEN)) * 0.30", bindings)) );
action.execute( "calc-brgyshare",_p1,drools);

end


	')
INSERT [dbo].[sys_rule_deployed] ([objid], [ruletext]) VALUES (N'RUL441bb08f:1436c079bff:-755d', N'
package rptbilling.LGU_SHARE;
import rptbilling.*;
import java.util.*;
import com.rameses.rules.common.*;

global RuleAction action;

rule "LGU_SHARE"
	agenda-group "LGU_SHARE"
	salience 50000
	no-loop
	when
		
		
		RL: RPTLedgerFact (  BASIC:basic,BASICDISC:basicdisc,BASICINT:basicint,BRGYSHARE:brgyshare,BRGYINTSHARE:brgyintshare,BASICPAID:basicpaid,BASICINTPAID:basicintpaid,BASICDISCTAKEN:basicdisctaken )
		
	then
		Map bindings = new HashMap();
		
		bindings.put("RL", RL );
		
		bindings.put("BASIC", BASIC );
		
		bindings.put("BASICDISC", BASICDISC );
		
		bindings.put("BASICINT", BASICINT );
		
		bindings.put("BRGYSHARE", BRGYSHARE );
		
		bindings.put("BRGYINTSHARE", BRGYINTSHARE );
		
		bindings.put("BASICPAID", BASICPAID );
		
		bindings.put("BASICINTPAID", BASICINTPAID );
		
		bindings.put("BASICDISCTAKEN", BASICDISCTAKEN );
		
	Map _p0 = new HashMap();
_p0.put( "rptledger", RL );
_p0.put( "expr", (new ActionExpression("BASICINT - BRGYINTSHARE - BASICINTPAID", bindings)) );
action.execute( "calc-lguint-share",_p0,drools);
Map _p1 = new HashMap();
_p1.put( "rptledger", RL );
_p1.put( "expr", (new ActionExpression("( BASIC - BASICPAID - (BASICDISC - BASICDISCTAKEN)) -  BRGYSHARE", bindings)) );
action.execute( "calc-lgushare",_p1,drools);

end


	')
INSERT [dbo].[sys_rule_deployed] ([objid], [ruletext]) VALUES (N'RUL-5287a583:143748e3d5b:-7caa', N'
package ctcindividual.ADDL_TAX_ADJ;
import ctcindividual.*;
import java.util.*;
import com.rameses.rules.common.*;

global RuleAction action;

rule "ADDL_TAX_ADJ"
	agenda-group "ADDITIONAL_TAX"
	salience 50000
	no-loop
	when
		
		
		CTC: IndividualCTC (  additional == true  )
		
	then
		Map bindings = new HashMap();
		
		bindings.put("CTC", CTC );
		
	Map _p0 = new HashMap();
_p0.put( "ctc", CTC );
_p0.put( "acct", new KeyValue("REVITEM217a91b:1409e6ae44e:-7d75", "COMMUNITY TAX INDIVIDUAL") );
_p0.put( "expr", (new ActionExpression("0.0", bindings)) );
action.execute( "calc-basic-tax",_p0,drools);

end


	')
INSERT [dbo].[sys_rule_deployed] ([objid], [ruletext]) VALUES (N'RUL52ab3945:14357604d15:-7c1a', N'
package rptbilling.STAGGERED_BASIC_SEF_2014;
import rptbilling.*;
import java.util.*;
import com.rameses.rules.common.*;

global RuleAction action;

rule "STAGGERED_BASIC_SEF_2014"
	agenda-group "AFTER_TAX"
	salience 50000
	no-loop
	when
		
		
		RL: RPTLedgerFact (  YR2014:year == 2014,AV:av,reclassed == true  )
		
		 CurrentDate (  year == YR2014 )
		
		 AssessedValueFact (  year == 2013,AV2013:assessedvalue )
		
	then
		Map bindings = new HashMap();
		
		bindings.put("RL", RL );
		
		bindings.put("YR2014", YR2014 );
		
		bindings.put("AV2013", AV2013 );
		
		bindings.put("AV", AV );
		
	Map _p0 = new HashMap();
_p0.put( "revtype", new KeyValue("current", "current") );
_p0.put( "basicacct", new KeyValue("REVITEM217a91b:1409e6ae44e:-7fb4", "RPT BASIC CURRENT") );
_p0.put( "expr", (new ActionExpression("( (AV2013 / 4.0) + ( AV - (AV2013 / 4.0) ) * 0.30 ) * 0.01375", bindings)) );
_p0.put( "rptledger", RL );
action.execute( "calc-basic",_p0,drools);
Map _p1 = new HashMap();
_p1.put( "sefacct", new KeyValue("REVITEM-1c2fcd63:140c2c7c557:-7f81", "RPT SEF CURRENT") );
_p1.put( "expr", (new ActionExpression("( (AV2013 / 4.0) + ( AV - (AV2013 / 4.0) ) * 0.30 ) * 0.01", bindings)) );
_p1.put( "rptledger", RL );
action.execute( "calc-sef",_p1,drools);

end


	')
INSERT [dbo].[sys_rule_deployed] ([objid], [ruletext]) VALUES (N'RUL53eaacea:143600ac457:-7fb2', N'
package bpinfo.ASK_OFFICE_TYPE;
import bpinfo.*;
import java.util.*;
import com.rameses.rules.common.*;

global RuleAction action;

rule "ASK_OFFICE_TYPE"
	agenda-group "default"
	salience 50000
	no-loop
	when
		
		
		 bpls.facts.BPApplication (  apptype matches "NEW|RENEW|RETIRE" )
		
	then
		Map bindings = new HashMap();
		
	Map _p0 = new HashMap();
_p0.put( "lob", null );
_p0.put( "attribute", new KeyValue("OFFICE_TYPE", "OFFICE_TYPE") );
_p0.put( "defaultvalue", "null" );
action.execute( "ask_business_info",_p0,drools);

end


	')
INSERT [dbo].[sys_rule_deployed] ([objid], [ruletext]) VALUES (N'RUL559c0dba:14361bac6db:-78df', N'
package ctccorporate.CTC_CORPORATION_INT;
import ctccorporate.*;
import java.util.*;
import com.rameses.rules.common.*;

global RuleAction action;

rule "CTC_CORPORATION_INT"
	agenda-group "INTEREST"
	salience 50000
	no-loop
	when
		
		
		CCTC: CorporateCTC (  TOTALTAX:totaltax )
		
		 CurrentDate (  CMON:month > 2 )
		
	then
		Map bindings = new HashMap();
		
		bindings.put("CCTC", CCTC );
		
		bindings.put("CMON", CMON );
		
		bindings.put("TOTALTAX", TOTALTAX );
		
	Map _p0 = new HashMap();
_p0.put( "ctc", CCTC );
_p0.put( "acct", new KeyValue("REVITEM217a91b:1409e6ae44e:-7d3e", "COMMUNITY TAX CORPORATION PENALTY") );
_p0.put( "expr", (new ActionExpression("TOTALTAX*CMON * 0.02", bindings)) );
action.execute( "calc-interest",_p0,drools);

end


	')
INSERT [dbo].[sys_rule_deployed] ([objid], [ruletext]) VALUES (N'RUL559c0dba:14361bac6db:-7ad6', N'
package ctccorporate.CTC_CORPORATION;
import ctccorporate.*;
import java.util.*;
import com.rameses.rules.common.*;

global RuleAction action;

rule "CTC_CORPORATION"
	agenda-group "TAX"
	salience 50000
	no-loop
	when
		
		
		CCTC: CorporateCTC (  BGROSS:businessgross,RPAV:realpropertyav )
		
	then
		Map bindings = new HashMap();
		
		bindings.put("CCTC", CCTC );
		
		bindings.put("BGROSS", BGROSS );
		
		bindings.put("RPAV", RPAV );
		
	Map _p0 = new HashMap();
_p0.put( "ctc", CCTC );
_p0.put( "expr", (new ActionExpression("RPAV/5000*2 > 10000 ? 10000.0 : RPAV/5000*2", bindings)) );
action.execute( "calc-propertyav-tax",_p0,drools);
Map _p1 = new HashMap();
_p1.put( "ctc", CCTC );
_p1.put( "expr", (new ActionExpression("BGROSS/5000*2 > 10000 ? 10000.0 : BGROSS/5000*2 ", bindings)) );
action.execute( "calc-businessgross-tax",_p1,drools);
Map _p2 = new HashMap();
_p2.put( "ctc", CCTC );
_p2.put( "acct", new KeyValue("REVITEM1cbd0ad1:140b8efe25c:-7e61", "COMMUNITY TAX - CORPORATION") );
_p2.put( "expr", (new ActionExpression("500", bindings)) );
action.execute( "calc-basic-tax",_p2,drools);

end


	')
INSERT [dbo].[sys_rule_deployed] ([objid], [ruletext]) VALUES (N'RUL559c0dba:14361bac6db:-7fd1', N'
package ctcindividual.CTC_INDIVIDUAL_INTEREST;
import ctcindividual.*;
import java.util.*;
import com.rameses.rules.common.*;

global RuleAction action;

rule "CTC_INDIVIDUAL_INTEREST"
	agenda-group "INTEREST"
	salience 50000
	no-loop
	when
		
		
		CTCI: IndividualCTC (  TOTALTAX:totaltax )
		
		 CurrentDate (  CMON:month > 2 )
		
	then
		Map bindings = new HashMap();
		
		bindings.put("CTCI", CTCI );
		
		bindings.put("CMON", CMON );
		
		bindings.put("TOTALTAX", TOTALTAX );
		
	Map _p0 = new HashMap();
_p0.put( "ctc", CTCI );
_p0.put( "acct", new KeyValue("REVITEM217a91b:1409e6ae44e:-7d6b", "COMMUNITY TAX - INDIVIDUAL PENALTY") );
_p0.put( "expr", (new ActionExpression("TOTALTAX*CMON*0.02", bindings)) );
action.execute( "calc-interest",_p0,drools);

end


	')
INSERT [dbo].[sys_rule_deployed] ([objid], [ruletext]) VALUES (N'RUL6d66cc31:1446cc9522e:-7bb3', N'
package rptrequirement.COMMON_REQUIREMENTS;
import rptrequirement.*;
import java.util.*;
import com.rameses.rules.common.*;

global RuleAction action;

rule "COMMON_REQUIREMENTS"
	agenda-group "REQUIREMENT"
	salience 50000
	no-loop
	when
		
		
		 RPTTxnInfoFact (   )
		
	then
		Map bindings = new HashMap();
		
	Map _p0 = new HashMap();
_p0.put( "requirementtype", new KeyValue("RT6d66cc31:1446cc9522e:-7b1c", "APPROVED PLAN") );
action.execute( "add-requirement",_p0,drools);
Map _p1 = new HashMap();
_p1.put( "requirementtype", new KeyValue("RT6d66cc31:1446cc9522e:-7b43", "TRANSFER TAX") );
action.execute( "add-requirement",_p1,drools);
Map _p2 = new HashMap();
_p2.put( "requirementtype", new KeyValue("RT6d66cc31:1446cc9522e:-7b51", "TITLE") );
action.execute( "add-requirement",_p2,drools);
Map _p3 = new HashMap();
_p3.put( "requirementtype", new KeyValue("RT6d66cc31:1446cc9522e:-7b36", "TAX CLEARANCE") );
action.execute( "add-requirement",_p3,drools);

end


	')
INSERT [dbo].[sys_rule_deployed] ([objid], [ruletext]) VALUES (N'RUL-727f5592:144018f96a2:-7f25', N'
package bpinfo.ASKS_IF_LOCATED_ON_NIGHT_MARKET;
import bpinfo.*;
import java.util.*;
import com.rameses.rules.common.*;

global RuleAction action;

rule "ASKS_IF_LOCATED_ON_NIGHT_MARKET"
	agenda-group "default"
	salience 50000
	no-loop
	when
		
		
		 bpls.facts.BusinessInfo (  name=="LOCATED_ON_GOVERNMENT_PROPERTY" ,lob == null,LOCATED_ON_GOVERNMENT_PROPERTY:booleanvalue == true  )
		
	then
		Map bindings = new HashMap();
		
		bindings.put("LOCATED_ON_GOVERNMENT_PROPERTY", LOCATED_ON_GOVERNMENT_PROPERTY );
		
	Map _p0 = new HashMap();
_p0.put( "lob", null );
_p0.put( "attribute", new KeyValue("LOCATED_ON_NIGHTMARKET", "LOCATED_ON_NIGHTMARKET") );
_p0.put( "defaultvalue", "false" );
action.execute( "ask_business_info",_p0,drools);

end


	')
INSERT [dbo].[sys_rule_deployed] ([objid], [ruletext]) VALUES (N'RUL-72a9958a:141e4770339:-6728', N'
package rptbilling.BASIC_SEF_CURRENT_DISCOUNT;
import rptbilling.*;
import java.util.*;
import com.rameses.rules.common.*;

global RuleAction action;

rule "BASIC_SEF_CURRENT_DISCOUNT"
	agenda-group "DISCOUNT"
	salience 50000
	no-loop
	when
		EffectiveDate(numericDate >= 20131023)
		
		 CurrentDate (  CY:year,CQTR:qtr )
		
		RL: RPTLedgerFact (  year == CY,qtr >= CQTR,BASIC:basic,SEF:sef )
		
	then
		Map bindings = new HashMap();
		
		bindings.put("CY", CY );
		
		bindings.put("RL", RL );
		
		bindings.put("CQTR", CQTR );
		
		bindings.put("BASIC", BASIC );
		
		bindings.put("SEF", SEF );
		
	Map _p0 = new HashMap();
_p0.put( "expr", (new ActionExpression("SEF * 0.10", bindings)) );
_p0.put( "rptledger", RL );
action.execute( "calc-sefdisc",_p0,drools);
Map _p1 = new HashMap();
_p1.put( "expr", (new ActionExpression("BASIC * 0.10", bindings)) );
_p1.put( "rptledger", RL );
action.execute( "calc-basicdisc",_p1,drools);

end


	')
INSERT [dbo].[sys_rule_deployed] ([objid], [ruletext]) VALUES (N'RUL-7c13908b:1435065d2a1:-66d7', N'
package rptbilling.BASIC_SEF_PREVIOUS_TAX;
import rptbilling.*;
import java.util.*;
import com.rameses.rules.common.*;

global RuleAction action;

rule "BASIC_SEF_PREVIOUS_TAX"
	agenda-group "TAX"
	salience 50000
	no-loop
	when
		
		
		 CurrentDate (  CY:year )
		
		RL: RPTLedgerFact (  year < CY,AV:av )
		
	then
		Map bindings = new HashMap();
		
		bindings.put("CY", CY );
		
		bindings.put("RL", RL );
		
		bindings.put("AV", AV );
		
	Map _p0 = new HashMap();
_p0.put( "sefacct", new KeyValue("REVITEM-1c2fcd63:140c2c7c557:-7f79", "RPT SEF PRIOR YEAR/S") );
_p0.put( "expr", (new ActionExpression("AV * 0.01", bindings)) );
_p0.put( "rptledger", RL );
action.execute( "calc-sef",_p0,drools);
Map _p1 = new HashMap();
_p1.put( "revtype", new KeyValue("previous", "previous") );
_p1.put( "basicacct", new KeyValue("REVITEM217a91b:1409e6ae44e:-7faf", "RPT BASIC PRIOR YEAR/S") );
_p1.put( "expr", (new ActionExpression("AV * 0.0125", bindings)) );
_p1.put( "rptledger", RL );
action.execute( "calc-basic",_p1,drools);

end


	')
INSERT [dbo].[sys_rule_deployed] ([objid], [ruletext]) VALUES (N'RUL-7e9d4ac4:1421b9d7ba4:-7d51', N'
package rptbilling.BASIC_SEF_DISCOUNT_FULLPAYMENT;
import rptbilling.*;
import java.util.*;
import com.rameses.rules.common.*;

global RuleAction action;

rule "BASIC_SEF_DISCOUNT_FULLPAYMENT"
	agenda-group "AFTER_DISCOUNT"
	salience 50000
	no-loop
	when
		
		
		 CurrentDate (  CY:year,month == 1 )
		
		RL: RPTLedgerFact (  year == CY,BASIC:basic,SEF:sef,qtrlypaymentavailed == false  )
		
	then
		Map bindings = new HashMap();
		
		bindings.put("CY", CY );
		
		bindings.put("RL", RL );
		
		bindings.put("BASIC", BASIC );
		
		bindings.put("SEF", SEF );
		
	Map _p0 = new HashMap();
_p0.put( "expr", (new ActionExpression("SEF * 0.15", bindings)) );
_p0.put( "rptledger", RL );
action.execute( "calc-sefdisc",_p0,drools);
Map _p1 = new HashMap();
_p1.put( "expr", (new ActionExpression("BASIC * 0.15", bindings)) );
_p1.put( "rptledger", RL );
action.execute( "calc-basicdisc",_p1,drools);

end


	')
INSERT [dbo].[sys_rule_deployed] ([objid], [ruletext]) VALUES (N'RULaa4e683:143e6f7bbf2:-69f4', N'
package rptbilling.DISCOUNT_EXTENSION;
import rptbilling.*;
import java.util.*;
import com.rameses.rules.common.*;

global RuleAction action;

rule "DISCOUNT_EXTENSION"
	agenda-group "AFTER_DISCOUNT"
	salience 50000
	no-loop
	when
		
		
		 CurrentDate (  CY:year,month == 2 )
		
		RL: RPTLedgerFact (  year == CY,BASIC:basic,SEF:sef,qtrlypaymentavailed == false  )
		
	then
		Map bindings = new HashMap();
		
		bindings.put("CY", CY );
		
		bindings.put("BASIC", BASIC );
		
		bindings.put("RL", RL );
		
		bindings.put("SEF", SEF );
		
	Map _p0 = new HashMap();
_p0.put( "expr", (new ActionExpression("SEF * 0.15", bindings)) );
_p0.put( "rptledger", RL );
action.execute( "calc-sefdisc",_p0,drools);
Map _p1 = new HashMap();
_p1.put( "expr", (new ActionExpression("BASIC * 0.15", bindings)) );
_p1.put( "rptledger", RL );
action.execute( "calc-basicdisc",_p1,drools);

end


	')
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCOND-20919e10:141e3f76dc8:-64b1', N'RCOND-20919e10:141e3f76dc8:-64b1', N'RUL-20919e10:141e3f76dc8:-651b', N'RL', N'RPTLedgerFact', 1)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCOND-20919e10:141e3f76dc8:-7715', N'RCOND-20919e10:141e3f76dc8:-7715', N'RUL-20919e10:141e3f76dc8:-777f', N'RL', N'RPTLedgerFact', 1)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCOND-20919e10:141e3f76dc8:-7b76', N'RCOND-20919e10:141e3f76dc8:-7b76', N'RUL-20919e10:141e3f76dc8:-7be8', N'RL', N'RPTLedgerFact', 1)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCOND-20919e10:141e3f76dc8:-7de5', N'RCOND-20919e10:141e3f76dc8:-7de5', N'RUL-20919e10:141e3f76dc8:-7e4f', N'RL', N'RPTLedgerFact', 1)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCOND270217d9:143576614a1:-7c0e', N'RCOND270217d9:143576614a1:-7c0e', N'RUL270217d9:143576614a1:-7c3c', N'RL', N'RPTLedgerFact', 0)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCOND270217d9:143576614a1:-7f4d', N'RCOND270217d9:143576614a1:-7f4d', N'RUL52ab3945:14357604d15:-7c1a', N'RL', N'RPTLedgerFact', 0)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCOND29ba689e:144612b8ef4:-79fe', N'RCOND29ba689e:144612b8ef4:-79fe', N'RUL29ba689e:144612b8ef4:-7def', N'RL', N'RPTLedgerFact', 1)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCOND-2a4d2fa5:1422bad4acc:-7919', N'RCOND-2a4d2fa5:1422bad4acc:-7919', N'RUL-2a4d2fa5:1422bad4acc:-7957', N'RL', N'RPTLedgerFact', 0)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCOND441bb08f:1436c079bff:-6f73', N'RCOND441bb08f:1436c079bff:-6f73', N'RUL441bb08f:1436c079bff:-6fa7', N'RL', N'RPTLedgerFact', 0)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCOND441bb08f:1436c079bff:-6f73-0002', N'RCOND441bb08f:1436c079bff:-6f73-0002', N'RUL441bb08f:1436c079bff:-6fa7-0002', N'RL', N'RPTLedgerFact', 0)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCOND441bb08f:1436c079bff:-6f73-0003', N'RCOND441bb08f:1436c079bff:-6f73-0003', N'RUL441bb08f:1436c079bff:-6fa7-0003', N'RL', N'RPTLedgerFact', 0)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCOND441bb08f:1436c079bff:-6f73-0004', N'RCOND441bb08f:1436c079bff:-6f73-0004', N'RUL441bb08f:1436c079bff:-6fa7-0004', N'RL', N'RPTLedgerFact', 0)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCOND441bb08f:1436c079bff:-6f73-0005', N'RCOND441bb08f:1436c079bff:-6f73-0005', N'RUL441bb08f:1436c079bff:-6fa7-0005', N'RL', N'RPTLedgerFact', 0)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCOND441bb08f:1436c079bff:-6f73-0006', N'RCOND441bb08f:1436c079bff:-6f73-0006', N'RUL441bb08f:1436c079bff:-6fa7-0006', N'RL', N'RPTLedgerFact', 0)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCOND441bb08f:1436c079bff:-6f73-0007', N'RCOND441bb08f:1436c079bff:-6f73-0007', N'RUL441bb08f:1436c079bff:-6fa7-0007', N'RL', N'RPTLedgerFact', 0)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCOND441bb08f:1436c079bff:-6f73-0008', N'RCOND441bb08f:1436c079bff:-6f73-0008', N'RUL441bb08f:1436c079bff:-6fa7-0008', N'RL', N'RPTLedgerFact', 0)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCOND441bb08f:1436c079bff:-6f73-0009', N'RCOND441bb08f:1436c079bff:-6f73-0009', N'RUL441bb08f:1436c079bff:-6fa7-0009', N'RL', N'RPTLedgerFact', 0)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCOND441bb08f:1436c079bff:-6f73-0010', N'RCOND441bb08f:1436c079bff:-6f73-0010', N'RUL441bb08f:1436c079bff:-6fa7-0010', N'RL', N'RPTLedgerFact', 0)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCOND441bb08f:1436c079bff:-6f73-0011', N'RCOND441bb08f:1436c079bff:-6f73-0011', N'RUL441bb08f:1436c079bff:-6fa7-0011', N'RL', N'RPTLedgerFact', 0)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCOND441bb08f:1436c079bff:-6f73-0012', N'RCOND441bb08f:1436c079bff:-6f73-0012', N'RUL441bb08f:1436c079bff:-6fa7-0012', N'RL', N'RPTLedgerFact', 0)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCOND441bb08f:1436c079bff:-6f73-0013', N'RCOND441bb08f:1436c079bff:-6f73-0013', N'RUL441bb08f:1436c079bff:-6fa7-0013', N'RL', N'RPTLedgerFact', 0)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCOND441bb08f:1436c079bff:-6f73-0014', N'RCOND441bb08f:1436c079bff:-6f73-0014', N'RUL441bb08f:1436c079bff:-6fa7-0014', N'RL', N'RPTLedgerFact', 0)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCOND441bb08f:1436c079bff:-6f73-0015', N'RCOND441bb08f:1436c079bff:-6f73-0015', N'RUL441bb08f:1436c079bff:-6fa7-0015', N'RL', N'RPTLedgerFact', 0)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCOND441bb08f:1436c079bff:-6f73-0016', N'RCOND441bb08f:1436c079bff:-6f73-0016', N'RUL441bb08f:1436c079bff:-6fa7-0016', N'RL', N'RPTLedgerFact', 0)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCOND441bb08f:1436c079bff:-6f73-0017', N'RCOND441bb08f:1436c079bff:-6f73-0017', N'RUL441bb08f:1436c079bff:-6fa7-0017', N'RL', N'RPTLedgerFact', 0)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCOND441bb08f:1436c079bff:-6f73-0018', N'RCOND441bb08f:1436c079bff:-6f73-0018', N'RUL441bb08f:1436c079bff:-6fa7-0018', N'RL', N'RPTLedgerFact', 0)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCOND441bb08f:1436c079bff:-6f73-0019', N'RCOND441bb08f:1436c079bff:-6f73-0019', N'RUL441bb08f:1436c079bff:-6fa7-0019', N'RL', N'RPTLedgerFact', 0)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCOND441bb08f:1436c079bff:-6f73-0020', N'RCOND441bb08f:1436c079bff:-6f73-0020', N'RUL441bb08f:1436c079bff:-6fa7-0020', N'RL', N'RPTLedgerFact', 0)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCOND441bb08f:1436c079bff:-6f73-0021', N'RCOND441bb08f:1436c079bff:-6f73-0021', N'RUL441bb08f:1436c079bff:-6fa7-0021', N'RL', N'RPTLedgerFact', 0)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCOND441bb08f:1436c079bff:-6f73-0022', N'RCOND441bb08f:1436c079bff:-6f73-0022', N'RUL441bb08f:1436c079bff:-6fa7-0022', N'RL', N'RPTLedgerFact', 0)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCOND441bb08f:1436c079bff:-6f73-0023', N'RCOND441bb08f:1436c079bff:-6f73-0023', N'RUL441bb08f:1436c079bff:-6fa7-0023', N'RL', N'RPTLedgerFact', 0)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCOND441bb08f:1436c079bff:-6f73-0024', N'RCOND441bb08f:1436c079bff:-6f73-0024', N'RUL441bb08f:1436c079bff:-6fa7-0024', N'RL', N'RPTLedgerFact', 0)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCOND441bb08f:1436c079bff:-6f73-0025', N'RCOND441bb08f:1436c079bff:-6f73-0025', N'RUL441bb08f:1436c079bff:-6fa7-0025', N'RL', N'RPTLedgerFact', 0)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCOND441bb08f:1436c079bff:-6f73-0026', N'RCOND441bb08f:1436c079bff:-6f73-0026', N'RUL441bb08f:1436c079bff:-6fa7-0026', N'RL', N'RPTLedgerFact', 0)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCOND441bb08f:1436c079bff:-6f73-0027', N'RCOND441bb08f:1436c079bff:-6f73-0027', N'RUL441bb08f:1436c079bff:-6fa7-0027', N'RL', N'RPTLedgerFact', 0)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCOND441bb08f:1436c079bff:-6f73-0028', N'RCOND441bb08f:1436c079bff:-6f73-0028', N'RUL441bb08f:1436c079bff:-6fa7-0028', N'RL', N'RPTLedgerFact', 0)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCOND441bb08f:1436c079bff:-6f73-0029', N'RCOND441bb08f:1436c079bff:-6f73-0029', N'RUL441bb08f:1436c079bff:-6fa7-0029', N'RL', N'RPTLedgerFact', 0)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCOND441bb08f:1436c079bff:-6f73-0030', N'RCOND441bb08f:1436c079bff:-6f73-0030', N'RUL441bb08f:1436c079bff:-6fa7-0030', N'RL', N'RPTLedgerFact', 0)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCOND441bb08f:1436c079bff:-6f73-0031', N'RCOND441bb08f:1436c079bff:-6f73-0031', N'RUL441bb08f:1436c079bff:-6fa7-0031', N'RL', N'RPTLedgerFact', 0)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCOND441bb08f:1436c079bff:-6f73-0032', N'RCOND441bb08f:1436c079bff:-6f73-0032', N'RUL441bb08f:1436c079bff:-6fa7-0032', N'RL', N'RPTLedgerFact', 0)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCOND441bb08f:1436c079bff:-6f73-0033', N'RCOND441bb08f:1436c079bff:-6f73-0033', N'RUL441bb08f:1436c079bff:-6fa7-0033', N'RL', N'RPTLedgerFact', 0)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCOND441bb08f:1436c079bff:-6f73-0034', N'RCOND441bb08f:1436c079bff:-6f73-0034', N'RUL441bb08f:1436c079bff:-6fa7-0034', N'RL', N'RPTLedgerFact', 0)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCOND441bb08f:1436c079bff:-6f73-0035', N'RCOND441bb08f:1436c079bff:-6f73-0035', N'RUL441bb08f:1436c079bff:-6fa7-0035', N'RL', N'RPTLedgerFact', 0)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCOND441bb08f:1436c079bff:-6f73-0036', N'RCOND441bb08f:1436c079bff:-6f73-0036', N'RUL441bb08f:1436c079bff:-6fa7-0036', N'RL', N'RPTLedgerFact', 0)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCOND441bb08f:1436c079bff:-6f73-0037', N'RCOND441bb08f:1436c079bff:-6f73-0037', N'RUL441bb08f:1436c079bff:-6fa7-0037', N'RL', N'RPTLedgerFact', 0)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCOND441bb08f:1436c079bff:-6f73-0038', N'RCOND441bb08f:1436c079bff:-6f73-0038', N'RUL441bb08f:1436c079bff:-6fa7-0038', N'RL', N'RPTLedgerFact', 0)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCOND441bb08f:1436c079bff:-6f73-0039', N'RCOND441bb08f:1436c079bff:-6f73-0039', N'RUL441bb08f:1436c079bff:-6fa7-0039', N'RL', N'RPTLedgerFact', 0)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCOND441bb08f:1436c079bff:-6f73-0040', N'RCOND441bb08f:1436c079bff:-6f73-0040', N'RUL441bb08f:1436c079bff:-6fa7-0040', N'RL', N'RPTLedgerFact', 0)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCOND441bb08f:1436c079bff:-6f73-0041', N'RCOND441bb08f:1436c079bff:-6f73-0041', N'RUL441bb08f:1436c079bff:-6fa7-0041', N'RL', N'RPTLedgerFact', 0)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCOND441bb08f:1436c079bff:-6f73-0042', N'RCOND441bb08f:1436c079bff:-6f73-0042', N'RUL441bb08f:1436c079bff:-6fa7-0042', N'RL', N'RPTLedgerFact', 0)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCOND441bb08f:1436c079bff:-6f73-0043', N'RCOND441bb08f:1436c079bff:-6f73-0043', N'RUL441bb08f:1436c079bff:-6fa7-0043', N'RL', N'RPTLedgerFact', 0)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCOND441bb08f:1436c079bff:-6f73-0044', N'RCOND441bb08f:1436c079bff:-6f73-0044', N'RUL441bb08f:1436c079bff:-6fa7-0044', N'RL', N'RPTLedgerFact', 0)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCOND441bb08f:1436c079bff:-7529', N'RCOND441bb08f:1436c079bff:-7529', N'RUL441bb08f:1436c079bff:-755d', N'RL', N'RPTLedgerFact', 0)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCOND-5287a583:143748e3d5b:-7c7c', N'RCOND-5287a583:143748e3d5b:-7c7c', N'RUL-5287a583:143748e3d5b:-7caa', N'CTC', N'IndividualCTC', 0)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCOND559c0dba:14361bac6db:-78b0', N'RCOND559c0dba:14361bac6db:-78b0', N'RUL559c0dba:14361bac6db:-78df', N'CCTC', N'CorporateCTC', 0)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCOND559c0dba:14361bac6db:-7aaf', N'RCOND559c0dba:14361bac6db:-7aaf', N'RUL559c0dba:14361bac6db:-7ad6', N'CCTC', N'CorporateCTC', 0)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCOND559c0dba:14361bac6db:-7f5b', N'RCOND559c0dba:14361bac6db:-7f5b', N'RUL559c0dba:14361bac6db:-7fd1', N'CTCI', N'IndividualCTC', 0)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCOND-70b3ef1:142f01dbd80:-7fc4', N'RCOND-70b3ef1:142f01dbd80:-7fc4', N'RUL4258911a:142f00f9c9e:-7f92', N'CTCI', N'IndividualCTC', 0)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCOND-72a9958a:141e4770339:-6684', N'RCOND-72a9958a:141e4770339:-6684', N'RUL-72a9958a:141e4770339:-6728', N'RL', N'RPTLedgerFact', 1)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCOND-72a9958a:141e4770339:-7a15', N'RCOND-72a9958a:141e4770339:-7a15', N'RUL-20919e10:141e3f76dc8:-6107', N'RL', N'RPTLedgerFact', 1)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCOND-72a9958a:141e4770339:-7f00', N'RCOND-72a9958a:141e4770339:-7f00', N'RUL-20919e10:141e3f76dc8:-6fa4', N'RL', N'RPTLedgerFact', 1)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCOND-7c13908b:1435065d2a1:-661a', N'RCOND-7c13908b:1435065d2a1:-661a', N'RUL-7c13908b:1435065d2a1:-66d7', N'RL', N'RPTLedgerFact', 1)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCOND-7e9d4ac4:1421b9d7ba4:-7c48', N'RCOND-7e9d4ac4:1421b9d7ba4:-7c48', N'RUL-7e9d4ac4:1421b9d7ba4:-7d51', N'RL', N'RPTLedgerFact', 1)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONDaa4e683:143e6f7bbf2:-693d', N'RCONDaa4e683:143e6f7bbf2:-693d', N'RULaa4e683:143e6f7bbf2:-69f4', N'RL', N'RPTLedgerFact', 1)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST-111ed864:1437daca74c:-33c2', N'RCOND-111ed864:1437daca74c:-33c8', N'RUL36552f88:142c18ff1a4:-7f16', N'IS_LOCATED_IN_ILIGAN', N'boolean', 1)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST-111ed864:1437daca74c:-3a70', N'RCOND-111ed864:1437daca74c:-3a76', N'RUL-111ed864:1437daca74c:-3aa5', N'IS_LOCATED_IN_ILIGAN', N'boolean', 1)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST-111ed864:1437daca74c:-3fb7', N'RCOND-111ed864:1437daca74c:-3fbd', N'RUL-111ed864:1437daca74c:-4082', N'LOCATED_ON_GOVERNMENT_PROPERTY', N'boolean', 1)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST-111ed864:1437daca74c:-497d', N'RCOND-111ed864:1437daca74c:-4983', N'RUL-111ed864:1437daca74c:-49b1', N'IS_LOCATED_IN_ILIGAN', N'boolean', 1)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST1dc7a3de:142b70df9f8:-7f0e', N'RCOND1dc7a3de:142b70df9f8:-7f13', N'RUL1dc7a3de:142b70df9f8:-7fb7', N'NUM_EMPLOYEE_FEMALE', N'integer', 0)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST1dc7a3de:142b70df9f8:-7f59', N'RCOND1dc7a3de:142b70df9f8:-7f5e', N'RUL1dc7a3de:142b70df9f8:-7fb7', N'NUM_EMPLOYEE_MALE', N'integer', 0)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST-20919e10:141e3f76dc8:-6348', N'RCOND-20919e10:141e3f76dc8:-64b1', N'RUL-20919e10:141e3f76dc8:-651b', N'SEF', N'decimal', 2)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST-20919e10:141e3f76dc8:-63c3', N'RCOND-20919e10:141e3f76dc8:-64b1', N'RUL-20919e10:141e3f76dc8:-651b', N'BASIC', N'decimal', 1)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST-20919e10:141e3f76dc8:-64d9', N'RCOND-20919e10:141e3f76dc8:-64eb', N'RUL-20919e10:141e3f76dc8:-651b', N'CY', N'integer', 0)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST-20919e10:141e3f76dc8:-6ccb', N'RCOND-20919e10:141e3f76dc8:-6cfe', N'RUL-20919e10:141e3f76dc8:-6fa4', N'CQTR', N'integer', 1)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST-20919e10:141e3f76dc8:-6cec', N'RCOND-20919e10:141e3f76dc8:-6cfe', N'RUL-20919e10:141e3f76dc8:-6fa4', N'CY', N'integer', 0)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST-20919e10:141e3f76dc8:-7522', N'RCOND-20919e10:141e3f76dc8:-7715', N'RUL-20919e10:141e3f76dc8:-777f', N'NMON', N'integer', 3)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST-20919e10:141e3f76dc8:-75ae', N'RCOND-20919e10:141e3f76dc8:-7715', N'RUL-20919e10:141e3f76dc8:-777f', N'SEF', N'decimal', 2)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST-20919e10:141e3f76dc8:-7629', N'RCOND-20919e10:141e3f76dc8:-7715', N'RUL-20919e10:141e3f76dc8:-777f', N'BASIC', N'decimal', 1)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST-20919e10:141e3f76dc8:-773d', N'RCOND-20919e10:141e3f76dc8:-774f', N'RUL-20919e10:141e3f76dc8:-777f', N'CY', N'integer', 0)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST-20919e10:141e3f76dc8:-7a2e', N'RCOND-20919e10:141e3f76dc8:-7b76', N'RUL-20919e10:141e3f76dc8:-7be8', N'AV', N'decimal', 1)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST-20919e10:141e3f76dc8:-7b9e', N'RCOND-20919e10:141e3f76dc8:-7bb8', N'RUL-20919e10:141e3f76dc8:-7be8', N'CY', N'integer', 0)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST-20919e10:141e3f76dc8:-7ce4', N'RCOND-20919e10:141e3f76dc8:-7de5', N'RUL-20919e10:141e3f76dc8:-7e4f', N'AV', N'decimal', 1)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST-20919e10:141e3f76dc8:-7e0d', N'RCOND-20919e10:141e3f76dc8:-7e1f', N'RUL-20919e10:141e3f76dc8:-7e4f', N'CY', N'integer', 0)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST270217d9:143576614a1:-7a25', N'RCOND270217d9:143576614a1:-7a52', N'RUL270217d9:143576614a1:-7c3c', N'AV2013', N'decimal', 1)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST270217d9:143576614a1:-7b5d', N'RCOND270217d9:143576614a1:-7c0e', N'RUL270217d9:143576614a1:-7c3c', N'AV', N'decimal', 1)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST270217d9:143576614a1:-7bbd', N'RCOND270217d9:143576614a1:-7c0e', N'RUL270217d9:143576614a1:-7c3c', N'YR2015', N'integer', 0)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST270217d9:143576614a1:-7d5c', N'RCOND270217d9:143576614a1:-7d89', N'RUL52ab3945:14357604d15:-7c1a', N'AV2013', N'decimal', 1)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST270217d9:143576614a1:-7e9c', N'RCOND270217d9:143576614a1:-7f4d', N'RUL52ab3945:14357604d15:-7c1a', N'AV', N'decimal', 1)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST270217d9:143576614a1:-7efc', N'RCOND270217d9:143576614a1:-7f4d', N'RUL52ab3945:14357604d15:-7c1a', N'YR2014', N'integer', 0)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST29ba689e:144612b8ef4:-7a29', N'RCOND29ba689e:144612b8ef4:-7a3b', N'RUL29ba689e:144612b8ef4:-7def', N'CY', N'integer', 0)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST-2a4d2fa5:1422bad4acc:-77c3', N'RCOND-2a4d2fa5:1422bad4acc:-7919', N'RUL-2a4d2fa5:1422bad4acc:-7957', N'SEF', N'decimal', 2)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST-335216e7:142b6e37e20:-7dcb', N'RCOND-335216e7:142b6e37e20:-7dd0', N'RUL41c8b101:142adfe2a5c:-7ce7', N'IS_RENTED', N'boolean', 0)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST41c8b101:142adfe2a5c:-7a84', N'RCOND41c8b101:142adfe2a5c:-7a8a', N'RUL41c8b101:142adfe2a5c:-7b59', N'HAS_TAX_INCENTIVE', N'boolean', 1)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6d5a', N'RCOND441bb08f:1436c079bff:-6f73', N'RUL441bb08f:1436c079bff:-6fa7', N'BASICINT', N'decimal', 3)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6d5a-0002', N'RCOND441bb08f:1436c079bff:-6f73-0002', N'RUL441bb08f:1436c079bff:-6fa7-0002', N'BASICINT', N'decimal', 3)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6d5a-0003', N'RCOND441bb08f:1436c079bff:-6f73-0003', N'RUL441bb08f:1436c079bff:-6fa7-0003', N'BASICINT', N'decimal', 3)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6d5a-0004', N'RCOND441bb08f:1436c079bff:-6f73-0004', N'RUL441bb08f:1436c079bff:-6fa7-0004', N'BASICINT', N'decimal', 3)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6d5a-0005', N'RCOND441bb08f:1436c079bff:-6f73-0005', N'RUL441bb08f:1436c079bff:-6fa7-0005', N'BASICINT', N'decimal', 3)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6d5a-0006', N'RCOND441bb08f:1436c079bff:-6f73-0006', N'RUL441bb08f:1436c079bff:-6fa7-0006', N'BASICINT', N'decimal', 3)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6d5a-0007', N'RCOND441bb08f:1436c079bff:-6f73-0007', N'RUL441bb08f:1436c079bff:-6fa7-0007', N'BASICINT', N'decimal', 3)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6d5a-0008', N'RCOND441bb08f:1436c079bff:-6f73-0008', N'RUL441bb08f:1436c079bff:-6fa7-0008', N'BASICINT', N'decimal', 3)
GO
print 'Processed 100 total records'
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6d5a-0009', N'RCOND441bb08f:1436c079bff:-6f73-0009', N'RUL441bb08f:1436c079bff:-6fa7-0009', N'BASICINT', N'decimal', 3)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6d5a-0010', N'RCOND441bb08f:1436c079bff:-6f73-0010', N'RUL441bb08f:1436c079bff:-6fa7-0010', N'BASICINT', N'decimal', 3)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6d5a-0011', N'RCOND441bb08f:1436c079bff:-6f73-0011', N'RUL441bb08f:1436c079bff:-6fa7-0011', N'BASICINT', N'decimal', 3)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6d5a-0012', N'RCOND441bb08f:1436c079bff:-6f73-0012', N'RUL441bb08f:1436c079bff:-6fa7-0012', N'BASICINT', N'decimal', 3)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6d5a-0013', N'RCOND441bb08f:1436c079bff:-6f73-0013', N'RUL441bb08f:1436c079bff:-6fa7-0013', N'BASICINT', N'decimal', 3)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6d5a-0014', N'RCOND441bb08f:1436c079bff:-6f73-0014', N'RUL441bb08f:1436c079bff:-6fa7-0014', N'BASICINT', N'decimal', 3)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6d5a-0015', N'RCOND441bb08f:1436c079bff:-6f73-0015', N'RUL441bb08f:1436c079bff:-6fa7-0015', N'BASICINT', N'decimal', 3)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6d5a-0016', N'RCOND441bb08f:1436c079bff:-6f73-0016', N'RUL441bb08f:1436c079bff:-6fa7-0016', N'BASICINT', N'decimal', 3)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6d5a-0017', N'RCOND441bb08f:1436c079bff:-6f73-0017', N'RUL441bb08f:1436c079bff:-6fa7-0017', N'BASICINT', N'decimal', 3)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6d5a-0018', N'RCOND441bb08f:1436c079bff:-6f73-0018', N'RUL441bb08f:1436c079bff:-6fa7-0018', N'BASICINT', N'decimal', 3)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6d5a-0019', N'RCOND441bb08f:1436c079bff:-6f73-0019', N'RUL441bb08f:1436c079bff:-6fa7-0019', N'BASICINT', N'decimal', 3)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6d5a-0020', N'RCOND441bb08f:1436c079bff:-6f73-0020', N'RUL441bb08f:1436c079bff:-6fa7-0020', N'BASICINT', N'decimal', 3)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6d5a-0021', N'RCOND441bb08f:1436c079bff:-6f73-0021', N'RUL441bb08f:1436c079bff:-6fa7-0021', N'BASICINT', N'decimal', 3)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6d5a-0022', N'RCOND441bb08f:1436c079bff:-6f73-0022', N'RUL441bb08f:1436c079bff:-6fa7-0022', N'BASICINT', N'decimal', 3)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6d5a-0023', N'RCOND441bb08f:1436c079bff:-6f73-0023', N'RUL441bb08f:1436c079bff:-6fa7-0023', N'BASICINT', N'decimal', 3)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6d5a-0024', N'RCOND441bb08f:1436c079bff:-6f73-0024', N'RUL441bb08f:1436c079bff:-6fa7-0024', N'BASICINT', N'decimal', 3)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6d5a-0025', N'RCOND441bb08f:1436c079bff:-6f73-0025', N'RUL441bb08f:1436c079bff:-6fa7-0025', N'BASICINT', N'decimal', 3)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6d5a-0026', N'RCOND441bb08f:1436c079bff:-6f73-0026', N'RUL441bb08f:1436c079bff:-6fa7-0026', N'BASICINT', N'decimal', 3)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6d5a-0027', N'RCOND441bb08f:1436c079bff:-6f73-0027', N'RUL441bb08f:1436c079bff:-6fa7-0027', N'BASICINT', N'decimal', 3)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6d5a-0028', N'RCOND441bb08f:1436c079bff:-6f73-0028', N'RUL441bb08f:1436c079bff:-6fa7-0028', N'BASICINT', N'decimal', 3)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6d5a-0029', N'RCOND441bb08f:1436c079bff:-6f73-0029', N'RUL441bb08f:1436c079bff:-6fa7-0029', N'BASICINT', N'decimal', 3)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6d5a-0030', N'RCOND441bb08f:1436c079bff:-6f73-0030', N'RUL441bb08f:1436c079bff:-6fa7-0030', N'BASICINT', N'decimal', 3)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6d5a-0031', N'RCOND441bb08f:1436c079bff:-6f73-0031', N'RUL441bb08f:1436c079bff:-6fa7-0031', N'BASICINT', N'decimal', 3)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6d5a-0032', N'RCOND441bb08f:1436c079bff:-6f73-0032', N'RUL441bb08f:1436c079bff:-6fa7-0032', N'BASICINT', N'decimal', 3)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6d5a-0033', N'RCOND441bb08f:1436c079bff:-6f73-0033', N'RUL441bb08f:1436c079bff:-6fa7-0033', N'BASICINT', N'decimal', 3)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6d5a-0034', N'RCOND441bb08f:1436c079bff:-6f73-0034', N'RUL441bb08f:1436c079bff:-6fa7-0034', N'BASICINT', N'decimal', 3)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6d5a-0035', N'RCOND441bb08f:1436c079bff:-6f73-0035', N'RUL441bb08f:1436c079bff:-6fa7-0035', N'BASICINT', N'decimal', 3)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6d5a-0036', N'RCOND441bb08f:1436c079bff:-6f73-0036', N'RUL441bb08f:1436c079bff:-6fa7-0036', N'BASICINT', N'decimal', 3)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6d5a-0037', N'RCOND441bb08f:1436c079bff:-6f73-0037', N'RUL441bb08f:1436c079bff:-6fa7-0037', N'BASICINT', N'decimal', 3)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6d5a-0038', N'RCOND441bb08f:1436c079bff:-6f73-0038', N'RUL441bb08f:1436c079bff:-6fa7-0038', N'BASICINT', N'decimal', 3)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6d5a-0039', N'RCOND441bb08f:1436c079bff:-6f73-0039', N'RUL441bb08f:1436c079bff:-6fa7-0039', N'BASICINT', N'decimal', 3)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6d5a-0040', N'RCOND441bb08f:1436c079bff:-6f73-0040', N'RUL441bb08f:1436c079bff:-6fa7-0040', N'BASICINT', N'decimal', 3)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6d5a-0041', N'RCOND441bb08f:1436c079bff:-6f73-0041', N'RUL441bb08f:1436c079bff:-6fa7-0041', N'BASICINT', N'decimal', 3)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6d5a-0042', N'RCOND441bb08f:1436c079bff:-6f73-0042', N'RUL441bb08f:1436c079bff:-6fa7-0042', N'BASICINT', N'decimal', 3)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6d5a-0043', N'RCOND441bb08f:1436c079bff:-6f73-0043', N'RUL441bb08f:1436c079bff:-6fa7-0043', N'BASICINT', N'decimal', 3)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6d5a-0044', N'RCOND441bb08f:1436c079bff:-6f73-0044', N'RUL441bb08f:1436c079bff:-6fa7-0044', N'BASICINT', N'decimal', 3)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6df7', N'RCOND441bb08f:1436c079bff:-6f73', N'RUL441bb08f:1436c079bff:-6fa7', N'BASICDISC', N'decimal', 2)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6df7-0002', N'RCOND441bb08f:1436c079bff:-6f73-0002', N'RUL441bb08f:1436c079bff:-6fa7-0002', N'BASICDISC', N'decimal', 2)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6df7-0003', N'RCOND441bb08f:1436c079bff:-6f73-0003', N'RUL441bb08f:1436c079bff:-6fa7-0003', N'BASICDISC', N'decimal', 2)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6df7-0004', N'RCOND441bb08f:1436c079bff:-6f73-0004', N'RUL441bb08f:1436c079bff:-6fa7-0004', N'BASICDISC', N'decimal', 2)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6df7-0005', N'RCOND441bb08f:1436c079bff:-6f73-0005', N'RUL441bb08f:1436c079bff:-6fa7-0005', N'BASICDISC', N'decimal', 2)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6df7-0006', N'RCOND441bb08f:1436c079bff:-6f73-0006', N'RUL441bb08f:1436c079bff:-6fa7-0006', N'BASICDISC', N'decimal', 2)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6df7-0007', N'RCOND441bb08f:1436c079bff:-6f73-0007', N'RUL441bb08f:1436c079bff:-6fa7-0007', N'BASICDISC', N'decimal', 2)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6df7-0008', N'RCOND441bb08f:1436c079bff:-6f73-0008', N'RUL441bb08f:1436c079bff:-6fa7-0008', N'BASICDISC', N'decimal', 2)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6df7-0009', N'RCOND441bb08f:1436c079bff:-6f73-0009', N'RUL441bb08f:1436c079bff:-6fa7-0009', N'BASICDISC', N'decimal', 2)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6df7-0010', N'RCOND441bb08f:1436c079bff:-6f73-0010', N'RUL441bb08f:1436c079bff:-6fa7-0010', N'BASICDISC', N'decimal', 2)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6df7-0011', N'RCOND441bb08f:1436c079bff:-6f73-0011', N'RUL441bb08f:1436c079bff:-6fa7-0011', N'BASICDISC', N'decimal', 2)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6df7-0012', N'RCOND441bb08f:1436c079bff:-6f73-0012', N'RUL441bb08f:1436c079bff:-6fa7-0012', N'BASICDISC', N'decimal', 2)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6df7-0013', N'RCOND441bb08f:1436c079bff:-6f73-0013', N'RUL441bb08f:1436c079bff:-6fa7-0013', N'BASICDISC', N'decimal', 2)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6df7-0014', N'RCOND441bb08f:1436c079bff:-6f73-0014', N'RUL441bb08f:1436c079bff:-6fa7-0014', N'BASICDISC', N'decimal', 2)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6df7-0015', N'RCOND441bb08f:1436c079bff:-6f73-0015', N'RUL441bb08f:1436c079bff:-6fa7-0015', N'BASICDISC', N'decimal', 2)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6df7-0016', N'RCOND441bb08f:1436c079bff:-6f73-0016', N'RUL441bb08f:1436c079bff:-6fa7-0016', N'BASICDISC', N'decimal', 2)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6df7-0017', N'RCOND441bb08f:1436c079bff:-6f73-0017', N'RUL441bb08f:1436c079bff:-6fa7-0017', N'BASICDISC', N'decimal', 2)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6df7-0018', N'RCOND441bb08f:1436c079bff:-6f73-0018', N'RUL441bb08f:1436c079bff:-6fa7-0018', N'BASICDISC', N'decimal', 2)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6df7-0019', N'RCOND441bb08f:1436c079bff:-6f73-0019', N'RUL441bb08f:1436c079bff:-6fa7-0019', N'BASICDISC', N'decimal', 2)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6df7-0020', N'RCOND441bb08f:1436c079bff:-6f73-0020', N'RUL441bb08f:1436c079bff:-6fa7-0020', N'BASICDISC', N'decimal', 2)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6df7-0021', N'RCOND441bb08f:1436c079bff:-6f73-0021', N'RUL441bb08f:1436c079bff:-6fa7-0021', N'BASICDISC', N'decimal', 2)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6df7-0022', N'RCOND441bb08f:1436c079bff:-6f73-0022', N'RUL441bb08f:1436c079bff:-6fa7-0022', N'BASICDISC', N'decimal', 2)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6df7-0023', N'RCOND441bb08f:1436c079bff:-6f73-0023', N'RUL441bb08f:1436c079bff:-6fa7-0023', N'BASICDISC', N'decimal', 2)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6df7-0024', N'RCOND441bb08f:1436c079bff:-6f73-0024', N'RUL441bb08f:1436c079bff:-6fa7-0024', N'BASICDISC', N'decimal', 2)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6df7-0025', N'RCOND441bb08f:1436c079bff:-6f73-0025', N'RUL441bb08f:1436c079bff:-6fa7-0025', N'BASICDISC', N'decimal', 2)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6df7-0026', N'RCOND441bb08f:1436c079bff:-6f73-0026', N'RUL441bb08f:1436c079bff:-6fa7-0026', N'BASICDISC', N'decimal', 2)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6df7-0027', N'RCOND441bb08f:1436c079bff:-6f73-0027', N'RUL441bb08f:1436c079bff:-6fa7-0027', N'BASICDISC', N'decimal', 2)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6df7-0028', N'RCOND441bb08f:1436c079bff:-6f73-0028', N'RUL441bb08f:1436c079bff:-6fa7-0028', N'BASICDISC', N'decimal', 2)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6df7-0029', N'RCOND441bb08f:1436c079bff:-6f73-0029', N'RUL441bb08f:1436c079bff:-6fa7-0029', N'BASICDISC', N'decimal', 2)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6df7-0030', N'RCOND441bb08f:1436c079bff:-6f73-0030', N'RUL441bb08f:1436c079bff:-6fa7-0030', N'BASICDISC', N'decimal', 2)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6df7-0031', N'RCOND441bb08f:1436c079bff:-6f73-0031', N'RUL441bb08f:1436c079bff:-6fa7-0031', N'BASICDISC', N'decimal', 2)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6df7-0032', N'RCOND441bb08f:1436c079bff:-6f73-0032', N'RUL441bb08f:1436c079bff:-6fa7-0032', N'BASICDISC', N'decimal', 2)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6df7-0033', N'RCOND441bb08f:1436c079bff:-6f73-0033', N'RUL441bb08f:1436c079bff:-6fa7-0033', N'BASICDISC', N'decimal', 2)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6df7-0034', N'RCOND441bb08f:1436c079bff:-6f73-0034', N'RUL441bb08f:1436c079bff:-6fa7-0034', N'BASICDISC', N'decimal', 2)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6df7-0035', N'RCOND441bb08f:1436c079bff:-6f73-0035', N'RUL441bb08f:1436c079bff:-6fa7-0035', N'BASICDISC', N'decimal', 2)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6df7-0036', N'RCOND441bb08f:1436c079bff:-6f73-0036', N'RUL441bb08f:1436c079bff:-6fa7-0036', N'BASICDISC', N'decimal', 2)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6df7-0037', N'RCOND441bb08f:1436c079bff:-6f73-0037', N'RUL441bb08f:1436c079bff:-6fa7-0037', N'BASICDISC', N'decimal', 2)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6df7-0038', N'RCOND441bb08f:1436c079bff:-6f73-0038', N'RUL441bb08f:1436c079bff:-6fa7-0038', N'BASICDISC', N'decimal', 2)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6df7-0039', N'RCOND441bb08f:1436c079bff:-6f73-0039', N'RUL441bb08f:1436c079bff:-6fa7-0039', N'BASICDISC', N'decimal', 2)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6df7-0040', N'RCOND441bb08f:1436c079bff:-6f73-0040', N'RUL441bb08f:1436c079bff:-6fa7-0040', N'BASICDISC', N'decimal', 2)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6df7-0041', N'RCOND441bb08f:1436c079bff:-6f73-0041', N'RUL441bb08f:1436c079bff:-6fa7-0041', N'BASICDISC', N'decimal', 2)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6df7-0042', N'RCOND441bb08f:1436c079bff:-6f73-0042', N'RUL441bb08f:1436c079bff:-6fa7-0042', N'BASICDISC', N'decimal', 2)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6df7-0043', N'RCOND441bb08f:1436c079bff:-6f73-0043', N'RUL441bb08f:1436c079bff:-6fa7-0043', N'BASICDISC', N'decimal', 2)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6df7-0044', N'RCOND441bb08f:1436c079bff:-6f73-0044', N'RUL441bb08f:1436c079bff:-6fa7-0044', N'BASICDISC', N'decimal', 2)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6e87', N'RCOND441bb08f:1436c079bff:-6f73', N'RUL441bb08f:1436c079bff:-6fa7', N'BASIC', N'decimal', 1)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6e87-0002', N'RCOND441bb08f:1436c079bff:-6f73-0002', N'RUL441bb08f:1436c079bff:-6fa7-0002', N'BASIC', N'decimal', 1)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6e87-0003', N'RCOND441bb08f:1436c079bff:-6f73-0003', N'RUL441bb08f:1436c079bff:-6fa7-0003', N'BASIC', N'decimal', 1)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6e87-0004', N'RCOND441bb08f:1436c079bff:-6f73-0004', N'RUL441bb08f:1436c079bff:-6fa7-0004', N'BASIC', N'decimal', 1)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6e87-0005', N'RCOND441bb08f:1436c079bff:-6f73-0005', N'RUL441bb08f:1436c079bff:-6fa7-0005', N'BASIC', N'decimal', 1)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6e87-0006', N'RCOND441bb08f:1436c079bff:-6f73-0006', N'RUL441bb08f:1436c079bff:-6fa7-0006', N'BASIC', N'decimal', 1)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6e87-0007', N'RCOND441bb08f:1436c079bff:-6f73-0007', N'RUL441bb08f:1436c079bff:-6fa7-0007', N'BASIC', N'decimal', 1)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6e87-0008', N'RCOND441bb08f:1436c079bff:-6f73-0008', N'RUL441bb08f:1436c079bff:-6fa7-0008', N'BASIC', N'decimal', 1)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6e87-0009', N'RCOND441bb08f:1436c079bff:-6f73-0009', N'RUL441bb08f:1436c079bff:-6fa7-0009', N'BASIC', N'decimal', 1)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6e87-0010', N'RCOND441bb08f:1436c079bff:-6f73-0010', N'RUL441bb08f:1436c079bff:-6fa7-0010', N'BASIC', N'decimal', 1)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6e87-0011', N'RCOND441bb08f:1436c079bff:-6f73-0011', N'RUL441bb08f:1436c079bff:-6fa7-0011', N'BASIC', N'decimal', 1)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6e87-0012', N'RCOND441bb08f:1436c079bff:-6f73-0012', N'RUL441bb08f:1436c079bff:-6fa7-0012', N'BASIC', N'decimal', 1)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6e87-0013', N'RCOND441bb08f:1436c079bff:-6f73-0013', N'RUL441bb08f:1436c079bff:-6fa7-0013', N'BASIC', N'decimal', 1)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6e87-0014', N'RCOND441bb08f:1436c079bff:-6f73-0014', N'RUL441bb08f:1436c079bff:-6fa7-0014', N'BASIC', N'decimal', 1)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6e87-0015', N'RCOND441bb08f:1436c079bff:-6f73-0015', N'RUL441bb08f:1436c079bff:-6fa7-0015', N'BASIC', N'decimal', 1)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6e87-0016', N'RCOND441bb08f:1436c079bff:-6f73-0016', N'RUL441bb08f:1436c079bff:-6fa7-0016', N'BASIC', N'decimal', 1)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6e87-0017', N'RCOND441bb08f:1436c079bff:-6f73-0017', N'RUL441bb08f:1436c079bff:-6fa7-0017', N'BASIC', N'decimal', 1)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6e87-0018', N'RCOND441bb08f:1436c079bff:-6f73-0018', N'RUL441bb08f:1436c079bff:-6fa7-0018', N'BASIC', N'decimal', 1)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6e87-0019', N'RCOND441bb08f:1436c079bff:-6f73-0019', N'RUL441bb08f:1436c079bff:-6fa7-0019', N'BASIC', N'decimal', 1)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6e87-0020', N'RCOND441bb08f:1436c079bff:-6f73-0020', N'RUL441bb08f:1436c079bff:-6fa7-0020', N'BASIC', N'decimal', 1)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6e87-0021', N'RCOND441bb08f:1436c079bff:-6f73-0021', N'RUL441bb08f:1436c079bff:-6fa7-0021', N'BASIC', N'decimal', 1)
GO
print 'Processed 200 total records'
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6e87-0022', N'RCOND441bb08f:1436c079bff:-6f73-0022', N'RUL441bb08f:1436c079bff:-6fa7-0022', N'BASIC', N'decimal', 1)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6e87-0023', N'RCOND441bb08f:1436c079bff:-6f73-0023', N'RUL441bb08f:1436c079bff:-6fa7-0023', N'BASIC', N'decimal', 1)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6e87-0024', N'RCOND441bb08f:1436c079bff:-6f73-0024', N'RUL441bb08f:1436c079bff:-6fa7-0024', N'BASIC', N'decimal', 1)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6e87-0025', N'RCOND441bb08f:1436c079bff:-6f73-0025', N'RUL441bb08f:1436c079bff:-6fa7-0025', N'BASIC', N'decimal', 1)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6e87-0026', N'RCOND441bb08f:1436c079bff:-6f73-0026', N'RUL441bb08f:1436c079bff:-6fa7-0026', N'BASIC', N'decimal', 1)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6e87-0027', N'RCOND441bb08f:1436c079bff:-6f73-0027', N'RUL441bb08f:1436c079bff:-6fa7-0027', N'BASIC', N'decimal', 1)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6e87-0028', N'RCOND441bb08f:1436c079bff:-6f73-0028', N'RUL441bb08f:1436c079bff:-6fa7-0028', N'BASIC', N'decimal', 1)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6e87-0029', N'RCOND441bb08f:1436c079bff:-6f73-0029', N'RUL441bb08f:1436c079bff:-6fa7-0029', N'BASIC', N'decimal', 1)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6e87-0030', N'RCOND441bb08f:1436c079bff:-6f73-0030', N'RUL441bb08f:1436c079bff:-6fa7-0030', N'BASIC', N'decimal', 1)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6e87-0031', N'RCOND441bb08f:1436c079bff:-6f73-0031', N'RUL441bb08f:1436c079bff:-6fa7-0031', N'BASIC', N'decimal', 1)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6e87-0032', N'RCOND441bb08f:1436c079bff:-6f73-0032', N'RUL441bb08f:1436c079bff:-6fa7-0032', N'BASIC', N'decimal', 1)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6e87-0033', N'RCOND441bb08f:1436c079bff:-6f73-0033', N'RUL441bb08f:1436c079bff:-6fa7-0033', N'BASIC', N'decimal', 1)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6e87-0034', N'RCOND441bb08f:1436c079bff:-6f73-0034', N'RUL441bb08f:1436c079bff:-6fa7-0034', N'BASIC', N'decimal', 1)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6e87-0035', N'RCOND441bb08f:1436c079bff:-6f73-0035', N'RUL441bb08f:1436c079bff:-6fa7-0035', N'BASIC', N'decimal', 1)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6e87-0036', N'RCOND441bb08f:1436c079bff:-6f73-0036', N'RUL441bb08f:1436c079bff:-6fa7-0036', N'BASIC', N'decimal', 1)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6e87-0037', N'RCOND441bb08f:1436c079bff:-6f73-0037', N'RUL441bb08f:1436c079bff:-6fa7-0037', N'BASIC', N'decimal', 1)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6e87-0038', N'RCOND441bb08f:1436c079bff:-6f73-0038', N'RUL441bb08f:1436c079bff:-6fa7-0038', N'BASIC', N'decimal', 1)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6e87-0039', N'RCOND441bb08f:1436c079bff:-6f73-0039', N'RUL441bb08f:1436c079bff:-6fa7-0039', N'BASIC', N'decimal', 1)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6e87-0040', N'RCOND441bb08f:1436c079bff:-6f73-0040', N'RUL441bb08f:1436c079bff:-6fa7-0040', N'BASIC', N'decimal', 1)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6e87-0041', N'RCOND441bb08f:1436c079bff:-6f73-0041', N'RUL441bb08f:1436c079bff:-6fa7-0041', N'BASIC', N'decimal', 1)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6e87-0042', N'RCOND441bb08f:1436c079bff:-6f73-0042', N'RUL441bb08f:1436c079bff:-6fa7-0042', N'BASIC', N'decimal', 1)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6e87-0043', N'RCOND441bb08f:1436c079bff:-6f73-0043', N'RUL441bb08f:1436c079bff:-6fa7-0043', N'BASIC', N'decimal', 1)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6e87-0044', N'RCOND441bb08f:1436c079bff:-6f73-0044', N'RUL441bb08f:1436c079bff:-6fa7-0044', N'BASIC', N'decimal', 1)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-71bf', N'RCOND441bb08f:1436c079bff:-7529', N'RUL441bb08f:1436c079bff:-755d', N'BRGYINTSHARE', N'decimal', 4)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-728e', N'RCOND441bb08f:1436c079bff:-7529', N'RUL441bb08f:1436c079bff:-755d', N'BRGYSHARE', N'decimal', 3)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-7344', N'RCOND441bb08f:1436c079bff:-7529', N'RUL441bb08f:1436c079bff:-755d', N'BASICINT', N'decimal', 2)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-73e3', N'RCOND441bb08f:1436c079bff:-7529', N'RUL441bb08f:1436c079bff:-755d', N'BASICDISC', N'decimal', 1)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-747e', N'RCOND441bb08f:1436c079bff:-7529', N'RUL441bb08f:1436c079bff:-755d', N'BASIC', N'decimal', 0)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST559c0dba:14361bac6db:-7830', N'RCOND559c0dba:14361bac6db:-7848', N'RUL559c0dba:14361bac6db:-78df', N'CMON', N'integer', 0)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST559c0dba:14361bac6db:-7871', N'RCOND559c0dba:14361bac6db:-78b0', N'RUL559c0dba:14361bac6db:-78df', N'TOTALTAX', N'decimal', 0)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST559c0dba:14361bac6db:-7a44', N'RCOND559c0dba:14361bac6db:-7aaf', N'RUL559c0dba:14361bac6db:-7ad6', N'RPAV', N'decimal', 1)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST559c0dba:14361bac6db:-7a7c', N'RCOND559c0dba:14361bac6db:-7aaf', N'RUL559c0dba:14361bac6db:-7ad6', N'BGROSS', N'decimal', 0)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST559c0dba:14361bac6db:-7e8c', N'RCOND559c0dba:14361bac6db:-7ea4', N'RUL559c0dba:14361bac6db:-7fd1', N'CMON', N'integer', 0)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST559c0dba:14361bac6db:-7ed5', N'RCOND559c0dba:14361bac6db:-7f5b', N'RUL559c0dba:14361bac6db:-7fd1', N'TOTALTAX', N'decimal', 0)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5e124146:141e4410702:-773d', N'RCOND5e124146:141e4410702:-7771', N'RUL-20919e10:141e3f76dc8:-6107', N'CQTR', N'integer', 1)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5e124146:141e4410702:-775f', N'RCOND5e124146:141e4410702:-7771', N'RUL-20919e10:141e3f76dc8:-6107', N'CY', N'integer', 0)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:1013', N'RCOND441bb08f:1436c079bff:-6f73-0037', N'RUL441bb08f:1436c079bff:-6fa7-0037', N'BASICPAID', N'decimal', 4)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-10c6', N'RCOND441bb08f:1436c079bff:-6f73-0028', N'RUL441bb08f:1436c079bff:-6fa7-0028', N'BASICDISCTAKEN', N'decimal', 6)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:10e9', N'RCOND441bb08f:1436c079bff:-6f73-0037', N'RUL441bb08f:1436c079bff:-6fa7-0037', N'BASICINTPAID', N'decimal', 5)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-11aa', N'RCOND441bb08f:1436c079bff:-6f73-0028', N'RUL441bb08f:1436c079bff:-6fa7-0028', N'BASICINTPAID', N'decimal', 5)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:11cd', N'RCOND441bb08f:1436c079bff:-6f73-0037', N'RUL441bb08f:1436c079bff:-6fa7-0037', N'BASICDISCTAKEN', N'decimal', 6)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-1280', N'RCOND441bb08f:1436c079bff:-6f73-0028', N'RUL441bb08f:1436c079bff:-6fa7-0028', N'BASICPAID', N'decimal', 4)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-13c', N'RCOND441bb08f:1436c079bff:-6f73-0032', N'RUL441bb08f:1436c079bff:-6fa7-0032', N'BASICDISCTAKEN', N'decimal', 6)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:13ee', N'RCOND441bb08f:1436c079bff:-6f73-0038', N'RUL441bb08f:1436c079bff:-6fa7-0038', N'BASICPAID', N'decimal', 4)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-1491', N'RCOND441bb08f:1436c079bff:-6f73-0027', N'RUL441bb08f:1436c079bff:-6fa7-0027', N'BASICDISCTAKEN', N'decimal', 6)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:14c4', N'RCOND441bb08f:1436c079bff:-6f73-0038', N'RUL441bb08f:1436c079bff:-6fa7-0038', N'BASICINTPAID', N'decimal', 5)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-1575', N'RCOND441bb08f:1436c079bff:-6f73-0027', N'RUL441bb08f:1436c079bff:-6fa7-0027', N'BASICINTPAID', N'decimal', 5)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:15a8', N'RCOND441bb08f:1436c079bff:-6f73-0038', N'RUL441bb08f:1436c079bff:-6fa7-0038', N'BASICDISCTAKEN', N'decimal', 6)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-164b', N'RCOND441bb08f:1436c079bff:-6f73-0027', N'RUL441bb08f:1436c079bff:-6fa7-0027', N'BASICPAID', N'decimal', 4)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:181b', N'RCOND441bb08f:1436c079bff:-6f73-0039', N'RUL441bb08f:1436c079bff:-6fa7-0039', N'BASICPAID', N'decimal', 4)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-1856', N'RCOND441bb08f:1436c079bff:-6f73-0026', N'RUL441bb08f:1436c079bff:-6fa7-0026', N'BASICDISCTAKEN', N'decimal', 6)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:18f1', N'RCOND441bb08f:1436c079bff:-6f73-0039', N'RUL441bb08f:1436c079bff:-6fa7-0039', N'BASICINTPAID', N'decimal', 5)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-193a', N'RCOND441bb08f:1436c079bff:-6f73-0026', N'RUL441bb08f:1436c079bff:-6fa7-0026', N'BASICINTPAID', N'decimal', 5)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:19d5', N'RCOND441bb08f:1436c079bff:-6f73-0039', N'RUL441bb08f:1436c079bff:-6fa7-0039', N'BASICDISCTAKEN', N'decimal', 6)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-1a10', N'RCOND441bb08f:1436c079bff:-6f73-0026', N'RUL441bb08f:1436c079bff:-6fa7-0026', N'BASICPAID', N'decimal', 4)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:1a5', N'RCOND441bb08f:1436c079bff:-6f73-0033', N'RUL441bb08f:1436c079bff:-6fa7-0033', N'BASICINTPAID', N'decimal', 5)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:1bdf', N'RCOND441bb08f:1436c079bff:-6f73-0040', N'RUL441bb08f:1436c079bff:-6fa7-0040', N'BASICPAID', N'decimal', 4)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-1c1b', N'RCOND441bb08f:1436c079bff:-6f73-0025', N'RUL441bb08f:1436c079bff:-6fa7-0025', N'BASICDISCTAKEN', N'decimal', 6)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:1cb5', N'RCOND441bb08f:1436c079bff:-6f73-0040', N'RUL441bb08f:1436c079bff:-6fa7-0040', N'BASICINTPAID', N'decimal', 5)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-1cff', N'RCOND441bb08f:1436c079bff:-6f73-0025', N'RUL441bb08f:1436c079bff:-6fa7-0025', N'BASICINTPAID', N'decimal', 5)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:1d99', N'RCOND441bb08f:1436c079bff:-6f73-0040', N'RUL441bb08f:1436c079bff:-6fa7-0040', N'BASICDISCTAKEN', N'decimal', 6)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-1dd5', N'RCOND441bb08f:1436c079bff:-6f73-0025', N'RUL441bb08f:1436c079bff:-6fa7-0025', N'BASICPAID', N'decimal', 4)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-1fe0', N'RCOND441bb08f:1436c079bff:-6f73-0024', N'RUL441bb08f:1436c079bff:-6fa7-0024', N'BASICDISCTAKEN', N'decimal', 6)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:200c', N'RCOND441bb08f:1436c079bff:-6f73-0041', N'RUL441bb08f:1436c079bff:-6fa7-0041', N'BASICPAID', N'decimal', 4)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-20c4', N'RCOND441bb08f:1436c079bff:-6f73-0024', N'RUL441bb08f:1436c079bff:-6fa7-0024', N'BASICINTPAID', N'decimal', 5)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:20e2', N'RCOND441bb08f:1436c079bff:-6f73-0041', N'RUL441bb08f:1436c079bff:-6fa7-0041', N'BASICINTPAID', N'decimal', 5)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-219a', N'RCOND441bb08f:1436c079bff:-6f73-0024', N'RUL441bb08f:1436c079bff:-6fa7-0024', N'BASICPAID', N'decimal', 4)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:21c6', N'RCOND441bb08f:1436c079bff:-6f73-0041', N'RUL441bb08f:1436c079bff:-6fa7-0041', N'BASICDISCTAKEN', N'decimal', 6)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-220', N'RCOND441bb08f:1436c079bff:-6f73-0032', N'RUL441bb08f:1436c079bff:-6fa7-0032', N'BASICINTPAID', N'decimal', 5)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-23a5', N'RCOND441bb08f:1436c079bff:-6f73-0023', N'RUL441bb08f:1436c079bff:-6fa7-0023', N'BASICDISCTAKEN', N'decimal', 6)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:23db', N'RCOND441bb08f:1436c079bff:-6f73-0042', N'RUL441bb08f:1436c079bff:-6fa7-0042', N'BASICPAID', N'decimal', 4)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-2489', N'RCOND441bb08f:1436c079bff:-6f73-0023', N'RUL441bb08f:1436c079bff:-6fa7-0023', N'BASICINTPAID', N'decimal', 5)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:24b1', N'RCOND441bb08f:1436c079bff:-6f73-0042', N'RUL441bb08f:1436c079bff:-6fa7-0042', N'BASICINTPAID', N'decimal', 5)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-255f', N'RCOND441bb08f:1436c079bff:-6f73-0023', N'RUL441bb08f:1436c079bff:-6fa7-0023', N'BASICPAID', N'decimal', 4)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:2597', N'RCOND441bb08f:1436c079bff:-6f73-0042', N'RUL441bb08f:1436c079bff:-6fa7-0042', N'BASICDISCTAKEN', N'decimal', 6)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-276a', N'RCOND441bb08f:1436c079bff:-6f73-0022', N'RUL441bb08f:1436c079bff:-6fa7-0022', N'BASICDISCTAKEN', N'decimal', 6)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:27ac', N'RCOND441bb08f:1436c079bff:-6f73-0043', N'RUL441bb08f:1436c079bff:-6fa7-0043', N'BASICPAID', N'decimal', 4)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-284e', N'RCOND441bb08f:1436c079bff:-6f73-0022', N'RUL441bb08f:1436c079bff:-6fa7-0022', N'BASICINTPAID', N'decimal', 5)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:2882', N'RCOND441bb08f:1436c079bff:-6f73-0043', N'RUL441bb08f:1436c079bff:-6fa7-0043', N'BASICINTPAID', N'decimal', 5)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:289', N'RCOND441bb08f:1436c079bff:-6f73-0033', N'RUL441bb08f:1436c079bff:-6fa7-0033', N'BASICDISCTAKEN', N'decimal', 6)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-2924', N'RCOND441bb08f:1436c079bff:-6f73-0022', N'RUL441bb08f:1436c079bff:-6fa7-0022', N'BASICPAID', N'decimal', 4)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:2966', N'RCOND441bb08f:1436c079bff:-6f73-0043', N'RUL441bb08f:1436c079bff:-6fa7-0043', N'BASICDISCTAKEN', N'decimal', 6)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-2b45', N'RCOND441bb08f:1436c079bff:-6f73-0021', N'RUL441bb08f:1436c079bff:-6fa7-0021', N'BASICDISCTAKEN', N'decimal', 6)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:2b71', N'RCOND441bb08f:1436c079bff:-6f73-0044', N'RUL441bb08f:1436c079bff:-6fa7-0044', N'BASICPAID', N'decimal', 4)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-2c29', N'RCOND441bb08f:1436c079bff:-6f73-0021', N'RUL441bb08f:1436c079bff:-6fa7-0021', N'BASICINTPAID', N'decimal', 5)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:2c47', N'RCOND441bb08f:1436c079bff:-6f73-0044', N'RUL441bb08f:1436c079bff:-6fa7-0044', N'BASICINTPAID', N'decimal', 5)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-2cff', N'RCOND441bb08f:1436c079bff:-6f73-0021', N'RUL441bb08f:1436c079bff:-6fa7-0021', N'BASICPAID', N'decimal', 4)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:2d2b', N'RCOND441bb08f:1436c079bff:-6f73-0044', N'RUL441bb08f:1436c079bff:-6fa7-0044', N'BASICDISCTAKEN', N'decimal', 6)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-2f6', N'RCOND441bb08f:1436c079bff:-6f73-0032', N'RUL441bb08f:1436c079bff:-6fa7-0032', N'BASICPAID', N'decimal', 4)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-2fa9', N'RCOND441bb08f:1436c079bff:-6f73-0020', N'RUL441bb08f:1436c079bff:-6fa7-0020', N'BASICDISCTAKEN', N'decimal', 6)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-308d', N'RCOND441bb08f:1436c079bff:-6f73-0020', N'RUL441bb08f:1436c079bff:-6fa7-0020', N'BASICINTPAID', N'decimal', 5)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-3163', N'RCOND441bb08f:1436c079bff:-6f73-0020', N'RUL441bb08f:1436c079bff:-6fa7-0020', N'BASICPAID', N'decimal', 4)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:327b', N'RCOND441bb08f:1436c079bff:-7529', N'RUL441bb08f:1436c079bff:-755d', N'BASICPAID', N'decimal', 5)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:3364', N'RCOND441bb08f:1436c079bff:-7529', N'RUL441bb08f:1436c079bff:-755d', N'BASICINTPAID', N'decimal', 6)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-3388', N'RCOND441bb08f:1436c079bff:-6f73-0019', N'RUL441bb08f:1436c079bff:-6fa7-0019', N'BASICDISCTAKEN', N'decimal', 6)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:3467', N'RCOND441bb08f:1436c079bff:-7529', N'RUL441bb08f:1436c079bff:-755d', N'BASICDISCTAKEN', N'decimal', 7)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-346c', N'RCOND441bb08f:1436c079bff:-6f73-0019', N'RUL441bb08f:1436c079bff:-6fa7-0019', N'BASICINTPAID', N'decimal', 5)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-3542', N'RCOND441bb08f:1436c079bff:-6f73-0019', N'RUL441bb08f:1436c079bff:-6fa7-0019', N'BASICPAID', N'decimal', 4)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-3764', N'RCOND441bb08f:1436c079bff:-6f73-0018', N'RUL441bb08f:1436c079bff:-6fa7-0018', N'BASICDISCTAKEN', N'decimal', 6)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-3848', N'RCOND441bb08f:1436c079bff:-6f73-0018', N'RUL441bb08f:1436c079bff:-6fa7-0018', N'BASICINTPAID', N'decimal', 5)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-391e', N'RCOND441bb08f:1436c079bff:-6f73-0018', N'RUL441bb08f:1436c079bff:-6fa7-0018', N'BASICPAID', N'decimal', 4)
GO
print 'Processed 300 total records'
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-3b29', N'RCOND441bb08f:1436c079bff:-6f73-0017', N'RUL441bb08f:1436c079bff:-6fa7-0017', N'BASICDISCTAKEN', N'decimal', 6)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:3c01', N'RCOND441bb08f:1436c079bff:-6f73-0035', N'RUL441bb08f:1436c079bff:-6fa7-0035', N'BASICDISCTAKEN', N'decimal', 6)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-3c0d', N'RCOND441bb08f:1436c079bff:-6f73-0017', N'RUL441bb08f:1436c079bff:-6fa7-0017', N'BASICINTPAID', N'decimal', 5)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-3ce3', N'RCOND441bb08f:1436c079bff:-6f73-0017', N'RUL441bb08f:1436c079bff:-6fa7-0017', N'BASICPAID', N'decimal', 4)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-3f0b', N'RCOND441bb08f:1436c079bff:-6f73-0016', N'RUL441bb08f:1436c079bff:-6fa7-0016', N'BASICDISCTAKEN', N'decimal', 6)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-3fef', N'RCOND441bb08f:1436c079bff:-6f73-0016', N'RUL441bb08f:1436c079bff:-6fa7-0016', N'BASICINTPAID', N'decimal', 5)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-40c5', N'RCOND441bb08f:1436c079bff:-6f73-0016', N'RUL441bb08f:1436c079bff:-6fa7-0016', N'BASICPAID', N'decimal', 4)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-42d0', N'RCOND441bb08f:1436c079bff:-6f73-0015', N'RUL441bb08f:1436c079bff:-6fa7-0015', N'BASICDISCTAKEN', N'decimal', 6)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-43b4', N'RCOND441bb08f:1436c079bff:-6f73-0015', N'RUL441bb08f:1436c079bff:-6fa7-0015', N'BASICINTPAID', N'decimal', 5)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-448b', N'RCOND441bb08f:1436c079bff:-6f73-0015', N'RUL441bb08f:1436c079bff:-6fa7-0015', N'BASICPAID', N'decimal', 4)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-46a0', N'RCOND441bb08f:1436c079bff:-6f73-0014', N'RUL441bb08f:1436c079bff:-6fa7-0014', N'BASICDISCTAKEN', N'decimal', 6)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-4784', N'RCOND441bb08f:1436c079bff:-6f73-0014', N'RUL441bb08f:1436c079bff:-6fa7-0014', N'BASICINTPAID', N'decimal', 5)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-485a', N'RCOND441bb08f:1436c079bff:-6f73-0014', N'RUL441bb08f:1436c079bff:-6fa7-0014', N'BASICPAID', N'decimal', 4)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:494', N'RCOND441bb08f:1436c079bff:-6f73-0034', N'RUL441bb08f:1436c079bff:-6fa7-0034', N'BASICPAID', N'decimal', 4)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-4a79', N'RCOND441bb08f:1436c079bff:-6f73-0013', N'RUL441bb08f:1436c079bff:-6fa7-0013', N'BASICDISCTAKEN', N'decimal', 6)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-4b5d', N'RCOND441bb08f:1436c079bff:-6f73-0013', N'RUL441bb08f:1436c079bff:-6fa7-0013', N'BASICINTPAID', N'decimal', 5)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-4c33', N'RCOND441bb08f:1436c079bff:-6f73-0013', N'RUL441bb08f:1436c079bff:-6fa7-0013', N'BASICPAID', N'decimal', 4)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-4e4c', N'RCOND441bb08f:1436c079bff:-6f73-0012', N'RUL441bb08f:1436c079bff:-6fa7-0012', N'BASICDISCTAKEN', N'decimal', 6)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-4f30', N'RCOND441bb08f:1436c079bff:-6f73-0012', N'RUL441bb08f:1436c079bff:-6fa7-0012', N'BASICINTPAID', N'decimal', 5)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-5006', N'RCOND441bb08f:1436c079bff:-6f73-0012', N'RUL441bb08f:1436c079bff:-6fa7-0012', N'BASICPAID', N'decimal', 4)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-503', N'RCOND441bb08f:1436c079bff:-6f73-0031', N'RUL441bb08f:1436c079bff:-6fa7-0031', N'BASICDISCTAKEN', N'decimal', 6)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-5228', N'RCOND441bb08f:1436c079bff:-6f73-0011', N'RUL441bb08f:1436c079bff:-6fa7-0011', N'BASICDISCTAKEN', N'decimal', 6)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-530c', N'RCOND441bb08f:1436c079bff:-6f73-0011', N'RUL441bb08f:1436c079bff:-6fa7-0011', N'BASICINTPAID', N'decimal', 5)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-53e2', N'RCOND441bb08f:1436c079bff:-6f73-0011', N'RUL441bb08f:1436c079bff:-6fa7-0011', N'BASICPAID', N'decimal', 4)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:56a', N'RCOND441bb08f:1436c079bff:-6f73-0034', N'RUL441bb08f:1436c079bff:-6fa7-0034', N'BASICINTPAID', N'decimal', 5)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-56fe', N'RCOND441bb08f:1436c079bff:-6f73-0010', N'RUL441bb08f:1436c079bff:-6fa7-0010', N'BASICDISCTAKEN', N'decimal', 6)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-57e2', N'RCOND441bb08f:1436c079bff:-6f73-0010', N'RUL441bb08f:1436c079bff:-6fa7-0010', N'BASICINTPAID', N'decimal', 5)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-58b8', N'RCOND441bb08f:1436c079bff:-6f73-0010', N'RUL441bb08f:1436c079bff:-6fa7-0010', N'BASICPAID', N'decimal', 4)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-5ac7', N'RCOND441bb08f:1436c079bff:-6f73-0009', N'RUL441bb08f:1436c079bff:-6fa7-0009', N'BASICDISCTAKEN', N'decimal', 6)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-5bab', N'RCOND441bb08f:1436c079bff:-6f73-0009', N'RUL441bb08f:1436c079bff:-6fa7-0009', N'BASICINTPAID', N'decimal', 5)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-5c81', N'RCOND441bb08f:1436c079bff:-6f73-0009', N'RUL441bb08f:1436c079bff:-6fa7-0009', N'BASICPAID', N'decimal', 4)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-5e90', N'RCOND441bb08f:1436c079bff:-6f73-0008', N'RUL441bb08f:1436c079bff:-6fa7-0008', N'BASICDISCTAKEN', N'decimal', 6)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-5ed', N'RCOND441bb08f:1436c079bff:-6f73-0031', N'RUL441bb08f:1436c079bff:-6fa7-0031', N'BASICINTPAID', N'decimal', 5)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-5f74', N'RCOND441bb08f:1436c079bff:-6f73-0008', N'RUL441bb08f:1436c079bff:-6fa7-0008', N'BASICINTPAID', N'decimal', 5)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-604a', N'RCOND441bb08f:1436c079bff:-6f73-0008', N'RUL441bb08f:1436c079bff:-6fa7-0008', N'BASICPAID', N'decimal', 4)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-6265', N'RCOND441bb08f:1436c079bff:-6f73-0007', N'RUL441bb08f:1436c079bff:-6fa7-0007', N'BASICDISCTAKEN', N'decimal', 6)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-6349', N'RCOND441bb08f:1436c079bff:-6f73-0007', N'RUL441bb08f:1436c079bff:-6fa7-0007', N'BASICINTPAID', N'decimal', 5)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-641f', N'RCOND441bb08f:1436c079bff:-6f73-0007', N'RUL441bb08f:1436c079bff:-6fa7-0007', N'BASICPAID', N'decimal', 4)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:64e', N'RCOND441bb08f:1436c079bff:-6f73-0034', N'RUL441bb08f:1436c079bff:-6fa7-0034', N'BASICDISCTAKEN', N'decimal', 6)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-662e', N'RCOND441bb08f:1436c079bff:-6f73-0006', N'RUL441bb08f:1436c079bff:-6fa7-0006', N'BASICDISCTAKEN', N'decimal', 6)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-6712', N'RCOND441bb08f:1436c079bff:-6f73-0006', N'RUL441bb08f:1436c079bff:-6fa7-0006', N'BASICINTPAID', N'decimal', 5)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-67e8', N'RCOND441bb08f:1436c079bff:-6f73-0006', N'RUL441bb08f:1436c079bff:-6fa7-0006', N'BASICPAID', N'decimal', 4)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-6a17', N'RCOND441bb08f:1436c079bff:-6f73-0005', N'RUL441bb08f:1436c079bff:-6fa7-0005', N'BASICDISCTAKEN', N'decimal', 6)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-6afb', N'RCOND441bb08f:1436c079bff:-6f73-0005', N'RUL441bb08f:1436c079bff:-6fa7-0005', N'BASICINTPAID', N'decimal', 5)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-6bd1', N'RCOND441bb08f:1436c079bff:-6f73-0005', N'RUL441bb08f:1436c079bff:-6fa7-0005', N'BASICPAID', N'decimal', 4)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-6c3', N'RCOND441bb08f:1436c079bff:-6f73-0031', N'RUL441bb08f:1436c079bff:-6fa7-0031', N'BASICPAID', N'decimal', 4)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-6e09', N'RCOND441bb08f:1436c079bff:-6f73-0004', N'RUL441bb08f:1436c079bff:-6fa7-0004', N'BASICDISCTAKEN', N'decimal', 6)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-6eed', N'RCOND441bb08f:1436c079bff:-6f73-0004', N'RUL441bb08f:1436c079bff:-6fa7-0004', N'BASICINTPAID', N'decimal', 5)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-6fc3', N'RCOND441bb08f:1436c079bff:-6f73-0004', N'RUL441bb08f:1436c079bff:-6fa7-0004', N'BASICPAID', N'decimal', 4)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-71d2', N'RCOND441bb08f:1436c079bff:-6f73-0003', N'RUL441bb08f:1436c079bff:-6fa7-0003', N'BASICDISCTAKEN', N'decimal', 6)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-72b6', N'RCOND441bb08f:1436c079bff:-6f73-0003', N'RUL441bb08f:1436c079bff:-6fa7-0003', N'BASICINTPAID', N'decimal', 5)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-738c', N'RCOND441bb08f:1436c079bff:-6f73-0003', N'RUL441bb08f:1436c079bff:-6fa7-0003', N'BASICPAID', N'decimal', 4)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-75ee', N'RCOND441bb08f:1436c079bff:-6f73-0002', N'RUL441bb08f:1436c079bff:-6fa7-0002', N'BASICDISCTAKEN', N'decimal', 6)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-76d2', N'RCOND441bb08f:1436c079bff:-6f73-0002', N'RUL441bb08f:1436c079bff:-6fa7-0002', N'BASICINTPAID', N'decimal', 5)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-77a8', N'RCOND441bb08f:1436c079bff:-6f73-0002', N'RUL441bb08f:1436c079bff:-6fa7-0002', N'BASICPAID', N'decimal', 4)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-7c05', N'RCOND441bb08f:1436c079bff:-6f73', N'RUL441bb08f:1436c079bff:-6fa7', N'BASICDISCTAKEN', N'decimal', 6)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-7ce9', N'RCOND441bb08f:1436c079bff:-6f73', N'RUL441bb08f:1436c079bff:-6fa7', N'BASICINTPAID', N'decimal', 5)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-7dbf', N'RCOND441bb08f:1436c079bff:-6f73', N'RUL441bb08f:1436c079bff:-6fa7', N'BASICPAID', N'decimal', 4)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:859', N'RCOND441bb08f:1436c079bff:-6f73-0035', N'RUL441bb08f:1436c079bff:-6fa7-0035', N'BASICPAID', N'decimal', 4)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-91b', N'RCOND441bb08f:1436c079bff:-6f73-0030', N'RUL441bb08f:1436c079bff:-6fa7-0030', N'BASICDISCTAKEN', N'decimal', 6)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:92f', N'RCOND441bb08f:1436c079bff:-6f73-0035', N'RUL441bb08f:1436c079bff:-6fa7-0035', N'BASICINTPAID', N'decimal', 5)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-a01', N'RCOND441bb08f:1436c079bff:-6f73-0030', N'RUL441bb08f:1436c079bff:-6fa7-0030', N'BASICINTPAID', N'decimal', 5)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-ad7', N'RCOND441bb08f:1436c079bff:-6f73-0030', N'RUL441bb08f:1436c079bff:-6fa7-0030', N'BASICPAID', N'decimal', 4)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:c25', N'RCOND441bb08f:1436c079bff:-6f73-0036', N'RUL441bb08f:1436c079bff:-6fa7-0036', N'BASICPAID', N'decimal', 4)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:cf', N'RCOND441bb08f:1436c079bff:-6f73-0033', N'RUL441bb08f:1436c079bff:-6fa7-0033', N'BASICPAID', N'decimal', 4)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:cfb', N'RCOND441bb08f:1436c079bff:-6f73-0036', N'RUL441bb08f:1436c079bff:-6fa7-0036', N'BASICINTPAID', N'decimal', 5)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-d01', N'RCOND441bb08f:1436c079bff:-6f73-0029', N'RUL441bb08f:1436c079bff:-6fa7-0029', N'BASICDISCTAKEN', N'decimal', 6)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:ddf', N'RCOND441bb08f:1436c079bff:-6f73-0036', N'RUL441bb08f:1436c079bff:-6fa7-0036', N'BASICDISCTAKEN', N'decimal', 6)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-de5', N'RCOND441bb08f:1436c079bff:-6f73-0029', N'RUL441bb08f:1436c079bff:-6fa7-0029', N'BASICINTPAID', N'decimal', 5)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-ebb', N'RCOND441bb08f:1436c079bff:-6f73-0029', N'RUL441bb08f:1436c079bff:-6fa7-0029', N'BASICPAID', N'decimal', 4)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST-70b3ef1:142f01dbd80:-7e4e', N'RCOND-70b3ef1:142f01dbd80:-7fc4', N'RUL4258911a:142f00f9c9e:-7f92', N'PINCOME', N'decimal', 2)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST-70b3ef1:142f01dbd80:-7eae', N'RCOND-70b3ef1:142f01dbd80:-7fc4', N'RUL4258911a:142f00f9c9e:-7f92', N'BGROSS', N'decimal', 1)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST-70b3ef1:142f01dbd80:-7f41', N'RCOND-70b3ef1:142f01dbd80:-7fc4', N'RUL4258911a:142f00f9c9e:-7f92', N'ASALARY', N'decimal', 0)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST-727f5592:144018f96a2:-7ee6', N'RCOND-727f5592:144018f96a2:-7eec', N'RUL-727f5592:144018f96a2:-7f25', N'LOCATED_ON_GOVERNMENT_PROPERTY', N'boolean', 1)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST-72a9958a:141e4770339:-64bb', N'RCOND-72a9958a:141e4770339:-6684', N'RUL-72a9958a:141e4770339:-6728', N'SEF', N'decimal', 3)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST-72a9958a:141e4770339:-654f', N'RCOND-72a9958a:141e4770339:-6684', N'RUL-72a9958a:141e4770339:-6728', N'BASIC', N'decimal', 2)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST-72a9958a:141e4770339:-66b8', N'RCOND-72a9958a:141e4770339:-66eb', N'RUL-72a9958a:141e4770339:-6728', N'CQTR', N'integer', 1)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST-72a9958a:141e4770339:-66d9', N'RCOND-72a9958a:141e4770339:-66eb', N'RUL-72a9958a:141e4770339:-6728', N'CY', N'integer', 0)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST-72a9958a:141e4770339:-784b', N'RCOND-72a9958a:141e4770339:-7a15', N'RUL-20919e10:141e3f76dc8:-6107', N'SEF', N'decimal', 3)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST-72a9958a:141e4770339:-78e0', N'RCOND-72a9958a:141e4770339:-7a15', N'RUL-20919e10:141e3f76dc8:-6107', N'BASIC', N'decimal', 2)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST-72a9958a:141e4770339:-7ca7', N'RCOND-72a9958a:141e4770339:-7f00', N'RUL-20919e10:141e3f76dc8:-6fa4', N'NMON', N'integer', 4)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST-72a9958a:141e4770339:-7d37', N'RCOND-72a9958a:141e4770339:-7f00', N'RUL-20919e10:141e3f76dc8:-6fa4', N'SEF', N'decimal', 3)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST-72a9958a:141e4770339:-7dcb', N'RCOND-72a9958a:141e4770339:-7f00', N'RUL-20919e10:141e3f76dc8:-6fa4', N'BASIC', N'decimal', 2)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST-7c13908b:1435065d2a1:-5d53', N'RCOND-7c13908b:1435065d2a1:-661a', N'RUL-7c13908b:1435065d2a1:-66d7', N'AV', N'decimal', 1)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST-7c13908b:1435065d2a1:-6645', N'RCOND-7c13908b:1435065d2a1:-6657', N'RUL-7c13908b:1435065d2a1:-66d7', N'CY', N'integer', 0)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST-7e9d4ac4:1421b9d7ba4:-7a86', N'RCOND-7e9d4ac4:1421b9d7ba4:-7c48', N'RUL-7e9d4ac4:1421b9d7ba4:-7d51', N'SEF', N'decimal', 3)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST-7e9d4ac4:1421b9d7ba4:-7b11', N'RCOND-7e9d4ac4:1421b9d7ba4:-7c48', N'RUL-7e9d4ac4:1421b9d7ba4:-7d51', N'BASIC', N'decimal', 2)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONST-7e9d4ac4:1421b9d7ba4:-7ca3', N'RCOND-7e9d4ac4:1421b9d7ba4:-7cb5', N'RUL-7e9d4ac4:1421b9d7ba4:-7d51', N'CY', N'integer', 0)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONSTaa4e683:143e6f7bbf2:-677c', N'RCONDaa4e683:143e6f7bbf2:-693d', N'RULaa4e683:143e6f7bbf2:-69f4', N'SEF', N'decimal', 2)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONSTaa4e683:143e6f7bbf2:-6836', N'RCONDaa4e683:143e6f7bbf2:-693d', N'RULaa4e683:143e6f7bbf2:-69f4', N'BASIC', N'decimal', 1)
INSERT [dbo].[sys_rule_condition_var] ([objid], [parentid], [ruleid], [varname], [datatype], [pos]) VALUES (N'RCONSTaa4e683:143e6f7bbf2:-699f', N'RCONDaa4e683:143e6f7bbf2:-69b5', N'RULaa4e683:143e6f7bbf2:-69f4', N'CY', N'integer', 0)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST-111ed864:1437daca74c:-33c2', N'RCOND-111ed864:1437daca74c:-33c8', N'FACTFLD2713811e:141f3ed1502:-7ede', N'booleanvalue', N'IS_LOCATED_IN_ILIGAN', N'is true', N'== true', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST-111ed864:1437daca74c:-33c3', N'RCOND-111ed864:1437daca74c:-33c8', N'FACTFLD-73089baf:141f3d279b0:-7f78', N'lob', NULL, N'is null', N'== null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST-111ed864:1437daca74c:-3a70', N'RCOND-111ed864:1437daca74c:-3a76', N'FACTFLD2713811e:141f3ed1502:-7ede', N'booleanvalue', N'IS_LOCATED_IN_ILIGAN', N'is true', N'== true', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST-111ed864:1437daca74c:-3a71', N'RCOND-111ed864:1437daca74c:-3a76', N'FACTFLD-73089baf:141f3d279b0:-7f78', N'lob', NULL, N'is null', N'== null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST-111ed864:1437daca74c:-3fb7', N'RCOND-111ed864:1437daca74c:-3fbd', N'FACTFLD2713811e:141f3ed1502:-7ede', N'booleanvalue', N'LOCATED_ON_GOVERNMENT_PROPERTY', N'not true', N'== false', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST-111ed864:1437daca74c:-3fb8', N'RCOND-111ed864:1437daca74c:-3fbd', N'FACTFLD-73089baf:141f3d279b0:-7f78', N'lob', NULL, N'is null', N'== null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST-111ed864:1437daca74c:-3ff9', N'RCOND-111ed864:1437daca74c:-4050', N'FACTFLD-7c5c4c8f:141e84ee23e:-7f45', N'orgtype', NULL, N'not exist in', N'not matches', NULL, NULL, NULL, NULL, NULL, NULL, N'["COOP"]', NULL, 1)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST-111ed864:1437daca74c:-402f', N'RCOND-111ed864:1437daca74c:-4050', N'FACTFLD-26aa09fd:1419696e71f:-7fe4', N'apptype', NULL, N'is any of the ff.', N'matches', NULL, NULL, NULL, NULL, NULL, NULL, N'["NEW","RENEW"]', NULL, 0)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST-111ed864:1437daca74c:-497d', N'RCOND-111ed864:1437daca74c:-4983', N'FACTFLD2713811e:141f3ed1502:-7ede', N'booleanvalue', N'IS_LOCATED_IN_ILIGAN', N'is true', N'== true', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST-111ed864:1437daca74c:-497e', N'RCOND-111ed864:1437daca74c:-4983', N'FACTFLD-73089baf:141f3d279b0:-7f78', N'lob', NULL, N'is null', N'== null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST1dc7a3de:142b70df9f8:-7f0e', N'RCOND1dc7a3de:142b70df9f8:-7f13', N'FACTFLD2713811e:141f3ed1502:-7ee7', N'intvalue', N'NUM_EMPLOYEE_FEMALE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST1dc7a3de:142b70df9f8:-7f59', N'RCOND1dc7a3de:142b70df9f8:-7f5e', N'FACTFLD2713811e:141f3ed1502:-7ee7', N'intvalue', N'NUM_EMPLOYEE_MALE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST-20919e10:141e3f76dc8:-61a7', N'RCOND-20919e10:141e3f76dc8:-64b1', N'FACTFLD2701c487:141e346f838:-7f95', N'fullpayment', NULL, N'is true', N'== true', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST-20919e10:141e3f76dc8:-6348', N'RCOND-20919e10:141e3f76dc8:-64b1', N'FACTFLD17d6e7ce:141df4b60c2:-7c7f', N'sef', N'SEF', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST-20919e10:141e3f76dc8:-63c3', N'RCOND-20919e10:141e3f76dc8:-64b1', N'FACTFLD17d6e7ce:141df4b60c2:-7ca2', N'basic', N'BASIC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST-20919e10:141e3f76dc8:-643d', N'RCOND-20919e10:141e3f76dc8:-64b1', N'FACTFLD17d6e7ce:141df4b60c2:-7d03', N'year', NULL, N'greater than', N'>', 1, N'RCONST-20919e10:141e3f76dc8:-64d9', N'CY', NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST-20919e10:141e3f76dc8:-64d9', N'RCOND-20919e10:141e3f76dc8:-64eb', N'FACTFLD49ae4bad:141e3b6758c:-7b9c', N'year', N'CY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST-20919e10:141e3f76dc8:-6ccb', N'RCOND-20919e10:141e3f76dc8:-6cfe', N'FACTFLD49ae4bad:141e3b6758c:-7b95', N'qtr', N'CQTR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST-20919e10:141e3f76dc8:-6cec', N'RCOND-20919e10:141e3f76dc8:-6cfe', N'FACTFLD49ae4bad:141e3b6758c:-7b9c', N'year', N'CY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST-20919e10:141e3f76dc8:-7522', N'RCOND-20919e10:141e3f76dc8:-7715', N'FACTFLD17d6e7ce:141df4b60c2:-7ca9', N'numberofmonthsfromjan', N'NMON', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST-20919e10:141e3f76dc8:-75ae', N'RCOND-20919e10:141e3f76dc8:-7715', N'FACTFLD17d6e7ce:141df4b60c2:-7c7f', N'sef', N'SEF', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST-20919e10:141e3f76dc8:-7629', N'RCOND-20919e10:141e3f76dc8:-7715', N'FACTFLD17d6e7ce:141df4b60c2:-7ca2', N'basic', N'BASIC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST-20919e10:141e3f76dc8:-76a1', N'RCOND-20919e10:141e3f76dc8:-7715', N'FACTFLD17d6e7ce:141df4b60c2:-7d03', N'year', NULL, N'less than', N'<', 1, N'RCONST-20919e10:141e3f76dc8:-773d', N'CY', NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST-20919e10:141e3f76dc8:-773d', N'RCOND-20919e10:141e3f76dc8:-774f', N'FACTFLD49ae4bad:141e3b6758c:-7b9c', N'year', N'CY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST-20919e10:141e3f76dc8:-7a2e', N'RCOND-20919e10:141e3f76dc8:-7b76', N'FACTFLD17d6e7ce:141df4b60c2:-7cf5', N'av', N'AV', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST-20919e10:141e3f76dc8:-7ab3', N'RCOND-20919e10:141e3f76dc8:-7b76', N'FACTFLD17d6e7ce:141df4b60c2:-7d03', N'year', NULL, N'greater than', N'>', 1, N'RCONST-20919e10:141e3f76dc8:-7b9e', N'CY', NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST-20919e10:141e3f76dc8:-7b9e', N'RCOND-20919e10:141e3f76dc8:-7bb8', N'FACTFLD49ae4bad:141e3b6758c:-7b9c', N'year', N'CY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST-20919e10:141e3f76dc8:-7ce4', N'RCOND-20919e10:141e3f76dc8:-7de5', N'FACTFLD17d6e7ce:141df4b60c2:-7cf5', N'av', N'AV', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST-20919e10:141e3f76dc8:-7d71', N'RCOND-20919e10:141e3f76dc8:-7de5', N'FACTFLD17d6e7ce:141df4b60c2:-7d03', N'year', NULL, N'equal to', N'==', 1, N'RCONST-20919e10:141e3f76dc8:-7e0d', N'CY', NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST-20919e10:141e3f76dc8:-7e0d', N'RCOND-20919e10:141e3f76dc8:-7e1f', N'FACTFLD49ae4bad:141e3b6758c:-7b9c', N'year', N'CY', N'equal to', N'==', 1, N'RCONST-20919e10:141e3f76dc8:-7e0d', N'CY', NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST2659bca9:142b667ccd3:-7cf8', N'RCOND2659bca9:142b667ccd3:-7d1c', N'FACTFLD-26aa09fd:1419696e71f:-7fe4', N'apptype', NULL, N'is any of the ff.', N'matches', NULL, NULL, NULL, NULL, NULL, NULL, N'["NEW","RENEW"]', NULL, 0)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST270217d9:143576614a1:-7a25', N'RCOND270217d9:143576614a1:-7a52', N'FACTFLD17d6e7ce:141df4b60c2:-7c0c', N'assessedvalue', N'AV2013', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST270217d9:143576614a1:-7a43', N'RCOND270217d9:143576614a1:-7a52', N'FACTFLD17d6e7ce:141df4b60c2:-7c13', N'year', NULL, N'equal to', N'==', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 0)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST270217d9:143576614a1:-7a7a', N'RCOND270217d9:143576614a1:-7a8c', N'FACTFLD49ae4bad:141e3b6758c:-7b9c', N'year', NULL, N'equal to', N'==', 1, N'RCONST270217d9:143576614a1:-7bbd', N'YR2015', NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST270217d9:143576614a1:-7ac9', N'RCOND270217d9:143576614a1:-7c0e', N'FACTFLD270217d9:143576614a1:-7f94', N'reclassed', NULL, N'is true', N'== true', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST270217d9:143576614a1:-7b5d', N'RCOND270217d9:143576614a1:-7c0e', N'FACTFLD17d6e7ce:141df4b60c2:-7cf5', N'av', N'AV', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST270217d9:143576614a1:-7bbd', N'RCOND270217d9:143576614a1:-7c0e', N'FACTFLD17d6e7ce:141df4b60c2:-7d03', N'year', N'YR2015', N'equal to', N'==', NULL, NULL, NULL, NULL, 2015, NULL, NULL, NULL, 0)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST270217d9:143576614a1:-7d5c', N'RCOND270217d9:143576614a1:-7d89', N'FACTFLD17d6e7ce:141df4b60c2:-7c0c', N'assessedvalue', N'AV2013', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST270217d9:143576614a1:-7d7a', N'RCOND270217d9:143576614a1:-7d89', N'FACTFLD17d6e7ce:141df4b60c2:-7c13', N'year', NULL, N'equal to', N'==', NULL, NULL, NULL, NULL, 2013, NULL, NULL, NULL, 0)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST270217d9:143576614a1:-7db1', N'RCOND270217d9:143576614a1:-7dcb', N'FACTFLD49ae4bad:141e3b6758c:-7b9c', N'year', NULL, N'equal to', N'==', 1, N'RCONST270217d9:143576614a1:-7efc', N'YR2014', NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST270217d9:143576614a1:-7e08', N'RCOND270217d9:143576614a1:-7f4d', N'FACTFLD270217d9:143576614a1:-7f94', N'reclassed', NULL, N'is true', N'== true', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST270217d9:143576614a1:-7e9c', N'RCOND270217d9:143576614a1:-7f4d', N'FACTFLD17d6e7ce:141df4b60c2:-7cf5', N'av', N'AV', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST270217d9:143576614a1:-7efc', N'RCOND270217d9:143576614a1:-7f4d', N'FACTFLD17d6e7ce:141df4b60c2:-7d03', N'year', N'YR2014', N'equal to', N'==', NULL, NULL, NULL, NULL, 2014, NULL, NULL, NULL, 0)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST29ba689e:144612b8ef4:-78ee', N'RCOND29ba689e:144612b8ef4:-79fe', N'FACTFLD17d6e7ce:141df4b60c2:-7cee', N'txntype', NULL, N'matches', N'matches', NULL, NULL, NULL, NULL, NULL, N'ND', NULL, NULL, 1)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST29ba689e:144612b8ef4:-7971', N'RCOND29ba689e:144612b8ef4:-79fe', N'FACTFLD17d6e7ce:141df4b60c2:-7d03', N'year', NULL, N'less than', N'<', 1, N'RCONST29ba689e:144612b8ef4:-7a29', N'CY', NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST29ba689e:144612b8ef4:-7a29', N'RCOND29ba689e:144612b8ef4:-7a3b', N'FACTFLD49ae4bad:141e3b6758c:-7b9c', N'year', N'CY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST-2a4d2fa5:1422bad4acc:-77c3', N'RCOND-2a4d2fa5:1422bad4acc:-7919', N'FACTFLD17d6e7ce:141df4b60c2:-7c7f', N'sef', N'SEF', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST-2a4d2fa5:1422bad4acc:-7852', N'RCOND-2a4d2fa5:1422bad4acc:-7919', N'FACTFLD17d6e7ce:141df4b60c2:-7ce0', N'classification', NULL, N'is any of the ff.', N'matches', NULL, NULL, NULL, NULL, NULL, NULL, N'[[key:"INDUSTRIAL",value:"INDUSTRIAL"],[key:"COMMERCIAL",value:"COMMERCIAL"]]', NULL, 1)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST-2a4d2fa5:1422bad4acc:-78ba', N'RCOND-2a4d2fa5:1422bad4acc:-7919', N'FACTFLD17d6e7ce:141df4b60c2:-7ce7', N'rputype', NULL, N'is any of the ff.', N'matches', NULL, NULL, NULL, NULL, NULL, NULL, N'["bldg"]', NULL, 0)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST-335216e7:142b6e37e20:-7dcb', N'RCOND-335216e7:142b6e37e20:-7dd0', N'FACTFLD2713811e:141f3ed1502:-7ede', N'booleanvalue', N'IS_RENTED', N'is true', N'== true', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST-36ba5ccb:1430894b791:-4259', N'RCOND-36ba5ccb:1430894b791:-4282', N'FACTFLD-26aa09fd:1419696e71f:-7fe4', N'apptype', NULL, N'is any of the ff.', N'matches', NULL, NULL, NULL, NULL, NULL, NULL, N'["NEW","RENEW"]', NULL, 0)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST-3a26f3ae:142d1e8ff98:-7ee3', N'RCOND-3a26f3ae:142d1e8ff98:-7f05', N'FACTFLD-26aa09fd:1419696e71f:-7fe4', N'apptype', NULL, N'is any of the ff.', N'matches', NULL, NULL, NULL, NULL, NULL, NULL, N'["NEW"]', NULL, 0)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST41c8b101:142adfe2a5c:-7a84', N'RCOND41c8b101:142adfe2a5c:-7a8a', N'FACTFLD2713811e:141f3ed1502:-7ede', N'booleanvalue', N'HAS_TAX_INCENTIVE', N'is true', N'== true', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST41c8b101:142adfe2a5c:-7a85', N'RCOND41c8b101:142adfe2a5c:-7a8a', N'FACTFLD-73089baf:141f3d279b0:-7f78', N'lob', NULL, N'is null', N'== null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST-43d54639:143600ea5ae:-7c04', N'RCOND36552f88:142c18ff1a4:-7eea', N'FACTFLD-26aa09fd:1419696e71f:-7fe4', N'apptype', NULL, N'is any of the ff.', N'matches', NULL, NULL, NULL, NULL, NULL, NULL, N'["NEW","RENEW"]', NULL, 0)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST-43d54639:143600ea5ae:-7ded', N'RCOND-43d54639:143600ea5ae:-7e0e', N'FACTFLD-26aa09fd:1419696e71f:-7fe4', N'apptype', NULL, N'is any of the ff.', N'matches', NULL, NULL, NULL, NULL, NULL, NULL, N'["NEW","RENEW","RETIRE"]', NULL, 0)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6d5a', N'RCOND441bb08f:1436c079bff:-6f73', N'FACTFLD17d6e7ce:141df4b60c2:-7c9b', N'basicint', N'BASICINT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6d5a-0002', N'RCOND441bb08f:1436c079bff:-6f73-0002', N'FACTFLD17d6e7ce:141df4b60c2:-7c9b', N'basicint', N'BASICINT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6d5a-0003', N'RCOND441bb08f:1436c079bff:-6f73-0003', N'FACTFLD17d6e7ce:141df4b60c2:-7c9b', N'basicint', N'BASICINT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6d5a-0004', N'RCOND441bb08f:1436c079bff:-6f73-0004', N'FACTFLD17d6e7ce:141df4b60c2:-7c9b', N'basicint', N'BASICINT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6d5a-0005', N'RCOND441bb08f:1436c079bff:-6f73-0005', N'FACTFLD17d6e7ce:141df4b60c2:-7c9b', N'basicint', N'BASICINT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6d5a-0006', N'RCOND441bb08f:1436c079bff:-6f73-0006', N'FACTFLD17d6e7ce:141df4b60c2:-7c9b', N'basicint', N'BASICINT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6d5a-0007', N'RCOND441bb08f:1436c079bff:-6f73-0007', N'FACTFLD17d6e7ce:141df4b60c2:-7c9b', N'basicint', N'BASICINT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6d5a-0008', N'RCOND441bb08f:1436c079bff:-6f73-0008', N'FACTFLD17d6e7ce:141df4b60c2:-7c9b', N'basicint', N'BASICINT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6d5a-0009', N'RCOND441bb08f:1436c079bff:-6f73-0009', N'FACTFLD17d6e7ce:141df4b60c2:-7c9b', N'basicint', N'BASICINT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6d5a-0010', N'RCOND441bb08f:1436c079bff:-6f73-0010', N'FACTFLD17d6e7ce:141df4b60c2:-7c9b', N'basicint', N'BASICINT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6d5a-0011', N'RCOND441bb08f:1436c079bff:-6f73-0011', N'FACTFLD17d6e7ce:141df4b60c2:-7c9b', N'basicint', N'BASICINT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6d5a-0012', N'RCOND441bb08f:1436c079bff:-6f73-0012', N'FACTFLD17d6e7ce:141df4b60c2:-7c9b', N'basicint', N'BASICINT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6d5a-0013', N'RCOND441bb08f:1436c079bff:-6f73-0013', N'FACTFLD17d6e7ce:141df4b60c2:-7c9b', N'basicint', N'BASICINT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6d5a-0014', N'RCOND441bb08f:1436c079bff:-6f73-0014', N'FACTFLD17d6e7ce:141df4b60c2:-7c9b', N'basicint', N'BASICINT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6d5a-0015', N'RCOND441bb08f:1436c079bff:-6f73-0015', N'FACTFLD17d6e7ce:141df4b60c2:-7c9b', N'basicint', N'BASICINT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6d5a-0016', N'RCOND441bb08f:1436c079bff:-6f73-0016', N'FACTFLD17d6e7ce:141df4b60c2:-7c9b', N'basicint', N'BASICINT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6d5a-0017', N'RCOND441bb08f:1436c079bff:-6f73-0017', N'FACTFLD17d6e7ce:141df4b60c2:-7c9b', N'basicint', N'BASICINT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6d5a-0018', N'RCOND441bb08f:1436c079bff:-6f73-0018', N'FACTFLD17d6e7ce:141df4b60c2:-7c9b', N'basicint', N'BASICINT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6d5a-0019', N'RCOND441bb08f:1436c079bff:-6f73-0019', N'FACTFLD17d6e7ce:141df4b60c2:-7c9b', N'basicint', N'BASICINT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6d5a-0020', N'RCOND441bb08f:1436c079bff:-6f73-0020', N'FACTFLD17d6e7ce:141df4b60c2:-7c9b', N'basicint', N'BASICINT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6d5a-0021', N'RCOND441bb08f:1436c079bff:-6f73-0021', N'FACTFLD17d6e7ce:141df4b60c2:-7c9b', N'basicint', N'BASICINT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6d5a-0022', N'RCOND441bb08f:1436c079bff:-6f73-0022', N'FACTFLD17d6e7ce:141df4b60c2:-7c9b', N'basicint', N'BASICINT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6d5a-0023', N'RCOND441bb08f:1436c079bff:-6f73-0023', N'FACTFLD17d6e7ce:141df4b60c2:-7c9b', N'basicint', N'BASICINT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6d5a-0024', N'RCOND441bb08f:1436c079bff:-6f73-0024', N'FACTFLD17d6e7ce:141df4b60c2:-7c9b', N'basicint', N'BASICINT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6d5a-0025', N'RCOND441bb08f:1436c079bff:-6f73-0025', N'FACTFLD17d6e7ce:141df4b60c2:-7c9b', N'basicint', N'BASICINT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6d5a-0026', N'RCOND441bb08f:1436c079bff:-6f73-0026', N'FACTFLD17d6e7ce:141df4b60c2:-7c9b', N'basicint', N'BASICINT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6d5a-0027', N'RCOND441bb08f:1436c079bff:-6f73-0027', N'FACTFLD17d6e7ce:141df4b60c2:-7c9b', N'basicint', N'BASICINT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6d5a-0028', N'RCOND441bb08f:1436c079bff:-6f73-0028', N'FACTFLD17d6e7ce:141df4b60c2:-7c9b', N'basicint', N'BASICINT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6d5a-0029', N'RCOND441bb08f:1436c079bff:-6f73-0029', N'FACTFLD17d6e7ce:141df4b60c2:-7c9b', N'basicint', N'BASICINT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6d5a-0030', N'RCOND441bb08f:1436c079bff:-6f73-0030', N'FACTFLD17d6e7ce:141df4b60c2:-7c9b', N'basicint', N'BASICINT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6d5a-0031', N'RCOND441bb08f:1436c079bff:-6f73-0031', N'FACTFLD17d6e7ce:141df4b60c2:-7c9b', N'basicint', N'BASICINT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6d5a-0032', N'RCOND441bb08f:1436c079bff:-6f73-0032', N'FACTFLD17d6e7ce:141df4b60c2:-7c9b', N'basicint', N'BASICINT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6d5a-0033', N'RCOND441bb08f:1436c079bff:-6f73-0033', N'FACTFLD17d6e7ce:141df4b60c2:-7c9b', N'basicint', N'BASICINT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6d5a-0034', N'RCOND441bb08f:1436c079bff:-6f73-0034', N'FACTFLD17d6e7ce:141df4b60c2:-7c9b', N'basicint', N'BASICINT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6d5a-0035', N'RCOND441bb08f:1436c079bff:-6f73-0035', N'FACTFLD17d6e7ce:141df4b60c2:-7c9b', N'basicint', N'BASICINT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6d5a-0036', N'RCOND441bb08f:1436c079bff:-6f73-0036', N'FACTFLD17d6e7ce:141df4b60c2:-7c9b', N'basicint', N'BASICINT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6d5a-0037', N'RCOND441bb08f:1436c079bff:-6f73-0037', N'FACTFLD17d6e7ce:141df4b60c2:-7c9b', N'basicint', N'BASICINT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6d5a-0038', N'RCOND441bb08f:1436c079bff:-6f73-0038', N'FACTFLD17d6e7ce:141df4b60c2:-7c9b', N'basicint', N'BASICINT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6d5a-0039', N'RCOND441bb08f:1436c079bff:-6f73-0039', N'FACTFLD17d6e7ce:141df4b60c2:-7c9b', N'basicint', N'BASICINT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6d5a-0040', N'RCOND441bb08f:1436c079bff:-6f73-0040', N'FACTFLD17d6e7ce:141df4b60c2:-7c9b', N'basicint', N'BASICINT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6d5a-0041', N'RCOND441bb08f:1436c079bff:-6f73-0041', N'FACTFLD17d6e7ce:141df4b60c2:-7c9b', N'basicint', N'BASICINT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6d5a-0042', N'RCOND441bb08f:1436c079bff:-6f73-0042', N'FACTFLD17d6e7ce:141df4b60c2:-7c9b', N'basicint', N'BASICINT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6d5a-0043', N'RCOND441bb08f:1436c079bff:-6f73-0043', N'FACTFLD17d6e7ce:141df4b60c2:-7c9b', N'basicint', N'BASICINT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6d5a-0044', N'RCOND441bb08f:1436c079bff:-6f73-0044', N'FACTFLD17d6e7ce:141df4b60c2:-7c9b', N'basicint', N'BASICINT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6df7', N'RCOND441bb08f:1436c079bff:-6f73', N'FACTFLD17d6e7ce:141df4b60c2:-7c94', N'basicdisc', N'BASICDISC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2)
GO
print 'Processed 100 total records'
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6df7-0002', N'RCOND441bb08f:1436c079bff:-6f73-0002', N'FACTFLD17d6e7ce:141df4b60c2:-7c94', N'basicdisc', N'BASICDISC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6df7-0003', N'RCOND441bb08f:1436c079bff:-6f73-0003', N'FACTFLD17d6e7ce:141df4b60c2:-7c94', N'basicdisc', N'BASICDISC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6df7-0004', N'RCOND441bb08f:1436c079bff:-6f73-0004', N'FACTFLD17d6e7ce:141df4b60c2:-7c94', N'basicdisc', N'BASICDISC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6df7-0005', N'RCOND441bb08f:1436c079bff:-6f73-0005', N'FACTFLD17d6e7ce:141df4b60c2:-7c94', N'basicdisc', N'BASICDISC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6df7-0006', N'RCOND441bb08f:1436c079bff:-6f73-0006', N'FACTFLD17d6e7ce:141df4b60c2:-7c94', N'basicdisc', N'BASICDISC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6df7-0007', N'RCOND441bb08f:1436c079bff:-6f73-0007', N'FACTFLD17d6e7ce:141df4b60c2:-7c94', N'basicdisc', N'BASICDISC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6df7-0008', N'RCOND441bb08f:1436c079bff:-6f73-0008', N'FACTFLD17d6e7ce:141df4b60c2:-7c94', N'basicdisc', N'BASICDISC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6df7-0009', N'RCOND441bb08f:1436c079bff:-6f73-0009', N'FACTFLD17d6e7ce:141df4b60c2:-7c94', N'basicdisc', N'BASICDISC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6df7-0010', N'RCOND441bb08f:1436c079bff:-6f73-0010', N'FACTFLD17d6e7ce:141df4b60c2:-7c94', N'basicdisc', N'BASICDISC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6df7-0011', N'RCOND441bb08f:1436c079bff:-6f73-0011', N'FACTFLD17d6e7ce:141df4b60c2:-7c94', N'basicdisc', N'BASICDISC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6df7-0012', N'RCOND441bb08f:1436c079bff:-6f73-0012', N'FACTFLD17d6e7ce:141df4b60c2:-7c94', N'basicdisc', N'BASICDISC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6df7-0013', N'RCOND441bb08f:1436c079bff:-6f73-0013', N'FACTFLD17d6e7ce:141df4b60c2:-7c94', N'basicdisc', N'BASICDISC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6df7-0014', N'RCOND441bb08f:1436c079bff:-6f73-0014', N'FACTFLD17d6e7ce:141df4b60c2:-7c94', N'basicdisc', N'BASICDISC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6df7-0015', N'RCOND441bb08f:1436c079bff:-6f73-0015', N'FACTFLD17d6e7ce:141df4b60c2:-7c94', N'basicdisc', N'BASICDISC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6df7-0016', N'RCOND441bb08f:1436c079bff:-6f73-0016', N'FACTFLD17d6e7ce:141df4b60c2:-7c94', N'basicdisc', N'BASICDISC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6df7-0017', N'RCOND441bb08f:1436c079bff:-6f73-0017', N'FACTFLD17d6e7ce:141df4b60c2:-7c94', N'basicdisc', N'BASICDISC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6df7-0018', N'RCOND441bb08f:1436c079bff:-6f73-0018', N'FACTFLD17d6e7ce:141df4b60c2:-7c94', N'basicdisc', N'BASICDISC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6df7-0019', N'RCOND441bb08f:1436c079bff:-6f73-0019', N'FACTFLD17d6e7ce:141df4b60c2:-7c94', N'basicdisc', N'BASICDISC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6df7-0020', N'RCOND441bb08f:1436c079bff:-6f73-0020', N'FACTFLD17d6e7ce:141df4b60c2:-7c94', N'basicdisc', N'BASICDISC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6df7-0021', N'RCOND441bb08f:1436c079bff:-6f73-0021', N'FACTFLD17d6e7ce:141df4b60c2:-7c94', N'basicdisc', N'BASICDISC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6df7-0022', N'RCOND441bb08f:1436c079bff:-6f73-0022', N'FACTFLD17d6e7ce:141df4b60c2:-7c94', N'basicdisc', N'BASICDISC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6df7-0023', N'RCOND441bb08f:1436c079bff:-6f73-0023', N'FACTFLD17d6e7ce:141df4b60c2:-7c94', N'basicdisc', N'BASICDISC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6df7-0024', N'RCOND441bb08f:1436c079bff:-6f73-0024', N'FACTFLD17d6e7ce:141df4b60c2:-7c94', N'basicdisc', N'BASICDISC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6df7-0025', N'RCOND441bb08f:1436c079bff:-6f73-0025', N'FACTFLD17d6e7ce:141df4b60c2:-7c94', N'basicdisc', N'BASICDISC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6df7-0026', N'RCOND441bb08f:1436c079bff:-6f73-0026', N'FACTFLD17d6e7ce:141df4b60c2:-7c94', N'basicdisc', N'BASICDISC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6df7-0027', N'RCOND441bb08f:1436c079bff:-6f73-0027', N'FACTFLD17d6e7ce:141df4b60c2:-7c94', N'basicdisc', N'BASICDISC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6df7-0028', N'RCOND441bb08f:1436c079bff:-6f73-0028', N'FACTFLD17d6e7ce:141df4b60c2:-7c94', N'basicdisc', N'BASICDISC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6df7-0029', N'RCOND441bb08f:1436c079bff:-6f73-0029', N'FACTFLD17d6e7ce:141df4b60c2:-7c94', N'basicdisc', N'BASICDISC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6df7-0030', N'RCOND441bb08f:1436c079bff:-6f73-0030', N'FACTFLD17d6e7ce:141df4b60c2:-7c94', N'basicdisc', N'BASICDISC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6df7-0031', N'RCOND441bb08f:1436c079bff:-6f73-0031', N'FACTFLD17d6e7ce:141df4b60c2:-7c94', N'basicdisc', N'BASICDISC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6df7-0032', N'RCOND441bb08f:1436c079bff:-6f73-0032', N'FACTFLD17d6e7ce:141df4b60c2:-7c94', N'basicdisc', N'BASICDISC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6df7-0033', N'RCOND441bb08f:1436c079bff:-6f73-0033', N'FACTFLD17d6e7ce:141df4b60c2:-7c94', N'basicdisc', N'BASICDISC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6df7-0034', N'RCOND441bb08f:1436c079bff:-6f73-0034', N'FACTFLD17d6e7ce:141df4b60c2:-7c94', N'basicdisc', N'BASICDISC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6df7-0035', N'RCOND441bb08f:1436c079bff:-6f73-0035', N'FACTFLD17d6e7ce:141df4b60c2:-7c94', N'basicdisc', N'BASICDISC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6df7-0036', N'RCOND441bb08f:1436c079bff:-6f73-0036', N'FACTFLD17d6e7ce:141df4b60c2:-7c94', N'basicdisc', N'BASICDISC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6df7-0037', N'RCOND441bb08f:1436c079bff:-6f73-0037', N'FACTFLD17d6e7ce:141df4b60c2:-7c94', N'basicdisc', N'BASICDISC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6df7-0038', N'RCOND441bb08f:1436c079bff:-6f73-0038', N'FACTFLD17d6e7ce:141df4b60c2:-7c94', N'basicdisc', N'BASICDISC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6df7-0039', N'RCOND441bb08f:1436c079bff:-6f73-0039', N'FACTFLD17d6e7ce:141df4b60c2:-7c94', N'basicdisc', N'BASICDISC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6df7-0040', N'RCOND441bb08f:1436c079bff:-6f73-0040', N'FACTFLD17d6e7ce:141df4b60c2:-7c94', N'basicdisc', N'BASICDISC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6df7-0041', N'RCOND441bb08f:1436c079bff:-6f73-0041', N'FACTFLD17d6e7ce:141df4b60c2:-7c94', N'basicdisc', N'BASICDISC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6df7-0042', N'RCOND441bb08f:1436c079bff:-6f73-0042', N'FACTFLD17d6e7ce:141df4b60c2:-7c94', N'basicdisc', N'BASICDISC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6df7-0043', N'RCOND441bb08f:1436c079bff:-6f73-0043', N'FACTFLD17d6e7ce:141df4b60c2:-7c94', N'basicdisc', N'BASICDISC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6df7-0044', N'RCOND441bb08f:1436c079bff:-6f73-0044', N'FACTFLD17d6e7ce:141df4b60c2:-7c94', N'basicdisc', N'BASICDISC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6e87', N'RCOND441bb08f:1436c079bff:-6f73', N'FACTFLD17d6e7ce:141df4b60c2:-7ca2', N'basic', N'BASIC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6e87-0002', N'RCOND441bb08f:1436c079bff:-6f73-0002', N'FACTFLD17d6e7ce:141df4b60c2:-7ca2', N'basic', N'BASIC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6e87-0003', N'RCOND441bb08f:1436c079bff:-6f73-0003', N'FACTFLD17d6e7ce:141df4b60c2:-7ca2', N'basic', N'BASIC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6e87-0004', N'RCOND441bb08f:1436c079bff:-6f73-0004', N'FACTFLD17d6e7ce:141df4b60c2:-7ca2', N'basic', N'BASIC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6e87-0005', N'RCOND441bb08f:1436c079bff:-6f73-0005', N'FACTFLD17d6e7ce:141df4b60c2:-7ca2', N'basic', N'BASIC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6e87-0006', N'RCOND441bb08f:1436c079bff:-6f73-0006', N'FACTFLD17d6e7ce:141df4b60c2:-7ca2', N'basic', N'BASIC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6e87-0007', N'RCOND441bb08f:1436c079bff:-6f73-0007', N'FACTFLD17d6e7ce:141df4b60c2:-7ca2', N'basic', N'BASIC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6e87-0008', N'RCOND441bb08f:1436c079bff:-6f73-0008', N'FACTFLD17d6e7ce:141df4b60c2:-7ca2', N'basic', N'BASIC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6e87-0009', N'RCOND441bb08f:1436c079bff:-6f73-0009', N'FACTFLD17d6e7ce:141df4b60c2:-7ca2', N'basic', N'BASIC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6e87-0010', N'RCOND441bb08f:1436c079bff:-6f73-0010', N'FACTFLD17d6e7ce:141df4b60c2:-7ca2', N'basic', N'BASIC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6e87-0011', N'RCOND441bb08f:1436c079bff:-6f73-0011', N'FACTFLD17d6e7ce:141df4b60c2:-7ca2', N'basic', N'BASIC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6e87-0012', N'RCOND441bb08f:1436c079bff:-6f73-0012', N'FACTFLD17d6e7ce:141df4b60c2:-7ca2', N'basic', N'BASIC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6e87-0013', N'RCOND441bb08f:1436c079bff:-6f73-0013', N'FACTFLD17d6e7ce:141df4b60c2:-7ca2', N'basic', N'BASIC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6e87-0014', N'RCOND441bb08f:1436c079bff:-6f73-0014', N'FACTFLD17d6e7ce:141df4b60c2:-7ca2', N'basic', N'BASIC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6e87-0015', N'RCOND441bb08f:1436c079bff:-6f73-0015', N'FACTFLD17d6e7ce:141df4b60c2:-7ca2', N'basic', N'BASIC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6e87-0016', N'RCOND441bb08f:1436c079bff:-6f73-0016', N'FACTFLD17d6e7ce:141df4b60c2:-7ca2', N'basic', N'BASIC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6e87-0017', N'RCOND441bb08f:1436c079bff:-6f73-0017', N'FACTFLD17d6e7ce:141df4b60c2:-7ca2', N'basic', N'BASIC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6e87-0018', N'RCOND441bb08f:1436c079bff:-6f73-0018', N'FACTFLD17d6e7ce:141df4b60c2:-7ca2', N'basic', N'BASIC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6e87-0019', N'RCOND441bb08f:1436c079bff:-6f73-0019', N'FACTFLD17d6e7ce:141df4b60c2:-7ca2', N'basic', N'BASIC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6e87-0020', N'RCOND441bb08f:1436c079bff:-6f73-0020', N'FACTFLD17d6e7ce:141df4b60c2:-7ca2', N'basic', N'BASIC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6e87-0021', N'RCOND441bb08f:1436c079bff:-6f73-0021', N'FACTFLD17d6e7ce:141df4b60c2:-7ca2', N'basic', N'BASIC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6e87-0022', N'RCOND441bb08f:1436c079bff:-6f73-0022', N'FACTFLD17d6e7ce:141df4b60c2:-7ca2', N'basic', N'BASIC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6e87-0023', N'RCOND441bb08f:1436c079bff:-6f73-0023', N'FACTFLD17d6e7ce:141df4b60c2:-7ca2', N'basic', N'BASIC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6e87-0024', N'RCOND441bb08f:1436c079bff:-6f73-0024', N'FACTFLD17d6e7ce:141df4b60c2:-7ca2', N'basic', N'BASIC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6e87-0025', N'RCOND441bb08f:1436c079bff:-6f73-0025', N'FACTFLD17d6e7ce:141df4b60c2:-7ca2', N'basic', N'BASIC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6e87-0026', N'RCOND441bb08f:1436c079bff:-6f73-0026', N'FACTFLD17d6e7ce:141df4b60c2:-7ca2', N'basic', N'BASIC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6e87-0027', N'RCOND441bb08f:1436c079bff:-6f73-0027', N'FACTFLD17d6e7ce:141df4b60c2:-7ca2', N'basic', N'BASIC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6e87-0028', N'RCOND441bb08f:1436c079bff:-6f73-0028', N'FACTFLD17d6e7ce:141df4b60c2:-7ca2', N'basic', N'BASIC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6e87-0029', N'RCOND441bb08f:1436c079bff:-6f73-0029', N'FACTFLD17d6e7ce:141df4b60c2:-7ca2', N'basic', N'BASIC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6e87-0030', N'RCOND441bb08f:1436c079bff:-6f73-0030', N'FACTFLD17d6e7ce:141df4b60c2:-7ca2', N'basic', N'BASIC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6e87-0031', N'RCOND441bb08f:1436c079bff:-6f73-0031', N'FACTFLD17d6e7ce:141df4b60c2:-7ca2', N'basic', N'BASIC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6e87-0032', N'RCOND441bb08f:1436c079bff:-6f73-0032', N'FACTFLD17d6e7ce:141df4b60c2:-7ca2', N'basic', N'BASIC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6e87-0033', N'RCOND441bb08f:1436c079bff:-6f73-0033', N'FACTFLD17d6e7ce:141df4b60c2:-7ca2', N'basic', N'BASIC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6e87-0034', N'RCOND441bb08f:1436c079bff:-6f73-0034', N'FACTFLD17d6e7ce:141df4b60c2:-7ca2', N'basic', N'BASIC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6e87-0035', N'RCOND441bb08f:1436c079bff:-6f73-0035', N'FACTFLD17d6e7ce:141df4b60c2:-7ca2', N'basic', N'BASIC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6e87-0036', N'RCOND441bb08f:1436c079bff:-6f73-0036', N'FACTFLD17d6e7ce:141df4b60c2:-7ca2', N'basic', N'BASIC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6e87-0037', N'RCOND441bb08f:1436c079bff:-6f73-0037', N'FACTFLD17d6e7ce:141df4b60c2:-7ca2', N'basic', N'BASIC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6e87-0038', N'RCOND441bb08f:1436c079bff:-6f73-0038', N'FACTFLD17d6e7ce:141df4b60c2:-7ca2', N'basic', N'BASIC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6e87-0039', N'RCOND441bb08f:1436c079bff:-6f73-0039', N'FACTFLD17d6e7ce:141df4b60c2:-7ca2', N'basic', N'BASIC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6e87-0040', N'RCOND441bb08f:1436c079bff:-6f73-0040', N'FACTFLD17d6e7ce:141df4b60c2:-7ca2', N'basic', N'BASIC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6e87-0041', N'RCOND441bb08f:1436c079bff:-6f73-0041', N'FACTFLD17d6e7ce:141df4b60c2:-7ca2', N'basic', N'BASIC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6e87-0042', N'RCOND441bb08f:1436c079bff:-6f73-0042', N'FACTFLD17d6e7ce:141df4b60c2:-7ca2', N'basic', N'BASIC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6e87-0043', N'RCOND441bb08f:1436c079bff:-6f73-0043', N'FACTFLD17d6e7ce:141df4b60c2:-7ca2', N'basic', N'BASIC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6e87-0044', N'RCOND441bb08f:1436c079bff:-6f73-0044', N'FACTFLD17d6e7ce:141df4b60c2:-7ca2', N'basic', N'BASIC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6f08', N'RCOND441bb08f:1436c079bff:-6f73', N'FACTFLD441bb08f:1436c079bff:-7f49', N'barangayid', NULL, N'is any of the ff.', N'matches', NULL, NULL, NULL, NULL, NULL, NULL, N'[[key:"BRGY00000029",value:"POBLACION"]]', NULL, 0)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6f08-0002', N'RCOND441bb08f:1436c079bff:-6f73-0002', N'FACTFLD441bb08f:1436c079bff:-7f49', N'barangayid', NULL, N'is any of the ff.', N'matches', NULL, NULL, NULL, NULL, NULL, NULL, N'[[key:"BRGY00000030",value:"ABUNO"]]', NULL, 0)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6f08-0003', N'RCOND441bb08f:1436c079bff:-6f73-0003', N'FACTFLD441bb08f:1436c079bff:-7f49', N'barangayid', NULL, N'is any of the ff.', N'matches', NULL, NULL, NULL, NULL, NULL, NULL, N'[[key:"BRGY00000031",value:"ACMAC"]]', NULL, 0)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6f08-0004', N'RCOND441bb08f:1436c079bff:-6f73-0004', N'FACTFLD441bb08f:1436c079bff:-7f49', N'barangayid', NULL, N'is any of the ff.', N'matches', NULL, NULL, NULL, NULL, NULL, NULL, N'[[key:"BRGY00000032",value:"BAGONG SILANG"]]', NULL, 0)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6f08-0005', N'RCOND441bb08f:1436c079bff:-6f73-0005', N'FACTFLD441bb08f:1436c079bff:-7f49', N'barangayid', NULL, N'is any of the ff.', N'matches', NULL, NULL, NULL, NULL, NULL, NULL, N'[[key:"BRGY00000033",value:"BONBONON"]]', NULL, 0)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6f08-0006', N'RCOND441bb08f:1436c079bff:-6f73-0006', N'FACTFLD441bb08f:1436c079bff:-7f49', N'barangayid', NULL, N'is any of the ff.', N'matches', NULL, NULL, NULL, NULL, NULL, NULL, N'[[key:"BRGY00000034",value:"BUNAWAN"]]', NULL, 0)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6f08-0007', N'RCOND441bb08f:1436c079bff:-6f73-0007', N'FACTFLD441bb08f:1436c079bff:-7f49', N'barangayid', NULL, N'is any of the ff.', N'matches', NULL, NULL, NULL, NULL, NULL, NULL, N'[[key:"BRGY00000035",value:"BURU-UN"]]', NULL, 0)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6f08-0008', N'RCOND441bb08f:1436c079bff:-6f73-0008', N'FACTFLD441bb08f:1436c079bff:-7f49', N'barangayid', NULL, N'is any of the ff.', N'matches', NULL, NULL, NULL, NULL, NULL, NULL, N'[[key:"BRGY00000036",value:"CABACSANAN"]]', NULL, 0)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6f08-0009', N'RCOND441bb08f:1436c079bff:-6f73-0009', N'FACTFLD441bb08f:1436c079bff:-7f49', N'barangayid', NULL, N'is any of the ff.', N'matches', NULL, NULL, NULL, NULL, NULL, NULL, N'[[key:"BRGY00000037",value:"DALIPUGA"]]', NULL, 0)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6f08-0010', N'RCOND441bb08f:1436c079bff:-6f73-0010', N'FACTFLD441bb08f:1436c079bff:-7f49', N'barangayid', NULL, N'is any of the ff.', N'matches', NULL, NULL, NULL, NULL, NULL, NULL, N'[[key:"BRGY00000038",value:"DEL CARMEN"]]', NULL, 0)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6f08-0011', N'RCOND441bb08f:1436c079bff:-6f73-0011', N'FACTFLD441bb08f:1436c079bff:-7f49', N'barangayid', NULL, N'is any of the ff.', N'matches', NULL, NULL, NULL, NULL, NULL, NULL, N'[[key:"BRGY00000039",value:"DIGKILAAN"]]', NULL, 0)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6f08-0012', N'RCOND441bb08f:1436c079bff:-6f73-0012', N'FACTFLD441bb08f:1436c079bff:-7f49', N'barangayid', NULL, N'is any of the ff.', N'matches', NULL, NULL, NULL, NULL, NULL, NULL, N'[[key:"BRGY00000040",value:"DITUCALAN"]]', NULL, 0)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6f08-0013', N'RCOND441bb08f:1436c079bff:-6f73-0013', N'FACTFLD441bb08f:1436c079bff:-7f49', N'barangayid', NULL, N'is any of the ff.', N'matches', NULL, NULL, NULL, NULL, NULL, NULL, N'[[key:"BRGY00000041",value:"DULAG"]]', NULL, 0)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6f08-0014', N'RCOND441bb08f:1436c079bff:-6f73-0014', N'FACTFLD441bb08f:1436c079bff:-7f49', N'barangayid', NULL, N'is any of the ff.', N'matches', NULL, NULL, NULL, NULL, NULL, NULL, N'[[key:"BRGY00000042",value:"HINAPLANON"]]', NULL, 0)
GO
print 'Processed 200 total records'
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6f08-0015', N'RCOND441bb08f:1436c079bff:-6f73-0015', N'FACTFLD441bb08f:1436c079bff:-7f49', N'barangayid', NULL, N'is any of the ff.', N'matches', NULL, NULL, NULL, NULL, NULL, NULL, N'[[key:"BRGY00000043",value:"HINDANG"]]', NULL, 0)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6f08-0016', N'RCOND441bb08f:1436c079bff:-6f73-0016', N'FACTFLD441bb08f:1436c079bff:-7f49', N'barangayid', NULL, N'is any of the ff.', N'matches', NULL, NULL, NULL, NULL, NULL, NULL, N'[[key:"BRGY00000044",value:"KALILANGAN"]]', NULL, 0)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6f08-0017', N'RCOND441bb08f:1436c079bff:-6f73-0017', N'FACTFLD441bb08f:1436c079bff:-7f49', N'barangayid', NULL, N'is any of the ff.', N'matches', NULL, NULL, NULL, NULL, NULL, NULL, N'[[key:"BRGY00000001",value:"KIWALAN"]]', NULL, 0)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6f08-0018', N'RCOND441bb08f:1436c079bff:-6f73-0018', N'FACTFLD441bb08f:1436c079bff:-7f49', N'barangayid', NULL, N'is any of the ff.', N'matches', NULL, NULL, NULL, NULL, NULL, NULL, N'[[key:"BRGY00000002",value:"LANIPAO"]]', NULL, 0)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6f08-0019', N'RCOND441bb08f:1436c079bff:-6f73-0019', N'FACTFLD441bb08f:1436c079bff:-7f49', N'barangayid', NULL, N'is any of the ff.', N'matches', NULL, NULL, NULL, NULL, NULL, NULL, N'[[key:"BRGY00000003",value:"LUINAB"]]', NULL, 0)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6f08-0020', N'RCOND441bb08f:1436c079bff:-6f73-0020', N'FACTFLD441bb08f:1436c079bff:-7f49', N'barangayid', NULL, N'is any of the ff.', N'matches', NULL, NULL, NULL, NULL, NULL, NULL, N'[[key:"BRGY00000004",value:"MAHAYAHAY"]]', NULL, 0)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6f08-0021', N'RCOND441bb08f:1436c079bff:-6f73-0021', N'FACTFLD441bb08f:1436c079bff:-7f49', N'barangayid', NULL, N'is any of the ff.', N'matches', NULL, NULL, NULL, NULL, NULL, NULL, N'[[key:"BRGY00000005",value:"MAINIT"]]', NULL, 0)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6f08-0022', N'RCOND441bb08f:1436c079bff:-6f73-0022', N'FACTFLD441bb08f:1436c079bff:-7f49', N'barangayid', NULL, N'is any of the ff.', N'matches', NULL, NULL, NULL, NULL, NULL, NULL, N'[[key:"BRGY00000006",value:"MANDULOG"]]', NULL, 0)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6f08-0023', N'RCOND441bb08f:1436c079bff:-6f73-0023', N'FACTFLD441bb08f:1436c079bff:-7f49', N'barangayid', NULL, N'is any of the ff.', N'matches', NULL, NULL, NULL, NULL, NULL, NULL, N'[[key:"BRGY00000007",value:"MA. CRISTINA"]]', NULL, 0)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6f08-0024', N'RCOND441bb08f:1436c079bff:-6f73-0024', N'FACTFLD441bb08f:1436c079bff:-7f49', N'barangayid', NULL, N'is any of the ff.', N'matches', NULL, NULL, NULL, NULL, NULL, NULL, N'[[key:"BRGY00000008",value:"PALA-O"]]', NULL, 0)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6f08-0025', N'RCOND441bb08f:1436c079bff:-6f73-0025', N'FACTFLD441bb08f:1436c079bff:-7f49', N'barangayid', NULL, N'is any of the ff.', N'matches', NULL, NULL, NULL, NULL, NULL, NULL, N'[[key:"BRGY00000009",value:"PANOROGANAN"]]', NULL, 0)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6f08-0026', N'RCOND441bb08f:1436c079bff:-6f73-0026', N'FACTFLD441bb08f:1436c079bff:-7f49', N'barangayid', NULL, N'is any of the ff.', N'matches', NULL, NULL, NULL, NULL, NULL, NULL, N'[[key:"BRGY00000010",value:"PUGA-AN"]]', NULL, 0)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6f08-0027', N'RCOND441bb08f:1436c079bff:-6f73-0027', N'FACTFLD441bb08f:1436c079bff:-7f49', N'barangayid', NULL, N'is any of the ff.', N'matches', NULL, NULL, NULL, NULL, NULL, NULL, N'[[key:"BRGY00000011",value:"TOMINOBO PROPER"]]', NULL, 0)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6f08-0028', N'RCOND441bb08f:1436c079bff:-6f73-0028', N'FACTFLD441bb08f:1436c079bff:-7f49', N'barangayid', NULL, N'is any of the ff.', N'matches', NULL, NULL, NULL, NULL, NULL, NULL, N'[[key:"BRGY00000012",value:"ROGONGON"]]', NULL, 0)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6f08-0029', N'RCOND441bb08f:1436c079bff:-6f73-0029', N'FACTFLD441bb08f:1436c079bff:-7f49', N'barangayid', NULL, N'is any of the ff.', N'matches', NULL, NULL, NULL, NULL, NULL, NULL, N'[[key:"BRGY00000013",value:"SAN MIGUEL"]]', NULL, 0)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6f08-0030', N'RCOND441bb08f:1436c079bff:-6f73-0030', N'FACTFLD441bb08f:1436c079bff:-7f49', N'barangayid', NULL, N'is any of the ff.', N'matches', NULL, NULL, NULL, NULL, NULL, NULL, N'[[key:"BRGY00000014",value:"SAN ROQUE"]]', NULL, 0)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6f08-0031', N'RCOND441bb08f:1436c079bff:-6f73-0031', N'FACTFLD441bb08f:1436c079bff:-7f49', N'barangayid', NULL, N'is any of the ff.', N'matches', NULL, NULL, NULL, NULL, NULL, NULL, N'[[key:"BRGY00000015",value:"SANTIAGO"]]', NULL, 0)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6f08-0032', N'RCOND441bb08f:1436c079bff:-6f73-0032', N'FACTFLD441bb08f:1436c079bff:-7f49', N'barangayid', NULL, N'is any of the ff.', N'matches', NULL, NULL, NULL, NULL, NULL, NULL, N'[[key:"BRGY00000016",value:"STA. ELENA"]]', NULL, 0)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6f08-0033', N'RCOND441bb08f:1436c079bff:-6f73-0033', N'FACTFLD441bb08f:1436c079bff:-7f49', N'barangayid', NULL, N'is any of the ff.', N'matches', NULL, NULL, NULL, NULL, NULL, NULL, N'[[key:"BRGY00000017",value:"STA. FILOMENA"]]', NULL, 0)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6f08-0034', N'RCOND441bb08f:1436c079bff:-6f73-0034', N'FACTFLD441bb08f:1436c079bff:-7f49', N'barangayid', NULL, N'is any of the ff.', N'matches', NULL, NULL, NULL, NULL, NULL, NULL, N'[[key:"BRGY00000018",value:"STO. ROSARIO"]]', NULL, 0)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6f08-0035', N'RCOND441bb08f:1436c079bff:-6f73-0035', N'FACTFLD441bb08f:1436c079bff:-7f49', N'barangayid', NULL, N'is any of the ff.', N'matches', NULL, NULL, NULL, NULL, NULL, NULL, N'[[key:"BRGY00000019",value:"SARAY"]]', NULL, 0)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6f08-0036', N'RCOND441bb08f:1436c079bff:-6f73-0036', N'FACTFLD441bb08f:1436c079bff:-7f49', N'barangayid', NULL, N'is any of the ff.', N'matches', NULL, NULL, NULL, NULL, NULL, NULL, N'[[key:"BRGY00000020",value:"SUAREZ"]]', NULL, 0)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6f08-0037', N'RCOND441bb08f:1436c079bff:-6f73-0037', N'FACTFLD441bb08f:1436c079bff:-7f49', N'barangayid', NULL, N'is any of the ff.', N'matches', NULL, NULL, NULL, NULL, NULL, NULL, N'[[key:"BRGY00000021",value:"TAMBACAN"]]', NULL, 0)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6f08-0038', N'RCOND441bb08f:1436c079bff:-6f73-0038', N'FACTFLD441bb08f:1436c079bff:-7f49', N'barangayid', NULL, N'is any of the ff.', N'matches', NULL, NULL, NULL, NULL, NULL, NULL, N'[[key:"BRGY00000022",value:"TIBANGA"]]', NULL, 0)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6f08-0039', N'RCOND441bb08f:1436c079bff:-6f73-0039', N'FACTFLD441bb08f:1436c079bff:-7f49', N'barangayid', NULL, N'is any of the ff.', N'matches', NULL, NULL, NULL, NULL, NULL, NULL, N'[[key:"BRGY00000023",value:"TIPANOY"]]', NULL, 0)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6f08-0040', N'RCOND441bb08f:1436c079bff:-6f73-0040', N'FACTFLD441bb08f:1436c079bff:-7f49', N'barangayid', NULL, N'is any of the ff.', N'matches', NULL, NULL, NULL, NULL, NULL, NULL, N'[[key:"BRGY00000024",value:"TUBOD"]]', NULL, 0)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6f08-0041', N'RCOND441bb08f:1436c079bff:-6f73-0041', N'FACTFLD441bb08f:1436c079bff:-7f49', N'barangayid', NULL, N'is any of the ff.', N'matches', NULL, NULL, NULL, NULL, NULL, NULL, N'[[key:"BRGY00000025",value:"UBALDO LAYA"]]', NULL, 0)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6f08-0042', N'RCOND441bb08f:1436c079bff:-6f73-0042', N'FACTFLD441bb08f:1436c079bff:-7f49', N'barangayid', NULL, N'is any of the ff.', N'matches', NULL, NULL, NULL, NULL, NULL, NULL, N'[[key:"BRGY00000026",value:"UPPER HINAPLANON"]]', NULL, 0)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6f08-0043', N'RCOND441bb08f:1436c079bff:-6f73-0043', N'FACTFLD441bb08f:1436c079bff:-7f49', N'barangayid', NULL, N'is any of the ff.', N'matches', NULL, NULL, NULL, NULL, NULL, NULL, N'[[key:"BRGY00000027",value:"UPPER TOMINOBO"]]', NULL, 0)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-6f08-0044', N'RCOND441bb08f:1436c079bff:-6f73-0044', N'FACTFLD441bb08f:1436c079bff:-7f49', N'barangayid', NULL, N'is any of the ff.', N'matches', NULL, NULL, NULL, NULL, NULL, NULL, N'[[key:"BRGY00000028",value:"VILLAVERDE"]]', NULL, 0)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-71bf', N'RCOND441bb08f:1436c079bff:-7529', N'FACTFLD441bb08f:1436c079bff:-7f64', N'brgyintshare', N'BRGYINTSHARE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-728e', N'RCOND441bb08f:1436c079bff:-7529', N'FACTFLD441bb08f:1436c079bff:-7f6d', N'brgyshare', N'BRGYSHARE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-7344', N'RCOND441bb08f:1436c079bff:-7529', N'FACTFLD17d6e7ce:141df4b60c2:-7c9b', N'basicint', N'BASICINT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-73e3', N'RCOND441bb08f:1436c079bff:-7529', N'FACTFLD17d6e7ce:141df4b60c2:-7c94', N'basicdisc', N'BASICDISC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST441bb08f:1436c079bff:-747e', N'RCOND441bb08f:1436c079bff:-7529', N'FACTFLD17d6e7ce:141df4b60c2:-7ca2', N'basic', N'BASIC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST-5287a583:143748e3d5b:-7c29', N'RCOND-5287a583:143748e3d5b:-7c7c', N'FACTFLD-301ea2a7:142daea52cd:-7b7d', N'additional', NULL, N'is true', N'== true', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST559c0dba:14361bac6db:-7830', N'RCOND559c0dba:14361bac6db:-7848', N'FACTFLD49f1ff47:142dfb342ca:-6f5b', N'month', N'CMON', N'greater than', N'>', 0, NULL, NULL, NULL, 2, NULL, NULL, NULL, 0)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST559c0dba:14361bac6db:-7871', N'RCOND559c0dba:14361bac6db:-78b0', N'FACTFLD49f1ff47:142dfb342ca:-6cc1', N'totaltax', N'TOTALTAX', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST559c0dba:14361bac6db:-7a44', N'RCOND559c0dba:14361bac6db:-7aaf', N'FACTFLD33cb572b:142da8961f6:-7d78', N'realpropertyav', N'RPAV', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST559c0dba:14361bac6db:-7a7c', N'RCOND559c0dba:14361bac6db:-7aaf', N'FACTFLD33cb572b:142da8961f6:-7d6f', N'businessgross', N'BGROSS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST559c0dba:14361bac6db:-7e8c', N'RCOND559c0dba:14361bac6db:-7ea4', N'FACTFLD40e16e9c:142df3e5af6:-54e7', N'month', N'CMON', N'greater than', N'>', 0, NULL, NULL, NULL, 2, NULL, NULL, NULL, 0)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST559c0dba:14361bac6db:-7ed5', N'RCOND559c0dba:14361bac6db:-7f5b', N'FACTFLD-301ea2a7:142daea52cd:-7b22', N'totaltax', N'TOTALTAX', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5e124146:141e4410702:-773d', N'RCOND5e124146:141e4410702:-7771', N'FACTFLD49ae4bad:141e3b6758c:-7b95', N'qtr', N'CQTR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5e124146:141e4410702:-775f', N'RCOND5e124146:141e4410702:-7771', N'FACTFLD49ae4bad:141e3b6758c:-7b9c', N'year', N'CY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:1013', N'RCOND441bb08f:1436c079bff:-6f73-0037', N'FACTFLD5efee916:144597ae7de:-7f72', N'basicpaid', N'BASICPAID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-10c6', N'RCOND441bb08f:1436c079bff:-6f73-0028', N'FACTFLD5efee916:144597ae7de:-7f0e', N'basicdisctaken', N'BASICDISCTAKEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:10e9', N'RCOND441bb08f:1436c079bff:-6f73-0037', N'FACTFLD5efee916:144597ae7de:-7f4b', N'basicintpaid', N'BASICINTPAID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-11aa', N'RCOND441bb08f:1436c079bff:-6f73-0028', N'FACTFLD5efee916:144597ae7de:-7f4b', N'basicintpaid', N'BASICINTPAID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:11cd', N'RCOND441bb08f:1436c079bff:-6f73-0037', N'FACTFLD5efee916:144597ae7de:-7f0e', N'basicdisctaken', N'BASICDISCTAKEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-1280', N'RCOND441bb08f:1436c079bff:-6f73-0028', N'FACTFLD5efee916:144597ae7de:-7f72', N'basicpaid', N'BASICPAID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-13c', N'RCOND441bb08f:1436c079bff:-6f73-0032', N'FACTFLD5efee916:144597ae7de:-7f0e', N'basicdisctaken', N'BASICDISCTAKEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:13ee', N'RCOND441bb08f:1436c079bff:-6f73-0038', N'FACTFLD5efee916:144597ae7de:-7f72', N'basicpaid', N'BASICPAID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-1491', N'RCOND441bb08f:1436c079bff:-6f73-0027', N'FACTFLD5efee916:144597ae7de:-7f0e', N'basicdisctaken', N'BASICDISCTAKEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:14c4', N'RCOND441bb08f:1436c079bff:-6f73-0038', N'FACTFLD5efee916:144597ae7de:-7f4b', N'basicintpaid', N'BASICINTPAID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-1575', N'RCOND441bb08f:1436c079bff:-6f73-0027', N'FACTFLD5efee916:144597ae7de:-7f4b', N'basicintpaid', N'BASICINTPAID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:15a8', N'RCOND441bb08f:1436c079bff:-6f73-0038', N'FACTFLD5efee916:144597ae7de:-7f0e', N'basicdisctaken', N'BASICDISCTAKEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-164b', N'RCOND441bb08f:1436c079bff:-6f73-0027', N'FACTFLD5efee916:144597ae7de:-7f72', N'basicpaid', N'BASICPAID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:181b', N'RCOND441bb08f:1436c079bff:-6f73-0039', N'FACTFLD5efee916:144597ae7de:-7f72', N'basicpaid', N'BASICPAID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-1856', N'RCOND441bb08f:1436c079bff:-6f73-0026', N'FACTFLD5efee916:144597ae7de:-7f0e', N'basicdisctaken', N'BASICDISCTAKEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:18f1', N'RCOND441bb08f:1436c079bff:-6f73-0039', N'FACTFLD5efee916:144597ae7de:-7f4b', N'basicintpaid', N'BASICINTPAID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-193a', N'RCOND441bb08f:1436c079bff:-6f73-0026', N'FACTFLD5efee916:144597ae7de:-7f4b', N'basicintpaid', N'BASICINTPAID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:19d5', N'RCOND441bb08f:1436c079bff:-6f73-0039', N'FACTFLD5efee916:144597ae7de:-7f0e', N'basicdisctaken', N'BASICDISCTAKEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-1a10', N'RCOND441bb08f:1436c079bff:-6f73-0026', N'FACTFLD5efee916:144597ae7de:-7f72', N'basicpaid', N'BASICPAID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:1a5', N'RCOND441bb08f:1436c079bff:-6f73-0033', N'FACTFLD5efee916:144597ae7de:-7f4b', N'basicintpaid', N'BASICINTPAID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:1bdf', N'RCOND441bb08f:1436c079bff:-6f73-0040', N'FACTFLD5efee916:144597ae7de:-7f72', N'basicpaid', N'BASICPAID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-1c1b', N'RCOND441bb08f:1436c079bff:-6f73-0025', N'FACTFLD5efee916:144597ae7de:-7f0e', N'basicdisctaken', N'BASICDISCTAKEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:1cb5', N'RCOND441bb08f:1436c079bff:-6f73-0040', N'FACTFLD5efee916:144597ae7de:-7f4b', N'basicintpaid', N'BASICINTPAID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-1cff', N'RCOND441bb08f:1436c079bff:-6f73-0025', N'FACTFLD5efee916:144597ae7de:-7f4b', N'basicintpaid', N'BASICINTPAID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:1d99', N'RCOND441bb08f:1436c079bff:-6f73-0040', N'FACTFLD5efee916:144597ae7de:-7f0e', N'basicdisctaken', N'BASICDISCTAKEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-1dd5', N'RCOND441bb08f:1436c079bff:-6f73-0025', N'FACTFLD5efee916:144597ae7de:-7f72', N'basicpaid', N'BASICPAID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-1fe0', N'RCOND441bb08f:1436c079bff:-6f73-0024', N'FACTFLD5efee916:144597ae7de:-7f0e', N'basicdisctaken', N'BASICDISCTAKEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:200c', N'RCOND441bb08f:1436c079bff:-6f73-0041', N'FACTFLD5efee916:144597ae7de:-7f72', N'basicpaid', N'BASICPAID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-20c4', N'RCOND441bb08f:1436c079bff:-6f73-0024', N'FACTFLD5efee916:144597ae7de:-7f4b', N'basicintpaid', N'BASICINTPAID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:20e2', N'RCOND441bb08f:1436c079bff:-6f73-0041', N'FACTFLD5efee916:144597ae7de:-7f4b', N'basicintpaid', N'BASICINTPAID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-219a', N'RCOND441bb08f:1436c079bff:-6f73-0024', N'FACTFLD5efee916:144597ae7de:-7f72', N'basicpaid', N'BASICPAID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:21c6', N'RCOND441bb08f:1436c079bff:-6f73-0041', N'FACTFLD5efee916:144597ae7de:-7f0e', N'basicdisctaken', N'BASICDISCTAKEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-220', N'RCOND441bb08f:1436c079bff:-6f73-0032', N'FACTFLD5efee916:144597ae7de:-7f4b', N'basicintpaid', N'BASICINTPAID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-23a5', N'RCOND441bb08f:1436c079bff:-6f73-0023', N'FACTFLD5efee916:144597ae7de:-7f0e', N'basicdisctaken', N'BASICDISCTAKEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:23db', N'RCOND441bb08f:1436c079bff:-6f73-0042', N'FACTFLD5efee916:144597ae7de:-7f72', N'basicpaid', N'BASICPAID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-2489', N'RCOND441bb08f:1436c079bff:-6f73-0023', N'FACTFLD5efee916:144597ae7de:-7f4b', N'basicintpaid', N'BASICINTPAID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:24b1', N'RCOND441bb08f:1436c079bff:-6f73-0042', N'FACTFLD5efee916:144597ae7de:-7f4b', N'basicintpaid', N'BASICINTPAID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-255f', N'RCOND441bb08f:1436c079bff:-6f73-0023', N'FACTFLD5efee916:144597ae7de:-7f72', N'basicpaid', N'BASICPAID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:2597', N'RCOND441bb08f:1436c079bff:-6f73-0042', N'FACTFLD5efee916:144597ae7de:-7f0e', N'basicdisctaken', N'BASICDISCTAKEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-276a', N'RCOND441bb08f:1436c079bff:-6f73-0022', N'FACTFLD5efee916:144597ae7de:-7f0e', N'basicdisctaken', N'BASICDISCTAKEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:27ac', N'RCOND441bb08f:1436c079bff:-6f73-0043', N'FACTFLD5efee916:144597ae7de:-7f72', N'basicpaid', N'BASICPAID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-284e', N'RCOND441bb08f:1436c079bff:-6f73-0022', N'FACTFLD5efee916:144597ae7de:-7f4b', N'basicintpaid', N'BASICINTPAID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:2882', N'RCOND441bb08f:1436c079bff:-6f73-0043', N'FACTFLD5efee916:144597ae7de:-7f4b', N'basicintpaid', N'BASICINTPAID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:289', N'RCOND441bb08f:1436c079bff:-6f73-0033', N'FACTFLD5efee916:144597ae7de:-7f0e', N'basicdisctaken', N'BASICDISCTAKEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-2924', N'RCOND441bb08f:1436c079bff:-6f73-0022', N'FACTFLD5efee916:144597ae7de:-7f72', N'basicpaid', N'BASICPAID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:2966', N'RCOND441bb08f:1436c079bff:-6f73-0043', N'FACTFLD5efee916:144597ae7de:-7f0e', N'basicdisctaken', N'BASICDISCTAKEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-2b45', N'RCOND441bb08f:1436c079bff:-6f73-0021', N'FACTFLD5efee916:144597ae7de:-7f0e', N'basicdisctaken', N'BASICDISCTAKEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:2b71', N'RCOND441bb08f:1436c079bff:-6f73-0044', N'FACTFLD5efee916:144597ae7de:-7f72', N'basicpaid', N'BASICPAID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-2c29', N'RCOND441bb08f:1436c079bff:-6f73-0021', N'FACTFLD5efee916:144597ae7de:-7f4b', N'basicintpaid', N'BASICINTPAID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:2c47', N'RCOND441bb08f:1436c079bff:-6f73-0044', N'FACTFLD5efee916:144597ae7de:-7f4b', N'basicintpaid', N'BASICINTPAID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-2cff', N'RCOND441bb08f:1436c079bff:-6f73-0021', N'FACTFLD5efee916:144597ae7de:-7f72', N'basicpaid', N'BASICPAID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:2d2b', N'RCOND441bb08f:1436c079bff:-6f73-0044', N'FACTFLD5efee916:144597ae7de:-7f0e', N'basicdisctaken', N'BASICDISCTAKEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-2f6', N'RCOND441bb08f:1436c079bff:-6f73-0032', N'FACTFLD5efee916:144597ae7de:-7f72', N'basicpaid', N'BASICPAID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-2fa9', N'RCOND441bb08f:1436c079bff:-6f73-0020', N'FACTFLD5efee916:144597ae7de:-7f0e', N'basicdisctaken', N'BASICDISCTAKEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-308d', N'RCOND441bb08f:1436c079bff:-6f73-0020', N'FACTFLD5efee916:144597ae7de:-7f4b', N'basicintpaid', N'BASICINTPAID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-3163', N'RCOND441bb08f:1436c079bff:-6f73-0020', N'FACTFLD5efee916:144597ae7de:-7f72', N'basicpaid', N'BASICPAID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:327b', N'RCOND441bb08f:1436c079bff:-7529', N'FACTFLD5efee916:144597ae7de:-7f72', N'basicpaid', N'BASICPAID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5)
GO
print 'Processed 300 total records'
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:3364', N'RCOND441bb08f:1436c079bff:-7529', N'FACTFLD5efee916:144597ae7de:-7f4b', N'basicintpaid', N'BASICINTPAID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-3388', N'RCOND441bb08f:1436c079bff:-6f73-0019', N'FACTFLD5efee916:144597ae7de:-7f0e', N'basicdisctaken', N'BASICDISCTAKEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:3467', N'RCOND441bb08f:1436c079bff:-7529', N'FACTFLD5efee916:144597ae7de:-7f0e', N'basicdisctaken', N'BASICDISCTAKEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-346c', N'RCOND441bb08f:1436c079bff:-6f73-0019', N'FACTFLD5efee916:144597ae7de:-7f4b', N'basicintpaid', N'BASICINTPAID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-3542', N'RCOND441bb08f:1436c079bff:-6f73-0019', N'FACTFLD5efee916:144597ae7de:-7f72', N'basicpaid', N'BASICPAID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-3764', N'RCOND441bb08f:1436c079bff:-6f73-0018', N'FACTFLD5efee916:144597ae7de:-7f0e', N'basicdisctaken', N'BASICDISCTAKEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-3848', N'RCOND441bb08f:1436c079bff:-6f73-0018', N'FACTFLD5efee916:144597ae7de:-7f4b', N'basicintpaid', N'BASICINTPAID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-391e', N'RCOND441bb08f:1436c079bff:-6f73-0018', N'FACTFLD5efee916:144597ae7de:-7f72', N'basicpaid', N'BASICPAID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-3b29', N'RCOND441bb08f:1436c079bff:-6f73-0017', N'FACTFLD5efee916:144597ae7de:-7f0e', N'basicdisctaken', N'BASICDISCTAKEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:3c01', N'RCOND441bb08f:1436c079bff:-6f73-0035', N'FACTFLD5efee916:144597ae7de:-7f0e', N'basicdisctaken', N'BASICDISCTAKEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-3c0d', N'RCOND441bb08f:1436c079bff:-6f73-0017', N'FACTFLD5efee916:144597ae7de:-7f4b', N'basicintpaid', N'BASICINTPAID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-3ce3', N'RCOND441bb08f:1436c079bff:-6f73-0017', N'FACTFLD5efee916:144597ae7de:-7f72', N'basicpaid', N'BASICPAID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-3f0b', N'RCOND441bb08f:1436c079bff:-6f73-0016', N'FACTFLD5efee916:144597ae7de:-7f0e', N'basicdisctaken', N'BASICDISCTAKEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-3fef', N'RCOND441bb08f:1436c079bff:-6f73-0016', N'FACTFLD5efee916:144597ae7de:-7f4b', N'basicintpaid', N'BASICINTPAID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-40c5', N'RCOND441bb08f:1436c079bff:-6f73-0016', N'FACTFLD5efee916:144597ae7de:-7f72', N'basicpaid', N'BASICPAID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-42d0', N'RCOND441bb08f:1436c079bff:-6f73-0015', N'FACTFLD5efee916:144597ae7de:-7f0e', N'basicdisctaken', N'BASICDISCTAKEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-43b4', N'RCOND441bb08f:1436c079bff:-6f73-0015', N'FACTFLD5efee916:144597ae7de:-7f4b', N'basicintpaid', N'BASICINTPAID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-448b', N'RCOND441bb08f:1436c079bff:-6f73-0015', N'FACTFLD5efee916:144597ae7de:-7f72', N'basicpaid', N'BASICPAID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-46a0', N'RCOND441bb08f:1436c079bff:-6f73-0014', N'FACTFLD5efee916:144597ae7de:-7f0e', N'basicdisctaken', N'BASICDISCTAKEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-4784', N'RCOND441bb08f:1436c079bff:-6f73-0014', N'FACTFLD5efee916:144597ae7de:-7f4b', N'basicintpaid', N'BASICINTPAID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-485a', N'RCOND441bb08f:1436c079bff:-6f73-0014', N'FACTFLD5efee916:144597ae7de:-7f72', N'basicpaid', N'BASICPAID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:494', N'RCOND441bb08f:1436c079bff:-6f73-0034', N'FACTFLD5efee916:144597ae7de:-7f72', N'basicpaid', N'BASICPAID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-4a79', N'RCOND441bb08f:1436c079bff:-6f73-0013', N'FACTFLD5efee916:144597ae7de:-7f0e', N'basicdisctaken', N'BASICDISCTAKEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-4b5d', N'RCOND441bb08f:1436c079bff:-6f73-0013', N'FACTFLD5efee916:144597ae7de:-7f4b', N'basicintpaid', N'BASICINTPAID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-4c33', N'RCOND441bb08f:1436c079bff:-6f73-0013', N'FACTFLD5efee916:144597ae7de:-7f72', N'basicpaid', N'BASICPAID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-4e4c', N'RCOND441bb08f:1436c079bff:-6f73-0012', N'FACTFLD5efee916:144597ae7de:-7f0e', N'basicdisctaken', N'BASICDISCTAKEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-4f30', N'RCOND441bb08f:1436c079bff:-6f73-0012', N'FACTFLD5efee916:144597ae7de:-7f4b', N'basicintpaid', N'BASICINTPAID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-5006', N'RCOND441bb08f:1436c079bff:-6f73-0012', N'FACTFLD5efee916:144597ae7de:-7f72', N'basicpaid', N'BASICPAID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-503', N'RCOND441bb08f:1436c079bff:-6f73-0031', N'FACTFLD5efee916:144597ae7de:-7f0e', N'basicdisctaken', N'BASICDISCTAKEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-5228', N'RCOND441bb08f:1436c079bff:-6f73-0011', N'FACTFLD5efee916:144597ae7de:-7f0e', N'basicdisctaken', N'BASICDISCTAKEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-530c', N'RCOND441bb08f:1436c079bff:-6f73-0011', N'FACTFLD5efee916:144597ae7de:-7f4b', N'basicintpaid', N'BASICINTPAID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-53e2', N'RCOND441bb08f:1436c079bff:-6f73-0011', N'FACTFLD5efee916:144597ae7de:-7f72', N'basicpaid', N'BASICPAID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:56a', N'RCOND441bb08f:1436c079bff:-6f73-0034', N'FACTFLD5efee916:144597ae7de:-7f4b', N'basicintpaid', N'BASICINTPAID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-56fe', N'RCOND441bb08f:1436c079bff:-6f73-0010', N'FACTFLD5efee916:144597ae7de:-7f0e', N'basicdisctaken', N'BASICDISCTAKEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-57e2', N'RCOND441bb08f:1436c079bff:-6f73-0010', N'FACTFLD5efee916:144597ae7de:-7f4b', N'basicintpaid', N'BASICINTPAID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-58b8', N'RCOND441bb08f:1436c079bff:-6f73-0010', N'FACTFLD5efee916:144597ae7de:-7f72', N'basicpaid', N'BASICPAID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-5ac7', N'RCOND441bb08f:1436c079bff:-6f73-0009', N'FACTFLD5efee916:144597ae7de:-7f0e', N'basicdisctaken', N'BASICDISCTAKEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-5bab', N'RCOND441bb08f:1436c079bff:-6f73-0009', N'FACTFLD5efee916:144597ae7de:-7f4b', N'basicintpaid', N'BASICINTPAID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-5c81', N'RCOND441bb08f:1436c079bff:-6f73-0009', N'FACTFLD5efee916:144597ae7de:-7f72', N'basicpaid', N'BASICPAID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-5e90', N'RCOND441bb08f:1436c079bff:-6f73-0008', N'FACTFLD5efee916:144597ae7de:-7f0e', N'basicdisctaken', N'BASICDISCTAKEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-5ed', N'RCOND441bb08f:1436c079bff:-6f73-0031', N'FACTFLD5efee916:144597ae7de:-7f4b', N'basicintpaid', N'BASICINTPAID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-5f74', N'RCOND441bb08f:1436c079bff:-6f73-0008', N'FACTFLD5efee916:144597ae7de:-7f4b', N'basicintpaid', N'BASICINTPAID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-604a', N'RCOND441bb08f:1436c079bff:-6f73-0008', N'FACTFLD5efee916:144597ae7de:-7f72', N'basicpaid', N'BASICPAID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-6265', N'RCOND441bb08f:1436c079bff:-6f73-0007', N'FACTFLD5efee916:144597ae7de:-7f0e', N'basicdisctaken', N'BASICDISCTAKEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-6349', N'RCOND441bb08f:1436c079bff:-6f73-0007', N'FACTFLD5efee916:144597ae7de:-7f4b', N'basicintpaid', N'BASICINTPAID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-641f', N'RCOND441bb08f:1436c079bff:-6f73-0007', N'FACTFLD5efee916:144597ae7de:-7f72', N'basicpaid', N'BASICPAID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:64e', N'RCOND441bb08f:1436c079bff:-6f73-0034', N'FACTFLD5efee916:144597ae7de:-7f0e', N'basicdisctaken', N'BASICDISCTAKEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-662e', N'RCOND441bb08f:1436c079bff:-6f73-0006', N'FACTFLD5efee916:144597ae7de:-7f0e', N'basicdisctaken', N'BASICDISCTAKEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-6712', N'RCOND441bb08f:1436c079bff:-6f73-0006', N'FACTFLD5efee916:144597ae7de:-7f4b', N'basicintpaid', N'BASICINTPAID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-67e8', N'RCOND441bb08f:1436c079bff:-6f73-0006', N'FACTFLD5efee916:144597ae7de:-7f72', N'basicpaid', N'BASICPAID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-6a17', N'RCOND441bb08f:1436c079bff:-6f73-0005', N'FACTFLD5efee916:144597ae7de:-7f0e', N'basicdisctaken', N'BASICDISCTAKEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-6afb', N'RCOND441bb08f:1436c079bff:-6f73-0005', N'FACTFLD5efee916:144597ae7de:-7f4b', N'basicintpaid', N'BASICINTPAID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-6bd1', N'RCOND441bb08f:1436c079bff:-6f73-0005', N'FACTFLD5efee916:144597ae7de:-7f72', N'basicpaid', N'BASICPAID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-6c3', N'RCOND441bb08f:1436c079bff:-6f73-0031', N'FACTFLD5efee916:144597ae7de:-7f72', N'basicpaid', N'BASICPAID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-6e09', N'RCOND441bb08f:1436c079bff:-6f73-0004', N'FACTFLD5efee916:144597ae7de:-7f0e', N'basicdisctaken', N'BASICDISCTAKEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-6eed', N'RCOND441bb08f:1436c079bff:-6f73-0004', N'FACTFLD5efee916:144597ae7de:-7f4b', N'basicintpaid', N'BASICINTPAID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-6fc3', N'RCOND441bb08f:1436c079bff:-6f73-0004', N'FACTFLD5efee916:144597ae7de:-7f72', N'basicpaid', N'BASICPAID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-71d2', N'RCOND441bb08f:1436c079bff:-6f73-0003', N'FACTFLD5efee916:144597ae7de:-7f0e', N'basicdisctaken', N'BASICDISCTAKEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-72b6', N'RCOND441bb08f:1436c079bff:-6f73-0003', N'FACTFLD5efee916:144597ae7de:-7f4b', N'basicintpaid', N'BASICINTPAID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-738c', N'RCOND441bb08f:1436c079bff:-6f73-0003', N'FACTFLD5efee916:144597ae7de:-7f72', N'basicpaid', N'BASICPAID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-75ee', N'RCOND441bb08f:1436c079bff:-6f73-0002', N'FACTFLD5efee916:144597ae7de:-7f0e', N'basicdisctaken', N'BASICDISCTAKEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-76d2', N'RCOND441bb08f:1436c079bff:-6f73-0002', N'FACTFLD5efee916:144597ae7de:-7f4b', N'basicintpaid', N'BASICINTPAID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-77a8', N'RCOND441bb08f:1436c079bff:-6f73-0002', N'FACTFLD5efee916:144597ae7de:-7f72', N'basicpaid', N'BASICPAID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-7c05', N'RCOND441bb08f:1436c079bff:-6f73', N'FACTFLD5efee916:144597ae7de:-7f0e', N'basicdisctaken', N'BASICDISCTAKEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-7ce9', N'RCOND441bb08f:1436c079bff:-6f73', N'FACTFLD5efee916:144597ae7de:-7f4b', N'basicintpaid', N'BASICINTPAID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-7dbf', N'RCOND441bb08f:1436c079bff:-6f73', N'FACTFLD5efee916:144597ae7de:-7f72', N'basicpaid', N'BASICPAID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:859', N'RCOND441bb08f:1436c079bff:-6f73-0035', N'FACTFLD5efee916:144597ae7de:-7f72', N'basicpaid', N'BASICPAID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-91b', N'RCOND441bb08f:1436c079bff:-6f73-0030', N'FACTFLD5efee916:144597ae7de:-7f0e', N'basicdisctaken', N'BASICDISCTAKEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:92f', N'RCOND441bb08f:1436c079bff:-6f73-0035', N'FACTFLD5efee916:144597ae7de:-7f4b', N'basicintpaid', N'BASICINTPAID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-a01', N'RCOND441bb08f:1436c079bff:-6f73-0030', N'FACTFLD5efee916:144597ae7de:-7f4b', N'basicintpaid', N'BASICINTPAID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-ad7', N'RCOND441bb08f:1436c079bff:-6f73-0030', N'FACTFLD5efee916:144597ae7de:-7f72', N'basicpaid', N'BASICPAID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:c25', N'RCOND441bb08f:1436c079bff:-6f73-0036', N'FACTFLD5efee916:144597ae7de:-7f72', N'basicpaid', N'BASICPAID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:cf', N'RCOND441bb08f:1436c079bff:-6f73-0033', N'FACTFLD5efee916:144597ae7de:-7f72', N'basicpaid', N'BASICPAID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:cfb', N'RCOND441bb08f:1436c079bff:-6f73-0036', N'FACTFLD5efee916:144597ae7de:-7f4b', N'basicintpaid', N'BASICINTPAID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-d01', N'RCOND441bb08f:1436c079bff:-6f73-0029', N'FACTFLD5efee916:144597ae7de:-7f0e', N'basicdisctaken', N'BASICDISCTAKEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:ddf', N'RCOND441bb08f:1436c079bff:-6f73-0036', N'FACTFLD5efee916:144597ae7de:-7f0e', N'basicdisctaken', N'BASICDISCTAKEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-de5', N'RCOND441bb08f:1436c079bff:-6f73-0029', N'FACTFLD5efee916:144597ae7de:-7f4b', N'basicintpaid', N'BASICINTPAID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST5efee916:144597ae7de:-ebb', N'RCOND441bb08f:1436c079bff:-6f73-0029', N'FACTFLD5efee916:144597ae7de:-7f72', N'basicpaid', N'BASICPAID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST-6bef6bd6:14303fc14ea:-7f63', N'RCOND-6bef6bd6:14303fc14ea:-7f77', N'FACTFLD49ae4bad:141e3b6758c:-7b95', N'qtr', NULL, N'equal to', N'==', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 0)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST-70b3ef1:142f01dbd80:-7e4e', N'RCOND-70b3ef1:142f01dbd80:-7fc4', N'FACTFLD33cb572b:142da8961f6:-7eba', N'propertyincome', N'PINCOME', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST-70b3ef1:142f01dbd80:-7eae', N'RCOND-70b3ef1:142f01dbd80:-7fc4', N'FACTFLD33cb572b:142da8961f6:-7ec7', N'businessgross', N'BGROSS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST-70b3ef1:142f01dbd80:-7f41', N'RCOND-70b3ef1:142f01dbd80:-7fc4', N'FACTFLD33cb572b:142da8961f6:-7ed4', N'annualsalary', N'ASALARY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST-727f5592:144018f96a2:-7ee6', N'RCOND-727f5592:144018f96a2:-7eec', N'FACTFLD2713811e:141f3ed1502:-7ede', N'booleanvalue', N'LOCATED_ON_GOVERNMENT_PROPERTY', N'is true', N'== true', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST-727f5592:144018f96a2:-7ee7', N'RCOND-727f5592:144018f96a2:-7eec', N'FACTFLD-73089baf:141f3d279b0:-7f78', N'lob', NULL, N'is null', N'== null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST-72a9958a:141e4770339:-64bb', N'RCOND-72a9958a:141e4770339:-6684', N'FACTFLD17d6e7ce:141df4b60c2:-7c7f', N'sef', N'SEF', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST-72a9958a:141e4770339:-654f', N'RCOND-72a9958a:141e4770339:-6684', N'FACTFLD17d6e7ce:141df4b60c2:-7ca2', N'basic', N'BASIC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST-72a9958a:141e4770339:-65d7', N'RCOND-72a9958a:141e4770339:-6684', N'FACTFLD17d6e7ce:141df4b60c2:-7cfc', N'qtr', NULL, N'greater than or equal to', N'>=', 1, N'RCONST-72a9958a:141e4770339:-66b8', N'CQTR', NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST-72a9958a:141e4770339:-6635', N'RCOND-72a9958a:141e4770339:-6684', N'FACTFLD17d6e7ce:141df4b60c2:-7d03', N'year', NULL, N'equal to', N'==', 1, N'RCONST-72a9958a:141e4770339:-66d9', N'CY', NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST-72a9958a:141e4770339:-66b8', N'RCOND-72a9958a:141e4770339:-66eb', N'FACTFLD49ae4bad:141e3b6758c:-7b95', N'qtr', N'CQTR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST-72a9958a:141e4770339:-66d9', N'RCOND-72a9958a:141e4770339:-66eb', N'FACTFLD49ae4bad:141e3b6758c:-7b9c', N'year', N'CY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST-72a9958a:141e4770339:-6bd1', N'RCOND-72a9958a:141e4770339:-7a15', N'FACTFLD2701c487:141e346f838:-7f95', N'fullpayment', NULL, N'not true', N'== false', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST-72a9958a:141e4770339:-784b', N'RCOND-72a9958a:141e4770339:-7a15', N'FACTFLD17d6e7ce:141df4b60c2:-7c7f', N'sef', N'SEF', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST-72a9958a:141e4770339:-78e0', N'RCOND-72a9958a:141e4770339:-7a15', N'FACTFLD17d6e7ce:141df4b60c2:-7ca2', N'basic', N'BASIC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST-72a9958a:141e4770339:-79c6', N'RCOND-72a9958a:141e4770339:-7a15', N'FACTFLD17d6e7ce:141df4b60c2:-7d03', N'year', NULL, N'greater than', N'>', 1, N'RCONST5e124146:141e4410702:-775f', N'CY', NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST-72a9958a:141e4770339:-7ca7', N'RCOND-72a9958a:141e4770339:-7f00', N'FACTFLD17d6e7ce:141df4b60c2:-7ca9', N'numberofmonthsfromjan', N'NMON', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST-72a9958a:141e4770339:-7d37', N'RCOND-72a9958a:141e4770339:-7f00', N'FACTFLD17d6e7ce:141df4b60c2:-7c7f', N'sef', N'SEF', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST-72a9958a:141e4770339:-7dcb', N'RCOND-72a9958a:141e4770339:-7f00', N'FACTFLD17d6e7ce:141df4b60c2:-7ca2', N'basic', N'BASIC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST-72a9958a:141e4770339:-7e53', N'RCOND-72a9958a:141e4770339:-7f00', N'FACTFLD17d6e7ce:141df4b60c2:-7cfc', N'qtr', NULL, N'less than', N'<', 1, N'RCONST-20919e10:141e3f76dc8:-6ccb', N'CQTR', NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST-72a9958a:141e4770339:-7eb1', N'RCOND-72a9958a:141e4770339:-7f00', N'FACTFLD17d6e7ce:141df4b60c2:-7d03', N'year', NULL, N'equal to', N'==', 1, N'RCONST-20919e10:141e3f76dc8:-6cec', N'CY', NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST7417f02:142d500e3f2:-7edc', N'RCOND-3a26f3ae:142d1e8ff98:-7f05', N'FACTFLD-7c5c4c8f:141e84ee23e:-7f45', N'orgtype', NULL, N'not exist in', N'not matches', NULL, NULL, NULL, NULL, NULL, NULL, N'["SING"]', NULL, 1)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST-7c13908b:1435065d2a1:-5d53', N'RCOND-7c13908b:1435065d2a1:-661a', N'FACTFLD17d6e7ce:141df4b60c2:-7cf5', N'av', N'AV', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
GO
print 'Processed 400 total records'
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST-7c13908b:1435065d2a1:-65cb', N'RCOND-7c13908b:1435065d2a1:-661a', N'FACTFLD17d6e7ce:141df4b60c2:-7d03', N'year', NULL, N'less than', N'<', 1, N'RCONST-7c13908b:1435065d2a1:-6645', N'CY', NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST-7c13908b:1435065d2a1:-6645', N'RCOND-7c13908b:1435065d2a1:-6657', N'FACTFLD49ae4bad:141e3b6758c:-7b9c', N'year', N'CY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST-7e9d4ac4:1421b9d7ba4:-7a86', N'RCOND-7e9d4ac4:1421b9d7ba4:-7c48', N'FACTFLD17d6e7ce:141df4b60c2:-7c7f', N'sef', N'SEF', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST-7e9d4ac4:1421b9d7ba4:-7b11', N'RCOND-7e9d4ac4:1421b9d7ba4:-7c48', N'FACTFLD17d6e7ce:141df4b60c2:-7ca2', N'basic', N'BASIC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST-7e9d4ac4:1421b9d7ba4:-7bf7', N'RCOND-7e9d4ac4:1421b9d7ba4:-7c48', N'FACTFLD17d6e7ce:141df4b60c2:-7d03', N'year', NULL, N'equal to', N'==', 1, N'RCONST-7e9d4ac4:1421b9d7ba4:-7ca3', N'CY', NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST-7e9d4ac4:1421b9d7ba4:-7c7f', N'RCOND-7e9d4ac4:1421b9d7ba4:-7cb5', N'FACTFLD49ae4bad:141e3b6758c:-7b8e', N'month', NULL, N'equal to', N'==', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 1)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST-7e9d4ac4:1421b9d7ba4:-7ca3', N'RCOND-7e9d4ac4:1421b9d7ba4:-7cb5', N'FACTFLD49ae4bad:141e3b6758c:-7b9c', N'year', N'CY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONSTaa4e683:143e6f7bbf2:-66d5', N'RCONDaa4e683:143e6f7bbf2:-693d', N'FACTFLD-10f80dab:141dfb3f0a6:-7e9a', N'qtrlypaymentavailed', NULL, N'not true', N'== false', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONSTaa4e683:143e6f7bbf2:-677c', N'RCONDaa4e683:143e6f7bbf2:-693d', N'FACTFLD17d6e7ce:141df4b60c2:-7c7f', N'sef', N'SEF', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONSTaa4e683:143e6f7bbf2:-6836', N'RCONDaa4e683:143e6f7bbf2:-693d', N'FACTFLD17d6e7ce:141df4b60c2:-7ca2', N'basic', N'BASIC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONSTaa4e683:143e6f7bbf2:-68d1', N'RCONDaa4e683:143e6f7bbf2:-693d', N'FACTFLD17d6e7ce:141df4b60c2:-7d03', N'year', NULL, N'equal to', N'==', 1, N'RCONSTaa4e683:143e6f7bbf2:-699f', N'CY', NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONSTaa4e683:143e6f7bbf2:-6978', N'RCONDaa4e683:143e6f7bbf2:-69b5', N'FACTFLD49ae4bad:141e3b6758c:-7b8e', N'month', NULL, N'equal to', N'==', NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, 1)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONSTaa4e683:143e6f7bbf2:-699f', N'RCONDaa4e683:143e6f7bbf2:-69b5', N'FACTFLD49ae4bad:141e3b6758c:-7b9c', N'year', N'CY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[sys_rule_condition_constraint] ([objid], [parentid], [field_objid], [fieldname], [varname], [operator_caption], [operator_symbol], [usevar], [var_objid], [var_name], [decimalvalue], [intvalue], [stringvalue], [listvalue], [datevalue], [pos]) VALUES (N'RCONST-bdd7bf8:1437ee7123a:-77e4', N'RCOND-7e9d4ac4:1421b9d7ba4:-7c48', N'FACTFLD-10f80dab:141dfb3f0a6:-7e9a', N'qtrlypaymentavailed', NULL, N'not true', N'== false', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-111ed864:1437daca74c:-3a44', N'RACT-111ed864:1437daca74c:-3a47', N'ACTPARAM7c61bd6d:1423fce917f:-7e73', N'true', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-111ed864:1437daca74c:-3a45', N'RACT-111ed864:1437daca74c:-3a47', N'ACTPARAM367174cc:141a62bd0d8:18c4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'IS_RENTED', N'IS_RENTED', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-111ed864:1437daca74c:-3a46', N'RACT-111ed864:1437daca74c:-3a47', N'ACTPARAM-42dc4039:141afcf5119:-7e59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-111ed864:1437daca74c:-3f60', N'RACT-111ed864:1437daca74c:-3f63', N'ACTPARAM-67ecfd73:141f2b84ce7:-79b7', NULL, NULL, NULL, NULL, N'true', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-111ed864:1437daca74c:-3f61', N'RACT-111ed864:1437daca74c:-3f63', N'ACTPARAM-67ecfd73:141f2b84ce7:-7a33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REQUIRE_CEO', N'REQUIRE_CEO', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-111ed864:1437daca74c:-3f62', N'RACT-111ed864:1437daca74c:-3f63', N'ACTPARAM-67ecfd73:141f2b84ce7:-7b4c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-111ed864:1437daca74c:-4951', N'RACT-111ed864:1437daca74c:-4954', N'ACTPARAM7c61bd6d:1423fce917f:-7e73', N'false', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-111ed864:1437daca74c:-4952', N'RACT-111ed864:1437daca74c:-4954', N'ACTPARAM367174cc:141a62bd0d8:18c4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'LOCATED_ON_GOVERNMENT_PROPERTY', N'LOCATED_ON_GOVERNMENT_PROPERTY', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-111ed864:1437daca74c:-4953', N'RACT-111ed864:1437daca74c:-4954', N'ACTPARAM-42dc4039:141afcf5119:-7e59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT1dc7a3de:142b70df9f8:-7ebe', N'RACT1dc7a3de:142b70df9f8:-7ec1', N'ACTPARAM-67ecfd73:141f2b84ce7:-79b7', NULL, NULL, NULL, NULL, N'NUM_EMPLOYEE_FEMALE + NUM_EMPLOYEE_MALE', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT1dc7a3de:142b70df9f8:-7ebf', N'RACT1dc7a3de:142b70df9f8:-7ec1', N'ACTPARAM-67ecfd73:141f2b84ce7:-7a33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'NUM_EMPLOYEE', N'NUM_EMPLOYEE', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT1dc7a3de:142b70df9f8:-7ec0', N'RACT1dc7a3de:142b70df9f8:-7ec1', N'ACTPARAM-67ecfd73:141f2b84ce7:-7b4c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-20919e10:141e3f76dc8:-6296', N'RACT-20919e10:141e3f76dc8:-6298', N'ACTPARAM208348b4:141e2d2bd58:-7cb4', NULL, NULL, N'RCOND-20919e10:141e3f76dc8:-64b1', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-20919e10:141e3f76dc8:-6297', N'RACT-20919e10:141e3f76dc8:-6298', N'ACTPARAM208348b4:141e2d2bd58:-7cad', NULL, NULL, NULL, NULL, N'SEF * 0.15', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-20919e10:141e3f76dc8:-62dd', N'RACT-20919e10:141e3f76dc8:-62df', N'ACTPARAM208348b4:141e2d2bd58:-7de2', NULL, NULL, N'RCOND-20919e10:141e3f76dc8:-64b1', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-20919e10:141e3f76dc8:-62de', N'RACT-20919e10:141e3f76dc8:-62df', N'ACTPARAM208348b4:141e2d2bd58:-7ddb', NULL, NULL, NULL, NULL, N'BASIC * 0.15', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-20919e10:141e3f76dc8:-7445', N'RACT-20919e10:141e3f76dc8:-7448', N'ACTPARAM208348b4:141e2d2bd58:-7d18', NULL, NULL, N'RCOND-20919e10:141e3f76dc8:-7715', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-20919e10:141e3f76dc8:-7446', N'RACT-20919e10:141e3f76dc8:-7448', N'ACTPARAM208348b4:141e2d2bd58:-7d05', NULL, NULL, NULL, NULL, N'@IIF( NMON * 0.02 > 0.72, SEF * 0.72, SEF * NMON * 0.02 )', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-20919e10:141e3f76dc8:-7447', N'RACT-20919e10:141e3f76dc8:-7448', N'ACTPARAM208348b4:141e2d2bd58:-7cfe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM-1c2fcd63:140c2c7c557:-7f6c', N'SEF PREVIOUS INTEREST', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-20919e10:141e3f76dc8:-74a6', N'RACT-20919e10:141e3f76dc8:-74a9', N'ACTPARAM208348b4:141e2d2bd58:-7e5a', NULL, NULL, N'RCOND-20919e10:141e3f76dc8:-7715', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-20919e10:141e3f76dc8:-74a7', N'RACT-20919e10:141e3f76dc8:-74a9', N'ACTPARAM208348b4:141e2d2bd58:-7e53', NULL, NULL, NULL, NULL, N'@IIF( NMON * 0.02 > 0.72, BASIC * 0.72, BASIC * NMON * 0.02 )', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-20919e10:141e3f76dc8:-74a8', N'RACT-20919e10:141e3f76dc8:-74a9', N'ACTPARAM208348b4:141e2d2bd58:-7e4c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM217a91b:1409e6ae44e:-7fa6', N'RPT BASIC PREVIOUS INTEREST', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-20919e10:141e3f76dc8:-798d', N'RACT-20919e10:141e3f76dc8:-7990', N'ACTPARAM208348b4:141e2d2bd58:-7d59', NULL, NULL, N'RCOND-20919e10:141e3f76dc8:-7b76', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-20919e10:141e3f76dc8:-798e', N'RACT-20919e10:141e3f76dc8:-7990', N'ACTPARAM208348b4:141e2d2bd58:-7d52', NULL, NULL, NULL, NULL, N'AV * 0.01', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-20919e10:141e3f76dc8:-798f', N'RACT-20919e10:141e3f76dc8:-7990', N'ACTPARAM208348b4:141e2d2bd58:-7d4b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM-1c2fcd63:140c2c7c557:-7f7d', N'SEF ADVANCE', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-20919e10:141e3f76dc8:-79e1', N'RACT-20919e10:141e3f76dc8:-79e5', N'ACTPARAM17d6e7ce:141df4b60c2:-7b8d', NULL, NULL, N'RCOND-20919e10:141e3f76dc8:-7b76', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-20919e10:141e3f76dc8:-79e2', N'RACT-20919e10:141e3f76dc8:-79e5', N'ACTPARAM17d6e7ce:141df4b60c2:-7b86', NULL, NULL, NULL, NULL, N'AV * 0.01375', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-20919e10:141e3f76dc8:-79e3', N'RACT-20919e10:141e3f76dc8:-79e5', N'ACTPARAM17d6e7ce:141df4b60c2:-7b7f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM217a91b:1409e6ae44e:-7f3a', N'RPT BASIC ADVANCE', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-20919e10:141e3f76dc8:-79e4', N'RACT-20919e10:141e3f76dc8:-79e5', N'ACTPARAM17d6e7ce:141df4b60c2:-7b72', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'advance', N'advance', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-20919e10:141e3f76dc8:-7c30', N'RACT-20919e10:141e3f76dc8:-7c33', N'ACTPARAM208348b4:141e2d2bd58:-7d59', NULL, NULL, N'RCOND-20919e10:141e3f76dc8:-7de5', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-20919e10:141e3f76dc8:-7c31', N'RACT-20919e10:141e3f76dc8:-7c33', N'ACTPARAM208348b4:141e2d2bd58:-7d52', NULL, NULL, NULL, NULL, N'AV * 0.01', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-20919e10:141e3f76dc8:-7c32', N'RACT-20919e10:141e3f76dc8:-7c33', N'ACTPARAM208348b4:141e2d2bd58:-7d4b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM-1c2fcd63:140c2c7c557:-7f81', N'SEF CURRENT', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-20919e10:141e3f76dc8:-7c97', N'RACT-20919e10:141e3f76dc8:-7c9b', N'ACTPARAM17d6e7ce:141df4b60c2:-7b8d', NULL, NULL, N'RCOND-20919e10:141e3f76dc8:-7de5', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-20919e10:141e3f76dc8:-7c98', N'RACT-20919e10:141e3f76dc8:-7c9b', N'ACTPARAM17d6e7ce:141df4b60c2:-7b86', NULL, NULL, NULL, NULL, N'AV  * 0.01375', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-20919e10:141e3f76dc8:-7c99', N'RACT-20919e10:141e3f76dc8:-7c9b', N'ACTPARAM17d6e7ce:141df4b60c2:-7b7f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM217a91b:1409e6ae44e:-7fb4', N'RPT BASIC CURRENT', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-20919e10:141e3f76dc8:-7c9a', N'RACT-20919e10:141e3f76dc8:-7c9b', N'ACTPARAM17d6e7ce:141df4b60c2:-7b72', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'current', N'current', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT270217d9:143576614a1:-793c', N'RACT270217d9:143576614a1:-793f', N'ACTPARAM208348b4:141e2d2bd58:-7d59', NULL, NULL, N'RCOND270217d9:143576614a1:-7c0e', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT270217d9:143576614a1:-793d', N'RACT270217d9:143576614a1:-793f', N'ACTPARAM208348b4:141e2d2bd58:-7d52', NULL, NULL, NULL, NULL, N'( (AV2013 / 4.0) + ( AV - (AV2013 / 4.0) ) * 0.60 ) * 0.01', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT270217d9:143576614a1:-793e', N'RACT270217d9:143576614a1:-793f', N'ACTPARAM208348b4:141e2d2bd58:-7d4b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM-1c2fcd63:140c2c7c557:-7f81', N'RPT SEF CURRENT', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT270217d9:143576614a1:-79d3', N'RACT270217d9:143576614a1:-79d7', N'ACTPARAM17d6e7ce:141df4b60c2:-7b8d', NULL, NULL, N'RCOND270217d9:143576614a1:-7c0e', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT270217d9:143576614a1:-79d4', N'RACT270217d9:143576614a1:-79d7', N'ACTPARAM17d6e7ce:141df4b60c2:-7b86', NULL, NULL, NULL, NULL, N'( (AV2013 / 4.0) + ( AV - (AV2013 / 4.0) ) * 0.60 ) * 0.01375', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT270217d9:143576614a1:-79d5', N'RACT270217d9:143576614a1:-79d7', N'ACTPARAM17d6e7ce:141df4b60c2:-7b7f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM217a91b:1409e6ae44e:-7fb4', N'RPT BASIC CURRENT', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT270217d9:143576614a1:-79d6', N'RACT270217d9:143576614a1:-79d7', N'ACTPARAM17d6e7ce:141df4b60c2:-7b72', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'current', N'current', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT270217d9:143576614a1:-7cae', N'RACT270217d9:143576614a1:-7cb2', N'ACTPARAM17d6e7ce:141df4b60c2:-7b8d', NULL, NULL, N'RCOND270217d9:143576614a1:-7f4d', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT270217d9:143576614a1:-7caf', N'RACT270217d9:143576614a1:-7cb2', N'ACTPARAM17d6e7ce:141df4b60c2:-7b86', NULL, NULL, NULL, NULL, N'( (AV2013 / 4.0) + ( AV - (AV2013 / 4.0) ) * 0.30 ) * 0.01375', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT270217d9:143576614a1:-7cb0', N'RACT270217d9:143576614a1:-7cb2', N'ACTPARAM17d6e7ce:141df4b60c2:-7b7f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM217a91b:1409e6ae44e:-7fb4', N'RPT BASIC CURRENT', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT270217d9:143576614a1:-7cb1', N'RACT270217d9:143576614a1:-7cb2', N'ACTPARAM17d6e7ce:141df4b60c2:-7b72', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'current', N'current', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT270217d9:143576614a1:-7cfd', N'RACT270217d9:143576614a1:-7d00', N'ACTPARAM208348b4:141e2d2bd58:-7d59', NULL, NULL, N'RCOND270217d9:143576614a1:-7f4d', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT270217d9:143576614a1:-7cfe', N'RACT270217d9:143576614a1:-7d00', N'ACTPARAM208348b4:141e2d2bd58:-7d52', NULL, NULL, NULL, NULL, N'( (AV2013 / 4.0) + ( AV - (AV2013 / 4.0) ) * 0.30 ) * 0.01', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT270217d9:143576614a1:-7cff', N'RACT270217d9:143576614a1:-7d00', N'ACTPARAM208348b4:141e2d2bd58:-7d4b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM-1c2fcd63:140c2c7c557:-7f81', N'RPT SEF CURRENT', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT29ba689e:144612b8ef4:-7a8f', N'RACT29ba689e:144612b8ef4:-7a92', N'ACTPARAM208348b4:141e2d2bd58:-7d18', NULL, NULL, N'RCOND29ba689e:144612b8ef4:-7db3', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT29ba689e:144612b8ef4:-7a90', N'RACT29ba689e:144612b8ef4:-7a92', N'ACTPARAM208348b4:141e2d2bd58:-7d05', NULL, NULL, NULL, NULL, N'0.0', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT29ba689e:144612b8ef4:-7a91', N'RACT29ba689e:144612b8ef4:-7a92', N'ACTPARAM208348b4:141e2d2bd58:-7cfe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM-1c2fcd63:140c2c7c557:-7f6c', N'RPT SEF PENALTY PRIOR YEAR/S', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT29ba689e:144612b8ef4:-7b05', N'RACT29ba689e:144612b8ef4:-7b08', N'ACTPARAM208348b4:141e2d2bd58:-7e5a', NULL, NULL, N'RCOND29ba689e:144612b8ef4:-7db3', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT29ba689e:144612b8ef4:-7b06', N'RACT29ba689e:144612b8ef4:-7b08', N'ACTPARAM208348b4:141e2d2bd58:-7e53', NULL, NULL, NULL, NULL, N'0.0', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT29ba689e:144612b8ef4:-7b07', N'RACT29ba689e:144612b8ef4:-7b08', N'ACTPARAM208348b4:141e2d2bd58:-7e4c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM217a91b:1409e6ae44e:-7fa6', N'RPT BASIC PENALTY PRIOR YEAR/S', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-2a4d2fa5:1422bad4acc:-7767', N'RACT-2a4d2fa5:1422bad4acc:-776a', N'ACTPARAM208348b4:141e2d2bd58:-7b7d', NULL, NULL, N'RCOND-2a4d2fa5:1422bad4acc:-7919', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-2a4d2fa5:1422bad4acc:-7768', N'RACT-2a4d2fa5:1422bad4acc:-776a', N'ACTPARAM208348b4:141e2d2bd58:-7b76', NULL, NULL, NULL, NULL, N'SEF * 0.01', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-2a4d2fa5:1422bad4acc:-7769', N'RACT-2a4d2fa5:1422bad4acc:-776a', N'ACTPARAM208348b4:141e2d2bd58:-7b6f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM-329af841:14104a5dd77:-6a30', N'RPT FIRE CODE', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT35d5ad64:142c5cb42d2:-7f18', N'RACT35d5ad64:142c5cb42d2:-7f1c', N'ACTPARAM32f8a876:142b75093c5:-7238', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT35d5ad64:142c5cb42d2:-7f19', N'RACT35d5ad64:142c5cb42d2:-7f1c', N'ACTPARAM7c61bd6d:1423fce917f:-7e73', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT35d5ad64:142c5cb42d2:-7f1a', N'RACT35d5ad64:142c5cb42d2:-7f1c', N'ACTPARAM367174cc:141a62bd0d8:18c4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'AREA_SQM', N'AREA_SQM', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT35d5ad64:142c5cb42d2:-7f1b', N'RACT35d5ad64:142c5cb42d2:-7f1c', N'ACTPARAM-42dc4039:141afcf5119:-7e59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-36ba5ccb:1430894b791:-3e76', N'RACT-36ba5ccb:1430894b791:-3e79', N'ACTPARAM7c61bd6d:1423fce917f:-7e73', N'true', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-36ba5ccb:1430894b791:-3e77', N'RACT-36ba5ccb:1430894b791:-3e79', N'ACTPARAM367174cc:141a62bd0d8:18c4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'IS_LOCATED_IN_ILIGAN', N'IS_LOCATED_IN_ILIGAN', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-36ba5ccb:1430894b791:-3e78', N'RACT-36ba5ccb:1430894b791:-3e79', N'ACTPARAM-42dc4039:141afcf5119:-7e59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-3a26f3ae:142d1e8ff98:-7e51', N'RACT-3a26f3ae:142d1e8ff98:-7e55', N'ACTPARAM32f8a876:142b75093c5:-7238', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-3a26f3ae:142d1e8ff98:-7e52', N'RACT-3a26f3ae:142d1e8ff98:-7e55', N'ACTPARAM7c61bd6d:1423fce917f:-7e73', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-3a26f3ae:142d1e8ff98:-7e53', N'RACT-3a26f3ae:142d1e8ff98:-7e55', N'ACTPARAM367174cc:141a62bd0d8:18c4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'ADMINISTRATOR_PHONE', N'ADMINISTRATOR_PHONE', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-3a26f3ae:142d1e8ff98:-7e54', N'RACT-3a26f3ae:142d1e8ff98:-7e55', N'ACTPARAM-42dc4039:141afcf5119:-7e59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-3a26f3ae:142d1e8ff98:-7e73', N'RACT-3a26f3ae:142d1e8ff98:-7e77', N'ACTPARAM32f8a876:142b75093c5:-7238', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-3a26f3ae:142d1e8ff98:-7e74', N'RACT-3a26f3ae:142d1e8ff98:-7e77', N'ACTPARAM7c61bd6d:1423fce917f:-7e73', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-3a26f3ae:142d1e8ff98:-7e75', N'RACT-3a26f3ae:142d1e8ff98:-7e77', N'ACTPARAM367174cc:141a62bd0d8:18c4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'ADMINISTRATOR_ADDRESS', N'ADMINISTRATOR_ADDRESS', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-3a26f3ae:142d1e8ff98:-7e76', N'RACT-3a26f3ae:142d1e8ff98:-7e77', N'ACTPARAM-42dc4039:141afcf5119:-7e59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-3a26f3ae:142d1e8ff98:-7e95', N'RACT-3a26f3ae:142d1e8ff98:-7e99', N'ACTPARAM32f8a876:142b75093c5:-7238', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-3a26f3ae:142d1e8ff98:-7e96', N'RACT-3a26f3ae:142d1e8ff98:-7e99', N'ACTPARAM7c61bd6d:1423fce917f:-7e73', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-3a26f3ae:142d1e8ff98:-7e97', N'RACT-3a26f3ae:142d1e8ff98:-7e99', N'ACTPARAM367174cc:141a62bd0d8:18c4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'ADMINISTRATOR_POSITION', N'ADMINISTRATOR_POSITION', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-3a26f3ae:142d1e8ff98:-7e98', N'RACT-3a26f3ae:142d1e8ff98:-7e99', N'ACTPARAM-42dc4039:141afcf5119:-7e59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-3a26f3ae:142d1e8ff98:-7eb7', N'RACT-3a26f3ae:142d1e8ff98:-7ebb', N'ACTPARAM32f8a876:142b75093c5:-7238', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-3a26f3ae:142d1e8ff98:-7eb8', N'RACT-3a26f3ae:142d1e8ff98:-7ebb', N'ACTPARAM7c61bd6d:1423fce917f:-7e73', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-3a26f3ae:142d1e8ff98:-7eb9', N'RACT-3a26f3ae:142d1e8ff98:-7ebb', N'ACTPARAM367174cc:141a62bd0d8:18c4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'ADMINISTRATOR_NAME', N'ADMINISTRATOR_NAME', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-3a26f3ae:142d1e8ff98:-7eba', N'RACT-3a26f3ae:142d1e8ff98:-7ebb', N'ACTPARAM-42dc4039:141afcf5119:-7e59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT41c8b101:142adfe2a5c:-7a38', N'RACT41c8b101:142adfe2a5c:-7a3b', N'ACTPARAM7c61bd6d:1423fce917f:-7e73', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT41c8b101:142adfe2a5c:-7a39', N'RACT41c8b101:142adfe2a5c:-7a3b', N'ACTPARAM367174cc:141a62bd0d8:18c4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'TAX_INCENTIVE_NAME', N'TAX_INCENTIVE_NAME', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT41c8b101:142adfe2a5c:-7a3a', N'RACT41c8b101:142adfe2a5c:-7a3b', N'ACTPARAM-42dc4039:141afcf5119:-7e59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-43d54639:143600ea5ae:-7db6', N'RACT-43d54639:143600ea5ae:-7db9', N'ACTPARAM7c61bd6d:1423fce917f:-7e73', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-43d54639:143600ea5ae:-7db7', N'RACT-43d54639:143600ea5ae:-7db9', N'ACTPARAM367174cc:141a62bd0d8:18c4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'OFFICE_TYPE', N'OFFICE_TYPE', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-43d54639:143600ea5ae:-7db8', N'RACT-43d54639:143600ea5ae:-7db9', N'ACTPARAM-42dc4039:141afcf5119:-7e59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2d', N'RACT441bb08f:1436c079bff:-6c30', N'ACTPARAM441bb08f:1436c079bff:-7697', NULL, NULL, NULL, NULL, N'( BASICINT - BASICINTPAID ) *  0.30', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2d-0002', N'RACT441bb08f:1436c079bff:-6c30-0002', N'ACTPARAM441bb08f:1436c079bff:-7697', NULL, NULL, NULL, NULL, N'(BASICINT - BASICINTPAID) *  0.30', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2d-0003', N'RACT441bb08f:1436c079bff:-6c30-0003', N'ACTPARAM441bb08f:1436c079bff:-7697', NULL, NULL, NULL, NULL, N'(BASICINT - BASICINTPAID) *  0.30', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2d-0004', N'RACT441bb08f:1436c079bff:-6c30-0004', N'ACTPARAM441bb08f:1436c079bff:-7697', NULL, NULL, NULL, NULL, N'(BASICINT - BASICINTPAID) *  0.30', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2d-0005', N'RACT441bb08f:1436c079bff:-6c30-0005', N'ACTPARAM441bb08f:1436c079bff:-7697', NULL, NULL, NULL, NULL, N'(BASICINT - BASICINTPAID) *  0.30', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2d-0006', N'RACT441bb08f:1436c079bff:-6c30-0006', N'ACTPARAM441bb08f:1436c079bff:-7697', NULL, NULL, NULL, NULL, N'(BASICINT - BASICINTPAID) *  0.30', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2d-0007', N'RACT441bb08f:1436c079bff:-6c30-0007', N'ACTPARAM441bb08f:1436c079bff:-7697', NULL, NULL, NULL, NULL, N'(BASICINT - BASICINTPAID) *  0.30', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2d-0008', N'RACT441bb08f:1436c079bff:-6c30-0008', N'ACTPARAM441bb08f:1436c079bff:-7697', NULL, NULL, NULL, NULL, N'(BASICINT - BASICINTPAID) *  0.30', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2d-0009', N'RACT441bb08f:1436c079bff:-6c30-0009', N'ACTPARAM441bb08f:1436c079bff:-7697', NULL, NULL, NULL, NULL, N'(BASICINT - BASICINTPAID) *  0.30', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2d-0010', N'RACT441bb08f:1436c079bff:-6c30-0010', N'ACTPARAM441bb08f:1436c079bff:-7697', NULL, NULL, NULL, NULL, N'(BASICINT - BASICINTPAID) *  0.30', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2d-0011', N'RACT441bb08f:1436c079bff:-6c30-0011', N'ACTPARAM441bb08f:1436c079bff:-7697', NULL, NULL, NULL, NULL, N'(BASICINT - BASICINTPAID) *  0.30', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2d-0012', N'RACT441bb08f:1436c079bff:-6c30-0012', N'ACTPARAM441bb08f:1436c079bff:-7697', NULL, NULL, NULL, NULL, N'(BASICINT - BASICINTPAID) *  0.30', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2d-0013', N'RACT441bb08f:1436c079bff:-6c30-0013', N'ACTPARAM441bb08f:1436c079bff:-7697', NULL, NULL, NULL, NULL, N'(BASICINT - BASICINTPAID) *  0.30', N'expression', NULL, NULL, NULL, NULL, NULL)
GO
print 'Processed 100 total records'
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2d-0014', N'RACT441bb08f:1436c079bff:-6c30-0014', N'ACTPARAM441bb08f:1436c079bff:-7697', NULL, NULL, NULL, NULL, N'(BASICINT - BASICINTPAID) *  0.30', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2d-0015', N'RACT441bb08f:1436c079bff:-6c30-0015', N'ACTPARAM441bb08f:1436c079bff:-7697', NULL, NULL, NULL, NULL, N'(BASICINT - BASICINTPAID) *  0.30', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2d-0016', N'RACT441bb08f:1436c079bff:-6c30-0016', N'ACTPARAM441bb08f:1436c079bff:-7697', NULL, NULL, NULL, NULL, N'(BASICINT - BASICINTPAID) *  0.30', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2d-0017', N'RACT441bb08f:1436c079bff:-6c30-0017', N'ACTPARAM441bb08f:1436c079bff:-7697', NULL, NULL, NULL, NULL, N'(BASICINT - BASICINTPAID) *  0.30', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2d-0018', N'RACT441bb08f:1436c079bff:-6c30-0018', N'ACTPARAM441bb08f:1436c079bff:-7697', NULL, NULL, NULL, NULL, N'(BASICINT - BASICINTPAID) *  0.30', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2d-0019', N'RACT441bb08f:1436c079bff:-6c30-0019', N'ACTPARAM441bb08f:1436c079bff:-7697', NULL, NULL, NULL, NULL, N'(BASICINT - BASICINTPAID) *  0.30', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2d-0020', N'RACT441bb08f:1436c079bff:-6c30-0020', N'ACTPARAM441bb08f:1436c079bff:-7697', NULL, NULL, NULL, NULL, N'(BASICINT - BASICINTPAID) *  0.30', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2d-0021', N'RACT441bb08f:1436c079bff:-6c30-0021', N'ACTPARAM441bb08f:1436c079bff:-7697', NULL, NULL, NULL, NULL, N'(BASICINT - BASICINTPAID) *  0.30', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2d-0022', N'RACT441bb08f:1436c079bff:-6c30-0022', N'ACTPARAM441bb08f:1436c079bff:-7697', NULL, NULL, NULL, NULL, N'(BASICINT - BASICINTPAID) *  0.30', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2d-0023', N'RACT441bb08f:1436c079bff:-6c30-0023', N'ACTPARAM441bb08f:1436c079bff:-7697', NULL, NULL, NULL, NULL, N'(BASICINT - BASICINTPAID) *  0.30', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2d-0024', N'RACT441bb08f:1436c079bff:-6c30-0024', N'ACTPARAM441bb08f:1436c079bff:-7697', NULL, NULL, NULL, NULL, N'(BASICINT - BASICINTPAID) *  0.30', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2d-0025', N'RACT441bb08f:1436c079bff:-6c30-0025', N'ACTPARAM441bb08f:1436c079bff:-7697', NULL, NULL, NULL, NULL, N'(BASICINT - BASICINTPAID) *  0.30', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2d-0026', N'RACT441bb08f:1436c079bff:-6c30-0026', N'ACTPARAM441bb08f:1436c079bff:-7697', NULL, NULL, NULL, NULL, N'(BASICINT - BASICINTPAID) *  0.30', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2d-0027', N'RACT441bb08f:1436c079bff:-6c30-0027', N'ACTPARAM441bb08f:1436c079bff:-7697', NULL, NULL, NULL, NULL, N'(BASICINT - BASICINTPAID) *  0.30', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2d-0028', N'RACT441bb08f:1436c079bff:-6c30-0028', N'ACTPARAM441bb08f:1436c079bff:-7697', NULL, NULL, NULL, NULL, N'(BASICINT - BASICINTPAID) *  0.30', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2d-0029', N'RACT441bb08f:1436c079bff:-6c30-0029', N'ACTPARAM441bb08f:1436c079bff:-7697', NULL, NULL, NULL, NULL, N'(BASICINT - BASICINTPAID) *  0.30', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2d-0030', N'RACT441bb08f:1436c079bff:-6c30-0030', N'ACTPARAM441bb08f:1436c079bff:-7697', NULL, NULL, NULL, NULL, N'(BASICINT - BASICINTPAID) *  0.30', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2d-0031', N'RACT441bb08f:1436c079bff:-6c30-0031', N'ACTPARAM441bb08f:1436c079bff:-7697', NULL, NULL, NULL, NULL, N'(BASICINT - BASICINTPAID) *  0.30', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2d-0032', N'RACT441bb08f:1436c079bff:-6c30-0032', N'ACTPARAM441bb08f:1436c079bff:-7697', NULL, NULL, NULL, NULL, N'(BASICINT - BASICINTPAID) *  0.30', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2d-0033', N'RACT441bb08f:1436c079bff:-6c30-0033', N'ACTPARAM441bb08f:1436c079bff:-7697', NULL, NULL, NULL, NULL, N'(BASICINT - BASICINTPAID) *  0.30', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2d-0034', N'RACT441bb08f:1436c079bff:-6c30-0034', N'ACTPARAM441bb08f:1436c079bff:-7697', NULL, NULL, NULL, NULL, N'(BASICINT - BASICINTPAID) *  0.30', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2d-0035', N'RACT441bb08f:1436c079bff:-6c30-0035', N'ACTPARAM441bb08f:1436c079bff:-7697', NULL, NULL, NULL, NULL, N'(BASICINT - BASICINTPAID) *  0.30', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2d-0036', N'RACT441bb08f:1436c079bff:-6c30-0036', N'ACTPARAM441bb08f:1436c079bff:-7697', NULL, NULL, NULL, NULL, N'(BASICINT - BASICINTPAID) *  0.30', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2d-0037', N'RACT441bb08f:1436c079bff:-6c30-0037', N'ACTPARAM441bb08f:1436c079bff:-7697', NULL, NULL, NULL, NULL, N'(BASICINT - BASICINTPAID) *  0.30', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2d-0038', N'RACT441bb08f:1436c079bff:-6c30-0038', N'ACTPARAM441bb08f:1436c079bff:-7697', NULL, NULL, NULL, NULL, N'(BASICINT - BASICINTPAID) *  0.30', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2d-0039', N'RACT441bb08f:1436c079bff:-6c30-0039', N'ACTPARAM441bb08f:1436c079bff:-7697', NULL, NULL, NULL, NULL, N'(BASICINT - BASICINTPAID) *  0.30', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2d-0040', N'RACT441bb08f:1436c079bff:-6c30-0040', N'ACTPARAM441bb08f:1436c079bff:-7697', NULL, NULL, NULL, NULL, N'(BASICINT - BASICINTPAID) *  0.30', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2d-0041', N'RACT441bb08f:1436c079bff:-6c30-0041', N'ACTPARAM441bb08f:1436c079bff:-7697', NULL, NULL, NULL, NULL, N'(BASICINT - BASICINTPAID) *  0.30', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2d-0042', N'RACT441bb08f:1436c079bff:-6c30-0042', N'ACTPARAM441bb08f:1436c079bff:-7697', NULL, NULL, NULL, NULL, N'(BASICINT - BASICINTPAID) *  0.30', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2d-0043', N'RACT441bb08f:1436c079bff:-6c30-0043', N'ACTPARAM441bb08f:1436c079bff:-7697', NULL, NULL, NULL, NULL, N'(BASICINT - BASICINTPAID) *  0.30', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2d-0044', N'RACT441bb08f:1436c079bff:-6c30-0044', N'ACTPARAM441bb08f:1436c079bff:-7697', NULL, NULL, NULL, NULL, N'(BASICINT - BASICINTPAID) *  0.30', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2e', N'RACT441bb08f:1436c079bff:-6c30', N'ACTPARAM441bb08f:1436c079bff:-76a4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM1e022843:141baeeb514:-7070', N'BRGY. POBLACION RPT SHARE (30%)', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2e-0002', N'RACT441bb08f:1436c079bff:-6c30-0002', N'ACTPARAM441bb08f:1436c079bff:-76a4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM1e022843:141baf35a67:-2bbd', N'BRGY. ABUNO RPT SHARE (30%)', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2e-0003', N'RACT441bb08f:1436c079bff:-6c30-0003', N'ACTPARAM441bb08f:1436c079bff:-76a4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM1e022843:141baf35a67:670b', N'BRGY. ACMAC RPT SHARE (30%)', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2e-0004', N'RACT441bb08f:1436c079bff:-6c30-0004', N'ACTPARAM441bb08f:1436c079bff:-76a4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM1e022843:141bb42b11a:b82', N'BRGY. BAGONG SILANG RPT SHARE (30%)', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2e-0005', N'RACT441bb08f:1436c079bff:-6c30-0005', N'ACTPARAM441bb08f:1436c079bff:-76a4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM1e022843:141bb42b11a:59e2', N'BRGY. BONBONON RPT SHARE (30%)', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2e-0006', N'RACT441bb08f:1436c079bff:-6c30-0006', N'ACTPARAM441bb08f:1436c079bff:-76a4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM1e022843:141bb476afa:-5af3', N'BRGY. BUNAWAN RPT SHARE (30%)', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2e-0007', N'RACT441bb08f:1436c079bff:-6c30-0007', N'ACTPARAM441bb08f:1436c079bff:-76a4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM1e022843:141bb476afa:-29f6', N'BRGY. BURU-UN RPT SHARE (30%)', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2e-0008', N'RACT441bb08f:1436c079bff:-6c30-0008', N'ACTPARAM441bb08f:1436c079bff:-76a4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM1e022843:141bb476afa:-879', N'BRGY. CABACSANAN RPT SHARE (30%)', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2e-0009', N'RACT441bb08f:1436c079bff:-6c30-0009', N'ACTPARAM441bb08f:1436c079bff:-76a4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM1e022843:141bb476afa:256e', N'BRGY. DALIPUGA RPT SHARE (30%)', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2e-0010', N'RACT441bb08f:1436c079bff:-6c30-0010', N'ACTPARAM441bb08f:1436c079bff:-76a4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM1e022843:141bb476afa:508a', N'BRGY. DEL CARMEN RPT SHARE (30%)', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2e-0011', N'RACT441bb08f:1436c079bff:-6c30-0011', N'ACTPARAM441bb08f:1436c079bff:-76a4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM1e022843:141bb4c4cfa:-4ba5', N'BRGY. DIGKILAAN RPT SHARE (30%)', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2e-0012', N'RACT441bb08f:1436c079bff:-6c30-0012', N'ACTPARAM441bb08f:1436c079bff:-76a4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM1e022843:141bb4c4cfa:-1cd3', N'BRGY. DITUCALAN RPT SHARE (30%)', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2e-0013', N'RACT441bb08f:1436c079bff:-6c30-0013', N'ACTPARAM441bb08f:1436c079bff:-76a4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM1e022843:141bb4c4cfa:21f3', N'BRGY. DULAG RPT SHARE (30%)', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2e-0014', N'RACT441bb08f:1436c079bff:-6c30-0014', N'ACTPARAM441bb08f:1436c079bff:-76a4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM1e022843:141bb4c4cfa:6491', N'BRGY. HINAPLANON RPT SHARE (30%)', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2e-0015', N'RACT441bb08f:1436c079bff:-6c30-0015', N'ACTPARAM441bb08f:1436c079bff:-76a4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM1e022843:141bb51155f:-77fc', N'BRGY. HINDANG RPT SHARE (30%)', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2e-0016', N'RACT441bb08f:1436c079bff:-6c30-0016', N'ACTPARAM441bb08f:1436c079bff:-76a4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM1e022843:141bb51155f:-4579', N'BRGY. KALILANGAN RPT SHARE (30%)', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2e-0017', N'RACT441bb08f:1436c079bff:-6c30-0017', N'ACTPARAM441bb08f:1436c079bff:-76a4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM1e022843:141bb51155f:-235f', N'BRGY.KIWALAN RPT SHARE (30%)', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2e-0018', N'RACT441bb08f:1436c079bff:-6c30-0018', N'ACTPARAM441bb08f:1436c079bff:-76a4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM1e022843:141bb51155f:266', N'BRGY. LANIPAO RPT SHARE (30%)', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2e-0019', N'RACT441bb08f:1436c079bff:-6c30-0019', N'ACTPARAM441bb08f:1436c079bff:-76a4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM1e022843:141bb51155f:2c41', N'BRGY. LUINAB RPT SHARE (30%)', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2e-0020', N'RACT441bb08f:1436c079bff:-6c30-0020', N'ACTPARAM441bb08f:1436c079bff:-76a4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM1e022843:141bb51155f:5177', N'BRGY. MAHAYAHAY RPT SHARE (30%)', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2e-0021', N'RACT441bb08f:1436c079bff:-6c30-0021', N'ACTPARAM441bb08f:1436c079bff:-76a4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM1e022843:141bb51155f:6ef8', N'BRGY. MAINIT RPT SHARE (30%)', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2e-0022', N'RACT441bb08f:1436c079bff:-6c30-0022', N'ACTPARAM441bb08f:1436c079bff:-76a4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM1e022843:141bb55e9df:-6791', N'BRGY. MANDULOG RPT SHARE (30%)', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2e-0023', N'RACT441bb08f:1436c079bff:-6c30-0023', N'ACTPARAM441bb08f:1436c079bff:-76a4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM1e022843:141bb55e9df:-43b8', N'BRGY. MARIA CRISTINA RPT SHARE (30%)', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2e-0024', N'RACT441bb08f:1436c079bff:-6c30-0024', N'ACTPARAM441bb08f:1436c079bff:-76a4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM1e022843:141bb55e9df:1844', N'BRGY. PALA-O RPT SHARE (30%)', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2e-0025', N'RACT441bb08f:1436c079bff:-6c30-0025', N'ACTPARAM441bb08f:1436c079bff:-76a4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM1e022843:141bb55e9df:3d21', N'BRGY. PANOROGANAN RPT SHARE (30%)', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2e-0026', N'RACT441bb08f:1436c079bff:-6c30-0026', N'ACTPARAM441bb08f:1436c079bff:-76a4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM1e022843:141bb55e9df:6153', N'BRGY. PUGA-AN RPT SHARE (30%)', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2e-0027', N'RACT441bb08f:1436c079bff:-6c30-0027', N'ACTPARAM441bb08f:1436c079bff:-76a4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM1e022843:141bb5ad19b:-7849', N'BRGY. TOMINOBO PROPER RPT SHARE (30%)', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2e-0028', N'RACT441bb08f:1436c079bff:-6c30-0028', N'ACTPARAM441bb08f:1436c079bff:-76a4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM1e022843:141bb5ad19b:-259a', N'BRGY. ROGONGON RPT SHARE (30%)', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2e-0029', N'RACT441bb08f:1436c079bff:-6c30-0029', N'ACTPARAM441bb08f:1436c079bff:-76a4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM1e022843:141bb5ad19b:-2da', N'BRGY. SAN MIGUEL RPT SHARE (30%)', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2e-0030', N'RACT441bb08f:1436c079bff:-6c30-0030', N'ACTPARAM441bb08f:1436c079bff:-76a4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM1e022843:141bb5ad19b:1a09', N'BRGY. SAN ROQUE RPT SHARE (30%)', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2e-0031', N'RACT441bb08f:1436c079bff:-6c30-0031', N'ACTPARAM441bb08f:1436c079bff:-76a4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM1e022843:141bb5ad19b:3a8a', N'BRGY. SANTIAGO RPT SHARE (30%)', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2e-0032', N'RACT441bb08f:1436c079bff:-6c30-0032', N'ACTPARAM441bb08f:1436c079bff:-76a4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM1e022843:141bb5ad19b:50ef', N'BRGY. STA. ELENA RPT SHARE (30%)', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2e-0033', N'RACT441bb08f:1436c079bff:-6c30-0033', N'ACTPARAM441bb08f:1436c079bff:-76a4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM1e022843:141bb6442b8:-6fad', N'BRGY. STA. FILOMENA RPT SHARE (30%)', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2e-0034', N'RACT441bb08f:1436c079bff:-6c30-0034', N'ACTPARAM441bb08f:1436c079bff:-76a4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM1e022843:141bb6442b8:6121', N'BRGY. STO. ROSARIO RPT SHARE (30%)', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2e-0035', N'RACT441bb08f:1436c079bff:-6c30-0035', N'ACTPARAM441bb08f:1436c079bff:-76a4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM1e022843:141bb6442b8:7d9f', N'BRGY. SARAY RPT SHARE (30%)', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2e-0036', N'RACT441bb08f:1436c079bff:-6c30-0036', N'ACTPARAM441bb08f:1436c079bff:-76a4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM1e022843:141bb68fbf8:38d', N'BRGY. SUAREZ RPT SHARE (30%)', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2e-0037', N'RACT441bb08f:1436c079bff:-6c30-0037', N'ACTPARAM441bb08f:1436c079bff:-76a4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM-1e253c27:1429d242e9c:-53aa', N'BRGY. TAMBACAN RPT SHARE (30%)', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2e-0038', N'RACT441bb08f:1436c079bff:-6c30-0038', N'ACTPARAM441bb08f:1436c079bff:-76a4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM1e022843:141bb68fbf8:3e54', N'BRGY. TIBANGA RPT SHARE (30%)', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2e-0039', N'RACT441bb08f:1436c079bff:-6c30-0039', N'ACTPARAM441bb08f:1436c079bff:-76a4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM1e022843:141bb68fbf8:6dca', N'BRGY. TIPANOY RPT SHARE (30%)', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2e-0040', N'RACT441bb08f:1436c079bff:-6c30-0040', N'ACTPARAM441bb08f:1436c079bff:-76a4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM1e022843:141bb6db72b:-7316', N'BRGY. TUBOD RPT SHARE (30%)', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2e-0041', N'RACT441bb08f:1436c079bff:-6c30-0041', N'ACTPARAM441bb08f:1436c079bff:-76a4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM1e022843:141bb6db72b:-5691', N'BRGY. UBALDO LAYA RPT SHARE (30%)', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2e-0042', N'RACT441bb08f:1436c079bff:-6c30-0042', N'ACTPARAM441bb08f:1436c079bff:-76a4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM1e022843:141bb6db72b:-3858', N'BRGY. UPPER HINAPLANON RPT SHARE (30%)', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2e-0043', N'RACT441bb08f:1436c079bff:-6c30-0043', N'ACTPARAM441bb08f:1436c079bff:-76a4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM1e022843:141bb6db72b:-f5d', N'BRGY. TOMINOBO UPPER RPT SHARE (30%)', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2e-0044', N'RACT441bb08f:1436c079bff:-6c30-0044', N'ACTPARAM441bb08f:1436c079bff:-76a4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM1e022843:141bb6db72b:2235', N'BRGY. VILLAVERDE RPT SHARE (30%)', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2f', N'RACT441bb08f:1436c079bff:-6c30', N'ACTPARAM441bb08f:1436c079bff:-76ab', NULL, NULL, N'RCOND441bb08f:1436c079bff:-6f73', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2f-0002', N'RACT441bb08f:1436c079bff:-6c30-0002', N'ACTPARAM441bb08f:1436c079bff:-76ab', NULL, NULL, N'RCOND441bb08f:1436c079bff:-6f73-0002', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2f-0003', N'RACT441bb08f:1436c079bff:-6c30-0003', N'ACTPARAM441bb08f:1436c079bff:-76ab', NULL, NULL, N'RCOND441bb08f:1436c079bff:-6f73-0003', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2f-0004', N'RACT441bb08f:1436c079bff:-6c30-0004', N'ACTPARAM441bb08f:1436c079bff:-76ab', NULL, NULL, N'RCOND441bb08f:1436c079bff:-6f73-0004', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2f-0005', N'RACT441bb08f:1436c079bff:-6c30-0005', N'ACTPARAM441bb08f:1436c079bff:-76ab', NULL, NULL, N'RCOND441bb08f:1436c079bff:-6f73-0005', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2f-0006', N'RACT441bb08f:1436c079bff:-6c30-0006', N'ACTPARAM441bb08f:1436c079bff:-76ab', NULL, NULL, N'RCOND441bb08f:1436c079bff:-6f73-0006', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2f-0007', N'RACT441bb08f:1436c079bff:-6c30-0007', N'ACTPARAM441bb08f:1436c079bff:-76ab', NULL, NULL, N'RCOND441bb08f:1436c079bff:-6f73-0007', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2f-0008', N'RACT441bb08f:1436c079bff:-6c30-0008', N'ACTPARAM441bb08f:1436c079bff:-76ab', NULL, NULL, N'RCOND441bb08f:1436c079bff:-6f73-0008', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2f-0009', N'RACT441bb08f:1436c079bff:-6c30-0009', N'ACTPARAM441bb08f:1436c079bff:-76ab', NULL, NULL, N'RCOND441bb08f:1436c079bff:-6f73-0009', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2f-0010', N'RACT441bb08f:1436c079bff:-6c30-0010', N'ACTPARAM441bb08f:1436c079bff:-76ab', NULL, NULL, N'RCOND441bb08f:1436c079bff:-6f73-0010', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2f-0011', N'RACT441bb08f:1436c079bff:-6c30-0011', N'ACTPARAM441bb08f:1436c079bff:-76ab', NULL, NULL, N'RCOND441bb08f:1436c079bff:-6f73-0011', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2f-0012', N'RACT441bb08f:1436c079bff:-6c30-0012', N'ACTPARAM441bb08f:1436c079bff:-76ab', NULL, NULL, N'RCOND441bb08f:1436c079bff:-6f73-0012', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2f-0013', N'RACT441bb08f:1436c079bff:-6c30-0013', N'ACTPARAM441bb08f:1436c079bff:-76ab', NULL, NULL, N'RCOND441bb08f:1436c079bff:-6f73-0013', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2f-0014', N'RACT441bb08f:1436c079bff:-6c30-0014', N'ACTPARAM441bb08f:1436c079bff:-76ab', NULL, NULL, N'RCOND441bb08f:1436c079bff:-6f73-0014', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2f-0015', N'RACT441bb08f:1436c079bff:-6c30-0015', N'ACTPARAM441bb08f:1436c079bff:-76ab', NULL, NULL, N'RCOND441bb08f:1436c079bff:-6f73-0015', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2f-0016', N'RACT441bb08f:1436c079bff:-6c30-0016', N'ACTPARAM441bb08f:1436c079bff:-76ab', NULL, NULL, N'RCOND441bb08f:1436c079bff:-6f73-0016', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2f-0017', N'RACT441bb08f:1436c079bff:-6c30-0017', N'ACTPARAM441bb08f:1436c079bff:-76ab', NULL, NULL, N'RCOND441bb08f:1436c079bff:-6f73-0017', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2f-0018', N'RACT441bb08f:1436c079bff:-6c30-0018', N'ACTPARAM441bb08f:1436c079bff:-76ab', NULL, NULL, N'RCOND441bb08f:1436c079bff:-6f73-0018', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2f-0019', N'RACT441bb08f:1436c079bff:-6c30-0019', N'ACTPARAM441bb08f:1436c079bff:-76ab', NULL, NULL, N'RCOND441bb08f:1436c079bff:-6f73-0019', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2f-0020', N'RACT441bb08f:1436c079bff:-6c30-0020', N'ACTPARAM441bb08f:1436c079bff:-76ab', NULL, NULL, N'RCOND441bb08f:1436c079bff:-6f73-0020', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2f-0021', N'RACT441bb08f:1436c079bff:-6c30-0021', N'ACTPARAM441bb08f:1436c079bff:-76ab', NULL, NULL, N'RCOND441bb08f:1436c079bff:-6f73-0021', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2f-0022', N'RACT441bb08f:1436c079bff:-6c30-0022', N'ACTPARAM441bb08f:1436c079bff:-76ab', NULL, NULL, N'RCOND441bb08f:1436c079bff:-6f73-0022', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2f-0023', N'RACT441bb08f:1436c079bff:-6c30-0023', N'ACTPARAM441bb08f:1436c079bff:-76ab', NULL, NULL, N'RCOND441bb08f:1436c079bff:-6f73-0023', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2f-0024', N'RACT441bb08f:1436c079bff:-6c30-0024', N'ACTPARAM441bb08f:1436c079bff:-76ab', NULL, NULL, N'RCOND441bb08f:1436c079bff:-6f73-0024', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2f-0025', N'RACT441bb08f:1436c079bff:-6c30-0025', N'ACTPARAM441bb08f:1436c079bff:-76ab', NULL, NULL, N'RCOND441bb08f:1436c079bff:-6f73-0025', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2f-0026', N'RACT441bb08f:1436c079bff:-6c30-0026', N'ACTPARAM441bb08f:1436c079bff:-76ab', NULL, NULL, N'RCOND441bb08f:1436c079bff:-6f73-0026', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
print 'Processed 200 total records'
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2f-0027', N'RACT441bb08f:1436c079bff:-6c30-0027', N'ACTPARAM441bb08f:1436c079bff:-76ab', NULL, NULL, N'RCOND441bb08f:1436c079bff:-6f73-0027', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2f-0028', N'RACT441bb08f:1436c079bff:-6c30-0028', N'ACTPARAM441bb08f:1436c079bff:-76ab', NULL, NULL, N'RCOND441bb08f:1436c079bff:-6f73-0028', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2f-0029', N'RACT441bb08f:1436c079bff:-6c30-0029', N'ACTPARAM441bb08f:1436c079bff:-76ab', NULL, NULL, N'RCOND441bb08f:1436c079bff:-6f73-0029', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2f-0030', N'RACT441bb08f:1436c079bff:-6c30-0030', N'ACTPARAM441bb08f:1436c079bff:-76ab', NULL, NULL, N'RCOND441bb08f:1436c079bff:-6f73-0030', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2f-0031', N'RACT441bb08f:1436c079bff:-6c30-0031', N'ACTPARAM441bb08f:1436c079bff:-76ab', NULL, NULL, N'RCOND441bb08f:1436c079bff:-6f73-0031', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2f-0032', N'RACT441bb08f:1436c079bff:-6c30-0032', N'ACTPARAM441bb08f:1436c079bff:-76ab', NULL, NULL, N'RCOND441bb08f:1436c079bff:-6f73-0032', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2f-0033', N'RACT441bb08f:1436c079bff:-6c30-0033', N'ACTPARAM441bb08f:1436c079bff:-76ab', NULL, NULL, N'RCOND441bb08f:1436c079bff:-6f73-0033', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2f-0034', N'RACT441bb08f:1436c079bff:-6c30-0034', N'ACTPARAM441bb08f:1436c079bff:-76ab', NULL, NULL, N'RCOND441bb08f:1436c079bff:-6f73-0034', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2f-0035', N'RACT441bb08f:1436c079bff:-6c30-0035', N'ACTPARAM441bb08f:1436c079bff:-76ab', NULL, NULL, N'RCOND441bb08f:1436c079bff:-6f73-0035', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2f-0036', N'RACT441bb08f:1436c079bff:-6c30-0036', N'ACTPARAM441bb08f:1436c079bff:-76ab', NULL, NULL, N'RCOND441bb08f:1436c079bff:-6f73-0036', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2f-0037', N'RACT441bb08f:1436c079bff:-6c30-0037', N'ACTPARAM441bb08f:1436c079bff:-76ab', NULL, NULL, N'RCOND441bb08f:1436c079bff:-6f73-0037', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2f-0038', N'RACT441bb08f:1436c079bff:-6c30-0038', N'ACTPARAM441bb08f:1436c079bff:-76ab', NULL, NULL, N'RCOND441bb08f:1436c079bff:-6f73-0038', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2f-0039', N'RACT441bb08f:1436c079bff:-6c30-0039', N'ACTPARAM441bb08f:1436c079bff:-76ab', NULL, NULL, N'RCOND441bb08f:1436c079bff:-6f73-0039', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2f-0040', N'RACT441bb08f:1436c079bff:-6c30-0040', N'ACTPARAM441bb08f:1436c079bff:-76ab', NULL, NULL, N'RCOND441bb08f:1436c079bff:-6f73-0040', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2f-0041', N'RACT441bb08f:1436c079bff:-6c30-0041', N'ACTPARAM441bb08f:1436c079bff:-76ab', NULL, NULL, N'RCOND441bb08f:1436c079bff:-6f73-0041', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2f-0042', N'RACT441bb08f:1436c079bff:-6c30-0042', N'ACTPARAM441bb08f:1436c079bff:-76ab', NULL, NULL, N'RCOND441bb08f:1436c079bff:-6f73-0042', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2f-0043', N'RACT441bb08f:1436c079bff:-6c30-0043', N'ACTPARAM441bb08f:1436c079bff:-76ab', NULL, NULL, N'RCOND441bb08f:1436c079bff:-6f73-0043', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6c2f-0044', N'RACT441bb08f:1436c079bff:-6c30-0044', N'ACTPARAM441bb08f:1436c079bff:-76ab', NULL, NULL, N'RCOND441bb08f:1436c079bff:-6f73-0044', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc1', N'RACT441bb08f:1436c079bff:-6cc4', N'ACTPARAM441bb08f:1436c079bff:-76ff', NULL, NULL, NULL, NULL, N'( BASIC - BASICPAID - (BASICDISC - BASICDISCTAKEN)) * 0.30', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc1-0002', N'RACT441bb08f:1436c079bff:-6cc4-0002', N'ACTPARAM441bb08f:1436c079bff:-76ff', NULL, NULL, NULL, NULL, N'( BASIC - BASICPAID - (BASICDISC - BASICDISCTAKEN)) * 0.30', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc1-0003', N'RACT441bb08f:1436c079bff:-6cc4-0003', N'ACTPARAM441bb08f:1436c079bff:-76ff', NULL, NULL, NULL, NULL, N'( BASIC - BASICPAID - (BASICDISC - BASICDISCTAKEN)) * 0.30', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc1-0004', N'RACT441bb08f:1436c079bff:-6cc4-0004', N'ACTPARAM441bb08f:1436c079bff:-76ff', NULL, NULL, NULL, NULL, N'( BASIC - BASICPAID - (BASICDISC - BASICDISCTAKEN)) * 0.30', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc1-0005', N'RACT441bb08f:1436c079bff:-6cc4-0005', N'ACTPARAM441bb08f:1436c079bff:-76ff', NULL, NULL, NULL, NULL, N'( BASIC - BASICPAID - (BASICDISC - BASICDISCTAKEN)) * 0.30', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc1-0006', N'RACT441bb08f:1436c079bff:-6cc4-0006', N'ACTPARAM441bb08f:1436c079bff:-76ff', NULL, NULL, NULL, NULL, N'( BASIC - BASICPAID - (BASICDISC - BASICDISCTAKEN)) * 0.30', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc1-0007', N'RACT441bb08f:1436c079bff:-6cc4-0007', N'ACTPARAM441bb08f:1436c079bff:-76ff', NULL, NULL, NULL, NULL, N'( BASIC - BASICPAID - (BASICDISC - BASICDISCTAKEN)) * 0.30', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc1-0008', N'RACT441bb08f:1436c079bff:-6cc4-0008', N'ACTPARAM441bb08f:1436c079bff:-76ff', NULL, NULL, NULL, NULL, N'( BASIC - BASICPAID - (BASICDISC - BASICDISCTAKEN)) * 0.30', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc1-0009', N'RACT441bb08f:1436c079bff:-6cc4-0009', N'ACTPARAM441bb08f:1436c079bff:-76ff', NULL, NULL, NULL, NULL, N'( BASIC - BASICPAID - (BASICDISC - BASICDISCTAKEN)) * 0.30', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc1-0010', N'RACT441bb08f:1436c079bff:-6cc4-0010', N'ACTPARAM441bb08f:1436c079bff:-76ff', NULL, NULL, NULL, NULL, N'( BASIC - BASICPAID - (BASICDISC - BASICDISCTAKEN)) * 0.30', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc1-0011', N'RACT441bb08f:1436c079bff:-6cc4-0011', N'ACTPARAM441bb08f:1436c079bff:-76ff', NULL, NULL, NULL, NULL, N'( BASIC - BASICPAID - (BASICDISC - BASICDISCTAKEN)) * 0.30', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc1-0012', N'RACT441bb08f:1436c079bff:-6cc4-0012', N'ACTPARAM441bb08f:1436c079bff:-76ff', NULL, NULL, NULL, NULL, N'( BASIC - BASICPAID - (BASICDISC - BASICDISCTAKEN)) * 0.30', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc1-0013', N'RACT441bb08f:1436c079bff:-6cc4-0013', N'ACTPARAM441bb08f:1436c079bff:-76ff', NULL, NULL, NULL, NULL, N'( BASIC - BASICPAID - (BASICDISC - BASICDISCTAKEN)) * 0.30', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc1-0014', N'RACT441bb08f:1436c079bff:-6cc4-0014', N'ACTPARAM441bb08f:1436c079bff:-76ff', NULL, NULL, NULL, NULL, N'( BASIC - BASICPAID - (BASICDISC - BASICDISCTAKEN)) * 0.30', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc1-0015', N'RACT441bb08f:1436c079bff:-6cc4-0015', N'ACTPARAM441bb08f:1436c079bff:-76ff', NULL, NULL, NULL, NULL, N'( BASIC - BASICPAID - (BASICDISC - BASICDISCTAKEN)) * 0.30', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc1-0016', N'RACT441bb08f:1436c079bff:-6cc4-0016', N'ACTPARAM441bb08f:1436c079bff:-76ff', NULL, NULL, NULL, NULL, N'( BASIC - BASICPAID - (BASICDISC - BASICDISCTAKEN)) * 0.30', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc1-0017', N'RACT441bb08f:1436c079bff:-6cc4-0017', N'ACTPARAM441bb08f:1436c079bff:-76ff', NULL, NULL, NULL, NULL, N'( BASIC - BASICPAID - (BASICDISC - BASICDISCTAKEN)) * 0.30', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc1-0018', N'RACT441bb08f:1436c079bff:-6cc4-0018', N'ACTPARAM441bb08f:1436c079bff:-76ff', NULL, NULL, NULL, NULL, N'( BASIC - BASICPAID - (BASICDISC - BASICDISCTAKEN)) * 0.30', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc1-0019', N'RACT441bb08f:1436c079bff:-6cc4-0019', N'ACTPARAM441bb08f:1436c079bff:-76ff', NULL, NULL, NULL, NULL, N'( BASIC - BASICPAID - (BASICDISC - BASICDISCTAKEN)) * 0.30', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc1-0020', N'RACT441bb08f:1436c079bff:-6cc4-0020', N'ACTPARAM441bb08f:1436c079bff:-76ff', NULL, NULL, NULL, NULL, N'( BASIC - BASICPAID - (BASICDISC - BASICDISCTAKEN)) * 0.30', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc1-0021', N'RACT441bb08f:1436c079bff:-6cc4-0021', N'ACTPARAM441bb08f:1436c079bff:-76ff', NULL, NULL, NULL, NULL, N'( BASIC - BASICPAID - (BASICDISC - BASICDISCTAKEN)) * 0.30', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc1-0022', N'RACT441bb08f:1436c079bff:-6cc4-0022', N'ACTPARAM441bb08f:1436c079bff:-76ff', NULL, NULL, NULL, NULL, N'( BASIC - BASICPAID - (BASICDISC - BASICDISCTAKEN)) * 0.30', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc1-0023', N'RACT441bb08f:1436c079bff:-6cc4-0023', N'ACTPARAM441bb08f:1436c079bff:-76ff', NULL, NULL, NULL, NULL, N'( BASIC - BASICPAID - (BASICDISC - BASICDISCTAKEN)) * 0.30', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc1-0024', N'RACT441bb08f:1436c079bff:-6cc4-0024', N'ACTPARAM441bb08f:1436c079bff:-76ff', NULL, NULL, NULL, NULL, N'( BASIC - BASICPAID - (BASICDISC - BASICDISCTAKEN)) * 0.30', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc1-0025', N'RACT441bb08f:1436c079bff:-6cc4-0025', N'ACTPARAM441bb08f:1436c079bff:-76ff', NULL, NULL, NULL, NULL, N'( BASIC - BASICPAID - (BASICDISC - BASICDISCTAKEN)) * 0.30', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc1-0026', N'RACT441bb08f:1436c079bff:-6cc4-0026', N'ACTPARAM441bb08f:1436c079bff:-76ff', NULL, NULL, NULL, NULL, N'( BASIC - BASICPAID - (BASICDISC - BASICDISCTAKEN)) * 0.30', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc1-0027', N'RACT441bb08f:1436c079bff:-6cc4-0027', N'ACTPARAM441bb08f:1436c079bff:-76ff', NULL, NULL, NULL, NULL, N'( BASIC - BASICPAID - (BASICDISC - BASICDISCTAKEN)) * 0.30', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc1-0028', N'RACT441bb08f:1436c079bff:-6cc4-0028', N'ACTPARAM441bb08f:1436c079bff:-76ff', NULL, NULL, NULL, NULL, N'( BASIC - BASICPAID - (BASICDISC - BASICDISCTAKEN)) * 0.30', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc1-0029', N'RACT441bb08f:1436c079bff:-6cc4-0029', N'ACTPARAM441bb08f:1436c079bff:-76ff', NULL, NULL, NULL, NULL, N'( BASIC - BASICPAID - (BASICDISC - BASICDISCTAKEN)) * 0.30', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc1-0030', N'RACT441bb08f:1436c079bff:-6cc4-0030', N'ACTPARAM441bb08f:1436c079bff:-76ff', NULL, NULL, NULL, NULL, N'( BASIC - BASICPAID - (BASICDISC - BASICDISCTAKEN)) * 0.30', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc1-0031', N'RACT441bb08f:1436c079bff:-6cc4-0031', N'ACTPARAM441bb08f:1436c079bff:-76ff', NULL, NULL, NULL, NULL, N'( BASIC - BASICPAID - (BASICDISC - BASICDISCTAKEN)) * 0.30', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc1-0032', N'RACT441bb08f:1436c079bff:-6cc4-0032', N'ACTPARAM441bb08f:1436c079bff:-76ff', NULL, NULL, NULL, NULL, N'( BASIC - BASICPAID - (BASICDISC - BASICDISCTAKEN)) * 0.30', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc1-0033', N'RACT441bb08f:1436c079bff:-6cc4-0033', N'ACTPARAM441bb08f:1436c079bff:-76ff', NULL, NULL, NULL, NULL, N'( BASIC - BASICPAID - (BASICDISC - BASICDISCTAKEN)) * 0.30', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc1-0034', N'RACT441bb08f:1436c079bff:-6cc4-0034', N'ACTPARAM441bb08f:1436c079bff:-76ff', NULL, NULL, NULL, NULL, N'( BASIC - BASICPAID - (BASICDISC - BASICDISCTAKEN)) * 0.30', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc1-0035', N'RACT441bb08f:1436c079bff:-6cc4-0035', N'ACTPARAM441bb08f:1436c079bff:-76ff', NULL, NULL, NULL, NULL, N'( BASIC - BASICPAID - (BASICDISC - BASICDISCTAKEN)) * 0.30', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc1-0036', N'RACT441bb08f:1436c079bff:-6cc4-0036', N'ACTPARAM441bb08f:1436c079bff:-76ff', NULL, NULL, NULL, NULL, N'( BASIC - BASICPAID - (BASICDISC - BASICDISCTAKEN)) * 0.30', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc1-0037', N'RACT441bb08f:1436c079bff:-6cc4-0037', N'ACTPARAM441bb08f:1436c079bff:-76ff', NULL, NULL, NULL, NULL, N'( BASIC - BASICPAID - (BASICDISC - BASICDISCTAKEN)) * 0.30', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc1-0038', N'RACT441bb08f:1436c079bff:-6cc4-0038', N'ACTPARAM441bb08f:1436c079bff:-76ff', NULL, NULL, NULL, NULL, N'( BASIC - BASICPAID - (BASICDISC - BASICDISCTAKEN)) * 0.30', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc1-0039', N'RACT441bb08f:1436c079bff:-6cc4-0039', N'ACTPARAM441bb08f:1436c079bff:-76ff', NULL, NULL, NULL, NULL, N'( BASIC - BASICPAID - (BASICDISC - BASICDISCTAKEN)) * 0.30', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc1-0040', N'RACT441bb08f:1436c079bff:-6cc4-0040', N'ACTPARAM441bb08f:1436c079bff:-76ff', NULL, NULL, NULL, NULL, N'( BASIC - BASICPAID - (BASICDISC - BASICDISCTAKEN)) * 0.30', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc1-0041', N'RACT441bb08f:1436c079bff:-6cc4-0041', N'ACTPARAM441bb08f:1436c079bff:-76ff', NULL, NULL, NULL, NULL, N'( BASIC - BASICPAID - (BASICDISC - BASICDISCTAKEN)) * 0.30
', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc1-0042', N'RACT441bb08f:1436c079bff:-6cc4-0042', N'ACTPARAM441bb08f:1436c079bff:-76ff', NULL, NULL, NULL, NULL, N'( BASIC - BASICPAID - (BASICDISC - BASICDISCTAKEN)) * 0.30
', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc1-0043', N'RACT441bb08f:1436c079bff:-6cc4-0043', N'ACTPARAM441bb08f:1436c079bff:-76ff', NULL, NULL, NULL, NULL, N'( BASIC - BASICPAID - (BASICDISC - BASICDISCTAKEN)) * 0.30', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc1-0044', N'RACT441bb08f:1436c079bff:-6cc4-0044', N'ACTPARAM441bb08f:1436c079bff:-76ff', NULL, NULL, NULL, NULL, N'( BASIC - BASICPAID - (BASICDISC - BASICDISCTAKEN)) * 0.30', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc2', N'RACT441bb08f:1436c079bff:-6cc4', N'ACTPARAM441bb08f:1436c079bff:-770c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM1e022843:141baeeb514:-7070', N'BRGY. POBLACION RPT SHARE (30%)', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc2-0002', N'RACT441bb08f:1436c079bff:-6cc4-0002', N'ACTPARAM441bb08f:1436c079bff:-770c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM1e022843:141baf35a67:-2bbd', N'BRGY. ABUNO RPT SHARE (30%)', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc2-0003', N'RACT441bb08f:1436c079bff:-6cc4-0003', N'ACTPARAM441bb08f:1436c079bff:-770c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM1e022843:141baf35a67:670b', N'BRGY. ACMAC RPT SHARE (30%)', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc2-0004', N'RACT441bb08f:1436c079bff:-6cc4-0004', N'ACTPARAM441bb08f:1436c079bff:-770c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM1e022843:141bb42b11a:b82', N'BRGY. BAGONG SILANG RPT SHARE (30%)', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc2-0005', N'RACT441bb08f:1436c079bff:-6cc4-0005', N'ACTPARAM441bb08f:1436c079bff:-770c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM1e022843:141bb42b11a:59e2', N'BRGY. BONBONON RPT SHARE (30%)', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc2-0006', N'RACT441bb08f:1436c079bff:-6cc4-0006', N'ACTPARAM441bb08f:1436c079bff:-770c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM1e022843:141bb476afa:-5af3', N'BRGY. BUNAWAN RPT SHARE (30%)', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc2-0007', N'RACT441bb08f:1436c079bff:-6cc4-0007', N'ACTPARAM441bb08f:1436c079bff:-770c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM1e022843:141bb476afa:-29f6', N'BRGY. BURU-UN RPT SHARE (30%)', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc2-0008', N'RACT441bb08f:1436c079bff:-6cc4-0008', N'ACTPARAM441bb08f:1436c079bff:-770c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM1e022843:141bb476afa:-879', N'BRGY. CABACSANAN RPT SHARE (30%)', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc2-0009', N'RACT441bb08f:1436c079bff:-6cc4-0009', N'ACTPARAM441bb08f:1436c079bff:-770c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM1e022843:141bb476afa:256e', N'BRGY. DALIPUGA RPT SHARE (30%)', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc2-0010', N'RACT441bb08f:1436c079bff:-6cc4-0010', N'ACTPARAM441bb08f:1436c079bff:-770c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM1e022843:141bb476afa:508a', N'BRGY. DEL CARMEN RPT SHARE (30%)', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc2-0011', N'RACT441bb08f:1436c079bff:-6cc4-0011', N'ACTPARAM441bb08f:1436c079bff:-770c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM1e022843:141bb4c4cfa:-4ba5', N'BRGY. DIGKILAAN RPT SHARE (30%)', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc2-0012', N'RACT441bb08f:1436c079bff:-6cc4-0012', N'ACTPARAM441bb08f:1436c079bff:-770c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM1e022843:141bb4c4cfa:-1cd3', N'BRGY. DITUCALAN RPT SHARE (30%)', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc2-0013', N'RACT441bb08f:1436c079bff:-6cc4-0013', N'ACTPARAM441bb08f:1436c079bff:-770c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM1e022843:141bb4c4cfa:21f3', N'BRGY. DULAG RPT SHARE (30%)', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc2-0014', N'RACT441bb08f:1436c079bff:-6cc4-0014', N'ACTPARAM441bb08f:1436c079bff:-770c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM1e022843:141bb4c4cfa:6491', N'BRGY. HINAPLANON RPT SHARE (30%)', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc2-0015', N'RACT441bb08f:1436c079bff:-6cc4-0015', N'ACTPARAM441bb08f:1436c079bff:-770c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM1e022843:141bb51155f:-77fc', N'BRGY. HINDANG RPT SHARE (30%)', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc2-0016', N'RACT441bb08f:1436c079bff:-6cc4-0016', N'ACTPARAM441bb08f:1436c079bff:-770c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM1e022843:141bb51155f:-4579', N'BRGY. KALILANGAN RPT SHARE (30%)', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc2-0017', N'RACT441bb08f:1436c079bff:-6cc4-0017', N'ACTPARAM441bb08f:1436c079bff:-770c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM1e022843:141bb51155f:-235f', N'BRGY.KIWALAN RPT SHARE (30%)', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc2-0018', N'RACT441bb08f:1436c079bff:-6cc4-0018', N'ACTPARAM441bb08f:1436c079bff:-770c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM1e022843:141bb51155f:266', N'BRGY. LANIPAO RPT SHARE (30%)', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc2-0019', N'RACT441bb08f:1436c079bff:-6cc4-0019', N'ACTPARAM441bb08f:1436c079bff:-770c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM1e022843:141bb51155f:2c41', N'BRGY. LUINAB RPT SHARE (30%)', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc2-0020', N'RACT441bb08f:1436c079bff:-6cc4-0020', N'ACTPARAM441bb08f:1436c079bff:-770c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM1e022843:141bb51155f:5177', N'BRGY. MAHAYAHAY RPT SHARE (30%)', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc2-0021', N'RACT441bb08f:1436c079bff:-6cc4-0021', N'ACTPARAM441bb08f:1436c079bff:-770c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM1e022843:141bb51155f:6ef8', N'BRGY. MAINIT RPT SHARE (30%)', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc2-0022', N'RACT441bb08f:1436c079bff:-6cc4-0022', N'ACTPARAM441bb08f:1436c079bff:-770c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM1e022843:141bb55e9df:-6791', N'BRGY. MANDULOG RPT SHARE (30%)', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc2-0023', N'RACT441bb08f:1436c079bff:-6cc4-0023', N'ACTPARAM441bb08f:1436c079bff:-770c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM1e022843:141bb55e9df:-43b8', N'BRGY. MARIA CRISTINA RPT SHARE (30%)', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc2-0024', N'RACT441bb08f:1436c079bff:-6cc4-0024', N'ACTPARAM441bb08f:1436c079bff:-770c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM1e022843:141bb55e9df:1844', N'BRGY. PALA-O RPT SHARE (30%)', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc2-0025', N'RACT441bb08f:1436c079bff:-6cc4-0025', N'ACTPARAM441bb08f:1436c079bff:-770c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM1e022843:141bb55e9df:3d21', N'BRGY. PANOROGANAN RPT SHARE (30%)', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc2-0026', N'RACT441bb08f:1436c079bff:-6cc4-0026', N'ACTPARAM441bb08f:1436c079bff:-770c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM1e022843:141bb55e9df:6153', N'BRGY. PUGA-AN RPT SHARE (30%)', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc2-0027', N'RACT441bb08f:1436c079bff:-6cc4-0027', N'ACTPARAM441bb08f:1436c079bff:-770c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM1e022843:141bb5ad19b:-7849', N'BRGY. TOMINOBO PROPER RPT SHARE (30%)', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc2-0028', N'RACT441bb08f:1436c079bff:-6cc4-0028', N'ACTPARAM441bb08f:1436c079bff:-770c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM1e022843:141bb5ad19b:-259a', N'BRGY. ROGONGON RPT SHARE (30%)', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc2-0029', N'RACT441bb08f:1436c079bff:-6cc4-0029', N'ACTPARAM441bb08f:1436c079bff:-770c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM1e022843:141bb5ad19b:-2da', N'BRGY. SAN MIGUEL RPT SHARE (30%)', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc2-0030', N'RACT441bb08f:1436c079bff:-6cc4-0030', N'ACTPARAM441bb08f:1436c079bff:-770c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM1e022843:141bb5ad19b:1a09', N'BRGY. SAN ROQUE RPT SHARE (30%)', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc2-0031', N'RACT441bb08f:1436c079bff:-6cc4-0031', N'ACTPARAM441bb08f:1436c079bff:-770c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM1e022843:141bb5ad19b:3a8a', N'BRGY. SANTIAGO RPT SHARE (30%)', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc2-0032', N'RACT441bb08f:1436c079bff:-6cc4-0032', N'ACTPARAM441bb08f:1436c079bff:-770c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM1e022843:141bb5ad19b:50ef', N'BRGY. STA. ELENA RPT SHARE (30%)', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc2-0033', N'RACT441bb08f:1436c079bff:-6cc4-0033', N'ACTPARAM441bb08f:1436c079bff:-770c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM1e022843:141bb6442b8:-6fad', N'BRGY. STA. FILOMENA RPT SHARE (30%)', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc2-0034', N'RACT441bb08f:1436c079bff:-6cc4-0034', N'ACTPARAM441bb08f:1436c079bff:-770c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM1e022843:141bb6442b8:6121', N'BRGY. STO. ROSARIO RPT SHARE (30%)', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc2-0035', N'RACT441bb08f:1436c079bff:-6cc4-0035', N'ACTPARAM441bb08f:1436c079bff:-770c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM1e022843:141bb6442b8:7d9f', N'BRGY. SARAY RPT SHARE (30%)', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc2-0036', N'RACT441bb08f:1436c079bff:-6cc4-0036', N'ACTPARAM441bb08f:1436c079bff:-770c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM1e022843:141bb68fbf8:38d', N'BRGY. SUAREZ RPT SHARE (30%)', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc2-0037', N'RACT441bb08f:1436c079bff:-6cc4-0037', N'ACTPARAM441bb08f:1436c079bff:-770c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM-1e253c27:1429d242e9c:-53aa', N'BRGY. TAMBACAN RPT SHARE (30%)', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc2-0038', N'RACT441bb08f:1436c079bff:-6cc4-0038', N'ACTPARAM441bb08f:1436c079bff:-770c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM1e022843:141bb68fbf8:3e54', N'BRGY. TIBANGA RPT SHARE (30%)', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc2-0039', N'RACT441bb08f:1436c079bff:-6cc4-0039', N'ACTPARAM441bb08f:1436c079bff:-770c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM1e022843:141bb68fbf8:6dca', N'BRGY. TIPANOY RPT SHARE (30%)', NULL, NULL)
GO
print 'Processed 300 total records'
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc2-0040', N'RACT441bb08f:1436c079bff:-6cc4-0040', N'ACTPARAM441bb08f:1436c079bff:-770c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM1e022843:141bb6db72b:-7316', N'BRGY. TUBOD RPT SHARE (30%)', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc2-0041', N'RACT441bb08f:1436c079bff:-6cc4-0041', N'ACTPARAM441bb08f:1436c079bff:-770c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM1e022843:141bb6db72b:-5691', N'BRGY. UBALDO LAYA RPT SHARE (30%)', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc2-0042', N'RACT441bb08f:1436c079bff:-6cc4-0042', N'ACTPARAM441bb08f:1436c079bff:-770c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM1e022843:141bb6db72b:-3858', N'BRGY. UPPER HINAPLANON RPT SHARE (30%)', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc2-0043', N'RACT441bb08f:1436c079bff:-6cc4-0043', N'ACTPARAM441bb08f:1436c079bff:-770c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM1e022843:141bb6db72b:-f5d', N'BRGY. TOMINOBO UPPER RPT SHARE (30%)', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc2-0044', N'RACT441bb08f:1436c079bff:-6cc4-0044', N'ACTPARAM441bb08f:1436c079bff:-770c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM1e022843:141bb6db72b:2235', N'BRGY. VILLAVERDE RPT SHARE (30%)', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc3', N'RACT441bb08f:1436c079bff:-6cc4', N'ACTPARAM441bb08f:1436c079bff:-7713', NULL, NULL, N'RCOND441bb08f:1436c079bff:-6f73', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc3-0002', N'RACT441bb08f:1436c079bff:-6cc4-0002', N'ACTPARAM441bb08f:1436c079bff:-7713', NULL, NULL, N'RCOND441bb08f:1436c079bff:-6f73-0002', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc3-0003', N'RACT441bb08f:1436c079bff:-6cc4-0003', N'ACTPARAM441bb08f:1436c079bff:-7713', NULL, NULL, N'RCOND441bb08f:1436c079bff:-6f73-0003', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc3-0004', N'RACT441bb08f:1436c079bff:-6cc4-0004', N'ACTPARAM441bb08f:1436c079bff:-7713', NULL, NULL, N'RCOND441bb08f:1436c079bff:-6f73-0004', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc3-0005', N'RACT441bb08f:1436c079bff:-6cc4-0005', N'ACTPARAM441bb08f:1436c079bff:-7713', NULL, NULL, N'RCOND441bb08f:1436c079bff:-6f73-0005', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc3-0006', N'RACT441bb08f:1436c079bff:-6cc4-0006', N'ACTPARAM441bb08f:1436c079bff:-7713', NULL, NULL, N'RCOND441bb08f:1436c079bff:-6f73-0006', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc3-0007', N'RACT441bb08f:1436c079bff:-6cc4-0007', N'ACTPARAM441bb08f:1436c079bff:-7713', NULL, NULL, N'RCOND441bb08f:1436c079bff:-6f73-0007', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc3-0008', N'RACT441bb08f:1436c079bff:-6cc4-0008', N'ACTPARAM441bb08f:1436c079bff:-7713', NULL, NULL, N'RCOND441bb08f:1436c079bff:-6f73-0008', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc3-0009', N'RACT441bb08f:1436c079bff:-6cc4-0009', N'ACTPARAM441bb08f:1436c079bff:-7713', NULL, NULL, N'RCOND441bb08f:1436c079bff:-6f73-0009', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc3-0010', N'RACT441bb08f:1436c079bff:-6cc4-0010', N'ACTPARAM441bb08f:1436c079bff:-7713', NULL, NULL, N'RCOND441bb08f:1436c079bff:-6f73-0010', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc3-0011', N'RACT441bb08f:1436c079bff:-6cc4-0011', N'ACTPARAM441bb08f:1436c079bff:-7713', NULL, NULL, N'RCOND441bb08f:1436c079bff:-6f73-0011', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc3-0012', N'RACT441bb08f:1436c079bff:-6cc4-0012', N'ACTPARAM441bb08f:1436c079bff:-7713', NULL, NULL, N'RCOND441bb08f:1436c079bff:-6f73-0012', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc3-0013', N'RACT441bb08f:1436c079bff:-6cc4-0013', N'ACTPARAM441bb08f:1436c079bff:-7713', NULL, NULL, N'RCOND441bb08f:1436c079bff:-6f73-0013', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc3-0014', N'RACT441bb08f:1436c079bff:-6cc4-0014', N'ACTPARAM441bb08f:1436c079bff:-7713', NULL, NULL, N'RCOND441bb08f:1436c079bff:-6f73-0014', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc3-0015', N'RACT441bb08f:1436c079bff:-6cc4-0015', N'ACTPARAM441bb08f:1436c079bff:-7713', NULL, NULL, N'RCOND441bb08f:1436c079bff:-6f73-0015', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc3-0016', N'RACT441bb08f:1436c079bff:-6cc4-0016', N'ACTPARAM441bb08f:1436c079bff:-7713', NULL, NULL, N'RCOND441bb08f:1436c079bff:-6f73-0016', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc3-0017', N'RACT441bb08f:1436c079bff:-6cc4-0017', N'ACTPARAM441bb08f:1436c079bff:-7713', NULL, NULL, N'RCOND441bb08f:1436c079bff:-6f73-0017', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc3-0018', N'RACT441bb08f:1436c079bff:-6cc4-0018', N'ACTPARAM441bb08f:1436c079bff:-7713', NULL, NULL, N'RCOND441bb08f:1436c079bff:-6f73-0018', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc3-0019', N'RACT441bb08f:1436c079bff:-6cc4-0019', N'ACTPARAM441bb08f:1436c079bff:-7713', NULL, NULL, N'RCOND441bb08f:1436c079bff:-6f73-0019', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc3-0020', N'RACT441bb08f:1436c079bff:-6cc4-0020', N'ACTPARAM441bb08f:1436c079bff:-7713', NULL, NULL, N'RCOND441bb08f:1436c079bff:-6f73-0020', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc3-0021', N'RACT441bb08f:1436c079bff:-6cc4-0021', N'ACTPARAM441bb08f:1436c079bff:-7713', NULL, NULL, N'RCOND441bb08f:1436c079bff:-6f73-0021', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc3-0022', N'RACT441bb08f:1436c079bff:-6cc4-0022', N'ACTPARAM441bb08f:1436c079bff:-7713', NULL, NULL, N'RCOND441bb08f:1436c079bff:-6f73-0022', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc3-0023', N'RACT441bb08f:1436c079bff:-6cc4-0023', N'ACTPARAM441bb08f:1436c079bff:-7713', NULL, NULL, N'RCOND441bb08f:1436c079bff:-6f73-0023', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc3-0024', N'RACT441bb08f:1436c079bff:-6cc4-0024', N'ACTPARAM441bb08f:1436c079bff:-7713', NULL, NULL, N'RCOND441bb08f:1436c079bff:-6f73-0024', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc3-0025', N'RACT441bb08f:1436c079bff:-6cc4-0025', N'ACTPARAM441bb08f:1436c079bff:-7713', NULL, NULL, N'RCOND441bb08f:1436c079bff:-6f73-0025', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc3-0026', N'RACT441bb08f:1436c079bff:-6cc4-0026', N'ACTPARAM441bb08f:1436c079bff:-7713', NULL, NULL, N'RCOND441bb08f:1436c079bff:-6f73-0026', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc3-0027', N'RACT441bb08f:1436c079bff:-6cc4-0027', N'ACTPARAM441bb08f:1436c079bff:-7713', NULL, NULL, N'RCOND441bb08f:1436c079bff:-6f73-0027', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc3-0028', N'RACT441bb08f:1436c079bff:-6cc4-0028', N'ACTPARAM441bb08f:1436c079bff:-7713', NULL, NULL, N'RCOND441bb08f:1436c079bff:-6f73-0028', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc3-0029', N'RACT441bb08f:1436c079bff:-6cc4-0029', N'ACTPARAM441bb08f:1436c079bff:-7713', NULL, NULL, N'RCOND441bb08f:1436c079bff:-6f73-0029', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc3-0030', N'RACT441bb08f:1436c079bff:-6cc4-0030', N'ACTPARAM441bb08f:1436c079bff:-7713', NULL, NULL, N'RCOND441bb08f:1436c079bff:-6f73-0030', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc3-0031', N'RACT441bb08f:1436c079bff:-6cc4-0031', N'ACTPARAM441bb08f:1436c079bff:-7713', NULL, NULL, N'RCOND441bb08f:1436c079bff:-6f73-0031', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc3-0032', N'RACT441bb08f:1436c079bff:-6cc4-0032', N'ACTPARAM441bb08f:1436c079bff:-7713', NULL, NULL, N'RCOND441bb08f:1436c079bff:-6f73-0032', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc3-0033', N'RACT441bb08f:1436c079bff:-6cc4-0033', N'ACTPARAM441bb08f:1436c079bff:-7713', NULL, NULL, N'RCOND441bb08f:1436c079bff:-6f73-0033', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc3-0034', N'RACT441bb08f:1436c079bff:-6cc4-0034', N'ACTPARAM441bb08f:1436c079bff:-7713', NULL, NULL, N'RCOND441bb08f:1436c079bff:-6f73-0034', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc3-0035', N'RACT441bb08f:1436c079bff:-6cc4-0035', N'ACTPARAM441bb08f:1436c079bff:-7713', NULL, NULL, N'RCOND441bb08f:1436c079bff:-6f73-0035', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc3-0036', N'RACT441bb08f:1436c079bff:-6cc4-0036', N'ACTPARAM441bb08f:1436c079bff:-7713', NULL, NULL, N'RCOND441bb08f:1436c079bff:-6f73-0036', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc3-0037', N'RACT441bb08f:1436c079bff:-6cc4-0037', N'ACTPARAM441bb08f:1436c079bff:-7713', NULL, NULL, N'RCOND441bb08f:1436c079bff:-6f73-0037', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc3-0038', N'RACT441bb08f:1436c079bff:-6cc4-0038', N'ACTPARAM441bb08f:1436c079bff:-7713', NULL, NULL, N'RCOND441bb08f:1436c079bff:-6f73-0038', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc3-0039', N'RACT441bb08f:1436c079bff:-6cc4-0039', N'ACTPARAM441bb08f:1436c079bff:-7713', NULL, NULL, N'RCOND441bb08f:1436c079bff:-6f73-0039', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc3-0040', N'RACT441bb08f:1436c079bff:-6cc4-0040', N'ACTPARAM441bb08f:1436c079bff:-7713', NULL, NULL, N'RCOND441bb08f:1436c079bff:-6f73-0040', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc3-0041', N'RACT441bb08f:1436c079bff:-6cc4-0041', N'ACTPARAM441bb08f:1436c079bff:-7713', NULL, NULL, N'RCOND441bb08f:1436c079bff:-6f73-0041', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc3-0042', N'RACT441bb08f:1436c079bff:-6cc4-0042', N'ACTPARAM441bb08f:1436c079bff:-7713', NULL, NULL, N'RCOND441bb08f:1436c079bff:-6f73-0042', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc3-0043', N'RACT441bb08f:1436c079bff:-6cc4-0043', N'ACTPARAM441bb08f:1436c079bff:-7713', NULL, NULL, N'RCOND441bb08f:1436c079bff:-6f73-0043', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-6cc3-0044', N'RACT441bb08f:1436c079bff:-6cc4-0044', N'ACTPARAM441bb08f:1436c079bff:-7713', NULL, NULL, N'RCOND441bb08f:1436c079bff:-6f73-0044', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-7046', N'RACT441bb08f:1436c079bff:-7048', N'ACTPARAM441bb08f:1436c079bff:-77cf', NULL, NULL, NULL, NULL, N'BASICINT - BRGYINTSHARE - BASICINTPAID', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-7047', N'RACT441bb08f:1436c079bff:-7048', N'ACTPARAM441bb08f:1436c079bff:-77d6', NULL, NULL, N'RCOND441bb08f:1436c079bff:-7529', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-711b', N'RACT441bb08f:1436c079bff:-711d', N'ACTPARAM441bb08f:1436c079bff:-781f', NULL, NULL, NULL, NULL, N'( BASIC - BASICPAID - (BASICDISC - BASICDISCTAKEN)) -  BRGYSHARE', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT441bb08f:1436c079bff:-711c', N'RACT441bb08f:1436c079bff:-711d', N'ACTPARAM441bb08f:1436c079bff:-7826', NULL, NULL, N'RCOND441bb08f:1436c079bff:-7529', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-5287a583:143748e3d5b:-7b84', N'RACT-5287a583:143748e3d5b:-7b87', N'ACTPARAM-301ea2a7:142daea52cd:-7ebc', NULL, NULL, NULL, NULL, N'0.0', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-5287a583:143748e3d5b:-7b85', N'RACT-5287a583:143748e3d5b:-7b87', N'ACTPARAM-7387c51c:142dbad3349:-7801', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM217a91b:1409e6ae44e:-7d75', N'COMMUNITY TAX INDIVIDUAL', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-5287a583:143748e3d5b:-7b86', N'RACT-5287a583:143748e3d5b:-7b87', N'ACTPARAM-301ea2a7:142daea52cd:-7ec3', NULL, NULL, N'RCOND-5287a583:143748e3d5b:-7c7c', N'CTC', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT559c0dba:14361bac6db:-77f6', N'RACT559c0dba:14361bac6db:-77f9', N'ACTPARAM40e16e9c:142df3e5af6:-7abf', NULL, NULL, NULL, NULL, N'TOTALTAX*CMON * 0.02', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT559c0dba:14361bac6db:-77f7', N'RACT559c0dba:14361bac6db:-77f9', N'ACTPARAM40e16e9c:142df3e5af6:-7acc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM217a91b:1409e6ae44e:-7d3e', N'COMMUNITY TAX CORPORATION PENALTY', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT559c0dba:14361bac6db:-77f8', N'RACT559c0dba:14361bac6db:-77f9', N'ACTPARAM40e16e9c:142df3e5af6:-6fed', NULL, NULL, N'RCOND559c0dba:14361bac6db:-78b0', N'CCTC', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT559c0dba:14361bac6db:-7940', N'RACT559c0dba:14361bac6db:-7942', N'ACTPARAM40e16e9c:142df3e5af6:-7b13', NULL, NULL, NULL, NULL, N'RPAV/5000*2 > 10000 ? 10000.0 : RPAV/5000*2', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT559c0dba:14361bac6db:-7941', N'RACT559c0dba:14361bac6db:-7942', N'ACTPARAM40e16e9c:142df3e5af6:-704f', NULL, NULL, N'RCOND559c0dba:14361bac6db:-7aaf', N'CCTC', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT559c0dba:14361bac6db:-7994', N'RACT559c0dba:14361bac6db:-7996', N'ACTPARAM40e16e9c:142df3e5af6:-7b36', NULL, NULL, NULL, NULL, N'BGROSS/5000*2 > 10000 ? 10000.0 : BGROSS/5000*2 ', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT559c0dba:14361bac6db:-7995', N'RACT559c0dba:14361bac6db:-7996', N'ACTPARAM40e16e9c:142df3e5af6:-7073', NULL, NULL, N'RCOND559c0dba:14361bac6db:-7aaf', N'CCTC', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT559c0dba:14361bac6db:-79e6', N'RACT559c0dba:14361bac6db:-79e9', N'ACTPARAM40e16e9c:142df3e5af6:-7b62', NULL, NULL, NULL, NULL, N'500', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT559c0dba:14361bac6db:-79e7', N'RACT559c0dba:14361bac6db:-79e9', N'ACTPARAM40e16e9c:142df3e5af6:-7b70', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM1cbd0ad1:140b8efe25c:-7e61', N'COMMUNITY TAX - CORPORATION', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT559c0dba:14361bac6db:-79e8', N'RACT559c0dba:14361bac6db:-79e9', N'ACTPARAM40e16e9c:142df3e5af6:-70b1', NULL, NULL, N'RCOND559c0dba:14361bac6db:-7aaf', N'CCTC', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT559c0dba:14361bac6db:-7d6c', N'RACT559c0dba:14361bac6db:-7d6f', N'ACTPARAM-301ea2a7:142daea52cd:-75fd', NULL, NULL, NULL, NULL, N'TOTALTAX*CMON*0.02', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT559c0dba:14361bac6db:-7d6d', N'RACT559c0dba:14361bac6db:-7d6f', N'ACTPARAM-7387c51c:142dbad3349:-77cd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM217a91b:1409e6ae44e:-7d6b', N'COMMUNITY TAX - INDIVIDUAL PENALTY', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT559c0dba:14361bac6db:-7d6e', N'RACT559c0dba:14361bac6db:-7d6f', N'ACTPARAM-301ea2a7:142daea52cd:-7606', NULL, NULL, N'RCOND559c0dba:14361bac6db:-7f5b', N'CTCI', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-68ca73a4:142c149a9bf:-7c40', N'RACT-68ca73a4:142c149a9bf:-7c44', N'ACTPARAM32f8a876:142b75093c5:-7238', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-68ca73a4:142c149a9bf:-7c41', N'RACT-68ca73a4:142c149a9bf:-7c44', N'ACTPARAM7c61bd6d:1423fce917f:-7e73', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-68ca73a4:142c149a9bf:-7c42', N'RACT-68ca73a4:142c149a9bf:-7c44', N'ACTPARAM367174cc:141a62bd0d8:18c4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'NUM_EMPLOYEE_MALE', N'NUM_EMPLOYEE_MALE', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-68ca73a4:142c149a9bf:-7c43', N'RACT-68ca73a4:142c149a9bf:-7c44', N'ACTPARAM-42dc4039:141afcf5119:-7e59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-68ca73a4:142c149a9bf:-7c62', N'RACT-68ca73a4:142c149a9bf:-7c66', N'ACTPARAM32f8a876:142b75093c5:-7238', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-68ca73a4:142c149a9bf:-7c63', N'RACT-68ca73a4:142c149a9bf:-7c66', N'ACTPARAM7c61bd6d:1423fce917f:-7e73', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-68ca73a4:142c149a9bf:-7c64', N'RACT-68ca73a4:142c149a9bf:-7c66', N'ACTPARAM367174cc:141a62bd0d8:18c4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'NUM_EMPLOYEE_FEMALE', N'NUM_EMPLOYEE_FEMALE', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-68ca73a4:142c149a9bf:-7c65', N'RACT-68ca73a4:142c149a9bf:-7c66', N'ACTPARAM-42dc4039:141afcf5119:-7e59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-68ca73a4:142c149a9bf:-7c84', N'RACT-68ca73a4:142c149a9bf:-7c88', N'ACTPARAM32f8a876:142b75093c5:-7238', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-68ca73a4:142c149a9bf:-7c85', N'RACT-68ca73a4:142c149a9bf:-7c88', N'ACTPARAM7c61bd6d:1423fce917f:-7e73', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-68ca73a4:142c149a9bf:-7c86', N'RACT-68ca73a4:142c149a9bf:-7c88', N'ACTPARAM367174cc:141a62bd0d8:18c4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'NUM_EMPLOYEE_RESIDENT', N'NUM_EMPLOYEE_RESIDENT', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-68ca73a4:142c149a9bf:-7c87', N'RACT-68ca73a4:142c149a9bf:-7c88', N'ACTPARAM-42dc4039:141afcf5119:-7e59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT6d66cc31:1446cc9522e:-7a11', N'RACT6d66cc31:1446cc9522e:-7a12', N'ACTPARAM6d66cc31:1446cc9522e:-7d3c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'RT6d66cc31:1446cc9522e:-7b1c', N'APPROVED PLAN', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT6d66cc31:1446cc9522e:-7a2b', N'RACT6d66cc31:1446cc9522e:-7a2c', N'ACTPARAM6d66cc31:1446cc9522e:-7d3c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'RT6d66cc31:1446cc9522e:-7b43', N'TRANSFER TAX', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT6d66cc31:1446cc9522e:-7a45', N'RACT6d66cc31:1446cc9522e:-7a46', N'ACTPARAM6d66cc31:1446cc9522e:-7d3c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'RT6d66cc31:1446cc9522e:-7b51', N'TITLE', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT6d66cc31:1446cc9522e:-7a6b', N'RACT6d66cc31:1446cc9522e:-7a6c', N'ACTPARAM6d66cc31:1446cc9522e:-7d3c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'RT6d66cc31:1446cc9522e:-7b36', N'TAX CLEARANCE', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-70b3ef1:142f01dbd80:-7ca6', N'RACT-70b3ef1:142f01dbd80:-7ca8', N'ACTPARAM-301ea2a7:142daea52cd:-76f5', NULL, NULL, NULL, NULL, N'(PINCOME/1000 > 5000.0) ? 5000.0 : PINCOME/1000', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-70b3ef1:142f01dbd80:-7ca7', N'RACT-70b3ef1:142f01dbd80:-7ca8', N'ACTPARAM-301ea2a7:142daea52cd:-76fc', NULL, NULL, N'RCOND-70b3ef1:142f01dbd80:-7fc4', N'CTCI', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-70b3ef1:142f01dbd80:-7d39', N'RACT-70b3ef1:142f01dbd80:-7d3b', N'ACTPARAM-301ea2a7:142daea52cd:-773d', NULL, NULL, NULL, NULL, N'( BGROSS/1000 > 5000.0) ? 5000.0 : BGROSS/1000', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-70b3ef1:142f01dbd80:-7d3a', N'RACT-70b3ef1:142f01dbd80:-7d3b', N'ACTPARAM-301ea2a7:142daea52cd:-7744', NULL, NULL, N'RCOND-70b3ef1:142f01dbd80:-7fc4', N'CTCI', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-70b3ef1:142f01dbd80:-7d9a', N'RACT-70b3ef1:142f01dbd80:-7d9c', N'ACTPARAM-301ea2a7:142daea52cd:-7875', NULL, NULL, NULL, NULL, N'( ASALARY/1000 > 5000.0) ? 5000.0 : ASALARY/1000', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-70b3ef1:142f01dbd80:-7d9b', N'RACT-70b3ef1:142f01dbd80:-7d9c', N'ACTPARAM-301ea2a7:142daea52cd:-787c', NULL, NULL, N'RCOND-70b3ef1:142f01dbd80:-7fc4', N'CTCI', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-70b3ef1:142f01dbd80:-7dfa', N'RACT-70b3ef1:142f01dbd80:-7dfd', N'ACTPARAM-301ea2a7:142daea52cd:-7ebc', NULL, NULL, NULL, NULL, N'5.0', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-70b3ef1:142f01dbd80:-7dfb', N'RACT-70b3ef1:142f01dbd80:-7dfd', N'ACTPARAM-7387c51c:142dbad3349:-7801', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM217a91b:1409e6ae44e:-7d75', N'COMMUNITY TAX INDIVIDUAL', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-70b3ef1:142f01dbd80:-7dfc', N'RACT-70b3ef1:142f01dbd80:-7dfd', N'ACTPARAM-301ea2a7:142daea52cd:-7ec3', NULL, NULL, N'RCOND-70b3ef1:142f01dbd80:-7fc4', N'CTCI', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-727f5592:144018f96a2:-7eb8', N'RACT-727f5592:144018f96a2:-7ebb', N'ACTPARAM7c61bd6d:1423fce917f:-7e73', N'false', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-727f5592:144018f96a2:-7eb9', N'RACT-727f5592:144018f96a2:-7ebb', N'ACTPARAM367174cc:141a62bd0d8:18c4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'LOCATED_ON_NIGHTMARKET', N'LOCATED_ON_NIGHTMARKET', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-727f5592:144018f96a2:-7eba', N'RACT-727f5592:144018f96a2:-7ebb', N'ACTPARAM-42dc4039:141afcf5119:-7e59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-72a9958a:141e4770339:-63f9', N'RACT-72a9958a:141e4770339:-63fb', N'ACTPARAM208348b4:141e2d2bd58:-7cb4', NULL, NULL, N'RCOND-72a9958a:141e4770339:-6684', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-72a9958a:141e4770339:-63fa', N'RACT-72a9958a:141e4770339:-63fb', N'ACTPARAM208348b4:141e2d2bd58:-7cad', NULL, NULL, NULL, NULL, N'SEF * 0.10', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-72a9958a:141e4770339:-6440', N'RACT-72a9958a:141e4770339:-6442', N'ACTPARAM208348b4:141e2d2bd58:-7de2', NULL, NULL, N'RCOND-72a9958a:141e4770339:-6684', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-72a9958a:141e4770339:-6441', N'RACT-72a9958a:141e4770339:-6442', N'ACTPARAM208348b4:141e2d2bd58:-7ddb', NULL, NULL, NULL, NULL, N'BASIC * 0.10', N'expression', NULL, NULL, NULL, NULL, NULL)
GO
print 'Processed 400 total records'
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-72a9958a:141e4770339:-7661', N'RACT-72a9958a:141e4770339:-7663', N'ACTPARAM208348b4:141e2d2bd58:-7cb4', NULL, NULL, N'RCOND-72a9958a:141e4770339:-7a15', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-72a9958a:141e4770339:-7662', N'RACT-72a9958a:141e4770339:-7663', N'ACTPARAM208348b4:141e2d2bd58:-7cad', NULL, NULL, NULL, NULL, N'SEF * 0.10', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-72a9958a:141e4770339:-76a8', N'RACT-72a9958a:141e4770339:-76aa', N'ACTPARAM208348b4:141e2d2bd58:-7de2', NULL, NULL, N'RCOND-72a9958a:141e4770339:-7a15', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-72a9958a:141e4770339:-76a9', N'RACT-72a9958a:141e4770339:-76aa', N'ACTPARAM208348b4:141e2d2bd58:-7ddb', NULL, NULL, NULL, NULL, N'BASIC * 0.10', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-72a9958a:141e4770339:-7ac9', N'RACT-72a9958a:141e4770339:-7acc', N'ACTPARAM208348b4:141e2d2bd58:-7d18', NULL, NULL, N'RCOND-72a9958a:141e4770339:-7f00', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-72a9958a:141e4770339:-7aca', N'RACT-72a9958a:141e4770339:-7acc', N'ACTPARAM208348b4:141e2d2bd58:-7d05', NULL, NULL, NULL, NULL, N'SEF * NMON * 0.02', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-72a9958a:141e4770339:-7acb', N'RACT-72a9958a:141e4770339:-7acc', N'ACTPARAM208348b4:141e2d2bd58:-7cfe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM-1c2fcd63:140c2c7c557:-7f70', N'SEF CURRENT INTEREST', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-72a9958a:141e4770339:-7bd5', N'RACT-72a9958a:141e4770339:-7bd8', N'ACTPARAM208348b4:141e2d2bd58:-7e5a', NULL, NULL, N'RCOND-72a9958a:141e4770339:-7f00', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-72a9958a:141e4770339:-7bd6', N'RACT-72a9958a:141e4770339:-7bd8', N'ACTPARAM208348b4:141e2d2bd58:-7e53', NULL, NULL, NULL, NULL, N'BASIC * NMON * 0.02', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-72a9958a:141e4770339:-7bd7', N'RACT-72a9958a:141e4770339:-7bd8', N'ACTPARAM208348b4:141e2d2bd58:-7e4c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM217a91b:1409e6ae44e:-7faa', N'RPT BASIC CURRENT INTEREST', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-7c13908b:1435065d2a1:-5c3f', N'RACT-7c13908b:1435065d2a1:-5c42', N'ACTPARAM208348b4:141e2d2bd58:-7d59', NULL, NULL, N'RCOND-7c13908b:1435065d2a1:-661a', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-7c13908b:1435065d2a1:-5c40', N'RACT-7c13908b:1435065d2a1:-5c42', N'ACTPARAM208348b4:141e2d2bd58:-7d52', NULL, NULL, NULL, NULL, N'AV * 0.01', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-7c13908b:1435065d2a1:-5c41', N'RACT-7c13908b:1435065d2a1:-5c42', N'ACTPARAM208348b4:141e2d2bd58:-7d4b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM-1c2fcd63:140c2c7c557:-7f79', N'RPT SEF PRIOR YEAR/S', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-7c13908b:1435065d2a1:-5ce9', N'RACT-7c13908b:1435065d2a1:-5ced', N'ACTPARAM17d6e7ce:141df4b60c2:-7b8d', NULL, NULL, N'RCOND-7c13908b:1435065d2a1:-661a', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-7c13908b:1435065d2a1:-5cea', N'RACT-7c13908b:1435065d2a1:-5ced', N'ACTPARAM17d6e7ce:141df4b60c2:-7b86', NULL, NULL, NULL, NULL, N'AV * 0.0125', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-7c13908b:1435065d2a1:-5ceb', N'RACT-7c13908b:1435065d2a1:-5ced', N'ACTPARAM17d6e7ce:141df4b60c2:-7b7f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'REVITEM217a91b:1409e6ae44e:-7faf', N'RPT BASIC PRIOR YEAR/S', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-7c13908b:1435065d2a1:-5cec', N'RACT-7c13908b:1435065d2a1:-5ced', N'ACTPARAM17d6e7ce:141df4b60c2:-7b72', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'previous', N'previous', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-7e9d4ac4:1421b9d7ba4:-79b0', N'RACT-7e9d4ac4:1421b9d7ba4:-79b2', N'ACTPARAM208348b4:141e2d2bd58:-7cb4', NULL, NULL, N'RCOND-7e9d4ac4:1421b9d7ba4:-7c48', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-7e9d4ac4:1421b9d7ba4:-79b1', N'RACT-7e9d4ac4:1421b9d7ba4:-79b2', N'ACTPARAM208348b4:141e2d2bd58:-7cad', NULL, NULL, NULL, NULL, N'SEF * 0.15', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-7e9d4ac4:1421b9d7ba4:-7a0c', N'RACT-7e9d4ac4:1421b9d7ba4:-7a0e', N'ACTPARAM208348b4:141e2d2bd58:-7de2', NULL, NULL, N'RCOND-7e9d4ac4:1421b9d7ba4:-7c48', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-7e9d4ac4:1421b9d7ba4:-7a0d', N'RACT-7e9d4ac4:1421b9d7ba4:-7a0e', N'ACTPARAM208348b4:141e2d2bd58:-7ddb', NULL, NULL, NULL, NULL, N'BASIC * 0.15', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACTaa4e683:143e6f7bbf2:-65d1', N'RACTaa4e683:143e6f7bbf2:-65d3', N'ACTPARAM208348b4:141e2d2bd58:-7cb4', NULL, NULL, N'RCONDaa4e683:143e6f7bbf2:-693d', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACTaa4e683:143e6f7bbf2:-65d2', N'RACTaa4e683:143e6f7bbf2:-65d3', N'ACTPARAM208348b4:141e2d2bd58:-7cad', NULL, NULL, NULL, NULL, N'SEF * 0.15', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACTaa4e683:143e6f7bbf2:-6650', N'RACTaa4e683:143e6f7bbf2:-6652', N'ACTPARAM208348b4:141e2d2bd58:-7de2', NULL, NULL, N'RCONDaa4e683:143e6f7bbf2:-693d', N'RL', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACTaa4e683:143e6f7bbf2:-6651', N'RACTaa4e683:143e6f7bbf2:-6652', N'ACTPARAM208348b4:141e2d2bd58:-7ddb', NULL, NULL, NULL, NULL, N'BASIC * 0.15', N'expression', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-d6be24f:142d1c006d9:-7dcd', N'RACT-d6be24f:142d1c006d9:-7dd1', N'ACTPARAM32f8a876:142b75093c5:-7238', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-d6be24f:142d1c006d9:-7dce', N'RACT-d6be24f:142d1c006d9:-7dd1', N'ACTPARAM7c61bd6d:1423fce917f:-7e73', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-d6be24f:142d1c006d9:-7dcf', N'RACT-d6be24f:142d1c006d9:-7dd1', N'ACTPARAM367174cc:141a62bd0d8:18c4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'MONTHLY_RENTAL', N'MONTHLY_RENTAL', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-d6be24f:142d1c006d9:-7dd0', N'RACT-d6be24f:142d1c006d9:-7dd1', N'ACTPARAM-42dc4039:141afcf5119:-7e59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-d6be24f:142d1c006d9:-7def', N'RACT-d6be24f:142d1c006d9:-7df3', N'ACTPARAM32f8a876:142b75093c5:-7238', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-d6be24f:142d1c006d9:-7df0', N'RACT-d6be24f:142d1c006d9:-7df3', N'ACTPARAM7c61bd6d:1423fce917f:-7e73', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-d6be24f:142d1c006d9:-7df1', N'RACT-d6be24f:142d1c006d9:-7df3', N'ACTPARAM367174cc:141a62bd0d8:18c4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'LESSOR_ADDRESS', N'LESSOR_ADDRESS', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-d6be24f:142d1c006d9:-7df2', N'RACT-d6be24f:142d1c006d9:-7df3', N'ACTPARAM-42dc4039:141afcf5119:-7e59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-d6be24f:142d1c006d9:-7e11', N'RACT-d6be24f:142d1c006d9:-7e15', N'ACTPARAM32f8a876:142b75093c5:-7238', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-d6be24f:142d1c006d9:-7e12', N'RACT-d6be24f:142d1c006d9:-7e15', N'ACTPARAM7c61bd6d:1423fce917f:-7e73', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-d6be24f:142d1c006d9:-7e13', N'RACT-d6be24f:142d1c006d9:-7e15', N'ACTPARAM367174cc:141a62bd0d8:18c4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'LESSOR_NAME', N'LESSOR_NAME', NULL, NULL)
INSERT [dbo].[sys_rule_action_param] ([objid], [parentid], [actiondefparam_objid], [stringvalue], [booleanvalue], [var_objid], [var_name], [expr], [exprtype], [pos], [obj_key], [obj_value], [listvalue], [lov]) VALUES (N'RULACT-d6be24f:142d1c006d9:-7e14', N'RACT-d6be24f:142d1c006d9:-7e15', N'ACTPARAM-42dc4039:141afcf5119:-7e59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
