INSERT INTO `iligan`.`machine`
            (`objid`,
             `state`,
             `code`,
             `name`)
SELECT
	objid,
	'APPROVED' AS state,
	strcode AS CODE,
	strmachinename AS NAME
FROM tracs_iligan.tblmachine;



INSERT INTO `iligan`.`machrysetting`
            (`objid`,
             `state`,
             `ry`,
             `previd`,
             `appliedto`)
SELECT
	objid,
	'DRAFT' AS state,
	intry AS ry,
	NULL AS previd,
	'ILIGAN CITY' AS appliedto
FROM tracs_iligan.`tblmachclass`;



ALTER TABLE iligan.`machassesslevel` CHANGE COLUMN classification_objid classification_objid VARCHAR(50) NULL;

INSERT INTO `iligan`.`machassesslevel`
            (`objid`,
             `machrysettingid`,
             `classification_objid`,
             `code`,
             `name`,
             `fixrate`,
             `rate`,
             `previd`)

SELECT
	objid,
	(SELECT objid FROM tracs_iligan.`tblmachclass`) AS machrysettingid,
	NULL AS classification_objid,
	strcode AS CODE,
	strdescription AS  NAME,
	bspecial AS  fixrate,
	curlevel AS  rate,
	NULL AS previd
FROM tracs_iligan.tblmachclassitem;


INSERT INTO `iligan`.`machassesslevelrange`
            (`objid`,
             `machassesslevelid`,
             `machrysettingid`,
             `mvfrom`,
             `mvto`,
             `rate`)
SELECT
	objid,
	parentid AS machassesslevelid,
	rootid AS machrysettingid,
	currangefrom AS mvfrom,
	currangeto AS  mvto,
	curlevel AS  rate
FROM tracs_iligan.`tblmachclassitemdetail`;



INSERT INTO `iligan`.`rysetting_lgu`
            (`rysettingid`,
             `lguid`,
             `lguname`,
             `settingtype`)
SELECT              
	(SELECT objid FROM tracs_iligan.`tblmachclass`) AS  rysettingid,
	'169' AS lguid,
	'ILIGAN CITY' AS lguname,
	'mach' AS settingtype;




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
	'bldg' AS rputype,
	md.intry AS ry,
	CONCAT(r.pin, '-', md.intsuffix) AS fullpin,
	md.intsuffix AS suffix,
	NULL AS subsuffix,
	md.strrptclassificationid AS  classification_objid,
	md.strexemptid AS  exemptiontype_objid,
	md.inttaxable AS  taxable,
	0.0 AS  totalareaha,
	0.0 AS totalareasqm,
	md.curtotalmarketvalue AS totalbmv,
	md.curtotaladjmarketvalue AS  totalmv,
	md.curtotalassessedvalue AS  totalav,
	0 AS hasswornamount,
	0 AS  swornamount,
	0 AS useswornamount,
	NULL AS previd
FROM tracs_iligan.`tblmachdeclaration` md
		INNER JOIN iligan.`realproperty` r ON md.strrealpropertyid = r.objid 
WHERE NOT EXISTS(SELECT * FROM iligan.rpu WHERE objid = md.objid );	






ALTER TABLE iligan.machrpu CHANGE COLUMN landrpuid landrpuid VARCHAR(50) NULL;

INSERT INTO `iligan`.`machrpu`
            (`objid`,
             `landrpuid`)
SELECT 
	objid,
    NULL AS landrpuid
FROM tracs_iligan.`tblmachdeclaration` md ;



INSERT INTO `iligan`.`machuse`
            (`objid`,
             `machrpuid`,
             `actualuse_objid`,
             `basemarketvalue`,
             `marketvalue`,
             `assesslevel`,
             `assessedvalue`)
SELECT
	mu.objid,
	mu.`ParentID` AS machrpuid,
	mu.`strMachClassItemID` AS  actualuse_objid,
	mu.`curMarketValue` AS  basemarketvalue,
	mu.`curMarketValue` AS marketvalue,
	mu.`curAssessmentLevel` AS  assesslevel,
	mu.`curAssessedValue` AS assessedvalue
FROM tracs_iligan.`tblmachuse`	mu 
WHERE EXISTS (SELECT * FROM iligan.machrpu WHERE objid = mu.parentid);



INSERT INTO `iligan`.`machdetail`
            (`objid`,
             `machuseid`,
             `machrpuid`,
             `machine_objid`,
             `operationyear`,
             `replacementcost`,
             `depreciation`,
             `depreciationvalue`,
             `basemarketvalue`,
             `marketvalue`,
             `assesslevel`,
             `assessedvalue`,
             `brand`,
             `capacity`,
             `model`,
             `serialno`,
             `status`,
             `yearacquired`,
             `estimatedlife`,
             `remaininglife`,
             `yearinstalled`,
             `yearsused`,
             `originalcost`,
             `freightcost`,
             `insurancecost`,
             `installationcost`,
             `brokeragecost`,
             `arrastrecost`,
             `othercost`,
             `acquisitioncost`,
             `feracid`,
             `ferac`,
             `forexid`,
             `forex`,
             `residualrate`,
             `conversionfactor`,
             `swornamount`,
             `useswornamount`,
             `imported`,
             `newlyinstalled`,
             `autodepreciate`)
SELECT
	ml.objid,
	ml.parentid AS machuseid,
	ml.`RootID` AS machrpuid,
	ml.`strMachineID` AS machine_objid,
	ml.`intOperationYear` AS operationyear,
	ml.`curReplacementCost` AS  replacementcost,
	ml.`curDepreciation` AS  depreciation,
	ROUND(ml.`curReplacementCost` * ml.curdepreciation / 100.0) AS depreciationvalue,
	ml.`curReplacementCost` AS basemarketvalue,
	ml.`curMarketValue` AS  marketvalue,
	mu.`curAssessmentLevel` AS  assesslevel,
	ROUND(ml.`curMarketValue` * mu.curassessmentlevel) / 100 AS  assessedvalue,
	NULL AS brand,
	NULL  AS capacity,
	NULL  AS model,
	NULL  AS serialno,
	NULL  AS `status`,
	ml.intoperationyear AS yearacquired,
	0 AS estimatedlife,
	0 AS remaininglife,
	ml.intoperationyear AS  yearinstalled,
	0 AS yearsused,
	0 AS originalcost,
	0 AS freightcost,
	0 AS insurancecost,
	0 AS installationcost,
	0 AS brokeragecost,
	0 AS arrastrecost,
	0 AS othercost,
	0 AS acquisitioncost,
	NULL AS feracid,
	0 AS ferac,
	NULL AS forexid,
	0 AS forex,
	0 AS residualrate,
	1 AS conversionfactor,
	0 AS swornamount,
	0 AS useswornamount,
	0 AS imported,
	0 AS newlyinstalled,
	0 AS autodepreciate
FROM tracs_iligan.`tblmachlist`	ml 
	INNER JOIN tracs_iligan.`tblmachuse` mu ON ml.`ParentID` = mu.objid ;
	
	
	
	