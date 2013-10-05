
[getOpenLedgers]
SELECT 
	rl.objid,
	rl.lastyearpaid,
	rl.lastqtrpaid,
	rl.firstqtrpaidontime,
	rl.qtrlypaymentpaidontime,
	rl.lastitemyear,
	rl.faasid, 
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
	CASE WHEN rl.lastqtrpaid = 4 THEN rl.lastyearpaid + 1 ELSE rl.lastyearpaid END AS fromyear,
	CASE WHEN rl.lastqtrpaid = 4 THEN 1 ELSE rl.lastqtrpaid + 1 END AS fromqtr
FROM faas f
	INNER JOIN rpu r ON f.rpuid = r.objid 
	INNER JOIN propertyclassification pc ON r.classification_objid = pc.objid 
	INNER JOIN realproperty rp ON r.realpropertyid = rp.objid 
	INNER JOIN barangay b ON rp.barangayid = b.objid 
	INNER JOIN rptledger rl ON f.objid = rl.faasid
WHERE ${filters}
 AND rl.state = 'APPROVED'
 AND (rl.nextbilldate IS NULL OR rl.nextbilldate <= $P{billdate})


[getOpenLedgerItemsByLedgerId]
SELECT 
	rli.objid,
	rli.rptledgerid,
	rli.objid AS rptledgeritemid,
	rli.assessedvalue, 
	rli.assessedvalue AS av,
	rli.qtrly,
	rli.revtype,
	rlf.tdno, 
	rli.year,
	0 AS qtr,
	rlf.txntype_objid,
	r.rputype,
	r.classification_objid,
	r.classification_objid AS actualuse_objid,
	rl.barangayid
FROM rptledger rl
	INNER JOIN faas f ON rl.faasid = f.objid 
	INNER JOIN rpu r ON f.rpuid = r.objid 
	INNER JOIN rptledgeritem rli ON rl.objid = rli.rptledgerid
	INNER JOIN rptledgerfaas rlf ON rli.rptledgerfaasid = rlf.objid 
WHERE rl.objid = $P{ledgerid}
 AND rl.state = 'APPROVED'
 AND (rl.nextbilldate IS NULL OR rl.nextbilldate <= $P{billdate} )
 AND rli.state = 'OPEN'  
 AND rli.qtrly = 0

UNION ALL 

SELECT 
	rliq.objid,
	rliq.rptledgerid,
	rliq.rptledgeritemid,
	rli.assessedvalue, 
	rliq.qtrlyav AS av,
	rli.qtrly,
	rli.revtype,
	rlf.tdno, 
	rli.year,
	rliq.qtr,
	rlf.txntype_objid,
	r.rputype,
	r.classification_objid,
	r.classification_objid AS actualuse_objid,
	rl.barangayid
FROM rptledger rl
	INNER JOIN faas f ON rl.faasid = f.objid 
	INNER JOIN rpu r ON f.rpuid = r.objid 
	INNER JOIN rptledgeritem rli ON rl.objid = rli.rptledgerid
	INNER JOIN rptledgeritem_qtrly rliq ON rli.objid = rliq.rptledgeritemid 
	INNER JOIN rptledgerfaas rlf ON rli.rptledgerfaasid = rlf.objid 
WHERE rl.objid = $P{ledgerid}
 AND rl.state = 'APPROVED'
 AND (rl.nextbilldate IS NULL OR rl.nextbilldate <= $P{billdate} )
 AND rliq.state = 'OPEN'  
 AND rli.qtrly = 1




[getLedgerWithUnpostedItems]
SELECT rl.objid, rl.faasid, rl.lastitemyear
FROM rptledger rl
	INNER JOIN faas f ON rl.faasid = f.objid 
WHERE ${filters}
 AND rl.state = 'APPROVED'
 AND (rl.nextbilldate IS NULL OR rl.nextbilldate <= $P{billdate} OR rl.lastitemyear < $P{billtoyear})




[findExpiry]
SELECT expirydate,expirytype 
FROM rptexpiry 
WHERE iqtr=$P{qtr} AND iyear=$P{year}
AND expirydate >= $P{date}
ORDER BY expirydate ASC



 [getLedgersToRecalc]
 SELECT objid FROM rptledger WHERE nextbilldate <= $P{billdate} OR nextbilldate IS NULL


[updateLedgerNextBillDate]
UPDATE rptledger rl, faas f SET
	rl.nextbilldate = $P{nextbilldate}
WHERE f.objid = rl.faasid 
 AND rl.state = 'APPROVED'
 AND ${filters}
 


 [findLedgerFaasAV]
 SELECT assessedvalue
FROM rptledgerfaas rlf
WHERE rlf.rptledgerid = $P{rptledgerid}
  AND $P{avyear} >= rlf.fromyear 
  AND ( $P{avyear} <= rlf.toyear OR rlf.toyear = 0)
  AND rlf.state = 'APPROVED'



[getBilledLedgers]
SELECT 
	rl.objid,
	rl.lastyearpaid,
	rl.lastqtrpaid,
	rl.firstqtrpaidontime,
	rl.qtrlypaymentpaidontime,
	rl.lastitemyear,
	rl.faasid, 
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
	CASE WHEN rl.lastqtrpaid = 4 THEN rl.lastyearpaid + 1 ELSE rl.lastyearpaid END AS fromyear,
	CASE WHEN rl.lastqtrpaid = 4 THEN 1 ELSE rl.lastqtrpaid + 1 END AS fromqtr
FROM rptledger rl 
	INNER JOIN faas f ON rl.faasid = f.objid 
	INNER JOIN rpu r ON f.rpuid = r.objid 
	INNER JOIN realproperty rp ON r.realpropertyid = rp.objid 
	INNER JOIN barangay b ON rp.barangayid = b.objid 
	INNER JOIN propertyclassification pc ON r.classification_objid = pc.objid 
WHERE ${filters}
 AND rl.state = 'APPROVED'
 AND ( rl.lastyearpaid < $P{billtoyear} OR ( rl.lastyearpaid = $P{billtoyear} AND rl.lastqtrpaid <= $P{billtoqtr}))


[getPreviousBillItems]
SELECT tmp.* 
FROM (
	SELECT
		rlf.tdno,
		rlf.assessedvalue,
		rlf.assessedvalue AS originalav,
		CONCAT(rli.year,'') AS period,
		rli.basic - rli.basicpaid AS basic, 
		rli.basicint - rli.basicintpaid AS basicint, 
		rli.basicdisc - rli.basicdisctaken AS basicdisc, 
		rli.basiccredit AS basiccredit,
		rli.basicint - rli.basicintpaid - rli.basicdisc - rli.basicdisctaken  AS  basicdp,
		rli.basic + rli.basicint - rli.basicdisc - rli.basicdisctaken - rli.basicpaid - rli.basicintpaid AS basicnet,
		rli.sef - rli.sefpaid AS sef, 
		rli.sefint - rli.sefintpaid AS sefint, 
		rli.sefdisc - rli.sefdisctaken AS sefdisc, 
		rli.sefcredit AS sefcredit,
		rli.sefint - rli.sefintpaid - rli.sefdisc - rli.sefdisctaken  AS  sefdp,
		rli.sef + rli.sefint - rli.sefdisc - rli.sefdisctaken - rli.sefpaid - rli.sefintpaid AS sefnet,
		rli.firecode - rli.firecodepaid AS firecode,
		rl.barangayid
	FROM faas f
		INNER JOIN rpu r ON f.rpuid = r.objid 
		INNER JOIN realproperty rp ON r.realpropertyid = rp.objid 
		INNER JOIN rptledger rl ON f.objid = rl.faasid
		INNER JOIN rptledgeritem rli ON rl.objid = rli.rptledgerid
		INNER JOIN rptledgerfaas rlf ON rli.rptledgerfaasid = rlf.objid
	WHERE rl.objid = $P{rptledgerid}
	 AND rli.state = 'OPEN'
	 AND rli.year <= $P{billtoyear}
	 AND rli.year < $P{currentyr}
	 AND rli.qtrly = 0
	GROUP BY rli.year
	
	UNION ALL
	
	SELECT 
		rlf.tdno,
		rlf.assessedvalue,
		rliq.qtrlyav AS originalav,
		CONCAT(rli.year,'-', CASE WHEN MIN(rliq.qtr) = MAX(rliq.qtr) THEN MIN(rliq.qtr) ELSE CONCAT(MIN(rliq.qtr), MAX(rliq.qtr)) END ) AS period,
		SUM(rliq.basic - rliq.basicpaid) AS basic, 
		SUM(rliq.basicint - rliq.basicintpaid) AS basicint, 
		SUM(rliq.basicdisc - rliq.basicdisctaken) AS basicdisc, 
		SUM(rliq.basiccredit) AS basiccredit,
		SUM(rliq.basicint - rliq.basicintpaid - rliq.basicdisc - rliq.basicdisctaken ) AS  basicdp,
		SUM(rliq.basic + rliq.basicint - rliq.basicdisc - rliq.basicdisctaken - rliq.basicpaid - rliq.basicintpaid) AS basicnet,
		SUM(rliq.sef - rliq.sefpaid) AS sef, 
		SUM(rliq.sefint - rliq.sefintpaid) AS sefint, 
		SUM(rliq.sefdisc - rliq.sefdisctaken) AS sefdisc, 
		SUM(rliq.sefcredit) AS sefcredit,
		SUM(rliq.sefint - rliq.sefintpaid - rliq.sefdisc - rliq.sefdisctaken ) AS  sefdp,
		SUM(rliq.sef + rliq.sefint - rliq.sefdisc - rliq.sefdisctaken - rliq.sefpaid - rliq.sefintpaid) AS sefnet,
		SUM(rliq.firecode - rliq.firecodepaid) AS firecode,
		rl.barangayid
	FROM faas f
		INNER JOIN rpu r ON f.rpuid = r.objid 
		INNER JOIN realproperty rp ON r.realpropertyid = rp.objid 
		INNER JOIN rptledger rl ON f.objid = rl.faasid
		INNER JOIN rptledgeritem rli ON rl.objid = rli.rptledgerid
		INNER JOIN rptledgeritem_qtrly rliq ON rli.objid = rliq.rptledgeritemid 
		INNER JOIN rptledgerfaas rlf ON rli.rptledgerfaasid = rlf.objid
	WHERE rl.objid = $P{rptledgerid}
	 AND rli.year <= $P{billtoyear}
	 AND rli.year < $P{currentyr}
	 AND rli.qtrly = 1 
	 AND rliq.state = 'OPEN'
	 AND rliq.qtr <= $P{billtoqtr}
	GROUP BY  rli.year
) tmp
GROUP BY tmp.period
ORDER BY tmp.period


[getCurrentBillItems]
SELECT 
	rlf.tdno,
	rlf.assessedvalue,
	rliq.qtrlyav AS originalav,
	CONCAT(rli.year,'-', rliq.qtr) AS period,
	SUM(rliq.basic - rliq.basicpaid) AS basic, 
	SUM(rliq.basicint - rliq.basicintpaid) AS basicint, 
	SUM(rliq.basicdisc - rliq.basicdisctaken) AS basicdisc, 
	SUM(rliq.basiccredit) AS basiccredit,
	SUM(rliq.basicint - rliq.basicintpaid - rliq.basicdisc - rliq.basicdisctaken ) AS  basicdp,
	SUM(rliq.basic + rliq.basicint - rliq.basicdisc - rliq.basicdisctaken - rliq.basicpaid - rliq.basicintpaid) AS basicnet,
	SUM(rliq.sef - rliq.sefpaid) AS sef, 
	SUM(rliq.sefint - rliq.sefintpaid) AS sefint, 
	SUM(rliq.sefdisc - rliq.sefdisctaken) AS sefdisc, 
	SUM(rliq.sefcredit) AS sefcredit,
	SUM(rliq.sefint - rliq.sefintpaid - rliq.sefdisc - rliq.sefdisctaken ) AS  sefdp,
	SUM(rliq.sef + rliq.sefint - rliq.sefdisc - rliq.sefdisctaken - rliq.sefpaid - rliq.sefintpaid) AS sefnet,
	SUM(rliq.firecode - rliq.firecodepaid) AS firecode,
	rl.barangayid
FROM faas f
	INNER JOIN rpu r ON f.rpuid = r.objid 
	INNER JOIN realproperty rp ON r.realpropertyid = rp.objid 
	INNER JOIN rptledger rl ON f.objid = rl.faasid
	INNER JOIN rptledgeritem rli ON rl.objid = rli.rptledgerid
	INNER JOIN rptledgeritem_qtrly rliq ON rli.objid = rliq.rptledgeritemid 
	INNER JOIN rptledgerfaas rlf ON rli.rptledgerfaasid = rlf.objid
WHERE rl.objid = $P{rptledgerid}
 AND rli.year <= ${billtoyear}
 AND rli.year >= $P{currentyr}
 AND rli.qtrly = 1 
 AND rliq.state = 'OPEN'
 AND rliq.qtr <= $P{billtoqtr}
GROUP BY rli.year, rliq.qtr 
ORDER BY rli.year, rliq.qtr 

[deleteQtrlyLedgerItems]
DELETE FROM rptledgeritem_qtrly
WHERE rptledgeritemid IN (
	SELECT rli.objid 
	FROM rptledger rl 
		INNER JOIN rptledgeritem rli ON rl.objid = rli.rptledgerid 
		INNER JOIN faas f ON rl.faasid = f.objid 
	WHERE ${filters}
	 AND rl.state = 'APPROVED'
	 AND rli.year < $P{currentyr}
	 AND rli.state = 'OPEN' 
	 AND rli.qtrly = 1 
	 AND rli.lastqtrpaid = 0 
)


[resetLedgerItemQtrlyFlag]
UPDATE rptledgeritem rli, rptledger rl, faas f SET
	rli.qtrly = 0 
WHERE ${filters}
  AND rli.rptledgerid = rl.objid 
  AND rl.faasid = f.objid 
  AND rl.state = 'APPROVED'
  AND rli.year < $P{currentyr}
 AND rli.state = 'OPEN' 
 AND rli.lastqtrpaid = 0 


[insertQtrlyLedgerItems] 
INSERT INTO rptledgeritem_qtrly(
    objid,
    state,
    rptledgerid,
    rptledgeritemid,
    year,
    qtr,
    assessedvalue,
    qtrlyav,
    basic,
    basicpaid,
    basicint,
    basicintpaid,
    basicintpartial,
    basicdisc,
    basicdisctaken,
    basicamnesty,
    basicintamnesty,
    basiccredit,
    sef,
    sefpaid,
    sefint,
    sefintpaid,
    sefintpartial,
    sefdisc,
    sefdisctaken,
    sefamnesty,
    sefintamnesty,
    sefcredit,
    firecode,
    firecodepaid,
    revtype,
    amnestyinfo,
    forpayment,
    partial
)
SELECT
        CONCAT(rli.objid, '-', q.qtrid) AS 'objid',
        'OPEN' AS 'state',
        rli.rptledgerid,
        rli.objid,
        rli.year,
        q.qtrid AS qtr,
        rli.assessedvalue,
        CASE 
                WHEN qtrid < 4 THEN ROUND(rli.assessedvalue / 4.0, 2) 
                ELSE rli.assessedvalue - ROUND(rli.assessedvalue / 4.0, 2) * 3.0
        END AS qtrlyav,
        CASE 
                WHEN qtrid < 4 THEN ROUND(rli.basic / 4.0, 2) 
                ELSE rli.basic - ROUND(rli.basic / 4.0, 2) * 3.0
        END AS basic,
        0 AS basicpaid,
        CASE 
                WHEN qtrid < 4 THEN ROUND(rli.basicint / 4.0, 2) 
                ELSE rli.basicint - ROUND(rli.basicint / 4.0, 2) * 3.0
        END AS basicint,
        0.0 AS basicintpaid,
        0.0 AS basicintpartial,
        CASE 
                WHEN qtrid < 4 THEN ROUND(rli.basicdisc / 4.0, 2) 
                ELSE rli.basicdisc - ROUND(rli.basicdisc / 4.0, 2) * 3.0
        END AS basicdisc,
        0.0 AS basicdisctaken,
        CASE 
                WHEN qtrid < 4 THEN ROUND(rli.basicamnesty / 4.0, 2) 
                ELSE rli.basicamnesty - ROUND(rli.basicamnesty / 4.0, 2) * 3.0
        END AS basicamnesty,
        CASE 
                WHEN qtrid < 4 THEN ROUND(rli.basicintamnesty / 4.0, 2) 
                ELSE rli.basicintamnesty - ROUND(rli.basicintamnesty / 4.0, 2) * 3.0
        END AS basicintamnesty,
        0.0 AS basiccredit,
        CASE 
                WHEN qtrid < 4 THEN ROUND(rli.sef / 4.0, 2) 
                ELSE rli.sef - ROUND(rli.sef / 4.0, 2) * 3.0
        END AS sef,
        0 AS sefpaid,
        CASE 
                WHEN qtrid < 4 THEN ROUND(rli.sefint / 4.0, 2) 
                ELSE rli.sefint - ROUND(rli.sefint / 4.0, 2) * 3.0
        END AS sefint,
        0.0 AS sefintpaid,
        0.0 AS sefintpartial,
        CASE 
                WHEN qtrid < 4 THEN ROUND(rli.sefdisc / 4.0, 2) 
                ELSE rli.sefdisc - ROUND(rli.sefdisc / 4.0, 2) * 3.0
        END AS sefdisc,
        0.0 AS sefdisctaken,
        CASE 
                WHEN qtrid < 4 THEN ROUND(rli.sefamnesty / 4.0, 2) 
                ELSE rli.sefamnesty - ROUND(rli.sefamnesty / 4.0, 2) * 3.0
        END AS sefamnesty,
        CASE 
                WHEN qtrid < 4 THEN ROUND(rli.sefintamnesty / 4.0, 2) 
                ELSE rli.sefintamnesty - ROUND(rli.sefintamnesty / 4.0, 2) * 3.0
        END AS sefintamnesty,
        0.0 AS sefcredit,
        CASE 
                WHEN qtrid < 4 THEN ROUND(rli.firecode / 4.0, 2) 
                ELSE rli.firecode - ROUND(rli.firecode / 4.0, 2) * 3.0
        END AS firecode,
        0.0 AS firecodepaid,
        rli.revtype,
        rli.amnestyinfo,
        $P{forpayment} AS forpayment,
        0 AS partial
FROM rptledger rl
        INNER JOIN rptledgeritem rli ON rl.objid = rli.rptledgerid
        INNER JOIN faas f ON rl.faasid = f.objid,
        sys_quarter q
WHERE rl.objid = $P{rptledgerid}
  AND rli.year = ${billtoyear}
  AND rli.qtrly = 0 


[findTotalFireCode]
SELECT SUM(firecode) AS totalfirecode 
FROM rptledgeritem_qtrly 
WHERE rptledgerid = $P{rptledgerid}	
  AND year = $P{billtoyear}


[chargeFireCodeOnFirstQtr]
UPDATE rptledgeritem_qtrly rliq SET 
	rliq.firecode = CASE WHEN rliq.qtr = 1 THEN $P{totalfirecode} ELSE 0.0 END 
WHERE rliq.rptledgerid = $P{rptledgerid}	
  AND rliq.year = $P{billtoyear}
 


[setLedgerItemQtrlyFlag]
UPDATE rptledgeritem SET 
	qtrly = 1
WHERE rptledgerid = $P{rptledgerid}  AND year = $P{billtoyear}



[resetAdvanceBillFlag]
UPDATE rptledger rl, faas f SET
	rl.advancebill = 0, 
	rl.nextbilldate = null 
WHERE ${filters}
 AND rl.faasid = f.objid
 AND rl.state = 'APPROVED'
 AND rl.advancebill = 1



[clearLedgerBillingInfoFlags]
UPDATE rptledger rl, faas f SET
	rl.nextbilldate = null 
WHERE ${filters}
 AND rl.faasid = f.objid
 AND rl.state = 'APPROVED'
 
 [updateLedgerItemForPaymentFlagById]
 UPDATE rptledgeritem SET forpayment = $P{forpayment} WHERE objid = $P{objid}


[getFullyPaidItems]	
SELECT t.*
FROM (
	SELECT 
		rl.objid AS rptledgerid,
		rli.objid AS rptledgeritemid,
		NULL AS rptledgeritemqtrlyid,
		rli.year, 
		0 AS qtr,
		rli.basic - rli.basicpaid AS basic,
		rli.basicamnesty,
		rli.basicint - rli.basicintpaid  AS basicint,
		rli.basicintamnesty,
		rli.sef - rli.sefpaid AS sef,
		rli.sefamnesty,
		rli.sefint - rli.sefintpaid AS  sefint,
		rli.sefintamnesty,
		rli.firecode - rli.firecodepaid AS firecode,
		( 
			rli.basic - rli.basicpaid - rli.basicdisc + rli.basicint - rli.basicintpaid + 
			rli.sef - rli.sefpaid - rli.sefdisc +  rli.sefint - rli.sefintpaid  +
			rli.firecode - rli.firecodepaid
		) AS total
	FROM rptledger rl
			INNER JOIN rptledgeritem rli ON rl.objid = rli.rptledgerid
	WHERE rl.objid = $P{rptledgerid}
	  AND rli.state = 'OPEN'
	  AND rli.forpayment = 1 

	UNION ALL

	SELECT 
		rl.objid AS rptledgerid,
		rli.objid AS rptledgeritemid,
		rliq.objid AS rptledgeritemqtrlyid,
		rliq.year, 
		rliq.qtr AS qtr,
		rliq.basic - rliq.basicpaid  AS basic,
		rliq.basicamnesty  AS basicamnesty,
		rliq.basicint - rliq.basicintpaid   AS basicint,
		rliq.basicintamnesty AS basicintamnesty,
		rliq.sef - rliq.sefpaid  AS sef,
		rliq.sefamnesty AS sefamnesty,
		rliq.sefint - rliq.sefintpaid  AS  sefint,
		rliq.sefintamnesty AS sefintamnesty,
		rliq.firecode - rliq.firecodepaid AS firecode,
		(
			rliq.basic - rliq.basicpaid - rliq.basicdisc + 	rliq.basicint - rliq.basicintpaid + 
			rliq.sef - rliq.sefpaid - rliq.sefdisc + rliq.sefint - rliq.sefintpaid  +
			rliq.firecode - rliq.firecodepaid 
		) AS total
	FROM rptledger rl
			INNER JOIN rptledgeritem rli ON rl.objid = rli.rptledgerid
			INNER JOIN rptledgeritem_qtrly rliq ON rli.objid = rliq.rptledgeritemid 
	WHERE rl.objid = $P{rptledgerid}
	  AND rliq.state = 'OPEN'
	  AND rliq.forpayment = 1   
) t
ORDER BY t.year, t.qtr 


[resetLedgerItemForPaymentFlag]
UPDATE rptledgeritem SET 
	forpayment = 0, partial = 0 
WHERE rptledgerid = $P{rptledgerid}
  AND year > $P{year}

[resetQuarterlyLedgerItemForPaymentFlag]
UPDATE rptledgeritem_qtrly SET 
	forpayment = 0, partial = 0  
WHERE rptledgerid = $P{rptledgerid}
  AND (year > $P{year} OR (year = $P{year} AND qtr > $P{qtr}))

[updateQuarterlyLedgerItemForPaymentFlagByYear]
UPDATE rptledgeritem_qtrly SET 
	forpayment = $P{forpayment} 
WHERE rptledgerid = $P{rptledgerid}
  AND year = $P{year}

[updatePartialInfo]
UPDATE rptledgeritem_qtrly SET
	partialbasic = $P{partialbasic},
	partialbasicint = $P{partialbasicint},
	partialbasicdisc = $P{partialbasicdisc},
	partialsef = $P{partialsef},
	partialsefint = $P{partialsefint},
	partialsefdisc = $P{partialsefdisc},
	partial = 1
WHERE objid = $P{rptledgeritemqtrlyid}	

