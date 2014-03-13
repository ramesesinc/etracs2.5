[getOpenLedgersByBarangay]
SELECT rl.objid, rl.barangayid 
FROM rptledger rl
	INNER JOIN faas f ON rl.faasid = f.objid 
WHERE barangayid = $P{barangayid}
  AND f.state = 'CURRENT'
  AND rl.state = 'APPROVED'
  AND (rl.lastyearpaid < $P{cy}  OR (rl.lastyearpaid = $P{cy} AND lastqtrpaid < 4))
  

[cleanup]
DELETE FROM report_rptdelinquency WHERE barangayid = $P{objid} 



[getDelinquentLedgers]
SELECT
	f.taxpayer_name AS taxpayername,
	f.taxpayer_address AS taxpayeraddress,
	r.fullpin AS pin,
	f.tdno,
	pc.code AS classcode,
	r.rputype,
	b.name AS barangay,
	rl.lastyearpaid,
	rl.lastqtrpaid,
	b.objid,
	(rr.basic - rr.basicdisc + rr.basicint) AS basicnet,
	(rr.sef - rr.sefdisc + rr.sefint) AS sefnet,
	(rr.basic - rr.basicdisc + rr.basicint  + rr.sef - rr.sefdisc + rr.sefint ) AS total,
	rr.dtgenerated
FROM report_rptdelinquency rr
	INNER JOIN rptledger rl ON rr.rptledgerid = rl.objid 
	INNER JOIN faas f ON rl.faasid = f.objid 
	INNER JOIN rpu r ON f.rpuid = r.objid 
	INNER JOIN propertyclassification pc ON r.classification_objid = pc.objid
	INNER JOIN barangay b ON rl.barangayid = b.objid 
WHERE rr.barangayid = $P{objid}
ORDER BY r.fullpin 

