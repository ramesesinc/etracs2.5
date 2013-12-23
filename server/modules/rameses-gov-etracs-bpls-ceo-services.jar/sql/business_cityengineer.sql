[getList]
SELECT b.objid, b.bin, b.owner_name,b.businessname,b.businessaddress
FROM business b 
INNER JOIN business_cityengineer bc ON bc.businessid=b.objid

[getSearchList]
SELECT DISTINCT b.* FROM 
(
	SELECT b.objid, b.bin, b.owner_name,b.businessname,b.businessaddress
	FROM business b 
	INNER JOIN business_cityengineer bc ON bc.businessid=b.objid
	WHERE b.owner_name LIKE $P{searchtext}
UNION
	SELECT b.objid, b.bin, b.owner_name,b.businessname,b.businessaddress
	FROM business b 
	INNER JOIN business_cityengineer bc ON bc.businessid=b.objid
	WHERE b.businessname LIKE $P{searchtext}
UNION
	SELECT b.objid, b.bin, b.owner_name,b.businessname,b.businessaddress
	FROM business b 
	INNER JOIN business_cityengineer bc ON bc.businessid=b.objid
	WHERE b.bin LIKE $P{searchtext} 
) b
ORDER BY b.bin

[findInfo]
SELECT * FROM business_cityengineer WHERE businessid = $P{businessid}

[getFees]
SELECT cf.*, r.code AS account_code
FROM business_cityengineer_fee cf
INNER JOIN revenueitem r ON cf.account_objid=r.objid 
WHERE cf.businessid=$P{businessid}

[activateFees]
UPDATE business_cityengineer_fee 
SET state='active' WHERE businessid=$P{businessid}

[changeState]
UPDATE business_cityengineer SET 
state='active' WHERE businessid=$P{businessid}