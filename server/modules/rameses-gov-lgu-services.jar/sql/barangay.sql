[getList]
SELECT b.objid, b.state, b.indexno, b.pin, b.name, b.oldpin, b.oldindexno, 
o.code, op.orgclass AS parent_orgclass, op.name AS parent_name
FROM barangay b
INNER JOIN sys_org o ON b.objid=o.objid 
LEFT JOIN sys_org op ON o.parent_objid=op.objid 
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