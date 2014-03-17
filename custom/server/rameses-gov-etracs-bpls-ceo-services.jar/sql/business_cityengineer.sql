[getList]
SELECT DISTINCT b.* FROM 
(
	SELECT b.objid, b.bin, b.owner_name,b.businessname,b.businessaddress, bc.state
	FROM business b 
	INNER JOIN business_cityengineer bc ON bc.businessid=b.objid
	WHERE b.owner_name LIKE $P{searchtext}
UNION
	SELECT b.objid, b.bin, b.owner_name,b.businessname,b.businessaddress, bc.state
	FROM business b 
	INNER JOIN business_cityengineer bc ON bc.businessid=b.objid
	WHERE b.businessname LIKE $P{searchtext}
UNION
	SELECT b.objid, b.bin, b.owner_name,b.businessname,b.businessaddress, bc.state
	FROM business b 
	INNER JOIN business_cityengineer bc ON bc.businessid=b.objid
	WHERE b.bin LIKE $P{searchtext} 
) b
WHERE b.state = $P{state}
ORDER BY b.bin

[getSearchList]
SELECT DISTINCT b.* FROM 
(
	SELECT b.objid, b.bin, b.owner_name,b.businessname,b.businessaddress, bc.state
	FROM business b 
	INNER JOIN business_cityengineer bc ON bc.businessid=b.objid
	WHERE b.owner_name LIKE $P{searchtext}
UNION
	SELECT b.objid, b.bin, b.owner_name,b.businessname,b.businessaddress, bc.state
	FROM business b 
	INNER JOIN business_cityengineer bc ON bc.businessid=b.objid
	WHERE b.businessname LIKE $P{searchtext}
UNION
	SELECT b.objid, b.bin, b.owner_name,b.businessname,b.businessaddress, bc.state
	FROM business b 
	INNER JOIN business_cityengineer bc ON bc.businessid=b.objid
	WHERE b.bin LIKE $P{searchtext} 
) b
ORDER BY b.bin

[findInfo]
SELECT bc.*, bp.apptype  
FROM business_cityengineer bc
INNER JOIN business b ON b.objid=bc.businessid 
INNER JOIN bpapplication bp ON bp.businessid=b.objid
WHERE bp.objid = $P{applicationid} AND bp.apptype IN ( 'NEW', 'RENEW')

[findAllFees]
SELECT cf.*, r.code AS account_code
FROM business_cityengineer_fee cf
INNER JOIN revenueitem r ON cf.account_objid=r.objid 
INNER JOIN business b ON b.objid=cf.businessid 
INNER JOIN bpapplication bp ON bp.businessid=b.objid
WHERE bp.objid = $P{applicationid} AND bp.apptype IN ( 'NEW', 'RENEW')

[getFees]
SELECT cf.*, r.code AS account_code
FROM business_cityengineer_fee cf
INNER JOIN revenueitem r ON cf.account_objid=r.objid 
WHERE cf.businessid=$P{businessid}  

[activateFees]
UPDATE business_cityengineer_fee 
SET state='active' WHERE businessid=$P{businessid}

[deactivateFees]
UPDATE business_cityengineer_fee 
SET state='inactive' WHERE businessid=$P{businessid}

[changeState]
UPDATE business_cityengineer SET 
state=$P{state} WHERE businessid=$P{businessid}