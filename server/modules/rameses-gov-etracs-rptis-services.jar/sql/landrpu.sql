[getLandDetails]
SELECT ld.*,
	sub.code AS subclass_code,
	sub.name AS subclass_name,
	sub.unitvalue AS subclass_unitvalue,
	spc.code AS specificclass_code,
	spc.name AS specificclass_name,
	spc.areatype AS specificclass_areatype,
	lal.code AS actualuse_code,
	lal.name AS actualuse_name,
	lal.fixrate AS actualuse_fixrate,
	lal.rate AS actualuse_rate,
	pc.objid AS actualuse_classification_objid,
	pc.code AS actualuse_classification_code,
	pc.name AS actualuse_classification_name,
	st.striplevel AS stripping_striplevel,
	st.rate AS stripping_rate
FROM landdetail ld
	INNER JOIN lcuvsubclass sub ON ld.subclass_objid = sub.objid
	INNER JOIN lcuvspecificclass spc ON ld.specificclass_objid = spc.objid 
	INNER JOIN landassesslevel lal ON ld.actualuse_objid = lal.objid 
	INNER JOIN propertyclassification pc ON lal.classification_objid = pc.objid 
	LEFT JOIN lcuvstripping st ON ld.stripping_objid = st.objid 
WHERE ld.landrpuid = $P{landrpuid}
ORDER BY sub.code, st.striplevel 


[getLandAdjustments]
SELECT la.*,
	lat.code AS adjustmenttype_code,
	lat.name AS adjustmenttype_name,
	lat.expr AS adjustmenttype_expr
FROM landadjustment la
	INNER JOIN landadjustmenttype lat ON la.adjustmenttype_objid = lat.objid 
WHERE la.landrpuid = $P{landrpuid}
  AND la.type = $P{type}


[getLandDetailAdjustments]
SELECT la.*,
	lat.code AS adjustmenttype_code,
	lat.name AS adjustmenttype_name,
	lat.expr AS adjustmenttype_expr
FROM landadjustment la
	INNER JOIN landadjustmenttype lat ON la.adjustmenttype_objid = lat.objid 
WHERE la.landdetailid = $P{landdetailid}
  AND la.type = $P{type}


[getPlantTrees]  
SELECT 
	ptd.*,
	puv.code AS planttreeunitvalue_code,
	puv.name AS planttreeunitvalue_name,
	puv.unitvalue AS planttreeunitvalue_unitvalue,
	pt.code AS planttree_code,
	pt.name AS planttree_name,
	al.code AS actualuse_code,
	al.name AS actualuse_name,
	al.rate AS actualuse_rate
FROM planttreedetail ptd
	INNER JOIN planttreeunitvalue puv ON ptd.planttreeunitvalue_objid = puv.objid 
	INNER JOIN planttree pt ON ptd.planttree_objid = pt.objid 
	INNER JOIN planttreeassesslevel al ON ptd.actualuse_objid = al.objid 
WHERE ptd.landrpuid	= $P{landrpuid} 



[findAssessLevelRange]
SELECT r.rate
FROM landassesslevelrange r
  INNER JOIN landrysetting s ON r.landrysettingid = s.objid 
WHERE s.ry = $P{ry}
  AND r.landassesslevelid = $P{landassesslevelid}
  AND $P{marketvalue} >= r.mvfrom 
  AND ( $P{marketvalue} < r.mvto OR r.mvto = 0)


[getAdjustmentApplicationClassifications]  
SELECT pc.*
FROM landadjustmenttype_classification lc
	INNER JOIN propertyclassification pc ON lc.classification_objid = pc.objid 
WHERE lc.landadjustmenttypeid = $P{objid}


[findLandRpuByRealPropertyId]
SELECT * FROM rpu WHERE realpropertyid = $P{realpropertyid} AND rputype = 'land' AND state <> 'CANCELLED'



[getLatestRevisedLandFaas]
SELECT rp.*
FROM realproperty rp
	INNER JOIN rpu rpu ON rp.objid = rpu.realpropertyid
	INNER JOIN faas f ON rpu.objid = f.rpuid 
WHERE rp.ry = $P{ry} 
  AND rp.pin = $P{pin}
  AND rp.claimno 
  AND rp.state <> 'CANCELLED' 