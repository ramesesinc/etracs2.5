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
	INNER JOIN lgu_barangay b ON rp.barangayid = b.objid 
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
	INNER JOIN lgu_barangay b ON rp.barangayid = b.objid 
	INNER JOIN rpu r ON rp.objid = r.realpropertyid 
	INNER JOIN propertyclassification pc ON r.classification_objid = pc.objid 
	INNER JOIN faas f ON r.objid = f.rpuid 
	INNER JOIN rptledger rl ON f.objid = rl.faasid 	
	INNER JOIN xreceipt xr ON rl.lastreceiptid = xr.objid 
WHERE rp.barangayid = $P{barangayid}
  AND rl.state = 'APPROVED' 
  AND (rl.lastyearpaid < $P{currentyear} OR (rl.lastyearpaid = $P{lastyearpaid} AND rl.lastqtrpaid < 4 ))