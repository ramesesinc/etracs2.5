 [getOpenLedgerByTaxpayerId]
SELECT DISTINCT rl.objid
FROM rptledger rl
	INNER JOIN faas f ON rl.faasid = f.objid 
	INNER JOIN rptledgeritem rli ON rl.objid = rli.rptledgerid
WHERE f.taxpayerid = $P{taxpayerid}
 AND rl.state = 'APPROVED'
 AND (rl.nextbilldate IS NULL OR rl.nextbilldate <= NOW())
 AND rli.state = 'OPEN'  


[getOpenLedgerItemByLedgerId]
SELECT 
	rli.*,
	CASE WHEN rli.qtr > 0 THEN rli.qtrlyav ELSE rli.assessedvalue END AS av,
	rli.year,
	rli.qtr,
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

 



 [getBilledLedgersByTaxpayerId]
SELECT DISTINCT rl.objid
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
	rl.objid,
	rl.lastyearpaid,
	rl.lastqtrpaid,
	rl.firstqtrpaidontime,
	rl.qtrlypaymentpaidontime,
	f.tdno,
	f.ownername,
	f.administratorname,
	r.rputype,
	r.fullpin,
	r.totalareaha,
	r.totalareasqm,
	r.totalav,
	b.name AS barangay,
	rp.cadastrallotno,
	pc.code AS classcode,
	CASE WHEN rl.lastqtrpaid = 4 THEN rl.lastyearpaid + 1 ELSE rl.lastyearpaid END AS fromyear,
	CASE WHEN rl.lastqtrpaid = 4 THEN 1 ELSE rl.lastqtrpaid + 1 END AS fromqtr
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
	rli.year, rli.qtr,
	CASE WHEN rli.qtr = 0 THEN rli.year ELSE CONCAT(rli.year, '-', rli.qtr) END AS period,
	rli.basic - rli.basicpaid AS basic, 
	rli.basicint, rli.basicdisc, rli.basiccredit,
	rli.basicint - rli.basicdisc AS  basicdp,
	rli.basic + rli.basicint - rli.basicdisc - rli.basicpaid AS basicnet,
	rli.sef - rli.sefpaid AS sef, 
	rli.sefint, rli.sefdisc, rli.sefcredit,
	rli.sefint - rli.sefdisc AS sefdp,
	rli.sef + rli.sefint - rli.sefdisc - rli.sefpaid AS sefnet,
	rli.basic + rli.basicint - rli.basicdisc - rli.basicpaid + rli.sef + rli.sefint - rli.sefdisc - rli.sefpaid AS total,
	rli.basicacctid, rli.basicintacctid,
	rli.sefacctid, rli.sefintacctid
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