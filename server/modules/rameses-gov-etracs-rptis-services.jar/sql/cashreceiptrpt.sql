[resetItemForPaymentFlag]
UPDATE rptledgeritem rli, rptledger rl, faas f SET
	rli.forpayment = 0
WHERE rli.rptledgerid = rl.objid 
  AND rl.faasid = f.objid 
  AND ${filters}
  AND rl.state = 'APPROVED'
  AND rli.state = 'OPEN' 
  AND rli.forpayment = 1


[resetQuarterlyItemForPaymentFlag]
UPDATE rptledgeritem_qtrly rliq, rptledgeritem rli, rptledger rl, faas f SET
	rliq.forpayment = 0 
WHERE rli.rptledgerid = rl.objid 
  AND rli.objid = rliq.rptledgeritemid 
  AND rl.faasid = f.objid 
  AND ${filters}
  AND rl.state = 'APPROVED'
  AND rliq.state = 'OPEN' 
  AND rliq.forpayment = 1


[setItemForPaymentFlag]
UPDATE rptledgeritem rli, rptledger rl, faas f SET
	rli.forpayment = 1
WHERE ${filters}
  AND rli.rptledgerid = rl.objid 
  AND rl.faasid = f.objid 
  AND rl.state = 'APPROVED'
  AND rli.year <= $P{billtoyear}
  AND rli.state = 'OPEN' 
  AND rli.qtrly = 0 


[setQuarterlyItemForPaymentFlag]
UPDATE rptledgeritem_qtrly rliq, rptledgeritem rli, rptledger rl, faas f SET
	rliq.forpayment = 1
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
	MIN(t.fromyear) AS fromyear, MIN(t.fromqtr) AS fromqtr, 
	$P{billtoyear} AS toyear, $P{billtoqtr} AS toqtr,  
	SUM(t.amount) AS amount,
	CASE
		WHEN MIN(t.fromyear) = $P{billtoyear} AND MIN(t.fromqtr) = 1 AND $P{billtoqtr} = 4 
			THEN CONCAT('FULL ', $P{billtoyear})
		WHEN MIN(t.fromyear) = $P{billtoyear} AND MIN(t.fromqtr) = $P{billtoqtr}
			THEN CONCAT($P{billtoqtr}, 'Q, ', $P{billtoyear})
		WHEN MIN(t.fromyear) = $P{billtoyear} 
			THEN CONCAT(MIN(t.fromqtr), $P{billtoqtr}, 'Q, ', $P{billtoyear})

		WHEN MIN(t.fromqtr) = 1 AND $P{billtoqtr} = 4
			THEN CONCAT('FULL ', MIN(t.fromyear), '-', $P{billtoyear})
		WHEN MIN(t.fromqtr) = 1 AND $P{billtoqtr} <> 4
			THEN CONCAT(MIN(t.fromyear), '-', $P{billtoqtr}, 'Q,', $P{billtoyear})
		WHEN MIN(t.fromqtr) <> 1 AND $P{billtoqtr} = 4
			THEN CONCAT(MIN(t.fromqtr), 'Q,', MIN(t.fromyear), '-',$P{billtoyear})
		ELSE
			CONCAT(MIN(t.fromqtr), 'Q,', MIN(t.fromyear), '-', $P{billtoqtr}, 'Q,', $P{billtoyear})
	END AS period
FROM (
	SELECT
		rl.objid AS rptledgerid, f.tdno, 
		CASE WHEN rl.lastqtrpaid = 4 THEN rl.lastyearpaid + 1 ELSE rl.lastyearpaid END AS fromyear,
		CASE WHEN rl.lastqtrpaid = 4 THEN 1 ELSE rl.lastqtrpaid + 1 END AS fromqtr,
		rli.year, 0 AS qtr,
		rli.basic - rli.basicpaid - rli.basicamnesty + rli.basicint - rli.basicintpaid - rli.basicintamnesty + 
		rli.sef - rli.sefpaid - rli.sefamnesty + rli.sefint - rli.sefintpaid - rli.sefintamnesty  +
		rli.firecode - rli.firecodepaid AS amount
	FROM rptledger rl
		INNER JOIN faas f ON rl.faasid = f.objid 
		INNER JOIN rptledgeritem rli ON rl.objid = rli.rptledgerid
	WHERE ${filters}
	  AND rli.forpayment = 1

	UNION

	SELECT
		rl.objid AS rptledgerid, f.tdno, 
		CASE WHEN rl.lastqtrpaid = 4 THEN rl.lastyearpaid + 1 ELSE rl.lastyearpaid END AS fromyear,
		CASE WHEN rl.lastqtrpaid = 4 THEN 1 ELSE rl.lastqtrpaid + 1 END AS fromqtr,
		rliq.year, rliq.qtr, 
		rliq.basic - rliq.basicpaid - rliq.basicamnesty + rliq.basicint - rliq.basicintpaid - rliq.basicintamnesty + 
		rliq.sef - rliq.sefpaid - rliq.sefamnesty + rliq.sefint - rliq.sefintpaid - rliq.sefintamnesty  +
		rliq.firecode - rliq.firecodepaid AS amount
	FROM rptledger rl
		INNER JOIN faas f ON rl.faasid = f.objid 
		INNER JOIN rptledgeritem rli ON rl.objid = rli.rptledgerid
		INNER JOIN rptledgeritem_qtrly rliq ON rli.objid = rliq.rptledgeritemid 
	WHERE ${filters}
	  AND rliq.forpayment = 1
) t
GROUP BY t.rptledgerid, t.tdno




[insertPaidItemByLedgerId]
INSERT INTO `cashreceiptitem_rpt`
            (`objid`,
             `rptreceiptid`,
             `rptledgerid`,
             `rptledgeritemid`,
             `rptledgeritemqtrlyid`,
             `barangayid`,
             `year`,
             `qtr`,
             `basic`,
             `basicint`,
             `basicdisc`,
             `basiccredit`,
             `basicamnesty`,
             `basicintamnesty`,
             `basicacct_objid`,
             `basicintacct_objid`,
             `sef`,
             `sefint`,
             `sefdisc`,
             `sefcredit`,
             `sefamnesty`,
             `sefintamnesty`,
             `sefacct_objid`,
             `sefintacct_objid`,
             `firecode`,
             `firecodeacct_objid`,
             `revtype`,
             `qtrly`)
SELECT 
	CONCAT($P{objid},'-', rli.year) AS objid,
	$P{rptreceiptid} AS rptreceiptid,
	rl.objid AS rptledgerid,
	rli.objid AS rptledgeritemid,
	NULL AS rptledgeritemqtrlyid,
	rl.barangayid,
	rli.year,
	0 AS qtr,
	rli.basic - rli.basicpaid - rli.basicamnesty AS basic,
	rli.basicint - rli.basicintpaid - rli.basicintamnesty AS basicint,
	rli.basicdisc,
	rli.basiccredit,
	rli.basicamnesty,
	rli.basicintamnesty,
	rli.basicacct_objid,
	rli.basicintacct_objid,
	rli.sef - rli.sefpaid - rli.sefamnesty AS sef,
	rli.sefint - rli.sefintpaid - rli.sefintamnesty AS  sefint,
	rli.sefdisc,
	rli.sefcredit,
	rli.sefamnesty,
	rli.sefintamnesty,
	rli.sefacct_objid,
	rli.sefintacct_objid,
	rli.firecode - rli.firecodepaid AS firecode,
	rli.firecodeacct_objid,
	rli.revtype,
	rli.qtrly
FROM rptledger rl
		INNER JOIN rptledgeritem rli ON rl.objid = rli.rptledgerid
WHERE rl.objid = $P{rptledgerid}
  AND rli.state = 'OPEN'
  AND rli.forpayment = 1 

UNION ALL

SELECT 
	CONCAT($P{objid},$P{rptreceiptid},'-',rliq.qtr) AS objid,
	$P{rptreceiptid} AS rptreceiptid,
	rl.objid AS rptledgerid,
	rli.objid AS rptledgeritemid,
	rliq.objid AS rptledgeritemqtrlyid,
	rl.barangayid,
	rliq.year,
	rliq.qtr,
	rliq.basic - rliq.basicpaid - rliq.basicamnesty AS basic,
	rliq.basicint - rliq.basicintpaid - rliq.basicintamnesty AS basicint,
	rliq.basicdisc,
	rliq.basiccredit,
	rliq.basicamnesty,
	rliq.basicintamnesty,
	rli.basicacct_objid,
	rli.basicintacct_objid,
	rliq.sef - rliq.sefpaid - rliq.sefamnesty AS sef,
	rliq.sefint - rliq.sefintpaid - rliq.sefintamnesty AS  sefint,
	rliq.sefdisc,
	rliq.sefcredit,
	rliq.sefamnesty,
	rliq.sefintamnesty,
	rli.sefacct_objid,
	rli.sefintacct_objid,
	rliq.firecode - rliq.firecodepaid AS firecode,
	rli.firecodeacct_objid,
	rliq.revtype,
	rli.qtrly
FROM rptledger rl
		INNER JOIN rptledgeritem rli ON rl.objid = rli.rptledgerid
		INNER JOIN rptledgeritem_qtrly rliq ON rli.objid = rliq.rptledgeritemid 
WHERE rl.objid = $P{rptledgerid}
  AND rliq.state = 'OPEN'
  AND rliq.forpayment = 1   



[postPaymentToLedgerItem]
UPDATE rptledgeritem rli, cashreceiptitem_rpt cr SET
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
WHERE rli.rptledgerid = $P{rptledgerid}
  AND cr.rptreceiptid = $P{rptreceiptid}
  AND rli.objid = cr.rptledgeritemid 
  AND rli.qtrly = 0 
  


[postPaymentToQuarterlyLedgerItem]  
UPDATE rptledgeritem_qtrly rliq, cashreceiptitem_rpt cr SET
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
	rliq.forpayment = 0
WHERE rliq.rptledgerid = $P{rptledgerid}
  AND cr.rptreceiptid = $P{rptreceiptid}
  AND rliq.objid = cr.rptledgeritemqtrlyid 


[getQuarterlyPaymentsforLedgerItem]
SELECT cr.objid, cr.rptledgeritemid, cr.qtr  
FROM cashreceiptitem_rpt cr 
WHERE cr.rptreceiptid = $P{rptreceiptid} 
  AND cr.rptledgeritemqtrlyid IS NOT NULL


[applyQuarterlyPaymentToLedgerItem]  
UPDATE rptledgeritem_qtrly rliq, rptledgeritem rli, cashreceiptitem_rpt cr SET
	rli.basicpaid = rli.basicpaid + cr.basic,
	rli.basicintpaid = rli.basicintpaid + cr.basicint,
	rli.basicdisctaken = rli.basicdisctaken + cr.basicdisc,
	rli.basiccredit = rli.basiccredit + cr.basiccredit,
	
	rli.sefpaid = rli.sefpaid + cr.sef,
	rli.sefintpaid = rli.sefintpaid + cr.sefint,
	rli.sefdisctaken = rli.sefdisctaken + cr.sefdisc,
	rli.sefcredit = rli.sefcredit + cr.sefcredit,
	
	rli.firecodepaid = rli.firecodepaid + cr.firecode
WHERE cr.objid = $P{objid}
  AND cr.rptledgeritemqtrlyid = rliq.objid
  AND rliq.rptledgeritemid = rli.objid 


[updateLedgerItemQuarterlyPaidInfo]
UPDATE rptledgeritem rli SET
	rli.state = CASE WHEN NOT EXISTS (
				  		SELECT *
				  		FROM rptledgeritem_qtrly 
				  		WHERE rptledgeritemid = rli.objid AND state = 'OPEN'
				  	) 
					THEN 'CLOSED' ELSE 'OPEN' END,					
	rli.lastqtrpaid = IFNULL((SELECT MAX(qtr) FROM rptledgeritem_qtrly WHERE rptledgeritemid = rli.objid AND (basicpaid > 0  OR state = 'CLOSED')),0)
WHERE rli.rptledgerid = $P{rptledgerid} 
  AND rli.qtrly = 1 


[updateLedgerYearQtrPaid]
UPDATE rptledger SET 
	lastyearpaid = $P{toyear},
	lastqtrpaid = $P{toqtr}
WHERE objid = $P{rptledgerid}	




[voidLedgerItemPayment]
UPDATE rptledgeritem rli, cashreceiptitem_rpt cr SET
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
WHERE cr.rptreceiptid = $P{rptreceiptid}
  AND rli.objid = cr.rptledgeritemid
  AND cr.rptledgeritemqtrlyid IS NULL 


[voidQuarterlyItemPayment]  
UPDATE rptledgeritem_qtrly rliq, cashreceiptitem_rpt cr SET
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
WHERE cr.rptreceiptid = $P{rptreceiptid}
  AND rliq.objid = cr.rptledgeritemqtrlyid 




[getAppliedQuarterlyPaymentsOnLedgerItem]
SELECT cr.objid, cr.rptledgeritemid, cr.qtr  
FROM cashreceiptitem_rpt cr 
WHERE cr.rptreceiptid = $P{rptreceiptid} 
  AND cr.rptledgeritemqtrlyid IS NOT NULL
ORDER BY cr.year DESC, cr.qtr DESC 


[voidAppliedQuarterlyPaymentsOnLedgerItem]  
UPDATE rptledgeritem rli, cashreceiptitem_rpt cr SET
	rli.state = 'OPEN',
	rli.basicpaid = rli.basicpaid - cr.basic,
	rli.basicintpaid = rli.basicintpaid - cr.basicint,
	rli.basicdisctaken = rli.basicdisctaken - cr.basicdisc,
	
	rli.sefpaid = rli.sefpaid - cr.sef,
	rli.sefintpaid = rli.sefintpaid - cr.sefint,
	rli.sefdisctaken = rli.sefdisctaken - cr.sefdisc,
	
	rli.firecodepaid = rli.firecodepaid - cr.firecode,
	rli.lastqtrpaid = $P{qtr} - 1
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
		rli.basic - rli.basicpaid - rli.basicamnesty AS amount
	FROM rptledger rl
		INNER JOIN rptledgeritem rli ON rl.objid = rli.rptledgerid
		INNER JOIN revenueitem rb ON rli.basicacct_objid = rb.objid 
	WHERE ${filter}
	  AND rli.forpayment = 1
	  
	UNION ALL

	SELECT
		rli.basicintacct_objid AS item_objid,
		rb.code AS item_code,
		rb.title AS item_title,
		rb.fund_objid AS item_fund_objid, rb.fund_code AS item_fund_code, rb.fund_title AS item_fund_title,
		rli.basicint - rli.basicintpaid - rli.basicintamnesty AS amount
	FROM rptledger rl
		INNER JOIN rptledgeritem rli ON rl.objid = rli.rptledgerid
		INNER JOIN revenueitem rb ON rli.basicintacct_objid = rb.objid 
	WHERE ${filter}
	  AND rli.forpayment = 1
	  
	UNION ALL
	
	SELECT
		rli.sefacct_objid AS item_objid,
		rb.code AS item_code,
		rb.title AS item_title,
		rb.fund_objid AS item_fund_objid, rb.fund_code AS item_fund_code, rb.fund_title AS item_fund_title,
		rli.sef - rli.sefpaid - rli.sefamnesty AS amount
	FROM rptledger rl
		INNER JOIN rptledgeritem rli ON rl.objid = rli.rptledgerid
		INNER JOIN revenueitem rb ON rli.sefacct_objid = rb.objid 
	WHERE ${filter}
	  AND rli.forpayment = 1
	  
	UNION ALL

	SELECT
		rli.sefintacct_objid AS item_objid,
		rb.code AS item_code,
		rb.title AS item_title,
		rb.fund_objid AS item_fund_objid, rb.fund_code AS item_fund_code, rb.fund_title AS item_fund_title,
		rli.sefint - rli.sefintpaid - rli.sefintamnesty AS amount
	FROM rptledger rl
		INNER JOIN rptledgeritem rli ON rl.objid = rli.rptledgerid
		INNER JOIN revenueitem rb ON rli.sefintacct_objid = rb.objid 
	WHERE ${filter}
	  AND rli.forpayment = 1	
	  
	UNION ALL
	
	SELECT
		rli.firecodeacct_objid AS item_objid,
		rb.code AS item_code,
		rb.title AS item_title,
		rb.fund_objid AS item_fund_objid, rb.fund_code AS item_fund_code, rb.fund_title AS item_fund_title,
		rli.firecode AS amount
	FROM rptledger rl
		INNER JOIN rptledgeritem rli ON rl.objid = rli.rptledgerid
		INNER JOIN revenueitem rb ON rli.firecodeacct_objid = rb.objid 
	WHERE ${filter}
	  AND rli.forpayment = 1	
	  
	UNION ALL
	
	SELECT
		rli.basicacct_objid AS item_objid,
		rb.code AS item_code,
		rb.title AS item_title,
		rb.fund_objid AS item_fund_objid, rb.fund_code AS item_fund_code, rb.fund_title AS item_fund_title,
		rliq.basic - rliq.basicpaid - rliq.basicamnesty AS amount
	FROM rptledger rl
		INNER JOIN rptledgeritem rli ON rl.objid = rli.rptledgerid
		INNER JOIN rptledgeritem_qtrly rliq ON rli.objid = rliq.rptledgeritemid
		INNER JOIN revenueitem rb ON rli.basicacct_objid = rb.objid 
	WHERE ${filter}
	  AND rliq.forpayment = 1
	  
	UNION ALL

	SELECT
		rli.basicintacct_objid AS item_objid,
		rb.code AS item_code,
		rb.title AS item_title,
		rb.fund_objid AS item_fund_objid, rb.fund_code AS item_fund_code, rb.fund_title AS item_fund_title,
		rliq.basicint - rliq.basicintpaid - rliq.basicintamnesty AS amount
	FROM rptledger rl
		INNER JOIN rptledgeritem rli ON rl.objid = rli.rptledgerid
		INNER JOIN rptledgeritem_qtrly rliq ON rli.objid = rliq.rptledgeritemid
		INNER JOIN revenueitem rb ON rli.basicintacct_objid = rb.objid 
	WHERE ${filter}
	  AND rliq.forpayment = 1
	  
	UNION ALL
	
	SELECT
		rli.sefacct_objid AS item_objid,
		rb.code AS item_code,
		rb.title AS item_title,
		rb.fund_objid AS item_fund_objid, rb.fund_code AS item_fund_code, rb.fund_title AS item_fund_title,
		rliq.sef - rliq.sefpaid - rliq.sefamnesty AS amount
	FROM rptledger rl
		INNER JOIN rptledgeritem rli ON rl.objid = rli.rptledgerid
		INNER JOIN rptledgeritem_qtrly rliq ON rli.objid = rliq.rptledgeritemid
		INNER JOIN revenueitem rb ON rli.sefacct_objid = rb.objid 
	WHERE ${filter}
	  AND rliq.forpayment = 1
	  
	UNION ALL

	SELECT
		rli.sefintacct_objid AS item_objid,
		rb.code AS item_code,
		rb.title AS item_title,
		rb.fund_objid AS item_fund_objid, rb.fund_code AS item_fund_code, rb.fund_title AS item_fund_title,
		rliq.sefint - rliq.sefintpaid - rliq.sefintamnesty AS amount
	FROM rptledger rl
		INNER JOIN rptledgeritem rli ON rl.objid = rli.rptledgerid
		INNER JOIN rptledgeritem_qtrly rliq ON rli.objid = rliq.rptledgeritemid
		INNER JOIN revenueitem rb ON rli.sefintacct_objid = rb.objid 
	WHERE ${filter}
	  AND rliq.forpayment = 1
	  
	UNION ALL
	
	SELECT
		rli.firecodeacct_objid AS item_objid,
		rb.code AS item_code,
		rb.title AS item_title,
		rb.fund_objid AS item_fund_objid, rb.fund_code AS item_fund_code, rb.fund_title AS item_fund_title,
		rliq.firecode AS amount
	FROM rptledger rl
		INNER JOIN rptledgeritem rli ON rl.objid = rli.rptledgerid
		INNER JOIN rptledgeritem_qtrly rliq ON rli.objid = rliq.rptledgeritemid
		INNER JOIN revenueitem rb ON rli.firecodeacct_objid = rb.objid 
	WHERE ${filter}
	  AND rliq.forpayment = 1	
  
) t	  
  
GROUP BY t.item_objid, t.item_code, t.item_title, t.item_fund_objid, t.item_fund_code, t.item_fund_title
	