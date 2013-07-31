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
	lastqtrpaid = $P{lastqtrpaid}
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