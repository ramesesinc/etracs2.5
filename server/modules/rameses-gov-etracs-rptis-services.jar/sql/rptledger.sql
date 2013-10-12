[getList]
SELECT 
	rl.*,
	f.tdno, f.txntype_objid,
	f.taxpayer_objid, f.taxpayer_name, f.taxpayer_address,
	f.owner_name, f.owner_address,
	f.prevtdno, f.prevpin, f.prevowner, f.prevmv, f.prevav,
	rpu.rputype, rpu.ry, rpu.fullpin, rpu.taxable,
	rpu.totalmv, rpu.totalav, rpu.totalareaha, rpu.totalareasqm, 
	rp.surveyno,rp.cadastrallotno,
	b.name AS barangay_name
FROM faas f 
	INNER JOIN rpu rpu ON f.rpuid = rpu.objid
	INNER JOIN realproperty rp ON rpu.realpropertyid = rp.objid
	INNER JOIN barangay b ON rp.barangayid = b.objid 
	INNER JOIN rptledger rl ON rl.faasid = f.objid 
WHERE 1=1
${filters}	


[findById]
SELECT 
	rl.*,
	f.tdno, f.txntype_objid,
	f.taxpayer_objid, f.taxpayer_name, f.taxpayer_address,
	f.owner_name, f.owner_address,
	f.prevtdno, f.prevpin, f.prevowner, f.prevmv, f.prevav,
	rpu.rputype, rpu.ry, rpu.fullpin, rpu.taxable,
	rpu.totalmv, rpu.totalav, rpu.totalareaha, rpu.totalareasqm, 
	rp.surveyno,rp.cadastrallotno,
	b.name AS barangay_name
FROM rptledger rl 
	INNER JOIN faas f ON rl.faasid = f.objid
	INNER JOIN rpu rpu ON f.rpuid = rpu.objid
	INNER JOIN realproperty rp ON rpu.realpropertyid = rp.objid
	INNER JOIN barangay b ON rp.barangayid = b.objid 
WHERE rl.objid = $P{objid}
ORDER BY rl.state, f.tdno 

	
[findApprovedLedgerByFaasId]
SELECT * FROM rptledger WHERE faasid = $P{faasid} AND state = 'APPROVED' 


[findLedgerByFaasId]	
SELECT * FROM rptledger WHERE faasid = $P{faasid} 


[getLedgerFaases]
SELECT rlf.*,
	pc.code AS classification_code,
	pc.name AS classification_name,
	pc1.code AS actualuse_code,
	pc1.name AS actualuse_name
FROM rptledgerfaas rlf
	INNER JOIN propertyclassification pc ON rlf.classification_objid = pc.objid 
	LEFT JOIN propertyclassification pc1 ON rlf.actualuse_objid = pc1.objid 
WHERE rlf.rptledgerid = $P{rptledgerid} 
ORDER BY rlf.fromyear  

[findLedgerFaasByFaasId]
SELECT rlf.*,
	pc.code AS classification_code,
	pc.name AS classification_name,
	pc1.code AS actualuse_code,
	pc1.name AS actualuse_name
FROM rptledgerfaas rlf
	INNER JOIN propertyclassification pc ON rlf.classification_objid = pc.objid 
	LEFT JOIN propertyclassification pc1 ON rlf.actualuse_objid = pc1.objid 
WHERE rlf.rptledgerid = $P{rptledgerid} 
  AND rlf.faasid = $P{faasid}
ORDER BY rlf.fromyear DESC 


[getLedgerItems]
SELECT t.*
FROM ( 
	SELECT
		rl.objid AS rptledgerid, lf.tdno, rli.year,
		rli.basic - rli.basicpaid AS basic, 
		rli.basicint - rli.basicintpaid AS basicint, 
		rli.basicdisc - rli.basicdisctaken AS basicdisc, 
		rli.basicamnesty + rli.basicintamnesty AS basictotalamnesty,

		rli.sef - rli.sefpaid AS sef, 
		rli.sefint - rli.sefintpaid AS sefint, 
		rli.sefdisc - rli.sefdisctaken AS sefdisc, 
		rli.sefamnesty + rli.sefintamnesty AS seftotalamnesty,

		rli.firecode - rli.firecodepaid AS firecode,

		rli.basic - rli.basicpaid -  rli.basicdisc + 
		rli.basicint - rli.basicintpaid  + 
		rli.sef - rli.sefpaid -  rli.sefdisc + 
		rli.sefint - rli.sefintpaid  +
		rli.firecode - rli.firecodepaid AS total 
	FROM rptledger rl
		INNER JOIN rptledgerfaas lf ON rl.objid = lf.rptledgerid
		INNER JOIN rptledgeritem rli ON lf.objid = rli.rptledgerfaasid
	WHERE rl.objid = $P{rptledgerid} 
	  AND rli.state = 'OPEN'
	  AND rli.qtrly = 0

	UNION

	SELECT
		rl.objid AS rptledgerid, 
		lf.tdno, rli.year,
		SUM(rliq.basic - rliq.basicpaid) AS basic, 
		SUM(rliq.basicint - rliq.basicintpaid) AS basicint, 
		SUM(rliq.basicdisc - rliq.basicdisctaken) AS basicdisc, 
		SUM(rliq.basicamnesty + rliq.basicintamnesty) AS basictotalamnesty,

		SUM(rliq.sef - rliq.sefpaid) AS sef, 
		SUM(rliq.sefint - rliq.sefintpaid) AS sefint, 
		SUM(rliq.sefdisc - rliq.sefdisctaken) AS sefdisc, 
		SUM(rliq.sefamnesty + rliq.sefintamnesty) AS seftotalamnesty,
		SUM(rliq.firecode - rliq.firecodepaid) AS firecode,

		SUM(rliq.basic - rliq.basicpaid -  rliq.basicdisc + 
		rliq.basicint - rliq.basicintpaid  + 
		rliq.sef - rliq.sefpaid -  rliq.sefdisc + 
		rliq.sefint - rliq.sefintpaid  +
		rliq.firecode - rliq.firecodepaid) AS total 

	FROM rptledger rl
		INNER JOIN rptledgerfaas lf ON rl.objid = lf.rptledgerid
		INNER JOIN rptledgeritem rli ON lf.objid = rli.rptledgerfaasid
		INNER JOIN rptledgeritem_qtrly rliq ON rli.objid = rliq.rptledgeritemid 
	WHERE rl.objid = $P{rptledgerid} 
	  AND rliq.state = 'OPEN'
	GROUP BY rl.objid, lf.tdno, rli.year 
) t
ORDER BY t.year DESC 




[closePreviousFaasToYearAndQtr]
UPDATE rptledgerfaas SET
	toyear = $P{toyear},
	toqtr  = $P{toqtr}
WHERE objid <> $P{objid} AND rptledgerid = $P{rptledgerid}	AND toyear = 0 


[updateLedgerLastItemYear]
UPDATE rptledger SET 
	lastitemyear = $P{lastitemyear},
	nextbilldate = NULL
WHERE objid = $P{objid}	


[clearNextBillDateByLedger]
UPDATE rptledger SET 
	nextbilldate = NULL 
WHERE objid = $P{objid} 
  AND state = 'APPROVED'

[clearNextBillDate]
UPDATE rptledger SET 
	nextbilldate = NULL 
WHERE state = 'APPROVED'


[getLedgerCredits]
SELECT 
	cr.receiptno,
	cr.txndate, 
	cr.txnmode, 
	cr.paidby, 
	SUM(basic - basicdisc + basicint) AS basic,
	SUM(sef - sefdisc + sefint) AS sef,
	CONCAT(MIN(CONCAT(cri.qtr, 'Q,', cri.year)), '-', MAX(CONCAT(cri.qtr, 'Q,', cri.year))) AS period,
	SUM(basic - basicdisc + basicint + sef - sefdisc + sefint) AS total
FROM cashreceipt cr 
	INNER JOIN cashreceiptitem_rpt cri ON cr.objid = cri.rptreceiptid
	LEFT JOIN cashreceipt_void v ON cr.objid = v.receiptid 
WHERE 	cri.rptledgerid = $P{rptledgerid}
 AND v.objid IS NULL 
GROUP BY cr.objid  	


[approveLedgerFaas]
UPDATE rptledgerfaas SET state = 'APPROVED' WHERE objid = $P{objid}


[updateLedgerItemAccountInfo]
UPDATE rptledgeritem SET 
	basicacct_objid = $P{basicacctid},
	basicintacct_objid = CASE WHEN basicintacct_objid IS NULL THEN $P{basicintacctid} ELSE basicintacct_objid END,
	sefacct_objid = $P{sefacctid},
	sefintacct_objid = CASE WHEN sefintacct_objid IS NULL THEN $P{sefintacctid} ELSE sefintacct_objid END,
	firecodeacct_objid = CASE WHEN firecodeacct_objid IS NULL THEN $P{firecodeacctid} ELSE firecodeacct_objid END
WHERE objid = $P{rptledgeritemid}	
