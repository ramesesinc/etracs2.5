[getList]
SELECT *
FROM businessapplication
WHERE state = $P{state}

[getLookup]
SELECT 
objid, appno, apptype, permitee_name, permitee_objid, tradename
FROM businessapplication
WHERE permitee_objid = $P{permiteeid}
