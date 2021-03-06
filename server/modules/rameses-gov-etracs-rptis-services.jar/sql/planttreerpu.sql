[getAssessLevelById]
SELECT * FROM landassesslevel WHERE objid = $P{objid}

[getRYSetting]
SELECT * FROM planttreerysetting s, rysetting_lgu rl 
WHERE s.objid = rl.objid 
  AND rl.lguid LIKE $P{lguid} 
  AND ry = $P{ry} 

[getLatestRevisedLandFaas] 
SELECT objid, docstate, rputype, txntype, taxpayerid, ry   
FROM faaslist   
WHERE pin = $P{pin}  
  AND rputype = 'land' 
  AND docstate <> 'CANCELLED'  
  AND ry = $P{ry} 
  AND txntype = 'GR'  
  
[getPlantTreeDetails]
SELECT
  pd.*,
  uv.code AS planttreeunitvalue_code,
  uv.name AS planttreeunitvalue_name,
  uv.unitvalue AS planttreeunitvalue_unitvalue,
  au.code AS actualuse_code,
  au.name AS actualuse_name,
  au.rate AS actualuse_rate,
  pt.code AS planttree_code,
  pt.name AS planttree_name
FROM planttreedetail pd
  INNER JOIN planttreeunitvalue uv ON pd.planttreeunitvalue_objid = uv.objid 
  INNER JOIN planttreeassesslevel au ON pd.actualuse_objid = au.objid 
  INNER JOIN planttree pt ON pd.planttree_objid = pt.objid 
WHERE pd.planttreerpuid = $P{objid} 