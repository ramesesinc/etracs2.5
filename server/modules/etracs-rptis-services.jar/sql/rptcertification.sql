[getList]
SELECT * 
FROM rptcertification
${filters}
ORDER BY txnno DESC


[insertLandHoldingItems]
INSERT INTO rptcertificationitem (rptcertificationid,faasid)
SELECT 
	$P{rptcertificationid},
	f.objid 
FROM faas f
	INNER JOIN rpu r ON f.rpuid = r.objid 
	INNER JOIN realproperty rp ON r.realpropertyid = rp.objid 
	INNER JOIN propertyclassification pc ON r.classification_objid = pc.objid 
	INNER JOIN lgu_barangay b ON rp.barangayid = b.objid 
WHERE f.taxpayerid	= $P{taxpayerid}
  AND f.state = 'CURRENT' 
  AND r.rputype = 'land'


[insertLandHoldingWithImprovementItems]
INSERT INTO rptcertificationitem (rptcertificationid,faasid)
SELECT 
	$P{rptcertificationid},
	f.objid 
FROM faas f
	INNER JOIN rpu r ON f.rpuid = r.objid 
	INNER JOIN realproperty rp ON r.realpropertyid = rp.objid 
	INNER JOIN propertyclassification pc ON r.classification_objid = pc.objid 
	INNER JOIN lgu_barangay b ON rp.barangayid = b.objid 
WHERE f.taxpayerid	= $P{taxpayerid}
  AND f.state = 'CURRENT' 
  AND r.rputype = 'land'
  AND EXISTS( SELECT * FROM rpu 
  			  WHERE realpropertyid = r.realpropertyid 
  			    AND state = 'CURRENT' 
  			    AND rputype <> 'land'
  			)

[insertLandHoldingWithNoImprovementItems]
INSERT INTO rptcertificationitem (rptcertificationid,faasid)
SELECT 
	$P{rptcertificationid},
	f.objid 
FROM faas f
	INNER JOIN rpu r ON f.rpuid = r.objid 
	INNER JOIN realproperty rp ON r.realpropertyid = rp.objid 
	INNER JOIN propertyclassification pc ON r.classification_objid = pc.objid 
	INNER JOIN lgu_barangay b ON rp.barangayid = b.objid 
WHERE f.taxpayerid	= $P{taxpayerid}
  AND f.state = 'CURRENT' 
  AND r.rputype = 'land'
  AND NOT EXISTS( SELECT * FROM rpu 
  			  WHERE realpropertyid = r.realpropertyid 
  			    AND state = 'CURRENT' 
  			    AND rputype <> 'land'
  			)


[getLandHoldingItems]
SELECT 
	f.tdno,
	f.taxpayername, 
	f.ownername, 
	f.titleno,	
	pc.code AS classcode, 
	pc.name AS classname,
	rp.cadastrallotno,
	b.name AS barangay, 
	r.totalareaha AS totalareaha,
	r.totalareasqm AS totalareasqm,
	r.totalav,
	r.totalmv, 
	rp.surveyno
FROM rptcertificationitem rci 
	INNER JOIN faas f ON rci.faasid = f.objid 
	INNER JOIN rpu r ON f.rpuid = r.objid 
	INNER JOIN realproperty rp ON r.realpropertyid = rp.objid 
	INNER JOIN propertyclassification pc ON r.classification_objid = pc.objid 
	INNER JOIN lgu_barangay b ON rp.barangayid = b.objid 
WHERE rci.rptcertificationid = $P{rptcertificationid}
ORDER BY r.fullpin






[insertMultipleItems]
INSERT INTO rptcertificationitem (rptcertificationid,faasid)
SELECT 
	$P{rptcertificationid},
	f.objid 
FROM faas f
	INNER JOIN rpu r ON f.rpuid = r.objid 
	INNER JOIN realproperty rp ON r.realpropertyid = rp.objid 
	INNER JOIN propertyclassification pc ON r.classification_objid = pc.objid 
	INNER JOIN lgu_barangay b ON rp.barangayid = b.objid 
WHERE f.taxpayerid	= $P{taxpayerid}
  AND f.state = 'CURRENT' 


[getMultipleItems]
SELECT 
	f.tdno,
	f.taxpayername, 
	f.ownername, 
	f.titleno,	
	pc.code AS classcode, 
	pc.name AS classname,
	rp.cadastrallotno,
	b.name AS barangay, 
	r.rputype, 
	r.totalareaha AS totalareaha,
	r.totalareasqm AS totalareasqm,
	r.totalav,
	r.totalmv, 
	rp.surveyno
FROM rptcertificationitem rci 
	INNER JOIN faas f ON rci.faasid = f.objid 
	INNER JOIN rpu r ON f.rpuid = r.objid 
	INNER JOIN realproperty rp ON r.realpropertyid = rp.objid 
	INNER JOIN propertyclassification pc ON r.classification_objid = pc.objid 
	INNER JOIN lgu_barangay b ON rp.barangayid = b.objid 
WHERE rci.rptcertificationid = $P{rptcertificationid}  
ORDER BY r.fullpin


[getFaasInfo]
SELECT 
	f.tdno, f.titleno, f.titledate, 
	pc.code AS classcode, 
	pc.name AS classname, 
	r.ry, r.realpropertyid, r.rputype, r.fullpin, r.totalmv, r.totalav,
	r.totalareasqm, r.totalareaha,
	rp.barangayid, rp.cadastrallotno, rp.blockno, rp.surveyno,
	b.name AS barangay_name
FROM faas f
	INNER JOIN rpu r ON f.rpuid = r.objid 
	INNER JOIN realproperty rp ON r.realpropertyid = rp.objid 
	INNER JOIN propertyclassification pc ON r.classification_objid = pc.objid 
	INNER JOIN lgu_barangay b ON rp.barangayid = b.objid 
WHERE f.objid = $P{faasid}


[getAnnotation]
SELECT objid, txnno
FROM faasannotation
WHERE faasid = $P{faasid} 
  AND STATE = 'APPROVED'


[getProperties]
SELECT objid FROM faas WHERE taxpayerid = $P{taxpayerid} AND state = 'CURRENT'