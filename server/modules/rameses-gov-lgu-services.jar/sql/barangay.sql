[getList]
SELECT b.objid, b.state, b.indexno, b.pin, b.name, b.oldpin, b.oldindexno, so.code,
o.objid AS parent_objid, o.name AS parent_name, o.orgclass AS parent_orgclass
FROM barangay b 
INNER JOIN sys_org so ON so.objid=b.objid
LEFT JOIN sys_org o ON b.parentid=o.objid 
WHERE b.name LIKE $P{name}
ORDER BY b.name 

[lookup]
SELECT b.objid, b.state, b.indexno, b.pin, b.name, b.oldpin, b.oldindexno
FROM barangay b 
WHERE b.name LIKE $P{name}  
ORDER BY b.name 

[changeState]
UPDATE barangay SET 
	state=$P{newstate} 
WHERE 
	objid=$P{objid} AND state=$P{oldstate} 

[search]
SELECT * FROM barangay


[getById]
SELECT * FROM barangay WHERE objid = $P{objid}

[getListByParentid]
SELECT b.objid, b.state, b.indexno, b.pin, b.name 
FROM barangay b 
WHERE b.parentid LIKE $P{parentid}  
ORDER BY b.name 