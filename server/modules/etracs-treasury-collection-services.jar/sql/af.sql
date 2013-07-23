[getList]
SELECT * FROM af WHERE objid LIKE $P{objid}

[getById]
SELECT * FROM af WHERE objid = $P{objid}