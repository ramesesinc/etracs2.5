[getList]
SELECT DISTINCT a.* FROM 
(SELECT objid,state,bin,permitee_name,tradename,businessaddress,activeyear
FROM business WHERE state=$P{state} AND permitee_name LIKE $P{searchtext}
UNION 
SELECT objid,state,bin,permitee_name,tradename,businessaddress,activeyear
FROM business WHERE state=$P{state} AND tradename LIKE $P{searchtext}
) a
ORDER BY a.tradename

[getListSearch]
SELECT DISTINCT a.* FROM 
(SELECT objid,state,bin,permitee_name,tradename,businessaddress,activeyear
FROM business WHERE permitee_name LIKE $P{searchtext}
UNION 
SELECT objid,state,bin,permitee_name,tradename,businessaddress,activeyear
FROM business WHERE tradename LIKE $P{searchtext}
) a
ORDER BY a.tradename

[getListByPermitee]
SELECT objid,permitee_name,tradename
FROM business WHERE permitee_objid=$P{permiteeid} AND tradename LIKE $P{searchtext}

[approve]
UPDATE business 
SET state = 'APPROVED'
WHERE objid = $P{objid}

[getUnpaid]
SELECT *
FROM business_receivable
WHERE businessid=$P{objid}
AND (amount - amtpaid - discount) > 0

[getLobs]
SELECT * 
FROM business_lob 
WHERE businessid = $P{objid}

[getInfos]
SELECT * 
FROM business_info 
WHERE businessid = $P{objid}

[getReceivables]
SELECT * 
FROM business_receivable
WHERE businessid = $P{objid}

[getReceivablePayments]
SELECT * 
FROM business_receivable_payment 
WHERE receivableid = $P{objid}

[updateReceivableAmtPaid]
UPDATE business_receivable
SET amtpaid = amtpaid + $P{amtpaid} 
WHERE objid = $P{objid}


[getListForRenewal]
SELECT a.*, 
CASE WHEN a.activeyear=$P{year} THEN 0 ELSE 1 END AS laterenewal
FROM (
SELECT objid, tradename, permitee_name, businessaddress, state, activeyear FROM business WHERE state NOT IN ('RETIRED','PENDING','PAYMENT_PENDING') 
	AND permitee_name LIKE $P{permiteename} AND activeyear < $P{year}
UNION
SELECT objid, tradename, permitee_name, businessaddress, state, activeyear FROM business WHERE state NOT IN ('RETIRED','PENDING','PAYMENT_PENDING') 
	AND tradename LIKE $P{tradename} AND activeyear < $P{year}
) a
ORDER BY a.permitee_name


