INSERT INTO `iligan`.`sys_org`
            (`objid`,
             `name`,
             `orgclass`,
             `parentid`,
             `parentclass`)
SELECT
	'169' AS objid,
	strcityname AS `name`,
	'CITY' AS orgclass,
	NULL AS parentid,
	NULL AS parentclass
FROM tracs_iligan.tblcity;

INSERT INTO iligan.city
            (objid,
             state,
             indexno,
             pin,
             NAME,
             address,
             fullname)
SELECT
	objid,
	'DRAFT' AS state,
	'169' AS indexno,
	'169' AS pin,
	strcityname AS NAME,
	'ILIGAN CITY' AS address,
	'CITY OF ILIGAN' AS fullname
FROM tracs_iligan.tblcity;





INSERT INTO `iligan`.`sys_org`
            (`objid`,
             `name`,
             `orgclass`,
             `parentid`,
             `parentclass`)
SELECT
	objid,
	strdistrictname AS `name`,
	'DISTRICT' AS orgclass,
	parentid,
	'CITY' AS parentclass
FROM tracs_iligan.tbldistrict;



INSERT INTO iligan.district
            (objid,
             state,
             indexno,
             pin,
             NAME)
SELECT
	objid,
	'DRAFT' AS state,
	'00' AS indexno,
	'169-00' AS pin,
	strdistrictname AS NAME	
FROM tracs_iligan.tbldistrict;





INSERT INTO `iligan`.`sys_org`
            (`objid`,
             `name`,
             `orgclass`,
             `parentid`,
             `parentclass`)
SELECT
	objid,
	strbrgyname AS `name`,
	'BARANGAY' AS orgclass,
	parentid,
	'DISTRICT' AS parentclass
FROM tracs_iligan.tblbarangay;




INSERT INTO iligan.barangay
            (objid,
             state,
             indexno,
             pin,
             NAME)
SELECT
	objid,
	'DRAFT' AS state,
	CONCAT('0',strbrgycode) AS indexno,
	CONCAT('169-00-', CONCAT('0', strbrgycode)) AS pin,
	strbrgyname AS NAME	
FROM tracs_iligan.tblbarangay;







INSERT INTO `iligan`.`propertyclassification`
            (`objid`,
             `state`,
             `code`,
             `name`,
             `special`,
             `orderno`)
SELECT 
	objid,
	'APPROVED' AS state,
	CASE WHEN objid = 'MINERAL LAND' THEN 'MIL' ELSE SUBSTRING(objid,1,3) END AS CODE,
	objid AS NAME,
	intspecial AS special,
	intorder AS orderno
FROM tracs_iligan.systblrptclassification;






INSERT INTO `iligan`.`exemptiontype`
            (`objid`,
             `state`,
             `code`,
             `name`,
             `orderno`)
SELECT
	strexemptid AS objid,
	'APPROVED' AS state,
	strexemptid AS CODE,
	strexemptdescription AS  NAME,
	intexemptorder AS orderno
FROM tracs_iligan.`systblexemptreason`;




INSERT INTO `iligan`.`canceltdreason`
            (`objid`,
             `state`,
             `code`,
             `name`,
             `description`)
SELECT
	strcancelcode AS objid,
	'APPROVED' AS state,
	strcancelcode AS CODE,
	strcancelreason AS NAME,
	NULL AS description
FROM tracs_iligan.`systblcancelreason`;




INSERT INTO `iligan`.`bldgkind`
            (`objid`,
             `state`,
             `code`,
             `name`)
SELECT 
	objid,
	'APPROVED' AS state,
	strbldgdesccode AS CODE,
	strbldgdescription AS NAME
FROM tracs_iligan.`tblbldgdescription`;


INSERT INTO `iligan`.`material`
            (`objid`,
             `state`,
             `code`,
             `name`)
SELECT 
	objid,
	'APPROVED' AS state,
	strmatcode AS CODE,
	strmatdescription AS NAME
FROM tracs_iligan.`tblmaterial`;


INSERT INTO `iligan`.`structure`
            (`objid`,
             `state`,
             `code`,
             `name`,
             `indexno`)
SELECT 
	objid,
	'APPROVED' AS state,
	strstructcode AS CODE,
	strstructdescription AS NAME,
	0 AS indexno
FROM tracs_iligan.`tblstructure` s
WHERE EXISTS(SELECT * FROM tracs_iligan.tblbldgstructure WHERE strstructureid = s.objid);



DELETE FROM `iligan`.`planttree`;

INSERT INTO `iligan`.`planttree`
            (`objid`,
             `state`,
             `code`,
             `name`)
SELECT
	objid,
	'APPROVED' AS  state,
	strtreecode AS CODE,
	strtree AS NAME
FROM tracs_iligan.`tbltree`;



DELETE FROM `iligan`.`miscitem`;

INSERT INTO `iligan`.`miscitem`
            (`objid`,
             `state`,
             `code`,
             `name`)
SELECT
	objid,
	'APPROVED' AS state,
	straddlcode AS CODE,
	straddldescription AS NAME
FROM tracs_iligan.tbladditionalitem ai
WHERE EXISTS(SELECT * FROM tracs_iligan.`tblmiscdeclarationitem` WHERE stradditionalitemid = ai.objid);




/*=============================================================
*
* LAND RY SETTING
*
=============================================================*/
INSERT INTO `iligan`.`landrysetting`
            (`objid`,
             `state`,
             `ry`,
             `appliedto`,
             `previd`)
SELECT
	objid,
	'DRAFT' AS state,
	intry AS ry,
	'ILIGAN CITY'  AS appliedto,
	NULL AS previd
FROM tracs_iligan.tbllandclass ;




ALTER TABLE tracs_iligan.`tbllandclassitem`
	ADD COLUMN propertyclassification_objid VARCHAR(50);
	
	
UPDATE tracs_iligan.tbllandclassitem lci, iligan.`propertyclassification` pc SET 
		propertyclassification_objid = pc.objid 
WHERE pc.name = lci.strdescription 	
  AND lci.`propertyclassification_objid` IS NULL; 
		
	
UPDATE tracs_iligan.tbllandclassitem lci, iligan.`propertyclassification` pc SET 
		propertyclassification_objid = pc.objid 
WHERE pc.code = 'RES' 
  AND lci.`strDescription` LIKE '%RES'
  AND lci.`propertyclassification_objid` IS NULL; 	
  
  

UPDATE tracs_iligan.tbllandclassitem lci, iligan.`propertyclassification` pc SET 
		propertyclassification_objid = pc.objid 
WHERE pc.code = 'com' 
  AND lci.`strDescription` LIKE '%com'
  AND lci.`propertyclassification_objid` IS NULL; 	  
	
	

UPDATE tracs_iligan.tbllandclassitem lci, iligan.`propertyclassification` pc SET 
		propertyclassification_objid = pc.objid 
WHERE pc.code = 'GOC' 
  AND lci.`strDescription` LIKE 'gov%'
  AND lci.`propertyclassification_objid` IS NULL; 	  
  
  
UPDATE tracs_iligan.tbllandclassitem lci, iligan.`propertyclassification` pc SET 
		propertyclassification_objid = pc.objid 
WHERE pc.code = 'REL' 
  AND lci.`strDescription` LIKE 'relig%'
  AND lci.`propertyclassification_objid` IS NULL; 	  
  	
	
  
UPDATE tracs_iligan.tbllandclassitem lci, iligan.`propertyclassification` pc SET 
		propertyclassification_objid = pc.objid 
WHERE pc.code = 'OTH' 
  AND lci.`strDescription` LIKE 'LOCAL WATER DISTRICT%'
  AND lci.`propertyclassification_objid` IS NULL; 	  
  
  
  
  
UPDATE tracs_iligan.tbllandclassitem lci, iligan.`propertyclassification` pc SET 
		propertyclassification_objid = pc.objid 
WHERE pc.code = 'TIM' 
  AND lci.`strDescription` LIKE 'TIMBERLAND%'
  AND lci.`propertyclassification_objid` IS NULL; 	  
  
    
UPDATE tracs_iligan.tbllandclassitem lci, iligan.`propertyclassification` pc SET 
		propertyclassification_objid = pc.objid 
WHERE pc.code = 'res' 
  AND lci.`strDescription` LIKE 'RES%'
  AND lci.`propertyclassification_objid` IS NULL; 	  
  

    
UPDATE tracs_iligan.tbllandclassitem lci, iligan.`propertyclassification` pc SET 
		propertyclassification_objid = pc.objid 
WHERE pc.code = 'COM' 
  AND lci.`strDescription` LIKE 'COM-RRW%'
  AND lci.`propertyclassification_objid` IS NULL; 	  
    
UPDATE tracs_iligan.tbllandclassitem lci, iligan.`propertyclassification` pc SET 
		propertyclassification_objid = pc.objid 
WHERE pc.code = 'ind' 
  AND lci.`strDescription` LIKE 'IND-RRW%'
  AND lci.`propertyclassification_objid` IS NULL; 	  
      	      	
	
    
UPDATE tracs_iligan.tbllandclassitem lci, iligan.`propertyclassification` pc SET 
		propertyclassification_objid = pc.objid 
WHERE pc.code = 'OTH' 
  AND lci.`strDescription` LIKE 'ACCREATION%'
  AND lci.`propertyclassification_objid` IS NULL; 	  
  
    	
  	

INSERT INTO `iligan`.`landassesslevel`
            (`objid`,
             `landrysettingid`,
             `classification_objid`,
             `code`,
             `name`,
             `fixrate`,
             `rate`,
             `previd`)

SELECT
	objid,
	parentid AS landrysettingid,
	propertyclassification_objid AS classification_objid,
	strcode AS CODE,
	strdescription AS NAME,
	bspecial AS fixrate,
	curlevel AS rate,
	NULL AS previd
FROM tracs_iligan.`tbllandclassitem`;

INSERT INTO `iligan`.`landassesslevelrange`
            (`objid`,
             `landassesslevelid`,
             `landrysettingid`,
             `mvfrom`,
             `mvto`,
             `rate`)
SELECT              
	objid,
	parentid AS landassesslevelid,
	rootid AS landrysettingid,
	currangefrom AS mvfrom,
	currangeto AS mvto,
	curlevel AS rate
FROM tracs_iligan.`tbllandclassitemdetail`;



UPDATE tracs_iligan.`tbllcuvlandspecificclass` SET strdescription = 'IND LOT' WHERE objid = 'LCUVS00000010';
UPDATE tracs_iligan.`tbllcuvlandspecificclass` SET strdescription = 'COM LOT' WHERE objid = 'LCUVS00000014';



INSERT INTO `iligan`.`lcuvspecificclass`
            (`objid`,
             `landrysettingid`,
             `classification_objid`,
             `code`,
             `name`,
             `areatype`,
             `previd`)
SELECT              
	spc.objid,
	(SELECT objid FROM iligan.landrysetting) AS landrysettingid,
	lci.propertyclassification_objid AS classification_objid,
	spc.strcode AS CODE,
	spc.strdescription AS NAME,
	'SQM' AS areatype,
	NULL AS previd
FROM  tracs_iligan.`tbllcuvlandspecificclass` spc 
	INNER JOIN tracs_iligan.`tbllcuvland` ll ON spc.parentid = ll.objid 
	INNER JOIN tracs_iligan.tbllandclassitem lci ON ll.strlandclassitemid = lci.objid 
WHERE EXISTS(SELECT * FROM tracs_iligan.tbllanddetail WHERE strlcuvlandspecificclassid = spc.objid);




UPDATE iligan.`lcuvspecificclass` SET areatype = 'HA' WHERE classification_objid = 'AGRICULTURAL';



INSERT INTO `iligan`.`lcuvsubclass`
            (`objid`,
             `specificclass_objid`,
             `landrysettingid`,
             `code`,
             `name`,
             `unitvalue`,
             `previd`)
SELECT             
	sc.objid,
	sc.parentid AS specificclass_objid,
	(SELECT objid FROM iligan.landrysetting) AS landrysettingid,
	sc.strcode AS CODE,
	sc.strdescription AS NAME,
	sc.curbasevalue AS unitvalue,
	NULL AS previd
FROM tracs_iligan.`tbllcuvlandsubclass` sc 
	INNER JOIN iligan.`lcuvspecificclass` spc ON sc.parentid = spc.objid ;
	
	
	

/*--------------------------------------------------
*
* Fix multiple strippings for a classification
* by creating a reconciled table with the single
* stripping level per classification.
* Use this table to map the current stripping
* with the reconciled one.
*-------------------------------------------------*/
CREATE TABLE tracs_iligan.xlcuvstripping 
(
	objid VARCHAR(50) PRIMARY KEY,
	landrysettingid VARCHAR(50) NOT NULL,
	classification_objid VARCHAR(50) NOT NULL,
	striplevel INT NOT NULL,
	rate DECIMAL(10,2) NOT NULL
);

INSERT INTO tracs_iligan.xlcuvstripping
SELECT
	MAX(st.objid) AS objid,
	(SELECT objid FROM iligan.landrysetting) AS landrysettingid,
	lci.propertyclassification_objid AS  classification_objid,
	st.intlevel AS striplevel,
	MAX(currate) AS rate
FROM tracs_iligan.`tbllcuvstripping` st
	INNER JOIN tracs_iligan.`tbllcuvland` ll ON st.parentid = ll.objid 
	INNER JOIN tracs_iligan.tbllandclassitem lci ON ll.strlandclassitemid = lci.objid 
WHERE EXISTS(SELECT * FROM tracs_iligan.tbllanddetail WHERE strlcuvstrippingid = st.objid )	
GROUP BY lci.`propertyclassification_objid`, st.`intLevel`
ORDER BY lci.`propertyclassification_objid`, st.`intLevel`;


/*-------------------------------------------------------------
*
*  add strippingid to hold the reconciled strippingid
* which will be persisted when migrating land detail 
*
-------------------------------------------------------------*/
ALTER TABLE tracs_iligan.`tbllcuvstripping`
	ADD COLUMN landrysettingid VARCHAR(50),
	ADD COLUMN classification_objid VARCHAR(50),
	ADD COLUMN strippingid VARCHAR(50);
	
UPDATE tracs_iligan.`tbllcuvstripping` SET 
		landrysettingid = (SELECT objid FROM iligan.landrysetting);
		
UPDATE tracs_iligan.`tbllcuvstripping` st, tracs_iligan.`tbllcuvland` ll, tracs_iligan.`tbllandclassitem` lci SET
		st.classification_objid = lci.propertyclassification_objid
WHERE st.parentid = ll.objid 
  AND ll.`strLandClassItemID` = lci.objid ;	
  
  
  
  
/*-----------------------------------------------
* Update reconciled strippingid
*-----------------------------------------------*/
UPDATE tracs_iligan.`tbllcuvstripping` st, tracs_iligan.`xlcuvstripping` xst SET
	st.`strippingid` = xst.`objid` 
WHERE st.`landrysettingid` = xst.`landrysetttingid`
  AND st.`classification_objid` = xst.`classification_objid`
  AND st.`intLevel` = xst.`striplevel`;
  
  

INSERT INTO `iligan`.`lcuvstripping`
            (`objid`,
             `landrysettingid`,
             `classification_objid`,
             `striplevel`,
             `rate`,
             `previd`)
SELECT 
	objid, landrysettingid, classification_objid, striplevel, rate, NULL
FROM tracs_iligan.`xlcuvstripping`;	




	
INSERT INTO `iligan`.`landadjustmenttype`
            (`objid`,
             `landrysettingid`,
             `code`,
             `name`,
             `expr`,
             `appliedto`,
             `previd`)
SELECT 
	objid,
	(SELECT objid FROM iligan.landrysetting) AS landrysettingid,
	stradjcode AS CODE,
	stradjdescription AS NAME,
	CONCAT('SYS_BASE_MARKET_VALUE * ', curlevel / 100) expr,
	NULL AS appliedto,
	NULL AS previd
FROM tracs_iligan.`tbllandadjustment`;





INSERT INTO `iligan`.`rysetting_lgu`
            (`rysettingid`,
             `lguid`,
             `lguname`,
             `settingtype`)

SELECT 
(SELECT objid FROM iligan.landrysetting) AS landrysettingid, 
'169' AS lguid,
'ILIGAN CITY' AS lguname,
'land' AS settingtype;






/*================================================================
*
* PIN and REALPROPERTY
*
*================================================================*/


ALTER TABLE tracs_iligan.`tblrealproperty` 
	ADD COLUMN barangayid VARCHAR(50) NULL;
	
CREATE INDEX ix_barangayid ON tracs_iligan.`tblrealproperty`(barangayid);	

UPDATE tracs_iligan.`tblrealproperty` rp, tracs_iligan.`tblbarangay` b SET
	rp.`barangayid` = b.`ObjID`
WHERE rp.`strLocation` LIKE CONCAT('%', b.`strBrgyName`, '%');

UPDATE tracs_iligan.`tblrealproperty` rp, tracs_iligan.`tblbarangay` b SET
	rp.`barangayid` = b.`ObjID`
WHERE SUBSTRING(rp.lngpin, 6,3) = b.strbrgycode;







INSERT INTO `iligan`.`pin`
            (`objid`,
             `state`,
             `barangayid`)
SELECT
	CONCAT(lngpin, intMultipleClaimNo) AS objid,
    CASE 
		WHEN state = 1 THEN 'INTERIM' 
		WHEN state = 2 THEN 'CURRENT' 
		ELSE 'CANCELLED'
    END AS state,
    barangayid
FROM tracs_iligan.tblrealproperty;






	
INSERT INTO `iligan`.`realproperty`
            (`objid`,
             `state`,
             `autonumber`,
             `pinid`,
             `pintype`,
             `pin`,
             `ry`,
             `claimno`,
             `section`,
             `parcel`,
             `cadastrallotno`,
             `blockno`,
             `surveyno`,
             `street`,
             `purok`,
             `north`,
             `south`,
             `east`,
             `west`,
             `barangayid`,
             `lgutype`,
             `previd`)
SELECT 
	objid,
	CASE 
		WHEN state = 1 THEN 'INTERIM' 
		WHEN state = 2 THEN 'CURRENT' 
		ELSE 'CANCELLED'
    END AS state,
	0 AS autonumber,
	CONCAT(lngpin, intMultipleClaimNo) AS pinid,
	'old' AS pintype,
	CONCAT(
		SUBSTRING(lngpin, 1,3), '-',
		SUBSTRING(lngpin, 4,2), '-', 
		SUBSTRING(lngpin, 6,3), '-',
		SUBSTRING(lngpin, 9,2), '-', 
		SUBSTRING(lngpin, 11)
	) AS pin,
	2002 AS ry,
	intmultipleclaimno AS claimno,
	SUBSTRING(lngpin, 9,2) AS section,
	SUBSTRING(lngpin, 11) AS parcel,
	strcadastrallot AS cadastrallotno,
	NULL AS blockno,
	strsurveyno AS surveyno,
	strstreet AS street,
	strpurok AS purok,
	'-' AS north,
	'-' AS south,
	'-' AS east,
	'-' AS west,
	barangayid,
	'city' AS lgutype,
	NULL AS previd
FROM tracs_iligan.`tblrealproperty`
WHERE LENGTH(lngpin) = 13;







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
	rpu.strdeclarationid AS objid,
	CASE 
		WHEN rpu.state = 1 THEN 'INTERIM' 
		WHEN rpu.state = 2 THEN 'CURRENT' 
		ELSE 'CANCELLED'
    END AS state,
	rpu.strrealpropertyid,
	CASE 
		WHEN rpu.intsuffix = 0 THEN 'land'
		WHEN rpu.intsuffix BETWEEN 1001 AND 1999 THEN 'bldg'
		WHEN rpu.intsuffix BETWEEN 2001 AND 2999 THEN 'mach'
		WHEN rpu.intsuffix BETWEEN 3001 AND 3999 THEN 'planttree'
		WHEN rpu.intsuffix BETWEEN 4001 AND 4999 THEN 'misc'
	END AS rputype,
	rpu.intry,
	CASE 
		WHEN intsuffix = 0 THEN rp.pin
		ELSE CONCAT(rp.pin, '-', intsuffix)
	END AS fullpin,
	intsuffix,
	NULL AS subsuffix,
	rpu.strrptclassificationid AS classification_objid,
	NULL AS exemptiontype_objid,
	inttaxable AS taxable,
	curareahectar AS totalareaha,
	curareasqm AS totalareasqm,
	curtotalmv AS totalbmv,
	curtotalamv AS totalmv,
	curtotalav astotalav,
	0 AS hasswornamount,
	0.0 AS swornamount,
	0 AS useswornamount,
	NULL previd
FROM tracs_iligan.`tblrpudeclaration`  rpu
		INNER JOIN iligan.realproperty rp  ON rpu.strrealpropertyid = rp.objid
		INNER JOIN iligan.`propertyclassification` pc ON rpu.strrptclassificationid = pc.objid;
		
		

/*-------------------------------------------------------------		
*
* Entity 
*
*-------------------------------------------------------------*/

ALTER TABLE iligan.entity CHANGE COLUMN entityno entityno VARCHAR(25) NOT NULL;

ALTER TABLE iligan.entity CHANGE COLUMN `name` `name` VARCHAR(1500) NOT NULL;



INSERT INTO `iligan`.`entity`
            (`objid`,
             `entityno`,
             `name`,
             `address`,
             `mailingaddress`,
             `type`,
             `sys_lastupdate`,
             `sys_lastupdateby`,
             `remarks`)
SELECT 
	objid,
	objid AS entityno,
	CONCAT(strlastname, ', ' , strfirstname, CASE WHEN strmiddlename IS NULL THEN '' ELSE CONCAT(' ', strmiddlename) END) AS NAME,
	straddress AS address,
	NULL AS mailingaddress,
	'juridical' AS TYPE,
	NULL AS sys_lastupdate,
	NULL AS sys_lastupdateby,
	strremarks AS remarks
FROM tracs_iligan.`tblindividualtaxpayer`;


INSERT INTO `iligan`.`entity`
            (`objid`,
             `entityno`,
             `name`,
             `address`,
             `mailingaddress`,
             `type`,
             `sys_lastupdate`,
             `sys_lastupdateby`,
             `remarks`)
SELECT 
	objid,
	objid AS entityno,
	strcompanyname AS NAME,
	straddress AS address,
	NULL AS mailingaddress,
	'juridical' AS TYPE,
	NULL AS sys_lastupdate,
	NULL AS sys_lastupdateby,
	strremarks AS remarks
FROM tracs_iligan.`tbljuridicaltaxpayer`;

	
	
INSERT INTO `iligan`.`entity`
            (`objid`,
             `entityno`,
             `name`,
             `address`,
             `mailingaddress`,
             `type`,
             `sys_lastupdate`,
             `sys_lastupdateby`,
             `remarks`)
SELECT 
	objid,
	objid AS entityno,
	strownername AS NAME,
	strowneraddress AS address,
	NULL AS mailingaddress,
	'multiple' AS TYPE,
	NULL AS sys_lastupdate,
	NULL AS sys_lastupdateby,
	strremarks AS remarks
FROM tracs_iligan.`tblownership`;



INSERT INTO `iligan`.`entityindividual`
            (`objid`,
             `lastname`,
             `firstname`,
             `middlename`,
             `gender`
             )
SELECT 
	objid,
	strlastname AS lastname,
	strfirstname AS firstname,
	strmiddlename AS middlename,
	strsexid AS gender
FROM tracs_iligan.`tblindividualtaxpayer`;




INSERT INTO `iligan`.`entityjuridical`
            (`objid`,
             `tin`,
             `dtregistered`,
             `orgtype`,
             `nature`)
SELECT 
	objid,
	strtin AS tin,
	NULL AS dtregistered,
	NULL AS orgtype,
	NULL AS nature
FROM tracs_iligan.`tbljuridicaltaxpayer`;




ALTER TABLE iligan.`entitymultiple`
CHANGE COLUMN fullname fullname VARCHAR(1500) NOT NULL;



INSERT INTO `iligan`.`entitymultiple`
            (`objid`,
             `fullname`)
SELECT 
	objid,
    strownername AS fullname
FROM tracs_iligan.`tblownership`;








/*========================================================
*
*  LAND RPU 
*
*=========================================================*/
INSERT INTO `iligan`.`landrpu`
            (`objid`,
             `idleland`,
             `totallandbmv`,
             `totallandmv`,
             `totallandav`,
             `totalplanttreebmv`,
             `totalplanttreemv`,
             `totalplanttreeadjustment`,
             `totalplanttreeav`,
             `landvalueadjustment`)
SELECT 
	ld.objid,
	ld.bidleland AS idleland,
	ld.curtotallandmarketvalue AS totallandbmv,
	ld.curtotallandadjmarketvalue AS totallandmv,
	ld.curtotallandassessedvalue AS totallandav,
	ld.curtotalplantmarketvalue AS totalplanttreebmv,
	ld.curtotalplantadjmarketvalue AS totalplanttreemv,
	ld.curtotalplantadjmarketvalue - ld.curtotalplantmarketvalue AS totalplanttreeadjustment,
	ld.curtotalplantassessedvalue AS  totalplanttreeav,
	ld.curtotallandadjmarketvalue - ld.curtotallandmarketvalue  AS landvalueadjustment
FROM tracs_iligan.`tbllanddeclaration` ld 
	INNER JOIN iligan.rpu r ON ld.objid = r.objid;




INSERT INTO `iligan`.`landdetail`
            (`objid`,
             `landrpuid`,
             `subclass_objid`,
             `specificclass_objid`,
             `actualuse_objid`,
             `stripping_objid`,
             `striprate`,
             `areatype`,
             `addlinfo`,
             `area`,
             `areasqm`,
             `areaha`,
             `basevalue`,
             `unitvalue`,
             `taxable`,
             `basemarketvalue`,
             `adjustment`,
             `landvalueadjustment`,
             `actualuseadjustment`,
             `marketvalue`,
             `assesslevel`,
             `assessedvalue`)
SELECT
	ld.objid,
	ld.parentid AS landrpuid,
	ld.`strLCUVLandSubClassID` AS subclass_objid,
	ld.`strLCUVLandSpecificClassID` AS specificclass_objid,
	lal.objid AS actualuse_objid,
	st.strippingid AS stripping_objid,
	st.currate AS striprate,
	spc.`areatype` AS  areatype,
	NULL AS addlinfo,
	ld.`curArea` AS AREA,
	ld.`curAreaSQM` AS areasqm,
	ld.`curAreaHectar` AS  areaha,
	ld.`curBaseValue` AS basevalue,
	ld.`curUnitValue` AS unitvalue,
	1 AS taxable,
	ld.`curMarketValue` AS basemarketvalue,
	ld.`curTotalLandDetailAdjustment` AS adjustment,
	0.0 AS landvalueadjustment,
	ld.`curTotalLandDetailAdjustment` AS  actualuseadjustment,
	ld.`curAdjMarketValue` AS  marketvalue,
	ld.`curAssessmentLevel` AS  assesslevel,
	ld.`curAssessedValue` assessedvalue
FROM tracs_iligan.`tbllanddetail` ld
	INNER JOIN iligan.rpu ON ld.parentid = rpu.objid 
	INNER JOIN tracs_iligan.`tbllcuvland` ll ON ld.`strLCUVLandID` = ll.objid 
	INNER JOIN iligan.`landassesslevel` lal ON ll.`strLandClassItemID` = lal.objid 
	INNER JOIN iligan.`lcuvspecificclass` spc ON ld.`strLCUVLandSpecificClassID` = spc.objid 
	INNER JOIN iligan.`lcuvsubclass` sub ON ld.strlcuvlandsubclassid = sub.objid 
	LEFT JOIN tracs_iligan.`tbllcuvstripping` st ON ld.`strLCUVStrippingID` = st.objid ;
	
	
	
INSERT INTO `iligan`.`landadjustment`
            (`objid`,
             `landrpuid`,
             `landdetailid`,
             `adjustmenttype_objid`,
             `expr`,
             `adjustment`,
             `type`)
SELECT
	la.objid,
	la.rootid AS landrpuid,
	NULL AS  landdetailid,
	a.objid AS adjustmenttype_objid,
	CONCAT('SYS_BASE_MARKET_VALUE * ', la.`curLevel` / 100) AS expr,
	SUM(ROUND((ld.`basemarketvalue` * la.`curLevel` / 100))) adjustment,
	'LV' AS TYPE
FROM iligan.landdetail ld
	INNER JOIN tracs_iligan.`tbllandaddladjustment` la ON ld.landrpuid = la.`ParentID` 
	INNER JOIN tracs_iligan.`tbllandadjustment` a ON la.`strLandAdjustmentID` = a.objid 
GROUP BY la.objid;




ALTER TABLE tracs_iligan.`tbllanddetailadjustment` 
	ADD COLUMN landadjustmenttypeid VARCHAR(50);


UPDATE tracs_iligan.`tbllanddetailadjustment` lda, tracs_iligan.`tbllandadjustment` la SET
	lda.landadjustmenttypeid = la.objid
WHERE lda.`strLandDetailAdjCode` = la.`strAdjCode`;

UPDATE tracs_iligan.`tbllanddetailadjustment` SET
	landadjustmenttypeid = 'LNDA20000028'
WHERE objid = 'LDA30000022';


UPDATE tracs_iligan.`tbllanddetailadjustment` SET
	landadjustmenttypeid = 'LNDA30000055'
WHERE objid = 'LDA30000033';



INSERT INTO `iligan`.`landadjustment`
            (`objid`,
             `landrpuid`,
             `landdetailid`,
             `adjustmenttype_objid`,
             `expr`,
             `adjustment`,
             `type`)
SELECT
	ldi.objid,
	ld.landrpuid AS landrpuid,
	ld.objid AS  landdetailid,
	lda.landadjustmenttypeid AS adjustmenttype_objid,
	CONCAT('SYS_BASE_MARKET_VALUE * ', ldi.curlanddetailadjvalue / 100) AS expr,
	ROUND((ld.`basemarketvalue` * ldi.curlanddetailadjvalue / 100)) adjustment,
	'AU' AS TYPE
FROM iligan.landdetail ld
	INNER JOIN tracs_iligan.`tbllanddetailitem` ldi ON ld.objid = ldi.parentid
	INNER JOIN tracs_iligan.`tbllanddetailadjustment` lda ON ldi.strlanddetailadjustmentid = lda.objid ;
	
	
	

INSERT INTO `iligan`.`faas`
            (`objid`,
             `state`,
             `rpuid`,
             `datacapture`,
             `autonumber`,
             `utdno`,
             `tdno`,
             `txntype_objid`,
             `effectivityyear`,
             `effectivityqtr`,
             `titletype`,
             `titleno`,
             `titledate`,
             `taxpayer_objid`,
             `taxpayer_name`,
             `taxpayer_address`,
             `owner_name`,
             `owner_address`,
             `administrator_objid`,
             `administrator_name`,
             `administrator_address`,
             `beneficiary_objid`,
             `beneficiary_name`,
             `beneficiary_address`,
             `memoranda`,
             `cancelnote`,
             `restrictionid`,
             `backtaxyrs`,
             `prevtdno`,
             `prevpin`,
             `prevowner`,
             `prevav`,
             `prevmv`,
             `cancelreason`,
             `canceldate`,
             `cancelledbytdnos`,
             `lguid`,
             `txntimestamp`,
             `cancelledtimestamp`)
SELECT
	td.objid,
	CASE 
		WHEN td.state = 1 THEN 'INTERIM' 
		WHEN td.state = 2 THEN 'CURRENT' 
		ELSE 'CANCELLED'
    END AS state,
	td.strdeclarationid AS rpuid,
	CASE WHEN st.strtxncode = 'DA' THEN 1 ELSE 0 END AS datacapture,
	0 AS autonumber,
	td.strtdno AS utdno,
	td.strtdno AS tdno,
	st.strtxncode AS txntype_objid,
	YEAR(td.dteffectivitydate) AS  effectivityyear,
	QUARTER(td.dteffectivitydate) AS effectivityqtr,
	NULL AS titletype,
	td.strtitleno AS titleno,
	NULL AS titledate,
	t.objid AS taxpayer_objid,
	t.name AS taxpayer_name,
	t.address AS taxpayer_address,
	t.name AS owner_name,
	t.address AS owner_address,
	a.objid AS administrator_objid,
	a.name AS administrator_name,
	a.address AS administrator_address,
	NULL AS beneficiary_objid,
	NULL AS beneficiary_name,
	NULL AS beneficiary_address,
	td.strremarks AS memoranda,
	NULL AS cancelnote,
	NULL AS restrictionid,
	0 AS backtaxyrs,
	td.strprevioustdno AS prevtdno,
	NULL AS prevpin,
	td.strpreviousowner AS  prevowner,
	td.curprevassessedvalue AS prevav,
	0.0 AS prevmv,
	c.strcancelcode AS cancelreason,
	td.dtcanceldate,
	td.strcancelledbytdno AS cancelledbytdnos,
	'169' AS lguid,
	CONCAT(
		YEAR(td.dtissuedate),
		QUARTER(td.dtissuedate),
		CASE WHEN MONTH(td.dtissuedate) < 10 THEN CONCAT('0', MONTH(td.dtissuedate)) ELSE MONTH(td.dtissuedate) END,
		CASE WHEN DAY(td.dtissuedate) < 10 THEN CONCAT('0', DAY(td.dtissuedate)) ELSE DAY(td.dtissuedate) END 
	) AS txntimestamp,
	CASE WHEN td.dtcanceldate IS NOT NULL 
		THEN CONCAT(
				YEAR(td.dtcanceldate),
				QUARTER(td.dtcanceldate),
				CASE WHEN MONTH(td.dtcanceldate) < 10 THEN CONCAT('0', MONTH(td.dtcanceldate)) ELSE MONTH(td.dtissuedate) END,
				CASE WHEN DAY(td.dtcanceldate) < 10 THEN CONCAT('0', DAY(td.dtcanceldate)) ELSE DAY(td.dtissuedate) END 
			)
		ELSE NULL 
	END AS cancelledtimestamp
FROM tracs_iligan.`tbltaxdeclaration` td
	INNER JOIN tracs_iligan.systbltxntype st ON td.inttxntype = st.objid 
	INNER JOIN iligan.entity t ON td.strtaxpayerid = t.objid 
	INNER JOIN iligan.rpu r ON td.strdeclarationid = r.objid 
	LEFT JOIN iligan.entity a ON td.stradministratorid = a.objid 
	LEFT JOIN tracs_iligan.`systblcancelreason` c ON td.intcancelreason = c.objid;
	
	
	
		
		
UPDATE faas SET txntype_objid = 'DC' WHERE txntype_objid = 'DA' ;


		
		
		


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
	
	
	



