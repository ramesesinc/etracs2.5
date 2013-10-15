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
		rl.objid AS rptledgerid, lf.tdno, rli.year, lf.assessedvalue,
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
		rl.objid AS rptledgerid,  lf.tdno, rli.year, lf.assessedvalue, 
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
	GROUP BY rl.objid, lf.tdno, rli.year, lf.assessedvalue
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
SELECT x.*
FROM (
	SELECT 
		receiptno,
		receiptdate,
		paidby_name,
		paidby_address, 
		collector,
		'CAPTURE' AS txnmode,
		period,
		basic,
		basicint,
		basicdisc,
		sef,
		sefint,
		sefdisc,
		firecode,
		amount,
		fromyear
	FROM rptreceipt_capture rc 
	WHERE rptledgerid = $P{rptledgerid}	

	UNION ALL

	SELECT 
		t.receiptno,
		t.receiptdate,
		t.paidby_name,
		t.paidby_address, 
		t.collector,
		'ONLINE' AS txnmode,
		CASE
			WHEN MIN(t.fromyear) = MAX(t.toyear) AND MIN(t.fromqtr) = 1 AND MAX(t.toqtr) = 4 
				THEN 'FULL ' + CONVERT(VARCHAR(4),MAX(t.toyear))
			WHEN MIN(t.fromyear) = MAX(t.toyear) AND MIN(t.fromqtr) = MAX(t.toqtr)
				THEN CONVERT(VARCHAR(1),MAX(t.toqtr)) + 'Q, ' + CONVERT(VARCHAR(4),MAX(t.toyear))
			WHEN MIN(t.fromyear) = MAX(t.toyear) 
				THEN CONVERT(VARCHAR(1),MIN(t.fromqtr)) + CONVERT(VARCHAR(1),MAX(t.toqtr)) + 'Q, ' + CONVERT(VARCHAR(4),MAX(t.toyear))

			WHEN MIN(t.fromqtr) = 1 AND MAX(t.toqtr) = 4
				THEN 'FULL ' + CONVERT(VARCHAR(4),MIN(t.fromyear)) + '-' + CONVERT(VARCHAR(4),MAX(t.toyear))
			WHEN MIN(t.fromqtr) = 1 AND MAX(t.toqtr) <> 4
				THEN CONVERT(VARCHAR(4),MIN(t.fromyear)) + '-' + CONVERT(VARCHAR(1),MAX(t.toqtr)) + 'Q,' + CONVERT(VARCHAR(4),MAX(t.toyear))
			WHEN MIN(t.fromqtr) <> 1 AND MAX(t.toqtr) = 4
				THEN CONVERT(VARCHAR(1),MIN(t.fromqtr)) + 'Q,' + CONVERT(VARCHAR(4),MIN(t.fromyear)) + '-' + CONVERT(VARCHAR(4),MAX(t.toyear))
			ELSE
				CONVERT(VARCHAR(1),MIN(t.fromqtr)) + 'Q,' + CONVERT(VARCHAR(4),MIN(t.fromyear)) + '-' + CONVERT(VARCHAR(1),MAX(t.toqtr)) + 'Q,' + CONVERT(VARCHAR(4),MAX(t.toyear))
		END AS period,
		SUM(t.basic) AS basic,
		SUM(t.basicint) AS basicint,
		SUM(t.basicdisc) AS basicdisc,
		SUM(t.sef) AS sef,
		SUM(t.sefint) AS sefint,
		SUM(t.sefdisc) AS sefdisc,
		SUM(t.firecode) AS firecode,
		SUM(t.amount) AS amount,
		MIN(fromyear) AS fromyear
	FROM (
		SELECT 
			cr.receiptno,
			cr.receiptdate,
			cr.paidby AS paidby_name,
			cr.paidbyaddress AS paidby_address,
			cr.collector_name AS collector,
			MIN(cri.year) AS fromyear,
			MIN(CASE WHEN cri.qtr = 0 THEN 1 ELSE cri.qtr END ) AS fromqtr,
			MAX(cri.year) AS toyear,
			MAX(CASE WHEN cri.qtr = 0 THEN 4 ELSE cri.qtr END) AS toqtr,
			SUM(cri.basic) AS basic,
			SUM(cri.basicint) AS basicint,
			SUM(cri.basicdisc) AS basicdisc,
			SUM(cri.sef) AS sef,
			SUM(cri.sefint) AS sefint,
			SUM(cri.sefdisc) AS sefdisc,
			SUM(cri.firecode) AS firecode,
			SUM(
				cri.basic + cri.basicint - cri.basicdisc + 
				cri.sef + cri.sefint - cri.sefdisc + cri.firecode
			) AS amount
		FROM cashreceipt_rpt crr
			INNER JOIN cashreceipt cr ON crr.objid = cr.objid 
			INNER JOIN cashreceiptitem_rpt cri ON cr.objid = cri.rptreceiptid 	
			LEFT JOIN cashreceipt_void cv ON cr.objid = cv.objid
		WHERE cri.rptledgerid = $P{rptledgerid}	
		  AND cv.objid IS NULL 
		GROUP BY  
			cr.receiptno,
			cr.receiptdate,
			cr.paidby,
			cr.paidbyaddress,
			cr.collector_name, 
			cri.year 
	) t		
	GROUP BY 		
		t.receiptno,
		t.receiptdate,
		t.paidby_name,
		t.paidby_address,
		t.collector
		t.fromyear 
) x 
ORDER BY x.receiptdate DESC 







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


[updateLastYearQtrPaid]
UPDATE rptledger SET lastyearpaid = $P{toyear}, lastqtrpaid = $P{toqtr} WHERE objid = $P{rptledgerid}


[closePaidLedgerItemByYear]
UPDATE rptledgeritem SET 
	state = 'CLOSED',
	basic = $P{basic}, basicpaid = $P{basic},
	basicint = $P{basicint}, basicintpaid = $P{basicint},
	basicdisc = $P{basicdisc}, basicdisctaken = $P{basicdisc},
	
	sef = $P{sef}, sefpaid = $P{sef},
	sefint = $P{sefint}, sefintpaid = $P{sefint},
	sefdisc = $P{sefdisc}, sefdisctaken = $P{sefdisc},

	firecode = $P{firecode}, firecodepaid = $P{firecode}
WHERE rptledgerid = $P{rptledgerid}	
 AND state = 'OPEN'
 AND year = $P{paidyear}
 AND qtrly = 0


 [closePaidQtrlyLedgerItemByYear]
 UPDATE rptledgeritem_qtrly SET 
	state = 'CLOSED',
	basic = $P{basic}, basicpaid = $P{basic},
	basicint = $P{basicint}, basicintpaid = $P{basicint},
	basicdisc = $P{basicdisc}, basicdisctaken = $P{basicdisc},
	
	sef = $P{sef}, sefpaid = $P{sef},
	sefint = $P{sefint}, sefintpaid = $P{sefint},
	sefdisc = $P{sefdisc}, sefdisctaken = $P{sefdisc},

	firecode = $P{firecode}, firecodepaid = $P{firecode}
WHERE rptledgerid = $P{rptledgerid}	
 AND state = 'OPEN'
 AND year = $P{paidyear}
 AND qtr <= $P{toqtr}


[findLedgerItemByYear]
SELECT * FROM rptledgeritem WHERE rptledgerid = $P{rptledgerid} AND year = $P{year}



[updateLedgerItemQuarterlyPaidInfo]
UPDATE rli SET
	rli.state = CASE WHEN NOT EXISTS (
				  		SELECT *
				  		FROM rptledgeritem_qtrly 
				  		WHERE rptledgeritemid = rli.objid AND state = 'OPEN'
				  	) 
					THEN 'CLOSED' ELSE 'OPEN' END,					
	rli.lastqtrpaid = ISNULL((SELECT MAX(qtr) FROM rptledgeritem_qtrly WHERE rptledgeritemid = rli.objid AND (basicpaid > 0  OR state = 'CLOSED')),0)
FROM rptledgeritem rli 	
WHERE rli.rptledgerid = $P{rptledgerid} 
  AND rli.qtrly = 1 

