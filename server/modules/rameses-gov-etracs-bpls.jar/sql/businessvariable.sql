[getList]
SELECT *
FROM businessvariable
WHERE name LIKE $P{searchtext}

[approve]
UPDATE businessvariable 
SET state = 'APPROVED'
WHERE objid = $P{objid}

[getLookup]
SELECT *
FROM businessvariable
WHERE name LIKE $P{searchtext}

[getLookupByType]
SELECT *
FROM businessvariable
WHERE name LIKE $P{searchtext}
AND datatype = $P{datatype}
