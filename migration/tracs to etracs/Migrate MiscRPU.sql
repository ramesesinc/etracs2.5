INSERT INTO `iligan`.`miscrysetting`
            (`objid`,
             `state`,
             `ry`,
             `previd`,
             `appliedto`)
SELECT 
	CONCAT('MI', objid) AS objid,
	'APPROVED' AS state,
	intry AS ry,
	NULL AS previd,
	'ILIGAN CITY' AS  appliedto
FROM tracs_iligan.`tblbldgclass`;	
        
        
ALTER TABLE `iligan`.`miscassesslevel` 
CHANGE `classification_objid` `classification_objid` VARCHAR(50) NULL; 



INSERT INTO `iligan`.`miscassesslevel`
            (`objid`,
             `miscrysettingid`,
             `classification_objid`,
             `code`,
             `name`,
             `fixrate`,
             `rate`,
             `previd`)
SELECT
	CONCAT('MI', objid) AS  objid,
	CONCAT('MI', parentid) AS bldgrysettingid,
	NULL AS classification_objid,
	strcode AS CODE,
	strdescription AS NAME,
	bspecial AS fixrate,
	curlevel AS rate,
	NULL  AS previd
FROM tracs_iligan.`tblbldgclassitem`;





INSERT INTO `iligan`.`miscassesslevelrange`
            (`objid`,
             `miscassesslevelid`,
             `miscrysettingid`,
             `mvfrom`,
             `mvto`,
             `rate`)
SELECT 
	CONCAT('MI', objid) AS objid,
	CONCAT('MI', parentid)  AS bldgassesslevelid,
	CONCAT('MI', rootid) AS bldgrysettingid,
	currangefrom AS mvfrom,
	currangeto AS mvto,
	curlevel AS rate
FROM tracs_iligan.`tblbldgclassitemdetail`;





INSERT INTO `iligan`.`rptparameter`
            (`objid`,
             `state`,
             `name`,
             `caption`,
             `description`,
             `paramtype`,
             `minvalue`,
             `maxvalue`)
VALUES ('UNIT_VALUE',
        'APPROVED',
        'UNIT_VALUE',
        'UNIT VALUE',
        'UNIT VALUE',
        'decimal',
        0,
        0);
        
        
INSERT INTO `iligan`.`miscitemvalue`
            (`objid`,
             `miscrysettingid`,
             `miscitem_objid`,
             `expr`,
             `previd`)
SELECT             
	mi.objid,
	(SELECT objid FROM iligan.`miscrysetting`) AS miscrysettingid,
	mi.objid AS miscitem_objid,
	'UNIT_VALUE' AS expr,
	NULL AS previd
FROM iligan.`miscitem`	mi;



        

INSERT INTO `iligan`.`rysetting_lgu`
            (`rysettingid`,
             `lguid`,
             `lguname`,
             `settingtype`)
SELECT              
	(SELECT objid FROM iligan.`miscrysetting`) AS  rysettingid,
	'169' AS lguid,
	'ILIGAN CITY' AS lguname,
	'misc' AS settingtype;
	

	
	UPDATE tracs_iligan.`tblmiscdeclaration` SET 
	strexemptid = NULL 
WHERE strexemptid IS NOT NULL AND LENGTH(TRIM(strexemptid)) = 0;


INSERT INTO `iligan`.`rpu`
            (`objid`,
             `state`,
             `realpropertyid`,
             `rputype`,
             `ry`,
             `fullpin`,
             `suffix`,
             `subsuffix`,
             `classification_objid`,
             `exemptiontype_objid`,
             `taxable`,
             `totalareaha`,
             `totalareasqm`,
             `totalbmv`,
             `totalmv`,
             `totalav`,
             `hasswornamount`,
             `swornamount`,
             `useswornamount`,
             `previd`)
SELECT
	md.objid,
	CASE 
		WHEN md.state = 1 THEN 'INTERIM' 
		WHEN md.state = 2 THEN 'CURRENT' 
		ELSE 'CANCELLED'
	END AS  state,
	md.strrealpropertyid AS realpropertyid,
	'misc' AS rputype,
	md.intry AS ry,
	CONCAT(r.pin, '-', md.intsuffix) AS fullpin,
	md.intsuffix AS suffix,
	NULL AS subsuffix,
	md.strrptclassificationid AS  classification_objid,
	md.strexemptid AS  exemptiontype_objid,
	md.inttaxable AS  taxable,
	0 AS  totalareaha,
	0 AS totalareasqm,
	md.curtotalmarketvalue AS totalbmv,
	md.curtotaladjmarketvalue AS  totalmv,
	md.curtotalassessedvalue AS  totalav,
	0 AS hasswornamount,
	0 AS  swornamount,
	0 AS useswornamount,
	NULL AS previd
FROM tracs_iligan.`tblmiscdeclaration` md
		INNER JOIN iligan.`realproperty` r ON md.strrealpropertyid = r.objid 
WHERE NOT EXISTS(SELECT * FROM iligan.rpu WHERE objid = md.objid );		



INSERT INTO `iligan`.`miscrpu`
            (`objid`,
             `actualuse_objid`,
             `landrpuid`)
SELECT
	md.objid,
	CONCAT('MI', md.strbldgclassitemid) AS actualuse_objid,
	NULL AS landrpuid
FROM tracs_iligan.`tblmiscdeclaration` md 
WHERE LENGTH(TRIM(strbldgclassitemid )) > 0;


INSERT INTO `iligan`.`miscrpuitem`
            (`objid`,
             `miscrpuid`,
             `miv_objid`,
             `miscitem_objid`,
             `expr`,
             `depreciation`,
             `depreciatedvalue`,
             `basemarketvalue`,
             `marketvalue`,
             `assesslevel`,
             `assessedvalue`)
SELECT
	mi.objid,
	mi.parentid AS miscrpuid,
	mi.`strAdditionalItemID` AS  miv_objid,
	mi.`strAdditionalItemID` AS  miscitem_objid,
	'UNIT_VALUE' AS  expr,
	mi.`curDepreciation` AS  depreciation,
	ROUND(mi.`curMarketValue` * mi.curdepreciation / 100) AS depreciatedvalue,
	mi.`curMarketValue` AS  basemarketvalue,
	mi.`curAdjMarketValue` AS  marketvalue,
	0 AS  assesslevel,
	0  AS   assessedvalue
FROM tracs_iligan.`tblmiscdeclarationitem` mi 
	INNER JOIN tracs_iligan.`tblmiscdeclaration` md ON mi.`ParentID` = md.objid 
	INNER JOIN tracs_iligan.`tblbldgclassitem` bci ON md.`strBldgClassItemID` = bci.objid;
	
	
INSERT INTO `iligan`.`miscrpuitem_rptparameter`
            (`miscrpuitemid`,
             `param_objid`,
             `miscrpuid`,
             `intvalue`,
             `decimalvalue`)
SELECT
	mi.objid AS miscrpuitemid,
	'UNIT_VALUE' AS  param_objid,
	mi.rootid AS  miscrpuid,
	mi.curunit AS  intvalue,
	mi.curunit AS  decimalvalue
FROM tracs_iligan.`tblmiscdeclarationitem` mi
WHERE EXISTS(SELECT * FROM iligan.miscrpu WHERE objid = mi.parentid);


	