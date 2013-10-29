[getList]
SELECT *
FROM business_requirement

[getLookup]
SELECT * FROM business_requirement WHERE code LIKE $P{searchtext}