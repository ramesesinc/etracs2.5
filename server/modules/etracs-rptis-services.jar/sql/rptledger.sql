[getList]
SELECT 
	rl.*,
	f.tdno, f.txntype_objid,
	f.taxpayerid, f.taxpayername, f.taxpayeraddress,
	f.ownername, f.owneraddress,
	f.prevtdno, f.prevpin, f.prevowner, f.prevmv, f.prevav,
	rpu.rputype, rpu.ry, rpu.fullpin, rpu.taxable,
	rpu.totalmv, rpu.totalav, rpu.totalareaha, rpu.totalareasqm, 
	rp.surveyno,rp.cadastrallotno,
	b.name AS barangay_name
FROM faas f 
	INNER JOIN rpu rpu ON f.rpuid = rpu.objid
	INNER JOIN realproperty rp ON rpu.realpropertyid = rp.objid
	INNER JOIN lgu_barangay b ON rp.barangayid = b.objid 
	INNER JOIN rptledger rl ON rl.faasid = f.objid 
${filters}	
ORDER BY rl.state, f.tdno 


[openLedger]
SELECT 
	rl.*,
	f.tdno, f.txntype_objid,
	f.taxpayerid, f.taxpayername, f.taxpayeraddress,
	f.ownername, f.owneraddress,
	f.prevtdno, f.prevpin, f.prevowner, f.prevmv, f.prevav,
	rpu.rputype, rpu.ry, rpu.fullpin, rpu.taxable,
	rpu.totalmv, rpu.totalav, rpu.totalareaha, rpu.totalareasqm, 
	rp.surveyno,rp.cadastrallotno,
	b.name AS barangay_name
FROM rptledger rl 
	INNER JOIN faas f ON rl.faasid = f.objid
	INNER JOIN rpu rpu ON f.rpuid = rpu.objid
	INNER JOIN realproperty rp ON rpu.realpropertyid = rp.objid
	INNER JOIN lgu_barangay b ON rp.barangayid = b.objid 
WHERE rl.objid = $P{objid}
ORDER BY rl.state, f.tdno 

	
[getLedgerByFaas]	
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
ORDER BY rlf.fromyear DESC 

[getLedgerFaasByFaasId]
SELECT rlf.*,
	pc.code AS classification_code,
	pc.name AS classification_name,
	pc1.code AS actualuse_code,
	pc1.name AS actualuse_name
FROM rptledgerfaas rlf
	INNER JOIN propertyclassification pc ON rlf.classification_objid = pc.objid 
	LEFT JOIN propertyclassification pc1 ON rlf.actualuse_objid = pc1.objid 
WHERE rlf.rptledgerid = $P{rptledgerid} 
  AND rlf.faasid = $P{faasid}
ORDER BY rlf.fromyear DESC 

[getLedgerItems]
SELECT 
	rli.objid, rli.year, rli.qtr,
	rli.basic,	rli.basicpaid,  rli.sef, rli.sefpaid,
	rli.assessedvalue, rli.qtrlyav,
	rlf.tdno 
FROM rptledgeritem rli
	INNER JOIN rptledgerfaas rlf ON rli.rptledgerfaasid = rlf.objid 
WHERE rli.rptledgerid = $P{rptledgerid} 
ORDER BY rli.year DESC, rli.qtr DESC 



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