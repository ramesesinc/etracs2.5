INSERT INTO `iligan`.`bldgrysetting`
            (`objid`,
             `state`,
             `ry`,
             `predominant`,
             `depreciatecoreanditemseparately`,
             `computedepreciationbasedonschedule`,
             `straightdepreciation`,
             `calcbldgagebasedondtoccupied`,
             `appliedto`,
             `previd`)
SELECT 
	objid,
	state,
	intry AS ry,
	1 AS predominant,
	1 AS depreciatecoreanditemseparately,
	1 AS computedepreciationbasedonschedule,
	1 AS straightdepreciation,
	0 AS calcbldgagebasedondtoccupied,
	'ILIGAN' AS appliedto,
	NULL AS previd
FROM tracs_iligan.`tblbldgclass`;

ALTER TABLE `iligan`.`bldgassesslevel` 
CHANGE `classification_objid` `classification_objid` VARCHAR(50) CHARSET utf8 COLLATE utf8_general_ci DEFAULT '' NULL; 

INSERT INTO `iligan`.`bldgassesslevel`
            (`objid`,
             `bldgrysettingid`,
             `classification_objid`,
             `code`,
             `name`,
             `fixrate`,
             `rate`,
             `previd`)
SELECT
	objid,
	parentid AS bldgrysettingid,
	NULL AS classification_objid,
	strcode AS CODE,
	strdescription AS NAME,
	bspecial AS fixrate,
	curlevel AS rate,
	NULL  AS previd
FROM tracs_iligan.`tblbldgclassitem`;


INSERT INTO `iligan`.`bldgtype`
            (`objid`,
             `bldgrysettingid`,
             `code`,
             `name`,
             `basevaluetype`,
             `residualrate`,
             `previd`)
SELECT 
	objid,
	(SELECT objid FROM tracs_iligan.tblbldgclass) AS bldgrysettingid,
	strbldgtype AS CODE,
	strbldgtypedescription AS NAME,
	'fix' AS basevaluetype,
	20.0 AS residualrate,
	NULL AS previd
FROM tracs_iligan.`tblbldgtype` bt;



INSERT INTO `iligan`.`bldgkindbucc`
            (`objid`,
             `bldgrysettingid`,
             `bldgtypeid`,
             `bldgkind_objid`,
             `basevaluetype`,
             `basevalue`,
             `minbasevalue`,
             `maxbasevalue`,
             `gapvalue`,
             `minarea`,
             `maxarea`,
             `bldgclass`,
             `previd`)
SELECT
	bc.objid,
	(SELECT objid FROM tracs_iligan.tblbldgclass) AS bldgrysettingid,
	bt.objid AS bldgtypeid,
	bc.`strBldgDescriptionID` AS  bldgkind_objid,
	'fix' AS basevaluetype,
	curbasevalue AS basevalue,
	0.0 AS minbasevalue,
	0.0 AS maxbasevalue,
	0.0 AS gapvalue,
	0.0 AS minarea,
	0.0 AS maxarea,
	NULL AS bldgclass,
	NULL AS previd
FROM tracs_iligan.`tblbldgclassification`	bc
	INNER JOIN tracs_iligan.tblbldgtype bt ON bc.`ParentID` = bt.objid ;
	


INSERT INTO `iligan`.`bldgassesslevelrange`
            (`objid`,
             `bldgassesslevelid`,
             `bldgrysettingid`,
             `mvfrom`,
             `mvto`,
             `rate`)
SELECT 
	objid,
	parentid AS bldgassesslevelid,
	rootid AS bldgrysettingid,
	currangefrom AS mvfrom,
	currangeto AS mvto,
	curlevel AS rate
FROM tracs_iligan.`tblbldgclassitemdetail`;





INSERT INTO `iligan`.`bldgadditionalitem`
            (`objid`,
             `bldgrysettingid`,
             `code`,
             `name`,
             `unit`,
             `expr`,
             `previd`)
SELECT
	objid,
	(SELECT objid FROM tracs_iligan.tblbldgclass) AS bldgrysettingid,
	straddlcode AS CODE,
	straddldescription AS NAME,
	strunit AS unit,
	CASE 
		WHEN stradditionalbasisid = 'RBU' THEN CONCAT('AREA_SQM * SYS_BASE_VALUE * ', curvalue/100)
		WHEN stradditionalbasisid = 'FU' THEN CONCAT('NO_OF_UNITS * ', curvalue)
		WHEN stradditionalbasisid = 'RB' THEN CONCAT('SYS_BASE_VALUE * UNIT_VALUE * ', curvalue/100)
		WHEN stradditionalbasisid = 'F' THEN CONCAT('NO_OF_UNITS * ', curvalue)
		ELSE ''
	END AS expr,
	NULL AS previd
FROM tracs_iligan.`tbladditionalitem`;





INSERT INTO `iligan`.`rysetting_lgu`
            (`rysettingid`,
             `lguid`,
             `lguname`,
             `settingtype`)
SELECT              
	(SELECT objid FROM tracs_iligan.`tblbldgclass`) AS  rysettingid,
	'169' AS lguid,
	'ILIGAN CITY' AS lguname,
	'bldg' AS settingtype;
	
	
	
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
	bd.objid,
	CASE 
		WHEN bd.state = 1 THEN 'INTERIM' 
		WHEN bd.state = 2 THEN 'CURRENT' 
		ELSE 'CANCELLED'
	END AS  state,
	bd.strrealpropertyid AS realpropertyid,
	'bldg' AS rputype,
	bd.intry AS ry,
	CONCAT(r.pin, '-', bd.intsuffix) AS fullpin,
	bd.intsuffix AS suffix,
	NULL AS subsuffix,
	bd.strrptclassificationid AS  classification_objid,
	bd.strexemptid AS  exemptiontype_objid,
	bd.inttaxable AS  taxable,
	bd.curtotalarea AS  totalareaha,
	bd.curtotalarea / 10000 AS totalareasqm,
	bd.curtotalmarketvalue AS totalbmv,
	bd.curtotaladjmarketvalue AS  totalmv,
	bd.curtotalassessedvalue AS  totalav,
	bd.intswornstatement AS hasswornamount,
	bd.curswornamount AS  swornamount,
	bd.intswornstatement = 1 AS useswornamount,
	NULL AS previd
FROM tracs_iligan.`tblbldgdeclaration` bd
		INNER JOIN iligan.`realproperty` r ON bd.strrealpropertyid = r.objid 
WHERE NOT EXISTS(SELECT * FROM iligan.rpu WHERE objid = bd.objid );		


ALTER TABLE iligan.bldgrpu CHANGE COLUMN landrpuid landrpuid VARCHAR(50) NULL;

INSERT INTO `iligan`.`bldgrpu`
            (`objid`,
             `landrpuid`,
             `houseno`,
             `psic`,
             `permitno`,
             `permitdate`,
             `permitissuedby`,
             `bldgtype_objid`,
             `bldgkindbucc_objid`,
             `basevalue`,
             `dtcompleted`,
             `dtoccupied`,
             `floorcount`,
             `depreciation`,
             `depreciationvalue`,
             `totaladjustment`,
             `additionalinfo`,
             `bldgage`,
             `percentcompleted`,
             `bldgassesslevel_objid`,
             `assesslevel`,
             `condominium`,
             `bldgclass`)
SELECT
	bd.objid,
	NULL AS landrpuid,
	NULL AS houseno,
	bd.`strPSIC` AS  psic,
	bd.`strPermitNo` AS  permitno,
	bd.`dtPermitDate` AS permitdate,
	bd.`strPermitIssuedBy` AS  permitissuedby,
	bd.`strBldgTypeID` AS  bldgtype_objid,
	bd.`strBldgClassificationID` AS bldgkindbucc_objid,
	bd.`curBaseValue` AS basevalue,
	bd.`dtBldgCompleted` AS dtcompleted,
	bd.`dtBldgOccupied` AS dtoccupied,
	0 AS floorcount,
	bd.`curDepreciation` AS depreciation,
	ROUND(bd.`curTotalMarketValue` * bd.curdepreciation) AS  depreciationvalue,
	bd.`curTotalAdjustment` AS  totaladjustment,
	bd.`strAdditionalInfo` AS additionalinfo,
	0  AS bldgage,
	100 AS percentcompleted,
	NULL AS  bldgassesslevel_objid,
	ROUND( bd.`curTotalAssessedValue` / bd.`curTotalAdjMarketValue` ) AS assesslevel,
	0 AS condominium,
	NULL AS bldgclass
FROM tracs_iligan.`tblbldgdeclaration` bd 
	INNER JOIN tracs_iligan.`tblbldgtype` bt ON bd.`strBldgTypeID` = bt.objid 
	INNER JOIN tracs_iligan.`tblbldgclassification` bc ON bd.`strBldgClassificationID` = bc.objid 
WHERE EXISTS(SELECT * FROM iligan.rpu WHERE objid = bd.objid)	;
	




INSERT INTO `iligan`.`bldgstructure`
            (`objid`,
             `bldgrpuid`,
             `structure_objid`,
             `material_objid`)
SELECT
	bds.objid,
	bds.parentid AS bldgrpuid,
	bds.`strStructureID` AS structure_objid,
	bds.`strMaterialID` AS  material_objid
FROM tracs_iligan.`tblbldgdeclarationstructure` bds 
WHERE EXISTS(SELECT * FROM iligan.bldgrpu WHERE objid = bds.parentid)
AND (bds.strstructureid IS NOT NULL  OR LENGTH(bds.strstructureid) > 0)
AND (bds.strmaterialid IS NOT NULL  OR LENGTH(bds.strmaterialid) > 0)
AND EXISTS(SELECT * FROM iligan.structure WHERE objid = bds.strstructureid)
AND EXISTS(SELECT * FROM iligan.material WHERE objid = bds.strmaterialid);



INSERT INTO `iligan`.`bldguse`
            (`objid`,
             `bldgrpuid`,
             `actualuse_objid`,
             `basevalue`,
             `area`,
             `basemarketvalue`,
             `depreciationvalue`,
             `adjustment`,
             `marketvalue`,
             `assesslevel`,
             `assessedvalue`)
SELECT
	bu.objid,
	bu.parentid AS bldgrpuid,
	bu.`strBldgClassItemID` AS actualuse_objid,
	bd.`curBaseValue` AS basevalue,
	bu.`curArea` AS  AREA,
	bu.`curMarketValue` AS basemarketvalue,
	0 AS  depreciationvalue,
	bu.`curAdditional` AS adjustment,
	bu.`curAdjMarketValue` AS marketvalue,
	bu.`curAssessmentLevel` AS  assesslevel,
	bu.`curAssessedValue` AS  assessedvalue
FROM tracs_iligan.`tblbldguse` bu 
	INNER JOIN tracs_iligan.`tblbldgdeclaration` bd ON bu.parentid = bd.objid
WHERE EXISTS(SELECT * FROM iligan.bldgrpu WHERE objid = bd.objid);




INSERT INTO `iligan`.`bldgfloor`
            (`objid`,
             `bldguseid`,
             `bldgrpuid`,
             `floorno`,
             `area`,
             `storeyrate`,
             `basevalue`,
             `unitvalue`,
             `basemarketvalue`,
             `adjustment`,
             `marketvalue`)
SELECT 
	bf.objid,
	bf.parentid AS bldguseid,
	bf.rootid AS bldgrpuid,
	bf.`intFloor` AS floorno,
	bf.`curFloorArea` AS  AREA,
	100 AS  storeyrate,
	bd.`curBaseValue` AS basevalue,
	bd.`curBaseValue` AS  unitvalue,
	ROUND(bd.`curBaseValue` * bf.curfloorarea) AS  basemarketvalue,
	bf.`curFloorAdditional` AS  adjustment,
	ROUND(bd.`curBaseValue` * bf.curfloorarea + bf.`curFloorAdditional`) AS marketvalue
FROM tracs_iligan.`tblbldgfloor` bf 
	INNER JOIN tracs_iligan.`tblbldgdeclaration` bd ON bf.`RootID` = bd.objid 
WHERE EXISTS(SELECT * FROM iligan.bldgrpu WHERE objid = bd.objid);



INSERT INTO `iligan`.`bldgflooradditional`
            (`objid`,
             `bldgfloorid`,
             `bldgrpuid`,
             `additionalitem_objid`,
             `amount`,
             `expr`)
SELECT
	bfa.objid,
	bfa.`ParentID` AS  bldgfloorid,
	bfa.`RootID` AS  bldgrpuid,
	bfa.`strAdditionalItemID` AS  additionalitem_objid,
	bfa.`curAmount` AS  amount,
	bi.`expr` AS expr
FROM tracs_iligan.`tblbldgflooradditional` bfa 	
	INNER JOIN iligan.`bldgadditionalitem` bi ON bfa.`strAdditionalItemID` = bi.objid 
WHERE EXISTS(SELECT * FROM iligan.bldgrpu WHERE objid = bfa.rootid);	
	
	
	



INSERT INTO `iligan`.`rptparameter`
            (`objid`,
             `state`,
             `name`,
             `caption`,
             `description`,
             `paramtype`,
             `minvalue`,
             `maxvalue`)
VALUES ('AREA_SQM',
        'APPROVED',
        'AREA_SQM',
        'AREA IN SQ.M.',
        'AREA IN SQ. M.',
        'integer',
        0,
        0);
        

INSERT INTO `iligan`.`rptparameter`
            (`objid`,
             `state`,
             `name`,
             `caption`,
             `description`,
             `paramtype`,
             `minvalue`,
             `maxvalue`)
VALUES ('NO_OF_UNITS',
        'APPROVED',
        'NO_OF_UNITS',
        'NO. OF UNITS',
        'NO. OF UNITS',
        'integer',
        0,
        0);
        
                
        
INSERT INTO `iligan`.`bldgflooradditionalparam`
            (`objid`,
             `bldgflooradditionalid`,
             `bldgrpuid`,
             `param_objid`,
             `intvalue`,
             `decimalvalue`)

SELECT 
	bf.objid,
	bf.objid AS bldgflooradditionalid,
	bf.rootid AS bldgrpuid,
	CASE 
		WHEN ai.stradditionalbasisid = 'RBU' THEN 'AREA_SQM'
		ELSE 'NO_OF_UNITS'
	END AS param_objid,
	bf.curunit AS  intvalue,
	bf.curunit AS decimalvalue
FROM tracs_iligan.`tblbldgflooradditional` bf
	INNER JOIN tracs_iligan.`tbladditionalitem` ai ON bf.strAdditionalItemId = ai.objid 
WHERE EXISTS(SELECT * FROM iligan.`bldgflooradditional` WHERE objid = bf.objid);



        

