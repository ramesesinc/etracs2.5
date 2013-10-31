[getList]
SELECT DISTINCT a.* FROM 
(SELECT objid,state,bin,permitee_name,tradename,businessaddress
FROM business WHERE state=$P{state} AND permitee_name LIKE $P{searchtext}
UNION 
SELECT objid,state,bin,permitee_name,tradename,businessaddress
FROM business WHERE state=$P{state} AND tradename LIKE $P{searchtext}
) a
ORDER BY a.tradename

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
SELECT b.*,
CASE WHEN b.activeyear=$P{previousyear} THEN 0 ELSE 1 END AS laterenewal 
FROM 
(
   SELECT objid,tradename, permitee_name, businessaddress, bin, activeyear
   FROM business WHERE state='ACTIVE' AND activeyear < $P{activeyear} 
   AND tradename LIKE $P{searchtext}
   UNION 
   SELECT objid, tradename, permitee_name, businessaddress, bin, activeyear
   FROM business WHERE state='ACTIVE' AND activeyear < $P{activeyear} 
   AND permitee_name LIKE $P{searchtext}
) b

