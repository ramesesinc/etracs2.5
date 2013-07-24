[getOpenLedgerItemByLedgerId]
SELECT rli.*
FROM rptledger rl
	INNER JOIN rptledgeritem rli ON rl.objid = rli.rptledgerid
WHERE rl.objid = $P{ledgerid}
 AND rl.state = 'APPROVED'
 AND (rl.nextbilldate IS NULL OR rl.nextbilldate <= '2013-0723')
 AND rli.state = 'OPEN'  
 
 
 [getOpenLedgerItemByTaxpayerId]
SELECT rli.*
FROM faas f 
	INNER JOIN rptledger rl ON f.objid = rl.faasid
	INNER JOIN rptledgeritem rli ON rl.objid = rli.rptledgerid
WHERE f.taxpayerid = $P{taxpayerid}
 AND rl.state = 'APPROVED'
 AND (rl.nextbilldate IS NULL OR rl.nextbilldate <= '2013-07-23')
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
	nextbilldate = $P{nextbilldate},
	basic = $P{basic},
	basicdisc = $P{basicdisc},
	basicint = $P{basicint},
	basiccredit = $P{basiccredit},
	sef = $P{sef},
	sefdisc = $P{sefdisc},
	sefint = $P{sefint},
	sefcredit = $P{sefcredit}
WHERE objid = $P{ledgerid}


[updateLedgerNextBillDateByTaxpayerId]
UPDATE faas f, rptledger rl SET
	rl.nextbilldate = $P{nextbilldate},
	rl.basic = $P{basic},
	rl.basicdisc = $P{basicdisc},
	rl.basicint = $P{basicint},
	rl.basiccredit = $P{basiccredit},
	rl.sef = $P{sef},
	rl.sefdisc = $P{sefdisc},
	rl.sefint = $P{sefint},
	rl.sefcredit = $P{sefcredit}
WHERE f.taxpayerid = $P{taxpayerid}
 AND f.objid = rl.faasid 
 AND rl.state = 'APPROVED'
 


 [getLedgersForRecalculation]
 SELECT objid FROM rptledger WHERE nextbilldate <= $P{billdate} OR nextbilldate IS NULL