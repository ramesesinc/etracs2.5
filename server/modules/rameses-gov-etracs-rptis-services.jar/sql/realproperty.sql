[getRealPropertyByPinRy]
SELECT * FROM realproperty WHERE pin = $P{pin} AND ry = $P{ry}


[checkDuplicatePin]
SELECT * FROM realproperty 
WHERE objid <> $P{objid}
AND pin = $P{pin} 
AND ry = $P{ry}


[getState]   
SELECT state FROM realproperty WHERE objid = $P{objid}

[cancelPrevRealPropertyById]
UPDATE realproperty SET state = 'CANCELLED' WHERE objid = $P{objid}



[updateState]
UPDATE realproperty SET state = $P{state} WHERE objid = $P{objid}