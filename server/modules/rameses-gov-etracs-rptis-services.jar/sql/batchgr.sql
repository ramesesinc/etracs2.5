[getLandFAASIdForRevision]
SELECT f.objid
FROM faas f 
    INNER JOIN rpu r ON f.rpuid = r.objid 
    INNER JOIN realproperty rp ON r.realpropertyid = rp.objid
WHERE rp.barangayid LIKE  $P{barangayid}
  AND r.ry < $P{newry}
  AND r.rputype = 'land' 
  AND f.state = 'CURRENT'
  AND NOT EXISTS(
    SELECT * FROM faas fx 
    INNER JOIN rpu rx ON fx.rpuid = rx.objid 
    WHERE fx.prevtdno = f.tdno AND rx.ry = $P{newry}
  )  
ORDER BY fullpin 


  
[insertBatchGRError]  
INSERT INTO batchgrerror(faasid, ry, msg)
VALUES($P{faasid}, $P{ry}, $P{msg})


[deleteBatchGRError]
DELETE FROM batchgrerror WHERE faasid = $P{faasid} 



[getCurrentRY]
SELECT ry FROM rptsetting  

[getRYSetting_land]
SELECT * FROM landrysetting  where ry = $P{ry}

[getRYSetting_bldg]
SELECT * FROM bldgrysetting  where ry = $P{ry}

[getRYSetting_mach]
SELECT * FROM machrysetting  where ry = $P{ry}

[getRYSetting_planttree]
SELECT * FROM planttreerysetting  where ry = $P{ry}

[getRYSetting_misc]
SELECT * FROM miscrysetting  where ry = $P{ry}

[getLandRYSetting] 
SELECT * FROM landrysetting ORDER BY ry 

[getBldgRYSetting] 
SELECT * FROM bldgrysetting ORDER BY ry 

[getMachRYSetting] 
SELECT * FROM machrysetting ORDER BY ry 

[getPlantTreeRYSetting] 
SELECT * FROM planttreerysetting ORDER BY ry 

[getMiscRYSetting] 
SELECT * FROM miscrysetting ORDER BY ry 



