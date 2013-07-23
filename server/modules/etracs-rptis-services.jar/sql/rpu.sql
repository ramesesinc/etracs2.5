[checkDuplicateFullPin]
SELECT objid 
FROM rpu
WHERE objid <> $P{objid} AND ry = $P{ry} AND fullpin = $P{fullpin} 


[getState]   
SELECT state FROM rpu WHERE objid = $P{objid}


[getLandRpuById]
SELECT *
FROM rpu 
WHERE objid = $P{objid}


[getLandRpuByRealPropertyId]
SELECT rpu.*
FROM rpu rpu
	INNER JOIN realproperty rp ON rpu.realpropertyid = rp.objid 
WHERE rpu.realpropertyid = $P{realpropertyid} 
  AND rpu.rputype = 'land' 


[updateBldgRpuLandRpuId]  
UPDATE bldgrpu b, rpu r SET 
	b.landrpuid = $P{landrpuid}
WHERE b.objid = r.objid 
  AND r.realpropertyid = $P{realpropertyid}
  AND r.state <> 'CANCELLED' 


[updateMachRpuLandRpuId]  
UPDATE machrpu m, rpu r SET 
	m.landrpuid = $P{landrpuid}
WHERE m.objid = r.objid 
  AND r.realpropertyid = $P{realpropertyid}
  AND r.state <> 'CANCELLED' 


[updatePlantTreeRpuLandRpuId]  
UPDATE planttreerpu p, rpu r SET 
	p.landrpuid = $P{landrpuid}
WHERE p.objid = r.objid 
  AND r.realpropertyid = $P{realpropertyid}
  AND r.state <> 'CANCELLED'   


[updateMiscRpuLandRpuId]  
UPDATE miscrpu m, rpu r SET 
	m.landrpuid = $P{landrpuid}
WHERE m.objid = r.objid 
  AND r.realpropertyid = $P{realpropertyid}
  AND r.state <> 'CANCELLED'     