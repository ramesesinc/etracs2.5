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
	LEFT JOIN iligan.entity a ON td.stradministratorid = a.objid 
	LEFT JOIN tracs_iligan.`systblcancelreason` c ON td.intcancelreason = c.objid LIMIT 1;

/* 
select * FROM tracs_iligan.`tbltaxdeclaration` limit 10;
SELECT * FROM tracs_iligan.`systbltxntype` LIMIT 10;
select * from tracs_iligan.`tblindividualtaxpayer` limit 1;
SELECT * FROM tracs_iligan.tbljuridicaltaxpayer LIMIT 1;
select * from tracs_iligan.`tblownership` limit 1;
select * from tracs_iligan.`systblcancelreason`;
	*/