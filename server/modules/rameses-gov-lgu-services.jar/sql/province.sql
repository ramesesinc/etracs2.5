[lookup]
SELECT *
FROM province b 
WHERE b.name LIKE $P{name}  
ORDER BY b.name 

[changeState]
UPDATE province SET 
	state=$P{newstate} 
WHERE 
	objid=$P{objid} AND state=$P{oldstate} 

[getById]
SELECT * FROM province WHERE objid = $P{objid}