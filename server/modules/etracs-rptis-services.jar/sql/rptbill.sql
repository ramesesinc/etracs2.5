[getOpenLedgerItemByLedgerId]
SELECT rli.*,
	CASE WHEN rli.qtr > 0 THEN rli.qtrlyav ELSE rli.assessedvalue END AS av,
	rl.lastyearpaid,
	rl.lastqtrpaid,
	rl.firstqtrpaidontime,
	rl.qtrlypaymentpaidontime,
	rlf.tdno, 
	rlf.txntype_objid,
	r.rputype,
	CASE WHEN lr.objid IS NULL THEN r.classification_objid ELSE lr.classification_objid END AS classification_objid,
	CASE WHEN lr.objid IS NULL THEN r.classification_objid ELSE lr.classification_objid END AS actualuse_objid
FROM rptledger rl
	INNER JOIN faas f ON rl.faasid = f.objid 
	INNER JOIN rpu r ON f.rpuid = r.objid 
	INNER JOIN rptledgeritem rli ON rl.objid = rli.rptledgerid
	INNER JOIN rptledgerfaas rlf ON rli.rptledgerfaasid = rlf.objid 
	LEFT JOIN faas lf ON rlf.faasid = lf.objid 
	LEFT JOIN rpu lr ON lf.rpuid = lr.objid 
WHERE rl.objid = $P{ledgerid}
 AND rl.state = 'APPROVED'
 AND (rl.nextbilldate IS NULL OR rl.nextbilldate <= NOW())
 AND rli.state = 'OPEN'  
 
 
 [getOpenLedgerItemByTaxpayerId]
SELECT rli.*,
	CASE WHEN rli.qtr > 0 THEN rli.qtrlyav ELSE rli.assessedvalue END AS av,
	rl.lastyearpaid,
	rl.lastqtrpaid,
	rl.firstqtrpaidontime,
	rl.qtrlypaymentpaidontime,
	rlf.tdno, 
	rlf.txntype_objid,
	r.rputype,
	CASE WHEN lr.objid IS NULL THEN r.classification_objid ELSE lr.classification_objid END AS classification_objid,
	CASE WHEN lr.objid IS NULL THEN r.classification_objid ELSE lr.classification_objid END AS actualuse_objid
FROM rptledger rl
	INNER JOIN faas f ON rl.faasid = f.objid 
	INNER JOIN rpu r ON f.rpuid = r.objid 
	INNER JOIN rptledgeritem rli ON rl.objid = rli.rptledgerid
	INNER JOIN rptledgerfaas rlf ON rli.rptledgerfaasid = rlf.objid 
	LEFT JOIN faas lf ON rlf.faasid = lf.objid 
	LEFT JOIN rpu lr ON lf.rpuid = lr.objid 
WHERE f.taxpayerid = $P{taxpayerid}
 AND rl.state = 'APPROVED'
 AND (rl.nextbilldate IS NULL OR rl.nextbilldate <= NOW())
 AND rli.state = 'OPEN'  
 



 [getBilledLedgersByTaxpayerId]
SELECT DISTINCT rl.objid AS ledgerid
FROM faas f
	INNER JOIN rpu r ON f.rpuid = r.objid 
	INNER JOIN realproperty rp ON r.realpropertyid = rp.objid 
	INNER JOIN lgu_barangay b ON rp.barangayid = b.objid 
	INNER JOIN rptledger rl ON f.objid = rl.faasid
	INNER JOIN rptledgeritem rli ON rl.objid = rli.rptledgerid
WHERE f.taxpayerid = $P{taxpayerid}
 AND rl.state = 'APPROVED'
 AND rli.state = 'OPEN'  
 AND ( rli.year < $P{billtoyear} OR ( rli.year = $P{billtoyear} AND rli.qtr <= $P{billtoqtr}))
 ORDER BY rli.year, rli.qtr 



[getBilledLedgerInfoByLedgerId]
SELECT 
	rl.objid AS ledgerid,
	f.tdno,
	f.ownername,
	f.administratorname,
	r.rputype,
	r.fullpin,
	r.totalareaha,
	r.totalareasqm,
	b.name AS barangay,
	rp.cadastrallotno,
	pc.code AS classcode
FROM faas f
	INNER JOIN rpu r ON f.rpuid = r.objid 
	INNER JOIN propertyclassification pc ON r.classification_objid = pc.objid 
	INNER JOIN realproperty rp ON r.realpropertyid = rp.objid 
	INNER JOIN lgu_barangay b ON rp.barangayid = b.objid 
	INNER JOIN rptledger rl ON f.objid = rl.faasid
WHERE rl.objid = $P{ledgerid}



[getBilledItemsByLedgerId] 
SELECT 
	rli.objid, 
	rlf.tdno,
	rlf.assessedvalue,
	rlf.assessedvalue AS originalav,
	CASE WHEN rli.qtr = 0 THEN rli.year ELSE CONCAT(rli.year, '-', rli.qtr) END AS period,
	rli.basic,
	rli.basicint - rli.basicdisc AS  basicdp,
	rli.basic + rli.basicint - rli.basicdisc AS basicnet,
	rli.sef,
	rli.sefint - rli.sefdisc AS sefdp,
	rli.sef + rli.sefint - rli.sefdisc AS sefnet,
	rli.basic + rli.basicint - rli.basicdisc + rli.sef + rli.sefint - rli.sefdisc  AS total
FROM faas f
	INNER JOIN rpu r ON f.rpuid = r.objid 
	INNER JOIN realproperty rp ON r.realpropertyid = rp.objid 
	INNER JOIN lgu_barangay b ON rp.barangayid = b.objid 
	INNER JOIN rptledger rl ON f.objid = rl.faasid
	INNER JOIN rptledgeritem rli ON rl.objid = rli.rptledgerid
	INNER JOIN rptledgerfaas rlf ON rli.rptledgerfaasid = rlf.objid
WHERE rl.objid = $P{ledgerid}
 AND rli.state = 'OPEN'
 AND ( rli.year < $P{billtoyear} OR ( rli.year = $P{billtoyear} AND rli.qtr <= $P{billtoqtr}))
ORDER BY rli.year, rli.qtr  



[updateLedgerNextBillDate]
UPDATE rptledger SET 
	nextbilldate = $P{nextbilldate}
WHERE objid = $P{ledgerid}


[updateLedgerNextBillDateByTaxpayerId]
UPDATE faas f, rptledger rl SET
	rl.nextbilldate = $P{nextbilldate}
WHERE f.taxpayerid = $P{taxpayerid}
 AND f.objid = rl.faasid 
 AND rl.state = 'APPROVED'
 


 [getLedgersToRecalc]
 SELECT objid FROM rptledger WHERE nextbilldate <= $P{billdate} OR nextbilldate IS NULL