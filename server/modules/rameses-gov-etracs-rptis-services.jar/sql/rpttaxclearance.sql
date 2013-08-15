[getInfo]
SELECT * FROM rpttaxclearance WHERE objid = $P{objid}

[insertTaxClearance]
INSERT INTO rpttaxclearance 
	(objid, year, qtr)
VALUES 
	($P{objid}, $P{year}, $P{qtr})


[getItems]
SELECT 
	rci.*,
	f.tdno,
	rpu.rputype,
	rpu.ry,
	rpu.fullpin ,
	rpu.taxable,
	rpu.totalareaha,
	rpu.totalareasqm,
	rpu.totalbmv,
	rpu.totalmv,
	rpu.totalav,
	rp.section,
	rp.parcel,
	rp.surveyno,
	rp.cadastrallotno,
	rp.blockno,
	rp.claimno,
	b.name AS barangay,
	pc.code AS classcode
FROM rptcertificationitem rci 
	INNER JOIN rptledger rl ON rci.refid = rl.objid 
	INNER JOIN faas f ON rl.faasid = f.objid 
	INNER JOIN rpu rpu ON f.rpuid = rpu.objid
	INNER JOIN propertyclassification pc ON rpu.classification_objid = pc.objid 
	LEFT JOIN realproperty rp ON rpu.realpropertyid = rp.objid
	LEFT JOIN barangay b ON rp.barangayid = b.objid 
WHERE rci.rptcertificationid = $P{rptcertificationid}



[getClearedLedgers]
SELECT 
	rl.objid AS refid,
	rl.lastyearpaid,
	rl.lastqtrpaid,
	f.tdno,
	rpu.rputype,
	rpu.ry,
	rpu.fullpin ,
	rpu.taxable,
	rpu.totalareaha,
	rpu.totalareasqm,
	rpu.totalbmv,
	rpu.totalmv,
	rpu.totalav,
	rp.section,
	rp.parcel,
	rp.surveyno,
	rp.cadastrallotno,
	rp.blockno,
	rp.claimno,
	b.name AS barangay,
	pc.code AS classcode
FROM rptledger rl
	INNER JOIN faas f ON rl.faasid = f.objid
	INNER JOIN rpu rpu ON f.rpuid = rpu.objid
	INNER JOIN propertyclassification pc ON rpu.classification_objid = pc.objid 
	INNER JOIN realproperty rp ON rpu.realpropertyid = rp.objid
	LEFT JOIN barangay b ON rp.barangayid = b.objid 
WHERE rl.state = 'APPROVED'
  AND f.taxpayer_objid = $P{taxpayerid}
  AND f.state = 'CURRENT'
  AND ( rl.lastyearpaid > $P{year} OR (rl.lastyearpaid = $P{year} AND rl.lastqtrpaid >= $P{qtr}))



[getPaymentInfo]
SELECT 
	xr.serialno AS orno,
	xr.txndate AS ordate,
	SUM(ri.basic + ri.basicint - ri.basicdisc + ri.sef + ri.sefint - ri.sefdisc) AS oramount,
	CONCAT(ri.year, '-', ri.qtr, 'Q') AS period
FROM rptcertificationitem rci 
	INNER JOIN rptledger rl ON rci.refid = rl.objid 
	INNER JOIN rptreceiptitem  ri ON rl.objid = ri.rptledgerid
	INNER JOIN xreceipt xr ON ri.rptreceiptid = xr.objid 
WHERE rci.rptcertificationid = $P{rptcertificationid}
  AND ri.year = $P{year}
  AND ri.qtr <= $P{qtr}
GROUP BY ri.year, xr.serialno, xr.txndate