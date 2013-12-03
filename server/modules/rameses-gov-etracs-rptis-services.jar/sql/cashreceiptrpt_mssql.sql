[resetItemForPaymentFlag]
UPDATE rli SET
	rli.forpayment = 0
FROM rptledgeritem rli, rptledger rl, faas f 	
WHERE rli.rptledgerid = rl.objid 
  AND rl.faasid = f.objid 
  AND ${filters}
  AND rl.state = 'APPROVED'
  AND rli.state = 'OPEN' 
  AND rli.forpayment = 1


[resetQuarterlyItemForPaymentFlag]
UPDATE rliq SET
	rliq.forpayment = 0 
FROM rptledgeritem_qtrly rliq, rptledgeritem rli, rptledger rl, faas f 	
WHERE rli.rptledgerid = rl.objid 
  AND rli.objid = rliq.rptledgeritemid 
  AND rl.faasid = f.objid 
  AND ${filters}
  AND rl.state = 'APPROVED'
  AND rliq.state = 'OPEN' 
  AND rliq.forpayment = 1


[setItemForPaymentFlag]
UPDATE rli SET
	rli.forpayment = 1
FROM rptledgeritem rli, rptledger rl, faas f 	
WHERE ${filters}
  AND rli.rptledgerid = rl.objid 
  AND rl.faasid = f.objid 
  AND rl.state = 'APPROVED'
  AND rli.year <= $P{billtoyear}
  AND rli.state = 'OPEN' 
  AND rli.qtrly = 0 


[setQuarterlyItemForPaymentFlag]
UPDATE rliq SET
	rliq.forpayment = 1
FROM rptledgeritem_qtrly rliq, rptledgeritem rli, rptledger rl, faas f 	
WHERE rli.rptledgerid = rl.objid 
  AND rli.objid = rliq.rptledgeritemid 
  AND rl.faasid = f.objid 
  AND ${filters}
  AND rl.state = 'APPROVED'
  AND rliq.state = 'OPEN' 
  AND ( rliq.year < $P{billtoyear} OR (rliq.year = $P{billtoyear} AND rliq.qtr <= $P{billtoqtr} ) )



[getItemsForPayment]
SELECT 
	t.rptledgerid, t.tdno, 
	CASE WHEN t.lastqtrpaid = 4 THEN t.lastyearpaid + 1 ELSE t.lastyearpaid END AS fromyear,
	CASE WHEN t.lastqtrpaid = 4 THEN 1 ELSE t.lastqtrpaid + 1 END AS fromqtr,
	$P{billtoyear} AS toyear,
	$P{billtoqtr} AS toqtr,
	SUM(t.basic) AS totalbasic,
	SUM(t.sef) AS totalsef,
	SUM(t.basic + t.sef + t.firecode) AS amount
FROM (
	SELECT
		rl.objid AS rptledgerid, f.tdno, 
		rl.lastyearpaid, rl.lastqtrpaid,
		SUM(rli.basic - rli.basicpaid - rli.basicdisc + 
		rli.basicint - rli.basicintpaid) AS basic,

		SUM(rli.sef - rli.sefpaid -  rli.sefdisc + 
		rli.sefint - rli.sefintpaid) AS sef,
		SUM(rli.firecode - rli.firecodepaid) AS firecode 
	FROM rptledger rl
		INNER JOIN faas f ON rl.faasid = f.objid 
		INNER JOIN rptledgeritem rli ON rl.objid = rli.rptledgerid
	WHERE ${filters}
	  AND rli.forpayment = 1
	  AND rli.state = 'OPEN'
	  GROUP BY rl.objid, f.tdno, rl.lastyearpaid, rl.lastqtrpaid

	UNION

	SELECT
		rl.objid AS rptledgerid, f.tdno, 
		rl.lastyearpaid, rl.lastqtrpaid,
		SUM(rliq.basic - rliq.basicpaid - rliq.basicdisc +
		rliq.basicint - rliq.basicintpaid ) AS basic, 
		SUM(rliq.sef - rliq.sefpaid - rliq.sefdisc + 
		rliq.sefint - rliq.sefintpaid) AS sef,
		SUM(rliq.firecode - rliq.firecodepaid) AS firecode 
	FROM rptledger rl
		INNER JOIN faas f ON rl.faasid = f.objid 
		INNER JOIN rptledgeritem rli ON rl.objid = rli.rptledgerid
		INNER JOIN rptledgeritem_qtrly rliq ON rli.objid = rliq.rptledgeritemid 
	WHERE ${filters}
	  AND rliq.forpayment = 1
	  AND rliq.state = 'OPEN'
	GROUP BY rl.objid, f.tdno, rl.lastyearpaid, rl.lastqtrpaid
) t
GROUP BY t.rptledgerid, t.tdno, t.lastyearpaid, t.lastqtrpaid



[insertPaidItemByLedgerId]
INSERT INTO cashreceiptitem_rpt
            (objid,
             rptreceiptid,
             rptledgerid,
             rptledgeritemid,
             rptledgeritemqtrlyid,
             barangayid,
             year,
             qtr,
             basic,
             basicint,
             basicdisc,
             basiccredit,
             basicamnesty,
             basicintamnesty,
             basicacct_objid,
             basicintacct_objid,
             sef,
             sefint,
             sefdisc,
             sefcredit,
             sefamnesty,
             sefintamnesty,
             sefacct_objid,
             sefintacct_objid,
             firecode,
             firecodeacct_objid,
             revtype,
             qtrly,
             partialled)
SELECT 
	$P{objid} + '-' + CONVERT(VARCHAR(4),rli.year) AS objid,
	$P{rptreceiptid} AS rptreceiptid,
	rl.objid AS rptledgerid,
	rli.objid AS rptledgeritemid,
	NULL AS rptledgeritemqtrlyid,
	rl.barangayid,
	rli.year,
	0 AS qtr,
	rli.basic - rli.basicpaid AS basic,
	rli.basicint - rli.basicintpaid  AS basicint,
	rli.basicdisc,
	rli.basiccredit,
	rli.basicamnesty,
	rli.basicintamnesty,
	rli.basicacct_objid,
	rli.basicintacct_objid,
	rli.sef - rli.sefpaid  AS sef,
	rli.sefint - rli.sefintpaid  AS  sefint,
	rli.sefdisc,
	rli.sefcredit,
	rli.sefamnesty,
	rli.sefintamnesty,
	rli.sefacct_objid,
	rli.sefintacct_objid,
	rli.firecode - rli.firecodepaid AS firecode,
	rli.firecodeacct_objid,
	rli.revtype,
	rli.qtrly,
	0 AS partialled
FROM rptledger rl
		INNER JOIN rptledgeritem rli ON rl.objid = rli.rptledgerid
WHERE rl.objid = $P{rptledgerid}
  AND rli.state = 'OPEN'
  AND rli.forpayment = 1

UNION ALL

SELECT 
	$P{objid} + $P{rptreceiptid} + '-' + CONVERT(VARCHAR(4),rliq.year) + CONVERT(VARCHAR(1),rliq.qtr) AS objid,
	$P{rptreceiptid} AS rptreceiptid,
	rl.objid AS rptledgerid,
	rli.objid AS rptledgeritemid,
	rliq.objid AS rptledgeritemqtrlyid,
	rl.barangayid,
	rliq.year,
	rliq.qtr,
	CASE WHEN rliq.partial = 1 THEN rliq.partialbasic ELSE rliq.basic - rliq.basicpaid END AS basic,
	CASE WHEN rliq.partial = 1 THEN rliq.partialbasicint ELSE rliq.basicint - rliq.basicintpaid END AS basicint,
	CASE WHEN rliq.partial = 1 THEN rliq.partialbasicdisc ELSE rliq.basicdisc END  AS basicdisc,
	rliq.basiccredit,
	rliq.basicamnesty,
	rliq.basicintamnesty,
	rli.basicacct_objid,
	rli.basicintacct_objid,
	CASE WHEN rliq.partial = 1 THEN rliq.partialsef ELSE rliq.sef - rliq.sefpaid END AS sef,
	CASE WHEN rliq.partial = 1 THEN rliq.partialsefint ELSE rliq.sefint - rliq.sefintpaid END AS sefint,
	CASE WHEN rliq.partial = 1 THEN rliq.partialsefdisc ELSE rliq.sefdisc END  AS sefdisc,
	rliq.sefcredit,
	rliq.sefamnesty,
	rliq.sefintamnesty,
	rli.sefacct_objid,
	rli.sefintacct_objid,
	rliq.firecode - rliq.firecodepaid AS firecode,
	rli.firecodeacct_objid,
	rliq.revtype,
	rli.qtrly,
	rliq.partial AS partialled 
FROM rptledger rl
		INNER JOIN rptledgeritem rli ON rl.objid = rli.rptledgerid
		INNER JOIN rptledgeritem_qtrly rliq ON rli.objid = rliq.rptledgeritemid 
WHERE rl.objid = $P{rptledgerid}
  AND rliq.state = 'OPEN'
  AND rliq.forpayment = 1   



[postPaymentToLedgerItem]
UPDATE rli SET
	rli.state = CASE WHEN rli.basicpaid + cr.basic >= rli.basic THEN 'CLOSED' ELSE rli.state END,
	rli.lastqtrpaid = CASE WHEN rli.basicpaid + cr.basic >= rli.basic THEN 4 ELSE 0 END,
	rli.basicpaid = rli.basicpaid + cr.basic,
	rli.basicintpaid = rli.basicintpaid + cr.basicint,
	rli.basicdisctaken = rli.basicdisctaken + cr.basicdisc,
	rli.basiccredit = rli.basiccredit + cr.basiccredit,
	
	rli.sefpaid = rli.sefpaid + cr.sef,
	rli.sefintpaid = rli.sefintpaid + cr.sefint,
	rli.sefdisctaken = rli.sefdisctaken + cr.sefdisc,
	rli.sefcredit = rli.sefcredit + cr.sefcredit,
	
	rli.firecodepaid = rli.firecodepaid + cr.firecode,
	rli.forpayment = 0
FROM rptledgeritem rli, cashreceiptitem_rpt cr 	
WHERE rli.rptledgerid = $P{rptledgerid}
  AND cr.rptreceiptid = $P{rptreceiptid}
  AND rli.objid = cr.rptledgeritemid 
  AND rli.qtrly = 0 
  


[postPaymentToQuarterlyLedgerItem]  
UPDATE rliq SET
	rliq.state = CASE WHEN rliq.basicpaid + cr.basic >= rliq.basic THEN 'CLOSED' ELSE rliq.state END,
	rliq.basicpaid = rliq.basicpaid + cr.basic,
	rliq.basicintpaid = rliq.basicintpaid + cr.basicint,
	rliq.basicdisctaken = rliq.basicdisctaken + cr.basicdisc,
	rliq.basiccredit = rliq.basiccredit + cr.basiccredit,
	
	rliq.sefpaid = rliq.sefpaid + cr.sef,
	rliq.sefintpaid = rliq.sefintpaid + cr.sefint,
	rliq.sefdisctaken = rliq.sefdisctaken + cr.sefdisc,
	rliq.sefcredit = rliq.sefcredit + cr.sefcredit,
	
	rliq.firecodepaid = rliq.firecodepaid + cr.firecode,
	rliq.forpayment = 0,
	rliq.partial = 0,
	rliq.partialbasic = 0,
	rliq.partialbasicint = 0,
	rliq.partialbasicdisc = 0,
	rliq.partialsef = 0,
	rliq.partialsefint = 0,
	rliq.partialsefdisc = 0
FROM rptledgeritem_qtrly rliq, cashreceiptitem_rpt cr 
WHERE rliq.rptledgerid = $P{rptledgerid}
  AND cr.rptreceiptid = $P{rptreceiptid}
  AND rliq.objid = cr.rptledgeritemqtrlyid 


[getQuarterlyPaymentsforLedgerItem]
SELECT cr.objid, cr.rptledgeritemid, cr.qtr  
FROM cashreceiptitem_rpt cr 
WHERE cr.rptreceiptid = $P{rptreceiptid} 
  AND cr.rptledgeritemqtrlyid IS NOT NULL


[applyQuarterlyPaymentToLedgerItem]  
UPDATE rli SET
	rli.basicpaid = rli.basicpaid + cr.basic,
	rli.basicintpaid = rli.basicintpaid + cr.basicint,
	rli.basicdisctaken = rli.basicdisctaken + cr.basicdisc,
	rli.basiccredit = rli.basiccredit + cr.basiccredit,
	
	rli.sefpaid = rli.sefpaid + cr.sef,
	rli.sefintpaid = rli.sefintpaid + cr.sefint,
	rli.sefdisctaken = rli.sefdisctaken + cr.sefdisc,
	rli.sefcredit = rli.sefcredit + cr.sefcredit,
	
	rli.firecodepaid = rli.firecodepaid + cr.firecode
FROM rptledgeritem_qtrly rliq, rptledgeritem rli, cashreceiptitem_rpt cr 	
WHERE cr.objid = $P{objid}
  AND cr.rptledgeritemqtrlyid = rliq.objid
  AND rliq.rptledgeritemid = rli.objid 


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



[updateLedgerYearQtrPaid]
UPDATE rptledger SET 
	lastyearpaid = $P{toyear},
	lastqtrpaid = $P{toqtr}
WHERE objid = $P{rptledgerid}	




[voidLedgerItemPayment]
UPDATE rli SET
	rli.state = 'OPEN',
	rli.lastqtrpaid = 0,
	rli.basicpaid = rli.basicpaid - cr.basic,
	rli.basicintpaid = rli.basicintpaid - cr.basicint,
	rli.basicdisctaken = rli.basicdisctaken - cr.basicdisc,
	rli.basiccredit = rli.basiccredit - cr.basiccredit,
	
	rli.sefpaid = rli.sefpaid - cr.sef,
	rli.sefintpaid = rli.sefintpaid - cr.sefint,
	rli.sefdisctaken = rli.sefdisctaken - cr.sefdisc,
	rli.sefcredit = rli.sefcredit - cr.sefcredit,
	
	rli.firecodepaid = rli.firecodepaid - cr.firecode,
	rli.forpayment = 0
FROM  rptledgeritem rli, cashreceiptitem_rpt cr 	
WHERE cr.rptreceiptid = $P{rptreceiptid}
  AND rli.objid = cr.rptledgeritemid
  AND cr.rptledgeritemqtrlyid IS NULL 


[voidQuarterlyItemPayment]  
UPDATE rliq SET
	rliq.state = 'OPEN',
	rliq.basicpaid = rliq.basicpaid - cr.basic,
	rliq.basicintpaid = rliq.basicintpaid - cr.basicint,
	rliq.basicdisctaken = rliq.basicdisctaken - cr.basicdisc,
	rliq.basiccredit = rliq.basiccredit - cr.basiccredit,
	
	rliq.sefpaid = rliq.sefpaid - cr.sef,
	rliq.sefintpaid = rliq.sefintpaid - cr.sefint,
	rliq.sefdisctaken = rliq.sefdisctaken - cr.sefdisc,
	rliq.sefcredit = rliq.sefcredit - cr.sefcredit,
	
	rliq.firecodepaid = rliq.firecodepaid - cr.firecode,
	rliq.forpayment = 0
FROM rptledgeritem_qtrly rliq, cashreceiptitem_rpt cr 	
WHERE cr.rptreceiptid = $P{rptreceiptid}
  AND rliq.objid = cr.rptledgeritemqtrlyid 




[getAppliedQuarterlyPaymentsOnLedgerItem]
SELECT cr.objid, cr.rptledgeritemid, cr.qtr  
FROM cashreceiptitem_rpt cr 
WHERE cr.rptreceiptid = $P{rptreceiptid} 
  AND cr.rptledgeritemqtrlyid IS NOT NULL
ORDER BY cr.year DESC, cr.qtr DESC 


[voidAppliedQuarterlyPaymentsOnLedgerItem]  
UPDATE rli SET
	rli.state = 'OPEN',
	rli.basicpaid = rli.basicpaid - cr.basic,
	rli.basicintpaid = rli.basicintpaid - cr.basicint,
	rli.basicdisctaken = rli.basicdisctaken - cr.basicdisc,
	
	rli.sefpaid = rli.sefpaid - cr.sef,
	rli.sefintpaid = rli.sefintpaid - cr.sefint,
	rli.sefdisctaken = rli.sefdisctaken - cr.sefdisc,
	
	rli.firecodepaid = rli.firecodepaid - cr.firecode,
	rli.lastqtrpaid = $P{qtr} - 1
FROM rptledgeritem rli, cashreceiptitem_rpt cr 	
WHERE cr.objid = $P{objid}
  AND cr.rptledgeritemid = rli.objid 


[getLedgersMinPaidYearAndQtr]
SELECT cr.rptledgerid, cr.year AS minyear, MIN(cr.qtr) AS minqtr 
FROM cashreceiptitem_rpt cr 
WHERE cr.rptreceiptid = $P{rptreceiptid} 
GROUP BY cr.rptledgerid, cr.year 
ORDER BY cr.rptledgerid, cr.year DESC 


[voidReceiptItems]
UPDATE cashreceiptitem_rpt SET
	rptledgeritemid = null, 
	rptledgeritemqtrlyid = null 
WHERE rptreceiptid = $P{rptreceiptid}	



[getSummarizedCashReceiptItems]
SELECT 
	t.item_objid, t.item_code, t.item_title,
	t.item_fund_objid, t.item_fund_code, t.item_fund_title,
	SUM(t.amount) AS amount
FROM (
	SELECT
		rli.basicacct_objid AS item_objid,
		rb.code AS item_code, 
		rb.title AS item_title,
		rb.fund_objid AS item_fund_objid, rb.fund_code AS item_fund_code, rb.fund_title AS item_fund_title,
		rli.basic - rli.basicpaid - rli.basicdisc AS amount
	FROM rptledger rl
		INNER JOIN rptledgeritem rli ON rl.objid = rli.rptledgerid
		INNER JOIN revenueitem rb ON rli.basicacct_objid = rb.objid 
	WHERE ${filter}
	  AND rli.forpayment = 1
	  AND rli.state = 'OPEN'
	  
	UNION ALL

	SELECT
		rli.basicintacct_objid AS item_objid,
		rb.code AS item_code,
		rb.title AS item_title,
		rb.fund_objid AS item_fund_objid, rb.fund_code AS item_fund_code, rb.fund_title AS item_fund_title,
		rli.basicint - rli.basicintpaid  AS amount
	FROM rptledger rl
		INNER JOIN rptledgeritem rli ON rl.objid = rli.rptledgerid
		INNER JOIN revenueitem rb ON rli.basicintacct_objid = rb.objid 
	WHERE ${filter}
	  AND rli.forpayment = 1
	  AND rli.state = 'OPEN'
	  
	UNION ALL
	
	SELECT
		rli.sefacct_objid AS item_objid,
		rb.code AS item_code,
		rb.title AS item_title,
		rb.fund_objid AS item_fund_objid, rb.fund_code AS item_fund_code, rb.fund_title AS item_fund_title,
		rli.sef - rli.sefpaid - rli.sefdisc AS amount
	FROM rptledger rl
		INNER JOIN rptledgeritem rli ON rl.objid = rli.rptledgerid
		INNER JOIN revenueitem rb ON rli.sefacct_objid = rb.objid 
	WHERE ${filter}
	  AND rli.forpayment = 1
	  AND rli.state = 'OPEN'
	  
	UNION ALL

	SELECT
		rli.sefintacct_objid AS item_objid,
		rb.code AS item_code,
		rb.title AS item_title,
		rb.fund_objid AS item_fund_objid, rb.fund_code AS item_fund_code, rb.fund_title AS item_fund_title,
		rli.sefint - rli.sefintpaid  AS amount
	FROM rptledger rl
		INNER JOIN rptledgeritem rli ON rl.objid = rli.rptledgerid
		INNER JOIN revenueitem rb ON rli.sefintacct_objid = rb.objid 
	WHERE ${filter}
	  AND rli.forpayment = 1	
	  AND rli.state = 'OPEN'

	UNION ALL
	
	SELECT
		rli.firecodeacct_objid AS item_objid,
		rb.code AS item_code,
		rb.title AS item_title,
		rb.fund_objid AS item_fund_objid, rb.fund_code AS item_fund_code, rb.fund_title AS item_fund_title,
		rli.firecode - rli.firecodepaid AS amount
	FROM rptledger rl
		INNER JOIN rptledgeritem rli ON rl.objid = rli.rptledgerid
		INNER JOIN revenueitem rb ON rli.firecodeacct_objid = rb.objid 
	WHERE ${filter}
	  AND rli.forpayment = 1	
	  AND rli.state = 'OPEN'
	  
	UNION ALL
	
	SELECT
		rli.basicacct_objid AS item_objid,
		rb.code AS item_code,
		rb.title AS item_title,
		rb.fund_objid AS item_fund_objid, rb.fund_code AS item_fund_code, rb.fund_title AS item_fund_title,
		CASE 
			WHEN rliq.partial = 0 THEN
				rliq.basic - rliq.basicpaid - rliq.basicdisc  
			ELSE
				rliq.partialbasic
		END AS amount
	FROM rptledger rl
		INNER JOIN rptledgeritem rli ON rl.objid = rli.rptledgerid
		INNER JOIN rptledgeritem_qtrly rliq ON rli.objid = rliq.rptledgeritemid
		INNER JOIN revenueitem rb ON rli.basicacct_objid = rb.objid 
	WHERE ${filter}
	  AND rliq.forpayment = 1
	  AND rliq.state = 'OPEN'
	  
	UNION ALL

	SELECT
		rli.basicintacct_objid AS item_objid,
		rb.code AS item_code,
		rb.title AS item_title,
		rb.fund_objid AS item_fund_objid, rb.fund_code AS item_fund_code, rb.fund_title AS item_fund_title,
		CASE 
			WHEN rliq.partial = 0 THEN
				rliq.basicint - rliq.basicintpaid 
			ELSE
				rliq.partialbasicint
		END AS amount
	FROM rptledger rl
		INNER JOIN rptledgeritem rli ON rl.objid = rli.rptledgerid
		INNER JOIN rptledgeritem_qtrly rliq ON rli.objid = rliq.rptledgeritemid
		INNER JOIN revenueitem rb ON rli.basicintacct_objid = rb.objid 
	WHERE ${filter}
	  AND rliq.forpayment = 1
	  AND rliq.state = 'OPEN'
	  
	UNION ALL
	
	SELECT
		rli.sefacct_objid AS item_objid,
		rb.code AS item_code,
		rb.title AS item_title,
		rb.fund_objid AS item_fund_objid, rb.fund_code AS item_fund_code, rb.fund_title AS item_fund_title,
		CASE 
			WHEN rliq.partial = 0 THEN
				rliq.sef - rliq.sefpaid - rliq.sefdisc
			ELSE
				rliq.partialsef
		END AS amount
	FROM rptledger rl
		INNER JOIN rptledgeritem rli ON rl.objid = rli.rptledgerid
		INNER JOIN rptledgeritem_qtrly rliq ON rli.objid = rliq.rptledgeritemid
		INNER JOIN revenueitem rb ON rli.sefacct_objid = rb.objid 
	WHERE ${filter}
	  AND rliq.forpayment = 1
	  AND rliq.state = 'OPEN'
	  
	UNION ALL

	SELECT
		rli.sefintacct_objid AS item_objid,
		rb.code AS item_code,
		rb.title AS item_title,
		rb.fund_objid AS item_fund_objid, rb.fund_code AS item_fund_code, rb.fund_title AS item_fund_title,
		CASE 
			WHEN rliq.partial = 0 THEN
				rliq.sefint - rliq.sefintpaid 
			ELSE
				rliq.partialsefint
		END AS amount
	FROM rptledger rl
		INNER JOIN rptledgeritem rli ON rl.objid = rli.rptledgerid
		INNER JOIN rptledgeritem_qtrly rliq ON rli.objid = rliq.rptledgeritemid
		INNER JOIN revenueitem rb ON rli.sefintacct_objid = rb.objid 
	WHERE ${filter}
	  AND rliq.forpayment = 1
	  AND rliq.state = 'OPEN'
	  
	UNION ALL
	
	SELECT
		rli.firecodeacct_objid AS item_objid,
		rb.code AS item_code,
		rb.title AS item_title,
		rb.fund_objid AS item_fund_objid, rb.fund_code AS item_fund_code, rb.fund_title AS item_fund_title,
		rliq.firecode - rli.firecodepaid AS amount
	FROM rptledger rl
		INNER JOIN rptledgeritem rli ON rl.objid = rli.rptledgerid
		INNER JOIN rptledgeritem_qtrly rliq ON rli.objid = rliq.rptledgeritemid
		INNER JOIN revenueitem rb ON rli.firecodeacct_objid = rb.objid 
	WHERE ${filter}
	  AND rliq.forpayment = 1	
	  AND rliq.state = 'OPEN'
	  AND rliq.firecode > 0.0
  
) t	  
GROUP BY t.item_objid, t.item_code, t.item_title, t.item_fund_objid, t.item_fund_code, t.item_fund_title
	



[getItemsForPrinting]	
SELECT
	t.rptledgerid,
	t.tdno,
	(SELECT owner_name FROM faas WHERE objid = t.faasid ) AS owner_name, 
	t.rputype,
	t.totalav, t.fullpin,
	t.cadastrallotno,
	t.classcode,
	t.barangay,
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
	END + (CASE WHEN t.partialled = 0 THEN '' ELSE '*P*' END) AS period,
	SUM(t.basic) AS basic, 
	SUM(t.basicdisc) AS basicdisc, 
	SUM(t.basicint) AS basicint, 
	SUM(t.basicdp) AS basicdp, 
	SUM(t.basicnet) AS basicnet,
	SUM(t.sef) AS sef,  
	SUM(t.sefdisc) AS sefdisc, 
	SUM(t.sefint) AS sefint, 
	SUM(t.sefdp) AS sefdp, 
	SUM(t.sefnet) AS sefnet,
	SUM(t.firecode) AS firecode,
	SUM(t.amount) AS amount
FROM ( 
	SELECT
		cri.rptledgerid,
		f.objid AS faasid,
		f.tdno,
		r.rputype,
		r.totalav, r.fullpin,
		rp.cadastrallotno,
		pc.code AS classcode,
		b.name AS barangay,
		MIN(cri.year) AS fromyear,
		(SELECT MIN(CASE WHEN qtr = 0 THEN 1 ELSE qtr END)  FROM cashreceiptitem_rpt WHERE rptreceiptid = cri.rptreceiptid AND YEAR = MIN(cri.year) ) AS fromqtr,
		MAX(cri.year) AS toyear,
		(SELECT MAX(CASE WHEN qtr = 0 THEN 4 ELSE qtr END) FROM cashreceiptitem_rpt WHERE rptreceiptid = cri.rptreceiptid AND YEAR = MIN(cri.year) ) AS toqtr,
		SUM(basic) AS basic,
		SUM(basicint) AS basicint,
		SUM(basicdisc) AS basicdisc,
		SUM(basicint - basicdisc) AS basicdp,
		SUM(basic + basicint - basicdisc) AS basicnet,
		SUM(sef) AS sef,
		SUM(sefint) AS sefint,
		SUM(sefdisc) AS sefdisc,
		SUM(sefint - sefdisc) AS sefdp,
		SUM(sef + sefint - sefdisc) AS sefnet,
		SUM(firecode) AS firecode,
		SUM(basic + basicint - basicdisc + sef + sefint - sefdisc ) AS amount,
		MAX(cri.partialled) AS partialled 
	FROM cashreceiptitem_rpt cri
		INNER JOIN rptledger rl ON cri.rptledgerid = rl.objid 
		INNER JOIN faas f ON rl.faasid = f.objid 
		INNER JOIN rpu r ON f.rpuid = r.objid 
		INNER JOIN propertyclassification pc ON r.classification_objid = pc.objid 
		INNER JOIN realproperty rp ON r.realpropertyid = rp.objid 
		INNER JOIN barangay b ON rp.barangayid = b.objid 
	WHERE cri.rptreceiptid = $P{rptreceiptid}
	GROUP BY 
		cri.rptreceiptid,
		cri.rptledgerid, 
		f.objid,
		f.tdno, 
		r.rputype, r.totalav, r.fullpin,
		rp.cadastrallotno,
		pc.code, b.name
	) t
GROUP BY 
		t.rptledgerid,
		t.faasid, 
		t.tdno,
		t.rputype,
		t.totalav, t.fullpin,
		t.cadastrallotno,
		t.classcode,
		t.barangay,
		t.partialled





[findRevenueItemById]
SELECT 
	objid, code, title, 
	fund_objid, fund_code, fund_title
FROM revenueitem 
WHERE objid = $P{objid}



[getNoLedgerItemsForPrinting]	
SELECT
	t.*,
	(SELECT CONVERT(VARCHAR(1), MIN(CASE WHEN qtr = 0 THEN 1 ELSE qtr END)) FROM cashreceiptitem_rpt WHERE rptreceiptid = t.rptreceiptid AND year = t.minyear) + 
	'Q,' + CONVERT(VARCHAR(4),t.minyear) + ' - ' + 
	(SELECT CONVERT(VARCHAR(1), MAX(CASE WHEN qtr = 0 THEN 4 ELSE qtr END)) FROM cashreceiptitem_rpt WHERE rptreceiptid = t.rptreceiptid AND year = t.maxyear) + 
	'Q,' + CONVERT(VARCHAR(4),t.maxyear) AS	period 
FROM (
	SELECT
		cri.rptreceiptid,
		nl.tdno,
		cr.payer_name AS owner_name,
		nl.rputype,
		nl.originalav  AS totalav,
		nl.pin AS fullpin,
		nl.cadastrallotno AS cadastrallotno,
		nl.classification_objid AS classcode,
		b.name AS barangay,
		MIN(cri.year) AS minyear,
		MAX(cri.year) AS maxyear,
		SUM(basic) AS basic, 
		SUM(basicdisc) AS basicdisc, 
		SUM(basicint) AS basicint, 
		SUM(basicint - basicdisc) AS basicdp, 
		SUM(basic + basicint - basicdisc) AS basicnet,
		SUM(sef) AS sef,  
		SUM(sefdisc) AS sefdisc, 
		SUM(sefint) AS sefint, 
		SUM(sefint - sefdisc) AS sefdp, 
		SUM(sef + sefint - sefdisc) AS sefnet,
		SUM(firecode) AS firecode,
		SUM(basic + basicint- basicdisc + sef + sefint - sefdisc + firecode) AS amount
	FROM cashreceipt cr
		INNER JOIN cashreceiptitem_rpt cri ON cr.objid = cri.rptreceiptid
		INNER JOIN cashreceiptitem_rpt_noledger nl ON cri.objid = nl.objid 
		INNER JOIN barangay b ON nl.barangay_objid = b.objid 
	WHERE cr.objid = $P{objid}
	GROUP BY 
		cri.rptreceiptid,
		cr.payer_name,
		nl.tdno,
		nl.rputype,
		nl.originalav,
		nl.pin,
		nl.cadastrallotno,
		nl.classification_objid ,
		b.name
) t