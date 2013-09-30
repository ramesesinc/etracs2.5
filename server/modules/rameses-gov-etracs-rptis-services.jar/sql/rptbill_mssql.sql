
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
UPDATE rl SET
	rl.nextbilldate = $P{nextbilldate}
FROM rptledger rl, faas f 	
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
		CONVERT(VARCHAR(4),rli.year) + '' AS period,
		rli.basic - rli.basicpaid - rli.basicamnesty AS basic, 
		rli.basicint - rli.basicintpaid - rli.basicintamnesty AS basicint, 
		rli.basicdisc - rli.basicdisctaken AS basicdisc, 
		rli.basiccredit AS basiccredit,
		rli.basicint - rli.basicintpaid - rli.basicintamnesty - rli.basicdisc - rli.basicdisctaken  AS  basicdp,
		rli.basic + rli.basicint - rli.basicdisc - rli.basicdisctaken - rli.basicpaid - rli.basicamnesty - rli.basicintpaid - rli.basicintamnesty AS basicnet,
		rli.sef - rli.sefpaid - rli.sefamnesty AS sef, 
		rli.sefint - rli.sefintpaid - rli.sefintamnesty AS sefint, 
		rli.sefdisc - rli.sefdisctaken AS sefdisc, 
		rli.sefcredit AS sefcredit,
		rli.sefint - rli.sefintpaid - rli.sefintamnesty - rli.sefdisc - rli.sefdisctaken  AS  sefdp,
		rli.sef + rli.sefint - rli.sefdisc - rli.sefdisctaken - rli.sefpaid - rli.sefamnesty - rli.sefintpaid - rli.sefintamnesty AS sefnet,
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
	
	UNION ALL
	
	SELECT 
		rlf.tdno,
		rlf.assessedvalue,
		rliq.qtrlyav AS originalav,
		( CONVERT(VARCHAR(4),rli.year) + '-' + 
		  CASE WHEN MIN(rliq.qtr) = MAX(rliq.qtr) 
			THEN CONVERT(VARCHAR(1),MIN(rliq.qtr)) 
			ELSE (CONVERT(VARCHAR(1),MIN(rliq.qtr)) + CONVERT(VARCHAR(1),MAX(rliq.qtr))) 
		END ) AS period,
		SUM(rliq.basic - rliq.basicpaid - rliq.basicamnesty) AS basic, 
		SUM(rliq.basicint - rliq.basicintpaid - rliq.basicintamnesty) AS basicint, 
		SUM(rliq.basicdisc - rliq.basicdisctaken) AS basicdisc, 
		SUM(rliq.basiccredit) AS basiccredit,
		SUM(rliq.basicint - rliq.basicintpaid - rliq.basicintamnesty - rliq.basicdisc - rliq.basicdisctaken ) AS  basicdp,
		SUM(rliq.basic + rliq.basicint - rliq.basicdisc - rliq.basicdisctaken - rliq.basicpaid - rliq.basicamnesty - rliq.basicintpaid - rliq.basicintamnesty) AS basicnet,
		SUM(rliq.sef - rliq.sefpaid - rliq.sefamnesty) AS sef, 
		SUM(rliq.sefint - rliq.sefintpaid - rliq.sefintamnesty) AS sefint, 
		SUM(rliq.sefdisc - rliq.sefdisctaken) AS sefdisc, 
		SUM(rliq.sefcredit) AS sefcredit,
		SUM(rliq.sefint - rliq.sefintpaid - rliq.sefintamnesty - rliq.sefdisc - rliq.sefdisctaken ) AS  sefdp,
		SUM(rliq.sef + rliq.sefint - rliq.sefdisc - rliq.sefdisctaken - rliq.sefpaid - rliq.sefamnesty - rliq.sefintpaid - rliq.sefintamnesty) AS sefnet,
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
	GROUP BY  rli.year, rlf.tdno, rlf.assessedvalue, rliq.qtrlyav, rl.barangayid 
) tmp
ORDER BY tmp.period



[getCurrentBillItems]
SELECT 
	rlf.tdno,
	rlf.assessedvalue,
	rliq.qtrlyav AS originalav,
	CONVERT(VARCHAR(4),rli.year) + '-' + CONVERT(VARCHAR(1), rliq.qtr) AS period,
	rliq.basic - rliq.basicpaid - rliq.basicamnesty AS basic, 
	rliq.basicint - rliq.basicintpaid - rliq.basicintamnesty AS basicint, 
	rliq.basicdisc - rliq.basicdisctaken AS basicdisc, 
	rliq.basiccredit AS basiccredit,
	rliq.basicint - rliq.basicintpaid - rliq.basicintamnesty - rliq.basicdisc - rliq.basicdisctaken  AS  basicdp,
	rliq.basic + rliq.basicint - rliq.basicdisc - rliq.basicdisctaken - rliq.basicpaid - rliq.basicamnesty - rliq.basicintpaid - rliq.basicintamnesty AS basicnet,
	rliq.sef - rliq.sefpaid - rliq.sefamnesty AS sef, 
	rliq.sefint - rliq.sefintpaid - rliq.sefintamnesty AS sefint, 
	rliq.sefdisc - rliq.sefdisctaken AS sefdisc, 
	rliq.sefcredit AS sefcredit,
	rliq.sefint - rliq.sefintpaid - rliq.sefintamnesty - rliq.sefdisc - rliq.sefdisctaken  AS  sefdp,
	rliq.sef + rliq.sefint - rliq.sefdisc - rliq.sefdisctaken - rliq.sefpaid - rliq.sefamnesty - rliq.sefintpaid - rliq.sefintamnesty AS sefnet,
	rliq.firecode - rliq.firecodepaid AS firecode,
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
UPDATE rli SET
	rli.qtrly = 0 
FROM rptledgeritem rli, rptledger rl, faas f 	
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
    amnestyref,
    forpayment
)
SELECT
        rli.objid + '-' + CONVERT(VARCHAR(1),q.qtrid) AS 'objid',
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
        CASE WHEN qtrid = 1 THEN firecode ELSE 0 END AS firecode,
        0.0 AS firecodepaid,
        rli.revtype,
        rli.amnestyref,
        0 AS forpayment
FROM rptledger rl
        INNER JOIN rptledgeritem rli ON rl.objid = rli.rptledgerid
        INNER JOIN faas f ON rl.faasid = f.objid,
        sys_quarter q
WHERE rl.objid = $P{rptledgerid}
  AND rli.year = ${billtoyear}
  AND rli.qtrly = 0 



[setLedgerItemQtrlyFlag]
UPDATE rptledgeritem SET 
	qtrly = 1
WHERE rptledgerid = $P{rptledgerid}  AND year = $P{billtoyear}



[resetAdvanceBillFlag]
UPDATE rl SET
	rl.advancebill = 0, 
	rl.nextbilldate = null 
FROM rptledger rl, faas f	
WHERE ${filters}
 AND rl.faasid = f.objid
 AND rl.state = 'APPROVED'
 AND rl.advancebill = 1
 