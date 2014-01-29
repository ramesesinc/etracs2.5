[generateDelinquencyReport]
SELECT
	f.taxpayer_name,
	f.taxpayer_address,
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
	f.taxpayer_name,
	f.taxpayer_address,
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
	xr.receiptno AS orno,
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
	xr.receiptno AS orno, 
	xr.txndate AS ordate, 	
	'BASIC' AS `type`, 
	CASE 
		WHEN v.objid IS NOT NULL  THEN ''
		WHEN MIN(ri.year) = MAX(ri.year) AND MIN(ri.qtr) = 1 AND MAX(ri.qtr) = 4
			THEN CONCAT('FULL ', MIN(ri.year))
		WHEN MIN(ri.year) = MAX(ri.year) AND MIN(ri.qtr) = MAX(ri.qtr)
			THEN CONCAT('FULL ', MIN(ri.qtr), 'Q,', MIN(ri.year))
		WHEN MIN(ri.year) = MAX(ri.year)
			THEN CONCAT(MIN(ri.qtr), 'Q-', MAX(ri.qtr), 'Q, ', MIN(ri.year) )
		ELSE 
			CONCAT(  MIN(CONCAT(ri.qtr, 'Q,', ri.year)), ' - ', MAX(CONCAT(ri.qtr, 'Q,', ri.year)) )
	END AS period,
	CASE WHEN v.objid IS NULL THEN f.taxpayer_name ELSE '*** VOIDED ***' END AS taxpayername, 
	CASE WHEN v.objid IS NULL THEN f.tdno ELSE '' END AS tdno, 
	CASE WHEN v.objid IS NULL THEN b.name ELSE '' END AS barangay, 
	CASE WHEN v.objid IS NULL THEN pc.code ELSE '' END AS classification, 
	SUM(CASE WHEN v.objid IS NULL AND ri.revtype IN ('current', 'advance') THEN ri.basic ELSE 0.0 END) AS currentyear,
	SUM(CASE WHEN v.objid IS NULL AND ri.revtype IN ('previous','prior') THEN ri.basic ELSE 0.0 END) AS previousyear,
	SUM(CASE WHEN v.objid IS NULL AND ri.revtype IN ('current', 'advance') THEN ri.basicdisc ELSE 0.0 END) AS discount,
	SUM(CASE WHEN v.objid IS NULL AND ri.revtype IN ('current', 'advance') THEN ri.basicint ELSE 0.0 END) AS penaltycurrent,
	SUM(CASE WHEN v.objid IS NULL AND ri.revtype IN ('previous','prior') THEN ri.basicint ELSE 0.0 END) AS penaltyprevious
FROM cashreceipt xr
	INNER JOIN cashreceipt_rpt rr ON xr.objid = rr.objid 
	INNER JOIN cashreceipt_rpt_item ri ON rr.objid = ri.rptreceiptid 
	INNER JOIN rptledger rl ON ri.rptledgerid = rl.objid 
	INNER JOIN faas f ON rl.faasid = f.objid 
	INNER JOIN rpu r ON f.rpuid = r.objid
	INNER JOIN propertyclassification pc ON r.classification_objid = pc.objid 
	INNER JOIN barangay b ON rl.barangayid = b.objid 
	LEFT JOIN cashreceipt_void v ON xr.objid = v.receiptid
${whereclause}
GROUP BY xr.receiptno, xr.txndate, f.taxpayer_name, f.tdno, b.name, pc.code 	
ORDER BY xr.receiptno;


[getAbstractCollectionSEF]
SELECT  
	xr.receiptno AS orno, 
	xr.txndate AS ordate, 	
	'SEF' AS `type`, 
	CASE 
		WHEN v.objid IS NOT NULL  THEN ''
		WHEN MIN(ri.year) = MAX(ri.year) AND MIN(ri.qtr) = 1 AND MAX(ri.qtr) = 4
			THEN CONCAT('FULL ', MIN(ri.year))
		WHEN MIN(ri.year) = MAX(ri.year) AND MIN(ri.qtr) = MAX(ri.qtr)
			THEN CONCAT('FULL ', MIN(ri.qtr), 'Q,', MIN(ri.year))
		WHEN MIN(ri.year) = MAX(ri.year)
			THEN CONCAT(MIN(ri.qtr), 'Q-', MAX(ri.qtr), 'Q, ', MIN(ri.year) )
		ELSE 
			CONCAT(  MIN(CONCAT(ri.qtr, 'Q,', ri.year)), ' - ', MAX(CONCAT(ri.qtr, 'Q,', ri.year)) )
	END AS period,
	CASE WHEN v.objid IS NULL THEN f.taxpayer_name ELSE '*** VOIDED ***' END AS taxpayername, 
	CASE WHEN v.objid IS NULL THEN f.tdno ELSE '' END AS tdno, 
	CASE WHEN v.objid IS NULL THEN b.name ELSE '' END AS barangay, 
	CASE WHEN v.objid IS NULL THEN pc.code ELSE '' END AS classification, 
	SUM(CASE WHEN v.objid IS NULL AND ri.revtype IN ('current', 'advance') THEN ri.sef ELSE 0.0 END) AS currentyear,
	SUM(CASE WHEN v.objid IS NULL AND ri.revtype IN ('previous','prior') THEN ri.sef ELSE 0.0 END) AS previousyear,
	SUM(CASE WHEN v.objid IS NULL AND ri.revtype IN ('current', 'advance') THEN ri.sefdisc ELSE 0.0 END) AS discount,
	SUM(CASE WHEN v.objid IS NULL AND ri.revtype IN ('current', 'advance') THEN ri.sefint ELSE 0.0 END) AS penaltycurrent,
	SUM(CASE WHEN v.objid IS NULL AND ri.revtype IN ('previous','prior') THEN ri.sefint ELSE 0.0 END) AS penaltyprevious
FROM cashreceipt xr
	INNER JOIN cashreceipt_rpt rr ON xr.objid = rr.objid 
	INNER JOIN cashreceipt_rpt_item ri ON rr.objid = ri.rptreceiptid 
	INNER JOIN rptledger rl ON ri.rptledgerid = rl.objid 
	INNER JOIN faas f ON rl.faasid = f.objid 
	INNER JOIN rpu r ON f.rpuid = r.objid
	INNER JOIN propertyclassification pc ON r.classification_objid = pc.objid 
	INNER JOIN barangay b ON rl.barangayid = b.objid 
	LEFT JOIN cashreceipt_void v ON xr.objid = v.receiptid
${whereclause}
GROUP BY xr.receiptno, xr.txndate, f.taxpayer_name, f.tdno, b.name, pc.code 	
ORDER BY xr.receiptno;


[generateRPTCollectionReport]
SELECT  
	pc.name as classname, 
	sum( case when ri.revtype='current' then ri.basic else 0.0 end ) as basiccurrent,
	SUM( case when ri.revtype='current' then ri.basicdisc else 0.0 end ) as basicdisc,
	SUM( case when ri.revtype in ('previous', 'prior') then ri.basic else 0.0 end ) as basicprev,
	sum( case when ri.revtype='current' then ri.basicint else 0.0 end ) as basiccurrentint,
	SUM(  case when ri.revtype in ('previous', 'prior') then ri.basicint else 0.0 end ) as basicprevint,
	sum( ri.basic - ri.basicdisc + ri.basicint) as basicnet, 
	sum( case when ri.revtype='current' then ri.sef else 0.0 end ) as sefcurrent,
	SUM( case when ri.revtype='current' then ri.sefdisc else 0.0 end ) as sefdisc,
	SUM( case when ri.revtype in ('previous', 'prior') then ri.sef else 0.0 end ) as sefprev,
	sum( case when ri.revtype='current' then ri.sefint else 0.0 end ) as sefcurrentint,
	SUM(  case when ri.revtype in ('previous', 'prior') then ri.sefint else 0.0 end ) as sefprevint,
	sum( ri.sef - ri.sefdisc + sefint) as sefnet,  
	sum( ri.basic - ri.basicdisc + ri.basicint + ri.sef - ri.sefdisc + sefint ) as netgrandtotal, 
	0.0 as idlecurrent, 0.0 as idleprev, 0.0 as idledisc, 0.0 as idleint, 0.0 as idlenet, 0.0 as levynet, 
	sum( ri.brgyshare + ri.brgyintshare ) as brgyshare, sum( ri.lgushare + ri.lguintshare ) as lgushare,
	sum( ri.provshare + provintshare) as provshare 
FROM ( 
	  select
		distinct lf.liquidationid
	  from bankdeposit b 
		inner join bankdeposit_liquidation bl on b.objid = bl.bankdepositid
		inner join liquidation_cashier_fund lf on lf.objid = bl.objid 
	    where b.dtposted between $P{fromdate} and $P{todate} 
  ) a 
	INNER JOIN liquidation_remittance lr on lr.liquidationid = a.liquidationid 
	INNER JOIN remittance_cashreceipt xr on xr.remittanceid = lr.objid 
	INNER JOIN cashreceiptitem_rpt ri ON xr.objid = ri.rptreceiptid 
	INNER JOIN rptledger rl ON ri.rptledgerid = rl.objid 
	INNER JOIN faas f ON rl.faasid = f.objid 
	INNER JOIN rpu r ON f.rpuid = r.objid
	INNER JOIN propertyclassification pc ON r.classification_objid = pc.objid 
	LEFT JOIN cashreceipt_void v ON xr.objid = v.receiptid
GROUP BY pc.objid, pc.name 	
ORDER BY min(pc.orderno)  