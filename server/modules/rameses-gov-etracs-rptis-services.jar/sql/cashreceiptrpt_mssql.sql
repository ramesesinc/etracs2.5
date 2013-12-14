
[getItemsForPayment]
SELECT 
	t.rptledgerid, t.tdno, 
	t.lastyearpaid, t.lastqtrpaid,
	t.fromyear, 
	(SELECT MIN(CASE WHEN qtr = 0 THEN fromqtr ELSE qtr END) FROM rptledgerbillitem WHERE rptledgerid = t.rptledgerid AND year = t.fromyear) AS fromqtr,
	$P{billtoyear} AS toyear,
	(SELECT MAX(CASE WHEN qtr = 0 THEN toqtr ELSE qtr END) FROM rptledgerbillitem WHERE rptledgerid = t.rptledgerid AND year = t.toyear) AS toqtr,
	SUM(t.basic) AS totalbasic,
	SUM(t.sef) AS totalsef,
	SUM(t.basic + t.sef + t.firecode) AS amount
FROM (
	SELECT
		rl.objid AS rptledgerid, 
		rl.lastyearpaid,
		rl.lastqtrpaid,
		f.tdno, 
		MIN(bi.year) AS fromyear,
		MAX(bi.year) AS toyear,
		SUM(bi.basic - bi.basicpaid - bi.basicdisc + bi.basicint - bi.basicintpaid) AS basic,
		SUM(bi.sef - bi.sefpaid -  bi.sefdisc + bi.sefint - bi.sefintpaid) AS sef,
		SUM(bi.firecode - bi.firecodepaid) AS firecode 
	FROM rptledger rl
		INNER JOIN rptledgerbillitem bi ON rl.objid = bi.rptledgerid
		INNER JOIN faas f ON rl.faasid = f.objid 
		INNER JOIN rpu r ON f.rpuid = r.objid 
	WHERE  ${filters}
	  AND rl.state = 'APPROVED'
	  AND r.taxable = 1
	GROUP BY rl.objid, f.tdno, rl.lastyearpaid, rl.lastqtrpaid
) t
GROUP BY t.rptledgerid, t.lastyearpaid, t.lastqtrpaid, t.tdno, t.fromyear, t.toyear 



[insertPaidItemByLedgerId]
INSERT INTO cashreceiptitem_rpt
    (objid,
     rptreceiptid,
     rptledgerid,
     rptledgerfaasid,
     barangayid,
     year,
     qtr,
     fromqtr,
     toqtr,
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
     partialled
)
SELECT 
	bi.objid,
	$P{rptreceiptid} AS rptreceiptid,
	rl.objid AS rptledgerid,
	bi.rptledgerfaasid AS rptledgerfaasid,
	rl.barangayid,
	bi.year,
	bi.qtr,
	bi.fromqtr,
	bi.toqtr,
	bi.basic - bi.basicpaid AS basic,
	bi.basicint - bi.basicintpaid  AS basicint,
	bi.basicdisc,
	bi.basiccredit,
	bi.basicamnesty,
	bi.basicintamnesty,
	bi.basicacctid AS basicacct_objid,
	bi.basicintacctid AS  basicintacct_objid,
	bi.sef - bi.sefpaid  AS sef,
	bi.sefint - bi.sefintpaid  AS  sefint,
	bi.sefdisc,
	bi.sefcredit,
	bi.sefamnesty,
	bi.sefintamnesty,
	bi.sefacctid AS sefacct_objid,
	bi.sefintacctid AS sefintacct_objid,
	bi.firecode - bi.firecodepaid AS firecode,
	bi.firecodeacctid AS firecodeacct_objid,
	bi.revtype,
	bi.partialapplied AS partialled
FROM rptledger rl
		INNER JOIN rptledgerbillitem bi ON rl.objid = bi.rptledgerid
WHERE rl.objid = $P{rptledgerid}
  

[deletePaidBillItems]  
DELETE FROM rptledgerbillitem WHERE rptledgerid = $P{rptledgerid} 



[updateLedgerYearQtrPaid]
UPDATE rptledger SET 
	lastyearpaid = $P{toyear},
	lastqtrpaid = $P{toqtr},
	partialbasic = $P{partialbasic},
	partialbasicint = 	$P{partialbasicint},
	partialbasicdisc = 	$P{partialbasicdisc},
	partialsef = 	$P{partialsef},
	partialsefint = 	$P{partialsefint},
	partialsefdisc = 	$P{partialsefdisc},
	partialledyear = $P{partialledyear},
	partialledqtr  = $P{partialledqtr}
WHERE objid = $P{rptledgerid}	


[getSummarizedCashReceiptItems]
SELECT 
	t.item_objid, t.item_code, t.item_title,
	t.item_fund_objid, t.item_fund_code, t.item_fund_title,
	SUM(t.amount) AS amount
FROM (
	SELECT
		bi.basicacctid AS item_objid,
		rb.code AS item_code, 
		rb.title AS item_title,
		rb.fund_objid AS item_fund_objid, rb.fund_code AS item_fund_code, rb.fund_title AS item_fund_title,
		bi.basic - bi.basicpaid - bi.basicdisc AS amount
	FROM rptledger rl
		INNER JOIN rptledgerbillitem bi ON rl.objid = bi.rptledgerid
		INNER JOIN revenueitem rb ON bi.basicacctid = rb.objid 
	WHERE ${filter}
	  
	UNION ALL

	SELECT
		bi.basicintacctid AS item_objid,
		rb.code AS item_code,
		rb.title AS item_title,
		rb.fund_objid AS item_fund_objid, rb.fund_code AS item_fund_code, rb.fund_title AS item_fund_title,
		bi.basicint - bi.basicintpaid  AS amount
	FROM rptledger rl
		INNER JOIN rptledgerbillitem bi ON rl.objid = bi.rptledgerid
		INNER JOIN revenueitem rb ON bi.basicintacctid = rb.objid 
	WHERE ${filter}
	  
	UNION ALL
	
	SELECT
		bi.sefacctid AS item_objid,
		rb.code AS item_code,
		rb.title AS item_title,
		rb.fund_objid AS item_fund_objid, rb.fund_code AS item_fund_code, rb.fund_title AS item_fund_title,
		bi.sef - bi.sefpaid - bi.sefdisc AS amount
	FROM rptledger rl
		INNER JOIN rptledgerbillitem bi ON rl.objid = bi.rptledgerid
		INNER JOIN revenueitem rb ON bi.sefacctid = rb.objid 
	WHERE ${filter}
	  
	UNION ALL

	SELECT
		bi.sefintacctid AS item_objid,
		rb.code AS item_code,
		rb.title AS item_title,
		rb.fund_objid AS item_fund_objid, rb.fund_code AS item_fund_code, rb.fund_title AS item_fund_title,
		bi.sefint - bi.sefintpaid  AS amount
	FROM rptledger rl
		INNER JOIN rptledgerbillitem bi ON rl.objid = bi.rptledgerid
		INNER JOIN revenueitem rb ON bi.sefintacctid = rb.objid 
	WHERE ${filter}

	UNION ALL
	
	SELECT
		bi.firecodeacctid AS item_objid,
		rb.code AS item_code,
		rb.title AS item_title,
		rb.fund_objid AS item_fund_objid, rb.fund_code AS item_fund_code, rb.fund_title AS item_fund_title,
		bi.firecode - bi.firecodepaid AS amount
	FROM rptledger rl
		INNER JOIN rptledgerbillitem bi ON rl.objid = bi.rptledgerid
		INNER JOIN revenueitem rb ON bi.firecodeacctid = rb.objid 
	WHERE ${filter}
	  
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



[getLedgersMinPaidYearAndQtr]
SELECT 
	x.rptreceiptid, x.rptledgerid, x.minyear,
	ri.qtr,
	CASE WHEN ri.qtr = 0 THEN ri.fromqtr ELSE ri.qtr END AS minqtr,
	CASE WHEN ri.partialled = 1 THEN ri.basic ELSE 0 END  AS partialbasic, 
	CASE WHEN ri.partialled = 1 THEN ri.basicint ELSE 0 END AS partialbasicint, 
	CASE WHEN ri.partialled = 1 THEN ri.sef ELSE 0 END AS partialsef, 
	CASE WHEN ri.partialled = 1 THEN ri.sefint ELSE 0 END AS partialsefint
FROM
(
	SELECT 
		t.*,
		(SELECT MIN(qtr) FROM cashreceiptitem_rpt
		  WHERE rptreceiptid = t.rptreceiptid AND year = t.minyear) AS minqtr
	FROM (
		SELECT 
			cr.rptreceiptid, 
			cr.rptledgerid, 
			MIN(cr.year) AS minyear
		FROM cashreceiptitem_rpt cr 
		WHERE cr.rptreceiptid = $P{rptreceiptid} 
		GROUP BY cr.rptreceiptid, cr.rptledgerid, cr.year 
	)t
) x	
INNER JOIN cashreceiptitem_rpt ri ON x.rptreceiptid = ri.rptreceiptid 
WHERE x.minqtr = ri.qtr 




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




[findRevenueItemById]
SELECT 
	objid, code, title, 
	fund_objid, fund_code, fund_title
FROM revenueitem 
WHERE objid = $P{objid}