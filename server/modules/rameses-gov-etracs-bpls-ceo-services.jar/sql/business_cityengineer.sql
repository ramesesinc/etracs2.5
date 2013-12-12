[getList]
SELECT DISTINCT a.* FROM 
(
	SELECT b.objid,bc.state,b.appno,b.owner_name,b.businessname,b.businessaddress,b.appyear,b.apptype
	FROM bpapplication b 
	INNER JOIN business_cityengineer bc ON bc.businessid=b.businessid
	WHERE b.owner_name LIKE $P{searchtext} 
UNION
	SELECT b.objid,bc.state,b.appno,b.owner_name,b.businessname,b.businessaddress,b.appyear,b.apptype 
	FROM bpapplication b
	INNER JOIN business_cityengineer bc ON bc.businessid=b.businessid
	WHERE b.businessname LIKE $P{searchtext} 
UNION
	SELECT b.objid,bc.state,b.appno,b.owner_name,b.businessname,b.businessaddress,b.appyear,b.apptype 
	FROM bpapplication b
	INNER JOIN business_cityengineer bc ON bc.businessid=b.businessid
	WHERE b.appno LIKE $P{searchtext} 
) a
WHERE a.state=$P{state}
ORDER BY a.appno

[getSearchList]
SELECT DISTINCT a.* FROM 
(
	SELECT b.objid,bc.state,b.appno,b.owner_name,b.businessname,b.businessaddress,b.appyear,b.apptype
	FROM bpapplication b 
	INNER JOIN business_cityengineer bc ON bc.businessid=b.businessid
	WHERE b.owner_name LIKE $P{searchtext}
UNION
	SELECT b.objid,bc.state,b.appno,b.owner_name,b.businessname,b.businessaddress,b.appyear,b.apptype 
	FROM bpapplication b
	INNER JOIN business_cityengineer bc ON bc.businessid=b.businessid
	WHERE b.businessname LIKE $P{searchtext}
UNION
	SELECT b.objid,bc.state,b.appno,b.owner_name,b.businessname,b.businessaddress,b.appyear,b.apptype 
	FROM bpapplication b
	INNER JOIN business_cityengineer bc ON bc.businessid=b.businessid
	WHERE b.appno LIKE $P{searchtext} 
) a
ORDER BY a.appno

[findBusinessLink]
SELECT * FROM business_cityengineer WHERE businessid=$P{businessid}

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