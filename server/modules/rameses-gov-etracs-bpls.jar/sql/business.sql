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
