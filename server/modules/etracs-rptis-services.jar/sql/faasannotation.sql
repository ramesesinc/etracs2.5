[getList]
SELECT fa.*,
	f.tdno AS faas_tdno,
	f.ownername AS faas_ownername,
	f.owneraddress AS faas_owneraddress,
	r.fullpin AS faas_fullpin,
	r.totalmv AS faas_totalmv,
	r.totalav AS faas_totalav,
	pc.code AS faas_classification,
	fat.objid AS annotationtype_objid,
	fat.type AS annotationtype_type
FROM faasannotation fa
	INNER JOIN faasannotationtype fat ON fa.annotationtype_objid = fat.objid 
	INNER JOIN faas f ON fa.faasid = f.objid 
	INNER JOIN rpu r ON f.rpuid = r.objid 
	INNER JOIN propertyclassification pc on r.classification_objid = pc.objid 
${filters}
ORDER BY fa.txnno DESC 


[getActiveAnnotationsByFaasId]
SELECT fa.*,
	f.tdno AS faas_tdno,
	f.ownername AS faas_ownername,
	f.owneraddress AS faas_owneraddress,
	r.fullpin AS faas_fullpin,
	r.totalmv AS faas_totalmv,
	r.totalav AS faas_totalav,
	pc.code AS faas_classification,
	fat.objid AS annotationtype_objid,
	fat.type AS annotationtype_type
FROM faasannotation fa
	INNER JOIN faasannotationtype fat ON fa.annotationtype_objid = fat.objid 
	INNER JOIN faas f ON fa.faasid = f.objid 
	INNER JOIN rpu r ON f.rpuid = r.objid 
	INNER JOIN propertyclassification pc on r.classification_objid = pc.objid 
WHERE fa.faasid = $P{faasid}
  AND fa.state = 'APPROVED'
ORDER BY fa.txnno DESC 


[open]
SELECT fa.*,
	f.tdno AS faas_tdno,
	f.ownername AS faas_ownername,
	f.owneraddress AS faas_owneraddress,
	r.fullpin AS faas_fullpin,
	r.totalmv AS faas_totalmv,
	r.totalav AS faas_totalav,
	pc.code AS faas_classification_code,
	fat.objid AS annotationtype_objid,
	fat.type AS annotationtype_type
FROM faasannotation fa
	INNER JOIN faasannotationtype fat ON fa.annotationtype_objid = fat.objid 
	INNER JOIN faas f ON fa.faasid = f.objid 
	INNER JOIN rpu r ON f.rpuid = r.objid 
	INNER JOIN propertyclassification pc on r.classification_objid = pc.objid 
WHERE fa.objid = $P{objid}


[getAnnotationTypes]
SELECT * FROM faasannotationtype ORDER BY type 


