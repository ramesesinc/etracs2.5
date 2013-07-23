[getList]
SELECT * 
FROM propertyclassification 
WHERE ( code LIKE $P{searchtext} OR name LIKE $P{searchtext} )
ORDER BY orderno


[lookupClassifications]
SELECT *
FROM propertyclassification
WHERE state = 'APPROVED'
  AND ( code LIKE $P{searchtext} OR name LIKE $P{searchtext} )
ORDER BY orderno


[lookupById]
SELECT * FROM propertyclassification WHERE objid = $P{objid}


