[getList]
SELECT *
FROM assessmentnotice
where 1=1 ${filters}
ORDER BY txnno DESC 


[getItems]
SELECT 
	ni.*,
	f.effectivityyear,
	f.effectivityqtr, 
	f.tdno,
	ts.dtsigned , 
	rpu.rputype,
	rpu.ry,
	rpu.fullpin ,
	rpu.taxable,
	rpu.totalareaha,
	rpu.totalareasqm,
	rpu.totalbmv,
	rpu.totalmv,
	rpu.totalav,
	rp.section,
	rp.parcel,
	rp.surveyno,
	rp.cadastrallotno,
	rp.blockno,
	rp.claimno,
	b.name AS barangay,
	pc.code AS classcode
FROM assessmentnoticeitem ni 
	INNER JOIN faas f ON ni.faasid = f.objid 
	LEFT JOIN txnsignatory ts on ts.refid = f.objid and ts.type='APPROVER'
	INNER JOIN rpu rpu ON f.rpuid = rpu.objid
	INNER JOIN propertyclassification pc ON rpu.classification_objid = pc.objid
	LEFT JOIN realproperty rp ON rpu.realpropertyid = rp.objid
	LEFT JOIN barangay b ON rp.barangayid = b.objid 
WHERE ni.assessmentnoticeid = $P{assessmentnoticeid}

[getApprovedFaasList]
SELECT 
	f.objid AS faasid,
	f.effectivityyear,
	f.tdno,
	rpu.rputype,
	rpu.ry,
	rpu.fullpin ,
	rpu.taxable,
	rpu.totalareaha,
	rpu.totalareasqm,
	rpu.totalbmv,
	rpu.totalmv,
	rpu.totalav,
	rp.section,
	rp.parcel,
	rp.surveyno,
	rp.cadastrallotno,
	rp.blockno,
	rp.claimno,
	b.name AS barangay,
	pc.code AS classcode
FROM faas f 
	INNER JOIN rpu rpu ON f.rpuid = rpu.objid
	INNER JOIN propertyclassification pc ON rpu.classification_objid = pc.objid
	LEFT JOIN realproperty rp ON rpu.realpropertyid = rp.objid
	LEFT JOIN barangay b ON rp.barangayid = b.objid 
WHERE f.taxpayer_objid = $P{taxpayerid}
  AND f.state = 'CURRENT'