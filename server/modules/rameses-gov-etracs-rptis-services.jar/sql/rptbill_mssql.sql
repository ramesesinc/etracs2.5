[clearBillItems]
DELETE FROM rptledgerbillitem WHERE rptledgerid = $P{rptledgerid}


[findOpenLedgerById]
SELECT 
	rl.objid,
	rl.lastyearpaid,
	rl.lastqtrpaid,
	rl.firstqtrpaidontime,
	rl.qtrlypaymentpaidontime,
	rl.lastitemyear,
	rl.faasid, 
	rl.lastbilledyear,
	rl.lastbilledqtr,
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
	CASE WHEN rl.partialbasic > 0 THEN 1 ELSE 0 END AS partialled,
	CASE
		WHEN rl.partialbasic > 0 THEN rl.partialledyear  
		WHEN rl.lastqtrpaid = 4 THEN rl.lastyearpaid + 1 ELSE rl.lastyearpaid 
	END	AS fromyear,
	CASE
		WHEN rl.partialbasic > 0 THEN rl.partialledqtr
		WHEN rl.lastqtrpaid = 4 THEN 1 ELSE rl.lastqtrpaid + 1 
	END AS fromqtr,
	CASE 
		WHEN rl.nextbilldate <= GETDATE() THEN 1 
		WHEN rl.partialbasic > 0 THEN 1
		WHEN rl.lastbilledyear IS NULL OR rl.lastbilledqtr IS NULL THEN 1 
		WHEN rl.lastbilledyear <> $P{billtoyear} OR rl.lastbilledqtr <> $P{billtoqtr} THEN 1
		ELSE 0
	END AS recalcbill
FROM faas f
	INNER JOIN rpu r ON f.rpuid = r.objid 
	INNER JOIN propertyclassification pc ON r.classification_objid = pc.objid 
	INNER JOIN realproperty rp ON r.realpropertyid = rp.objid 
	INNER JOIN barangay b ON rp.barangayid = b.objid 
	INNER JOIN rptledger rl ON f.objid = rl.faasid
WHERE rl.objid = $P{rptledgerid}
 AND rl.state = 'APPROVED'
 AND r.taxable = 1 
 AND ( rl.lastyearpaid < $P{billtoyear} OR rl.partialbasic > 0.0 OR (rl.lastyearpaid = $P{billtoyear} AND rl.lastqtrpaid < $P{billtoqtr}))


[getLedgerFaases]
SELECT rlf.* 
FROM rptledger rl
	INNER JOIN rptledgerfaas rlf ON rl.objid = rlf.rptledgerid
WHERE rl.objid =  $P{rptledgerid}
  AND rlf.state = 'APPROVED' 
ORDER BY rlf.fromyear   


[updateLedgerNextBillDate]
UPDATE rptledger SET
	nextbilldate = $P{nextbilldate},
	lastbilledyear = $P{toyear},
	lastbilledqtr = $P{toqtr}
WHERE objid = $P{rptledgerid}



[findExpiry]
SELECT expirydate,expirytype 
FROM rptexpiry 
WHERE iqtr=$P{qtr} AND iyear=$P{year}
AND expirydate >= $P{date}
ORDER BY expirydate ASC



[getBilledLedgers]
SELECT 
	rl.objid,
	rl.lastyearpaid,
	rl.lastqtrpaid,
	rl.faasid, 
	rl.nextbilldate,
	f.tdno,
	r.rputype,
	r.fullpin,
	r.totalareaha,
	r.totalareasqm,
	r.totalav,
	b.name AS barangay,
	rp.cadastrallotno,
	rp.barangayid,
	pc.code AS classcode,
	rl.lastbilledyear,
	rl.lastbilledqtr,
	CASE WHEN rl.partialbasic > 0 THEN 1 ELSE 0 END AS partialled,
	CASE WHEN rl.nextbilldate <= GETDATE() THEN 1 ELSE 0 END AS expired,
	CASE 
		WHEN rl.nextbilldate <= GETDATE() THEN 1 
		WHEN rl.partialbasic > 0 THEN 1
		WHEN rl.lastbilledyear IS NULL OR rl.lastbilledqtr IS NULL THEN 1 
		WHEN rl.lastbilledyear <> $P{billtoyear} OR rl.lastbilledqtr <> $P{billtoqtr} THEN 1
		ELSE 0
	END AS recalcbill
FROM rptledger rl 
	INNER JOIN faas f ON rl.faasid = f.objid 
	INNER JOIN rpu r ON f.rpuid = r.objid 
	INNER JOIN realproperty rp ON r.realpropertyid = rp.objid 
	INNER JOIN barangay b ON rp.barangayid = b.objid 
	INNER JOIN propertyclassification pc ON r.classification_objid = pc.objid 
WHERE ${filters}
 AND rl.state = 'APPROVED'
 AND r.taxable = 1 
 AND (rl.lastyearpaid < $P{billtoyear} OR ( rl.lastyearpaid = $P{billtoyear} AND rl.lastqtrpaid < $P{billtoqtr}))
ORDER BY f.tdno  



[getFullyPaidItems]
SELECT 
	bi.objid AS objid,
	rl.objid AS rptledgerid,
	bi.year, 
	bi.qtr AS qtr,
	bi.fromqtr,
	CASE WHEN bi.qtr = 0 THEN bi.toqtr ELSE bi.qtr END AS toqtr,
	CASE WHEN bi.qtr = 0 THEN 0 ELSE 1 END AS qtrly,
	rl.lastyearpaid,
	rl.lastqtrpaid,
	bi.basic - bi.basicpaid AS basic,
	bi.basicdisc,
	bi.basicamnesty,
	bi.basicint - bi.basicintpaid  AS basicint,
	bi.basicintamnesty,
	bi.sef - bi.sefpaid AS sef,
	bi.sefdisc,
	bi.sefamnesty,
	bi.sefint - bi.sefintpaid AS  sefint,
	bi.sefintamnesty,
	bi.firecode - bi.firecodepaid AS firecode,
	( 
		bi.basic - bi.basicpaid - bi.basicdisc + bi.basicint - bi.basicintpaid + 
		bi.sef - bi.sefpaid - bi.sefdisc +  bi.sefint - bi.sefintpaid  +
		bi.firecode - bi.firecodepaid
	) AS total
FROM rptledger rl
		INNER JOIN rptledgerbillitem bi ON rl.objid = bi.rptledgerid
WHERE rl.objid = $P{rptledgerid}
ORDER BY bi.year, bi.qtr 

[deleteUnpartialledQtrlyItems]
DELETE FROM rptledgerbillitem 
WHERE rptledgerid = $P{rptledgerid}
  AND ( year > $P{yeartodelete} OR (year = $P{yeartodelete} AND qtr >= $P{qtrtodelete}))

[deleteUnpartialledYearlyItems]
DELETE FROM rptledgerbillitem 
WHERE rptledgerid = $P{rptledgerid}
  AND year >= $P{yeartodelete}

[updatePartialInfo]
UPDATE rptledgerbillitem  SET
	basic = $P{partialbasic},
	basicint = $P{partialbasicint},
	basicdisc = $P{partialbasicdisc},
	sef = $P{partialsef},
	sefint = $P{partialsefint},
	sefdisc = $P{partialsefdisc},

	partialbasic = $P{partialbasic},
	partialbasicint = $P{partialbasicint},
	partialbasicdisc = $P{partialbasicdisc},
	partialsef = $P{partialsef},
	partialsefint = $P{partialsefint},
	partialsefdisc = $P{partialsefdisc},
	partial = 1
WHERE objid = $P{objid}	


[applyPartialPayment]
UPDATE bi SET
	bi.basicpaid = rl.partialbasic,
	bi.basicintpaid = rl.partialbasicint,
	bi.basicdisctaken = ISNULL(rl.partialbasicdisc,0),
	bi.sefpaid = rl.partialsef,
	bi.sefintpaid = rl.partialsefint,
	bi.sefdisctaken = ISNULL(rl.partialsefdisc,0),
	bi.partialapplied = 1
FROM rptledger rl 
	INNER JOIN rptledgerbillitem bi ON rl.objid = bi.rptledgerid
WHERE rl.objid = $P{objid}
  AND rl.partialledyear = bi.year
  AND rl.partialledqtr =  CASE WHEN bi.qtr = 0 THEN bi.fromqtr ELSE bi.qtr END 





[applyLedgerItemTaxIncentives]
UPDATE rli SET 
	rli.basic = ROUND(rli.basic - (rli.basic * rti.basicrate / 100), 2),
	rli.basicint = ROUND(rli.basicint - (rli.basicint * rti.basicrate / 100), 2),
	rli.basicdisc = ROUND(rli.basicdisc - (rli.basicdisc * rti.basicrate / 100), 2),
	rli.sef = ROUND(rli.sef - (rli.sef * rti.sefrate / 100), 2),
	rli.sefint = ROUND(rli.sefint - (rli.sefint * rti.sefrate / 100), 2),
	rli.sefdisc = ROUND(rli.sefdisc - (rli.sefdisc * rti.sefrate / 100), 2)
FROM rptledger rl
	INNER JOIN rptledgerbillitem rli ON rl.objid = rli.rptledgerid
	INNER JOIN rpttaxincentive_item rti ON rti.rptledgerid = rl.objid 
WHERE rl.objid = $P{objid}
 AND rl.state = 'APPROVED'
 AND rli.year >= rti.fromyear  
 AND rli.year <= rti.toyear 

