
[getOpenLedgers]
SELECT 
	rl.objid,
	rl.lastyearpaid,
	rl.lastqtrpaid,
	rl.firstqtrpaidontime,
	rl.qtrlypaymentpaidontime,
	rl.lastitemyear,
	rl.faasid, 
	f.tdno,
	f.owner_name,
	f.administrator_name,
	r.rputype,
	r.fullpin,
	r.totalareaha,
	r.totalareasqm,
	r.totalav,
	b.name AS barangay,
	rp.cadastrallotno,
	rp.barangayid,
	pc.code AS classcode,
	CASE WHEN rl.lastqtrpaid = 4 THEN rl.lastyearpaid + 1 ELSE rl.lastyearpaid END AS fromyear,
	CASE WHEN rl.lastqtrpaid = 4 THEN 1 ELSE rl.lastqtrpaid + 1 END AS fromqtr
FROM faas f
	INNER JOIN rpu r ON f.rpuid = r.objid 
	INNER JOIN propertyclassification pc ON r.classification_objid = pc.objid 
	INNER JOIN realproperty rp ON r.realpropertyid = rp.objid 
	INNER JOIN barangay b ON rp.barangayid = b.objid 
	INNER JOIN rptledger rl ON f.objid = rl.faasid
WHERE ${filters}
 AND rl.state = 'APPROVED'
 AND (rl.nextbilldate IS NULL OR rl.nextbilldate <= $P{currdate})


[getOpenLedgerItemsByLedgerId]
SELECT 
	rli.objid,
	rli.rptledgerid,
	rli.assessedvalue, 
	rli.qtrlyav as av,
	rlf.tdno, 
	rli.year,
	rli.qtr ,
	rlf.txntype_objid,
	r.rputype,
	CASE WHEN lr.objid IS NULL THEN r.classification_objid ELSE lr.classification_objid END AS classification_objid,
	CASE WHEN lr.objid IS NULL THEN r.classification_objid ELSE lr.classification_objid END AS actualuse_objid,
	rl.barangayid
FROM rptledger rl
	INNER JOIN faas f ON rl.faasid = f.objid 
	INNER JOIN rpu r ON f.rpuid = r.objid 
	INNER JOIN rptledgeritem rli ON rl.objid = rli.rptledgerid
	INNER JOIN rptledgerfaas rlf ON rli.rptledgerfaasid = rlf.objid 
	LEFT JOIN faas lf ON rlf.faasid = lf.objid 
	LEFT JOIN rpu lr ON lf.rpuid = lr.objid 
WHERE rl.objid = $P{ledgerid}
 AND rl.state = 'APPROVED'
 AND (rl.nextbilldate IS NULL OR rl.nextbilldate <= NOW() )
 AND rli.state = 'OPEN'  
ORDER BY rli.year

[getLedgerWithUnpostedItems]
SELECT rl.objid, rl.faasid, rl.lastitemyear
FROM rptledger rl
	INNER JOIN faas f ON rl.faasid = f.objid 
WHERE ${filters}
 AND rl.state = 'APPROVED'
 AND (rl.nextbilldate IS NULL OR rl.nextbilldate <= $P{currdate} OR rl.lastitemyear < $P{billtoyear})




[findExpiry]
SELECT expirydate,expirytype 
FROM rptexpiry 
WHERE iqtr=$P{qtr} AND iyear=$P{year}
AND expirydate >= $P{date}
ORDER BY expirydate ASC



 [getLedgersToRecalc]
 SELECT objid FROM rptledger WHERE nextbilldate <= $P{billdate} OR nextbilldate IS NULL


[updateLedgerNextBillDate]
UPDATE rptledger rl, faas f SET
	rl.nextbilldate = $P{nextbilldate}
WHERE f.objid = rl.faasid 
 AND rl.state = 'APPROVED'
 AND ${filters}
 


 [findLedgerFaasAV]
 SELECT assessedvalue
FROM rptledgerfaas rlf
WHERE rlf.rptledgerid = $P{rptledgerid}
  AND $P{avyear} >= rlf.fromyear 
  AND ( $P{avyear} <= rlf.toyear OR rlf.toyear = 0)
  AND rlf.state = 'APPROVED'



[getBilledLedgers]
SELECT 
	rl.objid,
	rl.lastyearpaid,
	rl.lastqtrpaid,
	rl.firstqtrpaidontime,
	rl.qtrlypaymentpaidontime,
	rl.lastitemyear,
	rl.faasid, 
	f.tdno,
	f.owner_name,
	f.administrator_name,
	r.rputype,
	r.fullpin,
	r.totalareaha,
	r.totalareasqm,
	r.totalav,
	b.name AS barangay,
	rp.cadastrallotno,
	rp.barangayid,
	pc.code AS classcode,
	CASE WHEN rl.lastqtrpaid = 4 THEN rl.lastyearpaid + 1 ELSE rl.lastyearpaid END AS fromyear,
	CASE WHEN rl.lastqtrpaid = 4 THEN 1 ELSE rl.lastqtrpaid + 1 END AS fromqtr
FROM rptledger rl 
	INNER JOIN faas f ON rl.faasid = f.objid 
	INNER JOIN rpu r ON f.rpuid = r.objid 
	INNER JOIN realproperty rp ON r.realpropertyid = rp.objid 
	INNER JOIN barangay b ON rp.barangayid = b.objid 
	INNER JOIN propertyclassification pc ON r.classification_objid = pc.objid 
WHERE ${filters}
 AND rl.state = 'APPROVED'
 AND ( rl.lastyearpaid < $P{billtoyear} OR ( rl.lastyearpaid = $P{billtoyear} AND rl.lastqtrpaid <= $P{billtoqtr}))


[getPreviousBillItems]
SELECT 
	rlf.tdno,
	rlf.assessedvalue,
	rlf.assessedvalue AS originalav,
	CONCAT(rli.year,'') AS period,
	SUM(rli.basic - rli.basicpaid - rli.basicamnesty) AS basic, 
	SUM(rli.basicint - rli.basicintpaid - rli.basicintamnesty) AS basicint, 
	SUM(rli.basicdisc - rli.basicdisctaken) AS basicdisc, 
	SUM(rli.basiccredit) AS basiccredit,
	SUM(rli.basicint - rli.basicintpaid - rli.basicintamnesty - rli.basicdisc - rli.basicdisctaken ) AS  basicdp,
	SUM(rli.basic + rli.basicint - rli.basicdisc - rli.basicdisctaken - rli.basicpaid - rli.basicamnesty - rli.basicintpaid - rli.basicintamnesty) AS basicnet,
	SUM(rli.sef - rli.sefpaid - rli.sefamnesty) AS sef, 
	SUM(rli.sefint - rli.sefintpaid - rli.sefintamnesty) AS sefint, 
	SUM(rli.sefdisc - rli.sefdisctaken) AS sefdisc, 
	SUM(rli.sefcredit) AS sefcredit,
	SUM(rli.sefint - rli.sefintpaid - rli.sefintamnesty - rli.sefdisc - rli.sefdisctaken ) AS  sefdp,
	SUM(rli.sef + rli.sefint - rli.sefdisc - rli.sefdisctaken - rli.sefpaid - rli.sefamnesty - rli.sefintpaid - rli.sefintamnesty) AS sefnet,
	SUM(rli.firecode - rli.firecodepaid) AS firecode,
	rl.barangayid
FROM faas f
	INNER JOIN rpu r ON f.rpuid = r.objid 
	INNER JOIN realproperty rp ON r.realpropertyid = rp.objid 
	INNER JOIN rptledger rl ON f.objid = rl.faasid
	INNER JOIN rptledgeritem rli ON rl.objid = rli.rptledgerid
	INNER JOIN rptledgerfaas rlf ON rli.rptledgerfaasid = rlf.objid
WHERE rl.objid = $P{ledgerid}
 AND rli.state = 'OPEN'
 AND (rli.year < $P{billtoyear} OR (rli.year = $P{billtoyear} AND rli.qtr <= $P{billtoqtr}))
 AND rli.year < $P{currentyr}
GROUP BY rlf.tdno, rlf.assessedvalue, rli.year
ORDER BY rli.year 


[getCurrentBillItems]
SELECT 
	rlf.tdno,
	rli.qtrlyav AS assessedvalue,
	rlf.assessedvalue AS originalav,
	CONCAT(rli.year, '-', rli.qtr) AS period,
	SUM(rli.basic - rli.basicpaid - rli.basicamnesty) AS basic, 
	SUM(rli.basicint - rli.basicintpaid - rli.basicintamnesty) AS basicint, 
	SUM(rli.basicdisc - rli.basicdisctaken) AS basicdisc, 
	SUM(rli.basiccredit) AS basiccredit,
	SUM(rli.basicint - rli.basicintpaid - rli.basicintamnesty - rli.basicdisc - rli.basicdisctaken ) AS  basicdp,
	SUM(rli.basic + rli.basicint - rli.basicdisc - rli.basicdisctaken - rli.basicpaid - rli.basicamnesty - rli.basicintpaid - rli.basicintamnesty) AS basicnet,
	SUM(rli.sef - rli.sefpaid - rli.sefamnesty) AS sef, 
	SUM(rli.sefint - rli.sefintpaid - rli.sefintamnesty) AS sefint, 
	SUM(rli.sefdisc - rli.sefdisctaken) AS sefdisc, 
	SUM(rli.sefcredit) AS sefcredit,
	SUM(rli.sefint - rli.sefintpaid - rli.sefintamnesty - rli.sefdisc - rli.sefdisctaken ) AS  sefdp,
	SUM(rli.sef + rli.sefint - rli.sefdisc - rli.sefdisctaken - rli.sefpaid - rli.sefamnesty - rli.sefintpaid - rli.sefintamnesty) AS sefnet,
	SUM(rli.firecode - rli.firecodepaid) AS firecode,
	rl.barangayid
FROM faas f
	INNER JOIN rpu r ON f.rpuid = r.objid 
	INNER JOIN realproperty rp ON r.realpropertyid = rp.objid 
	INNER JOIN barangay b ON rp.barangayid = b.objid 
	INNER JOIN rptledger rl ON f.objid = rl.faasid
	INNER JOIN rptledgeritem rli ON rl.objid = rli.rptledgerid
	INNER JOIN rptledgerfaas rlf ON rli.rptledgerfaasid = rlf.objid
WHERE rl.objid = $P{ledgerid}
 AND rli.state = 'OPEN'
 AND (rli.year < $P{billtoyear} OR (rli.year = $P{billtoyear} AND rli.qtr <= $P{billtoqtr}))
 AND rli.year >= $P{currentyr}
GROUP BY rlf.tdno, rlf.assessedvalue, rli.year, rli.qtr 
ORDER BY rli.year, rli.qtr 

