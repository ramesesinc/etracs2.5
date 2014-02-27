
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
	SUM(t.firecode) AS totalfirecode,
	SUM(t.basic + t.firecode) AS totalgeneral,
	SUM(t.basic + t.sef + t.firecode) AS amount
FROM (
	SELECT
		rl.objid AS rptledgerid, 
		rl.lastyearpaid,
		rl.lastqtrpaid,
		f.tdno, 
		MIN(bi.year) AS fromyear,
		MAX(bi.year) AS toyear,
		SUM(bi.basic - bi.basicpaid - (bi.basicdisc - bi.basicdisctaken) + bi.basicint - bi.basicintpaid) AS basic,
		SUM(bi.sef - bi.sefpaid -  (bi.sefdisc - bi.sefdisctaken) + bi.sefint - bi.sefintpaid) AS sef,
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




[getItemsForPaymentByBill]
SELECT 
	t.rptledgerid, t.tdno, 
	t.lastyearpaid, t.lastqtrpaid,
	t.billid,
	t.fromyear, 
	(SELECT MIN(CASE WHEN qtr = 0 THEN fromqtr ELSE qtr END) FROM rptledgerbillitem WHERE rptledgerid = t.rptledgerid AND year = t.fromyear) AS fromqtr,
	$P{billtoyear} AS toyear,
	(SELECT MAX(CASE WHEN qtr = 0 THEN toqtr ELSE qtr END) FROM rptledgerbillitem WHERE rptledgerid = t.rptledgerid AND year = t.toyear) AS toqtr,
	SUM(t.basic) AS totalbasic,
	SUM(t.sef) AS totalsef,
	SUM(t.firecode) AS totalfirecode,
	SUM(t.basic + t.firecode) AS totalgeneral,
	SUM(t.basic + t.sef + t.firecode) AS amount
FROM (
	SELECT
		rb.objid AS billid,
		rl.objid AS rptledgerid, 
		rl.lastyearpaid,
		rl.lastqtrpaid,
		f.tdno, 
		MIN(bi.year) AS fromyear,
		MAX(bi.year) AS toyear,
		SUM(bi.basic - bi.basicpaid - (bi.basicdisc - bi.basicdisctaken) + bi.basicint - bi.basicintpaid) AS basic,
		SUM(bi.sef - bi.sefpaid -  (bi.sefdisc - bi.sefdisctaken) + bi.sefint - bi.sefintpaid) AS sef,
		SUM(bi.firecode - bi.firecodepaid) AS firecode 
	FROM rptbill rb
		INNER JOIN rptbill_ledger rbl ON rb.objid = rbl.rptbillid 
		INNER JOIN rptledger rl ON rbl.rptledgerid = rl.objid 
		INNER JOIN rptledgerbillitem bi ON rl.objid = bi.rptledgerid
		INNER JOIN faas f ON rl.faasid = f.objid 
		INNER JOIN rpu r ON f.rpuid = r.objid 
	WHERE rb.objid = $P{billid}
	  AND rl.state = 'APPROVED'
	  AND r.taxable = 1
	GROUP BY rb.objid, rl.objid, f.tdno, rl.lastyearpaid, rl.lastqtrpaid
) t
GROUP BY t.billid, t.rptledgerid, t.lastyearpaid, t.lastqtrpaid, t.tdno, t.fromyear, t.toyear 




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
     partialled,
     brgyshare, 
     brgyintshare,
     lgushare,
     lguintshare,
     provshare,
     provintshare,
     brgyshareacctid,
     brgyintshareacctid,
     provshareacctid,
     provintshareacctid
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
	(bi.basicdisc - bi.basicdisctaken) AS basicdisc ,
	bi.basiccredit,
	bi.basicamnesty,
	bi.basicintamnesty,
	bi.basicacctid AS basicacct_objid,
	bi.basicintacctid AS  basicintacct_objid,
	bi.sef - bi.sefpaid  AS sef,
	bi.sefint - bi.sefintpaid  AS  sefint,
	(bi.sefdisc - bi.sefdisctaken) AS sefdisc ,
	bi.sefcredit,
	bi.sefamnesty,
	bi.sefintamnesty,
	bi.sefacctid AS sefacct_objid,
	bi.sefintacctid AS sefintacct_objid,
	bi.firecode - bi.firecodepaid AS firecode,
	bi.firecodeacctid AS firecodeacct_objid,
	bi.revtype,
	bi.partial AS partialled,
	bi.brgyshare, 
    bi.brgyintshare,
    bi.lgushare,
    bi.lguintshare,
    bi.provshare,
    bi.provintshare,
    bi.brgyshareacctid,
    bi.brgyintshareacctid,
    bi.provshareacctid,
    bi.provintshareacctid
FROM rptledger rl
		INNER JOIN rptledgerbillitem bi ON rl.objid = bi.rptledgerid
WHERE rl.objid = $P{rptledgerid}
  

[deletePaidBillItems]  
DELETE FROM rptledgerbillitem WHERE rptledgerid = $P{rptledgerid} 


[updateLedgerYearQtrPaid]
UPDATE rptledger SET 
	lastyearpaid = $P{toyear},
	lastqtrpaid = $P{toqtr},
	partialbasic = CASE WHEN lastyearpaid = $P{toyear} AND lastqtrpaid = $P{toqtr} 
						THEN partialbasic + $P{partialbasic} 
						ELSE $P{partialbasic} 
					END,
	partialbasicint = CASE WHEN lastyearpaid = $P{toyear} AND lastqtrpaid = $P{toqtr} 
						THEN partialbasicint + $P{partialbasicint} 
						ELSE $P{partialbasicint} 
					END,
	partialbasicdisc = CASE WHEN lastyearpaid = $P{toyear} AND lastqtrpaid = $P{toqtr} 
						THEN partialbasicdisc + $P{partialbasicdisc} 
						ELSE $P{partialbasicdisc} 
					END,
	partialsef = CASE WHEN lastyearpaid = $P{toyear} AND lastqtrpaid = $P{toqtr} 
						THEN partialsef + $P{partialsef} 
						ELSE $P{partialsef} 
					END,
	partialsefint = CASE WHEN lastyearpaid = $P{toyear} AND lastqtrpaid = $P{toqtr} 
						THEN partialsefint + $P{partialsefint} 
						ELSE $P{partialsefint} 
					END,
	partialsefdisc = CASE WHEN lastyearpaid = $P{toyear} AND lastqtrpaid = $P{toqtr} 
						THEN partialsefdisc + $P{partialsefdisc} 
						ELSE $P{partialsefdisc} 
					END,
	partialledyear = $P{partialledyear},
	partialledqtr  = $P{partialledqtr},
	lastbilledyear = $P{lastbilledyear},
	lastbilledqtr  = $P{lastbilledqtr}
WHERE objid = $P{rptledgerid}	

[resetVoidedLedgerYearQtrPaid]
UPDATE rptledger SET 
	lastyearpaid = $P{toyear},
	lastqtrpaid = $P{toqtr},
	partialbasic = CASE WHEN lastyearpaid = $P{toyear} AND lastqtrpaid = $P{toqtr} 
						THEN partialbasic + $P{partialbasic} 
						ELSE $P{partialbasic} 
					END,
	partialbasicint = CASE WHEN lastyearpaid = $P{toyear} AND lastqtrpaid = $P{toqtr} 
						THEN partialbasicint + $P{partialbasicint} 
						ELSE $P{partialbasicint} 
					END,
	partialbasicdisc = CASE WHEN lastyearpaid = $P{toyear} AND lastqtrpaid = $P{toqtr} 
						THEN partialbasicdisc + $P{partialbasicdisc} 
						ELSE $P{partialbasicdisc} 
					END,
	partialsef = CASE WHEN lastyearpaid = $P{toyear} AND lastqtrpaid = $P{toqtr} 
						THEN partialsef + $P{partialsef} 
						ELSE $P{partialsef} 
					END,
	partialsefint = CASE WHEN lastyearpaid = $P{toyear} AND lastqtrpaid = $P{toqtr} 
						THEN partialsefint + $P{partialsefint} 
						ELSE $P{partialsefint} 
					END,
	partialsefdisc = CASE WHEN lastyearpaid = $P{toyear} AND lastqtrpaid = $P{toqtr} 
						THEN partialsefdisc + $P{partialsefdisc} 
						ELSE $P{partialsefdisc} 
					END,
	partialledyear = $P{partialledyear},
	partialledqtr  = $P{partialledqtr},
	lastbilledyear = $P{lastbilledyear},
	lastbilledqtr  = $P{lastbilledqtr}
WHERE objid = $P{rptledgerid}	

[getSummarizedCashReceiptItems]
SELECT 
	t.item_objid, t.item_code, t.item_title,
	t.item_fund_objid, t.item_fund_code, t.item_fund_title,
	SUM(t.amount) AS amount
FROM (
	SELECT
		rb.objid AS item_objid,
		rb.code AS item_code, 
		rb.title AS item_title,
		rb.fund_objid AS item_fund_objid, rb.fund_code AS item_fund_code, rb.fund_title AS item_fund_title,
		bi.lgushare AS amount
	FROM rptledger rl
		INNER JOIN rptledgerbillitem bi ON rl.objid = bi.rptledgerid
		INNER JOIN revenueitem rb ON bi.basicacctid = rb.objid 
	WHERE ${filter}
	  
	UNION ALL

	SELECT
		rb.objid AS item_objid,
		rb.code AS item_code,
		rb.title AS item_title,
		rb.fund_objid AS item_fund_objid, rb.fund_code AS item_fund_code, rb.fund_title AS item_fund_title,
		bi.lguintshare  AS amount
	FROM rptledger rl
		INNER JOIN rptledgerbillitem bi ON rl.objid = bi.rptledgerid
		INNER JOIN revenueitem rb ON bi.basicintacctid = rb.objid 
	WHERE ${filter}
	  AND bi.lguintshare > 0.0
	  
	UNION ALL
	
	SELECT
		rb.objid AS item_objid,
		rb.code AS item_code, 
		rb.title AS item_title,
		rb.fund_objid AS item_fund_objid, rb.fund_code AS item_fund_code, rb.fund_title AS item_fund_title,
		bi.brgyshare AS amount
	FROM rptledger rl
		INNER JOIN rptledgerbillitem bi ON rl.objid = bi.rptledgerid
		INNER JOIN revenueitem rb ON bi.brgyshareacctid = rb.objid 
	WHERE ${filter}
	  
	UNION ALL

	SELECT
		rb.objid AS item_objid,
		rb.code AS item_code,
		rb.title AS item_title,
		rb.fund_objid AS item_fund_objid, rb.fund_code AS item_fund_code, rb.fund_title AS item_fund_title,
		bi.brgyintshare  AS amount
	FROM rptledger rl
		INNER JOIN rptledgerbillitem bi ON rl.objid = bi.rptledgerid
		INNER JOIN revenueitem rb ON bi.brgyintshareacctid = rb.objid 
	WHERE ${filter}
	  AND bi.brgyintshare > 0.0 
	  
	UNION ALL
	
	SELECT
		rb.objid AS item_objid,
		rb.code AS item_code, 
		rb.title AS item_title,
		rb.fund_objid AS item_fund_objid, rb.fund_code AS item_fund_code, rb.fund_title AS item_fund_title,
		bi.provshare AS amount
	FROM rptledger rl
		INNER JOIN rptledgerbillitem bi ON rl.objid = bi.rptledgerid
		INNER JOIN revenueitem rb ON bi.provshareacctid = rb.objid 
	WHERE ${filter}
	  
	UNION ALL

	SELECT
		rb.objid AS item_objid,
		rb.code AS item_code,
		rb.title AS item_title,
		rb.fund_objid AS item_fund_objid, rb.fund_code AS item_fund_code, rb.fund_title AS item_fund_title,
		bi.provintshare  AS amount
	FROM rptledger rl
		INNER JOIN rptledgerbillitem bi ON rl.objid = bi.rptledgerid
		INNER JOIN revenueitem rb ON bi.provintshareacctid = rb.objid 
	WHERE ${filter}
	  AND bi.provintshare > 0.0 
	  
	  
	UNION ALL
	
	SELECT
		rb.objid AS item_objid,
		rb.code AS item_code,
		rb.title AS item_title,
		rb.fund_objid AS item_fund_objid, rb.fund_code AS item_fund_code, rb.fund_title AS item_fund_title,
		bi.sef - bi.sefpaid - (bi.sefdisc - bi.sefdisctaken) AS amount
	FROM rptledger rl
		INNER JOIN rptledgerbillitem bi ON rl.objid = bi.rptledgerid
		INNER JOIN revenueitem rb ON bi.sefacctid = rb.objid 
	WHERE ${filter}
	  
	UNION ALL

	SELECT
		rb.objid AS item_objid,
		rb.code AS item_code,
		rb.title AS item_title,
		rb.fund_objid AS item_fund_objid, rb.fund_code AS item_fund_code, rb.fund_title AS item_fund_title,
		bi.sefint - bi.sefintpaid  AS amount
	FROM rptledger rl
		INNER JOIN rptledgerbillitem bi ON rl.objid = bi.rptledgerid
		INNER JOIN revenueitem rb ON bi.sefintacctid = rb.objid 
	WHERE ${filter}
	  AND bi.sefint - bi.sefintpaid > 0.0

	UNION ALL
	
	SELECT
		rb.objid AS item_objid,
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
		WHEN t.fromyear = t.toyear AND t.fromqtr = 1 AND t.toqtr = 4 
			THEN 'FULL ' + CONVERT(VARCHAR(4),t.toyear)
		WHEN t.fromyear = t.toyear AND t.fromqtr = t.toqtr
			THEN CONVERT(VARCHAR(1),t.toqtr) + 'Q, ' + CONVERT(VARCHAR(4),t.toyear)
		WHEN t.fromyear = t.toyear 
			THEN CONVERT(VARCHAR(1),t.fromqtr) + CONVERT(VARCHAR(1),t.toqtr) + 'Q, ' + CONVERT(VARCHAR(4),t.toyear)

		WHEN t.fromqtr = 1 AND t.toqtr = 4
			THEN 'FULL ' + CONVERT(VARCHAR(4),t.fromyear) + '-' + CONVERT(VARCHAR(4),t.toyear)
		WHEN t.fromqtr = 1 AND t.toqtr <> 4
			THEN CONVERT(VARCHAR(4),t.fromyear) + '-' + CONVERT(VARCHAR(1),t.toqtr) + 'Q,' + CONVERT(VARCHAR(4),t.toyear)
		WHEN t.fromqtr <> 1 AND t.toqtr = 4
			THEN CONVERT(VARCHAR(1),t.fromqtr) + 'Q,' + CONVERT(VARCHAR(4),t.fromyear) + '-' + CONVERT(VARCHAR(4),t.toyear)
		ELSE
			CONVERT(VARCHAR(1),t.fromqtr) + 'Q,' + CONVERT(VARCHAR(4),t.fromyear) + '-' + CONVERT(VARCHAR(1),t.toqtr) + 'Q,' + CONVERT(VARCHAR(4),t.toyear)
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
		(SELECT MIN(CASE WHEN qtr = 0 THEN 1 ELSE qtr END)  FROM cashreceiptitem_rpt WHERE rptreceiptid = cri.rptreceiptid AND rptledgerid = cri.rptledgerid AND YEAR = MIN(cri.year) ) AS fromqtr,
		MAX(cri.year) AS toyear,
		(SELECT MAX(CASE WHEN qtr = 0 THEN 4 ELSE qtr END) FROM cashreceiptitem_rpt WHERE rptreceiptid = cri.rptreceiptid AND  rptledgerid = cri.rptledgerid AND YEAR = MAX(cri.year) ) AS toqtr,
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
		t.partialled,
		t.fromyear,
		t.fromqtr,
		t.toyear, 
		t.toqtr



[getLedgersMinPaidYearAndQtr]
SELECT 
	x.*,
	CASE WHEN x.qtr = 0 THEN x.fromqtr ELSE x.qtr END AS minqtr
FROM
(
	SELECT 
		t.*,
		MIN(ri.qtr) AS qtr,
		MIN(ri.fromqtr) AS fromqtr,
		MAX(ri.toqtr) AS toqtr
	FROM (
		SELECT 
			cr.rptreceiptid, 
			cr.rptledgerid, 
			MIN(cr.year) AS minyear,
			0.0 AS partialbasic, 
			0.0 AS partialbasicdisc, 
			0.0 AS partialbasicint, 
			0.0 AS partialsef, 
			0.0 AS partialsefdisc, 
			0.0 AS partialsefint
		FROM cashreceiptitem_rpt cr 
		WHERE cr.rptreceiptid = $P{rptreceiptid}
		GROUP BY cr.rptreceiptid, cr.rptledgerid
	)t
	INNER JOIN cashreceiptitem_rpt ri ON t.rptreceiptid = ri.rptreceiptid AND t.minyear = ri.year 
	GROUP BY t.rptreceiptid, t.rptledgerid, t.minyear, t.partialbasic, t.partialbasicdisc, t.partialbasicint, t.partialsef, t.partialsefint, t.partialsefdisc 
) x	





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


[deleteRptBill]
DELETE FROM rptbill WHERE objid = $P{billid}

[deleteRptBillLedgers]
DELETE FROM rptbill_ledger WHERE rptbillid = $P{billid}


[getCollectionsByCount]
SELECT 
	cr.receiptno, 
	CASE WHEN cv.objid IS NULL THEN cr.amount  ELSE 0.0 END AS amount,
	CASE WHEN cv.objid IS NULL THEN 0  ELSE 1 END AS voided
FROM cashreceipt cr 
	LEFT JOIN cashreceipt_void cv ON cr.objid = cv.receiptid 
	LEFT JOIN remittance_cashreceipt rc ON cr.objid = rc.objid 
WHERE cr.collector_objid = $P{userid}
  AND rc.objid IS NULL 
ORDER BY cr.txndate DESC   
  

[findReceiptPartialInfo]
SELECT 
	basic AS partialbasic, 
	basicdisc AS partialbasicdisc, 
	basicint AS partialbasicint, 
	sef AS partialsef, 
	sefdisc AS partialsefdisc, 
	sefint  AS partialsefint
FROM cashreceiptitem_rpt cr
WHERE cr.rptreceiptid = $P{rptreceiptid}
  AND cr.partialled = 1
  


[resetVoidedLedgerInfo]
UPDATE rptledger SET 
	nextbilldate = null,
	lastyearpaid = $P{toyear},
	lastqtrpaid = $P{toqtr},
	partialbasic = partialbasic - $P{partialbasic},
	partialbasicint = partialbasicint - $P{partialbasicint},
	partialbasicdisc = partialbasicdisc - $P{partialbasicdisc},

	partialsef = partialsef - $P{partialsef},
	partialsefint = partialsefint - $P{partialsefint},
	partialsefdisc = partialsefdisc - $P{partialsefdisc},
	partialledyear = $P{partialledyear},
	partialledqtr  = $P{partialledqtr},
	lastbilledyear = $P{lastbilledyear},
	lastbilledqtr  = $P{lastbilledqtr}
WHERE objid = $P{rptledgerid}	
