INSERT INTO `iligan`.`planttreerysetting`
            (`objid`,
             `state`,
             `ry`,
             `applyagriadjustment`,
             `appliedto`,
             `previd`)
SELECT	
	objid,
	'DRAFT' AS state,
	intry AS ry,
	1 AS applyagriadjustment,
	'ILIGAN CITY' AS appliedto,
	NULL AS previd
FROM tracs_iligan.`tbltreeclass`;




INSERT INTO `iligan`.`planttreeassesslevel`
            (`objid`,
             `planttreerysettingid`,
             `code`,
             `name`,
             `rate`,
             `previd`)
SELECT 
	objid,
	(SELECT objid FROM tracs_iligan.tbltreeclass ) AS planttreerysettingid,
	strcode AS CODE,
	strdescription AS NAME,
	curlevel AS rate,
	NULL AS previd
FROM tracs_iligan.`tbltreeclassitem`;


INSERT INTO `iligan`.`planttreeunitvalue`
            (`objid`,
             `planttreerysettingid`,
             `planttree_objid`,
             `code`,
             `name`,
             `unitvalue`,
             `previd`)
SELECT
	tv.objid,
	(SELECT objid FROM tracs_iligan.`tbltreeclass`) AS planttreerysettingid,
	tv.parentid AS  planttree_objid,
	strtreeclass AS CODE,
	tv.`strTreeClass` AS NAME,
	tv.`curTreeValue` AS unitvalue,
	NULL AS previd
FROM tracs_iligan.`tbltreevalue` tv ;	




INSERT INTO `iligan`.`rysetting_lgu`
            (`rysettingid`,
             `lguid`,
             `lguname`,
             `settingtype`)

SELECT 
(SELECT objid FROM iligan.`planttreerysetting`) AS rysetting, 
'169' AS lguid,
'ILIGAN CITY' AS lguname,
'planttree' AS settingtype;
