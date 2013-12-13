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
SELECT rl.* , r.taxable 
FROM rptledger rl 
	INNER JOIN faas f ON rl.faasid = f.objid 
	INNER JOIN rpu r ON f.rpuid = r.objid 
WHERE rl.faasid = $P{faasid} AND rl.state = 'APPROVED' 


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
WHERE rlf.rptledgerid =  $P{rptledgerid} 
  AND $P{yr} >= rlf.fromyear 
  AND $P{yr} <= (CASE WHEN rlf.toyear = 0 THEN $P{yr} ELSE rlf.toyear END)
  AND rlf.state ='APPROVED'


[getLedgerBillItems]
SELECT
	rl.objid AS rptledgerid,  lf.tdno, bi.year, lf.assessedvalue, 
	SUM(bi.basic - bi.basicpaid) AS basic, 
	SUM(bi.basicint - bi.basicintpaid) AS basicint, 
	SUM(bi.basicdisc - bi.basicdisctaken) AS basicdisc, 
	SUM(bi.basicamnesty + bi.basicintamnesty) AS basictotalamnesty,

	SUM(bi.sef - bi.sefpaid) AS sef, 
	SUM(bi.sefint - bi.sefintpaid) AS sefint, 
	SUM(bi.sefdisc - bi.sefdisctaken) AS sefdisc, 
	SUM(bi.sefamnesty + bi.sefintamnesty) AS seftotalamnesty,
	SUM(bi.firecode - bi.firecodepaid) AS firecode,

	SUM(bi.basic - bi.basicpaid -  bi.basicdisc + 
	bi.basicint - bi.basicintpaid  + 
	bi.sef - bi.sefpaid -  bi.sefdisc + 
	bi.sefint - bi.sefintpaid  +
	bi.firecode - bi.firecodepaid) AS total 

FROM rptledger rl
	INNER JOIN rptledgerfaas lf ON rl.objid = lf.rptledgerid
	INNER JOIN rptledgerbillitem bi ON rl.objid = bi.rptledgerid 
WHERE rl.objid = $P{rptledgerid} 
GROUP BY rl.objid, lf.tdno, bi.year, lf.assessedvalue
ORDER BY bi.year DESC 







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
		t.collector,
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





 [fixPaidQtrlyLedgerItemByYear]
 UPDATE rptledgeritem_qtrly SET 
	state = 'CLOSED'
WHERE rptledgerid = $P{rptledgerid}	
 AND state = 'OPEN'
 AND year = $P{paidyear}
 AND qtr <= $P{toqtr}



[findPartialedQtrlyItem]
SELECT * FROM rptledgeritem_qtrly
WHERE rptledgerid = $P{rptledgerid}	
 AND year = $P{paidyear} + 1
 AND qtr = $P{toqtr}


[partialPaidQtrlyLedgerItemByYear]
UPDATE rptledgeritem_qtrly SET 
	state = 'OPEN',
	basicpaid = $P{basic},
	basicintpaid = $P{basicint},
	sefpaid = $P{sef},
	sefintpaid = $P{sefint}
WHERE rptledgerid = $P{rptledgerid}	
 AND year = $P{paidyear} 
 AND qtr = $P{toqtr}



[findPartialedLedgerItem]
SELECT * FROM rptledgeritem 
WHERE rptledgerid = $P{rptledgerid}	
 AND year = $P{paidyear} + 1

[partialPaidLedgerItemByYear]
UPDATE rptledgeritem SET 
	state = 'OPEN',
	basicpaid = $P{basic},
	basicintpaid = $P{basicint},
	sefpaid = $P{sef},
	sefintpaid = $P{sefint}
WHERE rptledgerid = $P{rptledgerid}	
 AND year = $P{paidyear}


[deleteLedgerItem]
DELETE FROM rptledgeritem WHERE rptledgerid = $P{rptledgerid} 

[deleteQuarterlyLedgerItem]
DELETE FROM rptledgeritem_qtrly WHERE rptledgerid = $P{rptledgerid}


[updateLedgerItemLastQtrPaid]
UPDATE rptledgeritem SET lastqtrpaid = ${lastqtrpaid} WHERE rptledgerid = $P{rptledgerid} and year = $P{lastyearpaid}


[updateState]
UPDATE rptledger SET state = $P{state} WHERE objid = $P{objid}

