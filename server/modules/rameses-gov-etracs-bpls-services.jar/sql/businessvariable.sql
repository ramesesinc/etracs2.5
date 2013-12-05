[getList]
SELECT *
FROM businessvariable
WHERE name LIKE $P{searchtext}
ORDER BY system DESC, sortorder ASC, objid ASC

[approve]
UPDATE businessvariable 
SET state = 'APPROVED'
WHERE objid = $P{objid}

[getLookup]
SELECT *
FROM businessvariable
WHERE name LIKE $P{searchtext}
ORDER BY system DESC, sortorder ASC, objid ASC

[getLookupByType]
SELECT *
FROM businessvariable
WHERE name LIKE $P{searchtext}
AND datatype = $P{datatype}
ORDER BY system DESC, sortorder ASC, objid ASC
