[generateDelinquencyReport]
SELECT
	f.taxpayername,
	f.taxpayeraddress,
	r.fullpin AS pin,
	f.tdno,
	pc.code AS classcode,
	r.rputype,
	b.name AS barangay,
	(SELECT SUM(basic + basicint - basicdisc - basicpaid) FROM rptledgeritem WHERE rptledgerid = rl.objid AND state = 'OPEN' AND year <= $P{currentyear}) AS basicnet,
	(SELECT SUM(sef + sefint - sefdisc - sefpaid) FROM rptledgeritem WHERE rptledgerid = rl.objid AND state = 'OPEN' AND year <= $P{currentyear}) AS sefnet,
	(SELECT SUM(basic + basicint - basicdisc - basicpaid + sef + sefint - sefdisc - sefpaid) FROM rptledgeritem WHERE rptledgerid = rl.objid AND state = 'OPEN' AND year <= $P{currentyear}) AS total,
	rl.lastyearpaid,
	rl.lastqtrpaid,
	b.objid
FROM realproperty rp 
	INNER JOIN barangay b ON rp.barangayid = b.objid 
	INNER JOIN rpu r ON rp.objid = r.realpropertyid 
	INNER JOIN propertyclassification pc ON r.classification_objid = pc.objid 
	INNER JOIN faas f ON r.objid = f.rpuid 
	INNER JOIN rptledger rl ON f.objid = rl.faasid 	
WHERE rp.barangayid = $P{barangayid}
  AND rl.state = 'APPROVED' 
  AND (rl.lastyearpaid < $P{currentyear} OR (rl.lastyearpaid = $P{lastyearpaid} AND rl.lastqtrpaid < 4 ))


[generateDelinquencyReportOldFormat]
SELECT
	f.taxpayername,
	f.taxpayeraddress,
	r.fullpin AS pin,
	f.tdno,
	pc.code AS classcode,
	r.rputype,
	b.name AS barangay,
	rl.lastyearpaid,
	rl.lastqtrpaid,
	CASE WHEN lastyearpaid + 1 = $P{currentyear} THEN 'I. CURRENT DELINQUENCY' ELSE 'II. DELINQUENT' END AS delinquenttype, 
	$P{currentyear} - lastyearpaid AS yearsdelinquent,
	(SELECT SUM(basic - basicpaid) FROM rptledgeritem WHERE rptledgerid = rl.objid AND state = 'OPEN' AND year <= $P{currentyear}) AS basic,
	(SELECT SUM(basicint) FROM rptledgeritem WHERE rptledgerid = rl.objid AND state = 'OPEN' AND year <= $P{currentyear}) AS basicint,
	(SELECT SUM(basicdisc) FROM rptledgeritem WHERE rptledgerid = rl.objid AND state = 'OPEN' AND year <= $P{currentyear}) AS basicdisc,
	(SELECT SUM(sef - sefpaid) FROM rptledgeritem WHERE rptledgerid = rl.objid AND state = 'OPEN' AND year <= $P{currentyear}) AS sef,
	(SELECT SUM(sefint) FROM rptledgeritem WHERE rptledgerid = rl.objid AND state = 'OPEN' AND year <= $P{currentyear}) AS sefint,
	(SELECT SUM(sefdisc) FROM rptledgeritem WHERE rptledgerid = rl.objid AND state = 'OPEN' AND year <= $P{currentyear}) AS sefdisc,
	(SELECT SUM(basic + basicint - basicdisc - basicpaid + sef + sefint - sefdisc - sefpaid) FROM rptledgeritem WHERE rptledgerid = rl.objid AND state = 'OPEN' AND year <= $P{currentyear}) AS total,
	xr.serialno AS orno,
	xr.txndate AS ordate
FROM realproperty rp 
	INNER JOIN barangay b ON rp.barangayid = b.objid 
	INNER JOIN rpu r ON rp.objid = r.realpropertyid 
	INNER JOIN propertyclassification pc ON r.classification_objid = pc.objid 
	INNER JOIN faas f ON r.objid = f.rpuid 
	INNER JOIN rptledger rl ON f.objid = rl.faasid 	
	LEFT JOIN xreceipt xr ON rl.lastreceiptid = xr.objid 
WHERE rp.barangayid = $P{barangayid}
  AND rl.state = 'APPROVED' 
  AND (rl.lastyearpaid < $P{currentyear} OR (rl.lastyearpaid = $P{currentyear} AND rl.lastqtrpaid < 4 ))



[getAbstractCollectionBASIC]
SELECT  
	xr.serialno AS orno, 
	xr.txndate AS ordate, 	
	'BASIC' AS `type`, 
	CASE 
		WHEN xr.voided = 1 THEN ''
		WHEN MIN(ri.year) = MAX(ri.year) AND MIN(ri.qtr) = 1 AND MAX(ri.qtr) = 4
			THEN CONCAT('FULL ', MIN(ri.year))
		WHEN MIN(ri.year) = MAX(ri.year) AND MIN(ri.qtr) = MAX(ri.qtr)
			THEN CONCAT('FULL ', MIN(ri.qtr), 'Q,', MIN(ri.year))
		WHEN MIN(ri.year) = MAX(ri.year)
			THEN CONCAT(MIN(ri.qtr), 'Q-', MAX(ri.qtr), 'Q, ', MIN(ri.year) )
		ELSE 
			CONCAT(  MIN(CONCAT(ri.qtr, 'Q,', ri.year)), ' - ', MAX(CONCAT(ri.qtr, 'Q,', ri.year)) )
	END AS period,
	CASE WHEN xr.voided = 0 THEN f.taxpayername ELSE '*** VOIDED ***' END AS taxpayername, 
	CASE WHEN xr.voided = 0 THEN f.tdno ELSE '' END AS tdno, 
	CASE WHEN xr.voided = 0 THEN b.name ELSE '' END AS barangay, 
	CASE WHEN xr.voided = 0 THEN pc.code ELSE '' END AS classification, 
	SUM(CASE WHEN xr.voided = 0 AND ri.revtype IN ('current', 'advance') THEN ri.basic ELSE 0.0 END) AS currentyear,
	SUM(CASE WHEN xr.voided = 0 AND ri.revtype IN ('previous','prior') THEN ri.basic ELSE 0.0 END) AS previousyear,
	SUM(CASE WHEN xr.voided = 0 AND ri.revtype IN ('current', 'advance') THEN ri.basicdisc ELSE 0.0 END) AS discount,
	SUM(CASE WHEN xr.voided = 0 AND ri.revtype IN ('current', 'advance') THEN ri.basicint ELSE 0.0 END) AS penaltycurrent,
	SUM(CASE WHEN xr.voided = 0 AND ri.revtype IN ('previous','prior') THEN ri.basicint ELSE 0.0 END) AS penaltyprevious
FROM xreceipt xr
	INNER JOIN rptreceipt rr ON xr.objid = rr.objid 
	INNER JOIN rptreceiptitem ri ON rr.objid = ri.rptreceiptid 
	INNER JOIN rptledger rl ON ri.rptledgerid = rl.objid 
	INNER JOIN faas f ON rl.faasid = f.objid 
	INNER JOIN rpu r ON f.rpuid = r.objid
	INNER JOIN propertyclassification pc ON r.classification_objid = pc.objid 
	INNER JOIN barangay b ON rl.barangayid = b.objid 
${whereclause}
GROUP BY xr.serialno, xr.txndate, f.taxpayername, f.tdno, b.name, pc.code 	
ORDER BY xr.serialno;


[getAbstractCollectionSEF]
SELECT  
	xr.serialno AS orno, 
	xr.txndate AS ordate, 	
	'SEF' AS `type`, 
	CASE 
		WHEN xr.voided = 1 THEN ''
		WHEN MIN(ri.year) = MAX(ri.year) AND MIN(ri.qtr) = 1 AND MAX(ri.qtr) = 4
			THEN CONCAT('FULL ', MIN(ri.year))
		WHEN MIN(ri.year) = MAX(ri.year) AND MIN(ri.qtr) = MAX(ri.qtr)
			THEN CONCAT('FULL ', MIN(ri.qtr), 'Q,', MIN(ri.year))
		WHEN MIN(ri.year) = MAX(ri.year)
			THEN CONCAT(MIN(ri.qtr), 'Q-', MAX(ri.qtr), 'Q, ', MIN(ri.year) )
		ELSE 
			CONCAT(  MIN(CONCAT(ri.qtr, 'Q,', ri.year)), ' - ', MAX(CONCAT(ri.qtr, 'Q,', ri.year)) )
	END AS period,
	CASE WHEN xr.voided = 0 THEN f.taxpayername ELSE '*** VOIDED ***' END AS taxpayername, 
	CASE WHEN xr.voided = 0 THEN f.tdno ELSE '' END AS tdno, 
	CASE WHEN xr.voided = 0 THEN b.name ELSE '' END AS barangay, 
	CASE WHEN xr.voided = 0 THEN pc.code ELSE '' END AS classification, 
	SUM(CASE WHEN xr.voided = 0 AND ri.revtype IN ('current', 'advance') THEN ri.sef ELSE 0.0 END) AS currentyear,
	SUM(CASE WHEN xr.voided = 0 AND ri.revtype IN ('previous','prior') THEN ri.sef ELSE 0.0 END) AS previousyear,
	SUM(CASE WHEN xr.voided = 0 AND ri.revtype IN ('current', 'advance') THEN ri.sefdisc ELSE 0.0 END) AS discount,
	SUM(CASE WHEN xr.voided = 0 AND ri.revtype IN ('current', 'advance') THEN ri.sefint ELSE 0.0 END) AS penaltycurrent,
	SUM(CASE WHEN xr.voided = 0 AND ri.revtype IN ('previous','prior') THEN ri.sefint ELSE 0.0 END) AS penaltyprevious
FROM xreceipt xr
	INNER JOIN rptreceipt rr ON xr.objid = rr.objid 
	INNER JOIN rptreceiptitem ri ON rr.objid = ri.rptreceiptid 
	INNER JOIN rptledger rl ON ri.rptledgerid = rl.objid 
	INNER JOIN faas f ON rl.faasid = f.objid 
	INNER JOIN rpu r ON f.rpuid = r.objid
	INNER JOIN propertyclassification pc ON r.classification_objid = pc.objid 
	INNER JOIN barangay b ON rl.barangayid = b.objid 
${whereclause}
GROUP BY xr.serialno, xr.txndate, f.taxpayername, f.tdno, b.name, pc.code 	
ORDER BY xr.serialno;

