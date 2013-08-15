[getList]
SELECT * 
FROM exemptiontype 
WHERE (code LIKE $P{seachtext} OR name LIKE $P{searchtext})
ORDER BY orderno


[lookupExemptionTypes]
SELECT *
FROM exemptiontype
WHERE state LIKE 'APPROVED'
  AND (code LIKE $P{searchtext} OR name LIKE $P{searchtext} )
ORDER BY orderno


[lookupById]
SELECT * FROM exemptiontype WHERE objid = $P{objid}
