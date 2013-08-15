[updateLedgerItemPaidInfo]
UPDATE rptledgeritem SET
	state = CASE WHEN basicpaid + $P{basicpaid} = basic AND sefpaid + $P{sefpaid} = sef 
				THEN 'PAID' ELSE 'OPEN' 
			END,
	basicpaid = basicpaid + $P{basicpaid},
	basicint  = basicint - $P{basicintpaid},
	basicdisc  = basicdisc - $P{basicdisctaken},
	sefpaid = sefpaid + $P{sefpaid},
	sefint  = sefint - $P{sefintpaid},
	sefdisc  = sefdisc - $P{sefdisctaken}
WHERE objid = $P{objid}


[updateLedgerLastYearQtrPaid]
UPDATE rptledger SET
	lastyearpaid = $P{lastyearpaid},
	lastqtrpaid = $P{lastqtrpaid},
	lastreceiptid = $P{lastreceiptid}
WHERE objid = $P{objid}	


[getPaidLedgers]
SELECT DISTINCT rptledgerid FROM rptreceiptitem WHERE rptreceiptid = $P{rptreceiptid}

[getFirstPaidLedgerItem]
SELECT 
	rci.rptledgerid, rci.year, rci.qtr, 
	CASE WHEN rci.basic < rli.basic THEN 1 ELSE 0 END AS partialled
FROM rptreceiptitem rci
	INNER JOIN rptledgeritem rli ON rci.rptledgeritemid = rli.objid 
WHERE rci.rptreceiptid = $P{rptreceiptid}
ORDER BY rci.year, rci.qtr 


[voidLedgerItemPayment]
UPDATE rptreceiptitem rci, rptledgeritem rli SET
	rli.state = 'OPEN', 
	rli.basicpaid = rli.basicpaid - rci.basic,
	rli.sefpaid = rli.sefpaid - rci.sef 
WHERE rci.rptreceiptid = $P{rptreceiptid}
  AND rci.rptledgeritemid = rli.objid 


[voidLedgerPayment]
UPDATE rptledger SET
	lastyearpaid = $P{lastyearpaid},
	lastqtrpaid = $P{lastqtrpaid},
	nextbilldate = null 
WHERE objid = $P{objid}	  


[getReceiptItemsForPrinting]
SELECT
	f.tdno,
	f.taxpayer_name,
	r.rputype,
	r.totalav,
	r.fullpin,
	rp.cadastrallotno,
	pc.code AS classcode,
	b.name AS barangay,
	CASE 
		WHEN MIN(ri.year) = MAX(ri.year) AND MIN(ri.qtr) = 1 AND MAX(ri.qtr) = 4
			THEN CONCAT('FULL ', MIN(ri.year))
		WHEN MIN(ri.year) = MAX(ri.year) AND MIN(ri.qtr) = MAX(ri.qtr)
			THEN CONCAT('FULL ', MIN(ri.qtr), 'Q,', MIN(ri.year))
		WHEN MIN(ri.year) = MAX(ri.year)
			THEN CONCAT(MIN(ri.qtr), 'Q-', MAX(ri.qtr), 'Q, ', MIN(ri.year) )
		ELSE 
			CONCAT(  MIN(CONCAT(ri.qtr, 'Q,', ri.year)), ' - ', MAX(CONCAT(ri.qtr, 'Q,', ri.year)) )
	END AS period,
	SUM(basic) AS basic,
	SUM(basicint - basicdisc) AS basicdp,
	SUM(sef) AS sef,
	SUM(sefint - sefdisc) AS sefdp,
	SUM(basic + basicint - basicdisc + sef + sefint - sefdisc) AS amount 
FROM rptreceiptitem ri
		INNER JOIN rptledger rl ON ri.rptledgerid = rl.objid 
		INNER JOIN faas f ON rl.faasid = f.objid 
		INNER JOIN rpu r ON f.rpuid = r.objid 
		INNER JOIN propertyclassification pc ON r.classification_objid = pc.objid 
		INNER JOIN realproperty rp ON r.realpropertyid = rp.objid 
		INNER JOIN barangay b ON rp.barangayid = b.objid 
WHERE ri.rptreceiptid = $P{rptreceiptid}
GROUP BY ri.rptledgerid, f.tdno, f.taxpayer_name, r.rputype, r.totalav, r.fullpin, rp.cadastrallotno, pc.code, b.name
ORDER BY f.tdno 

