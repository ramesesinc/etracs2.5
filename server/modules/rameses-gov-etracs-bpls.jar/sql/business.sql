[getList]
SELECT *
FROM business
WHERE state=$P{state}

[approve]
UPDATE business 
SET state = 'APPROVED'
WHERE objid = $P{objid}

[getUnpaid]
SELECT *
FROM business_receivable
WHERE businessid=$P{objid}
AND (amount - amtpaid - discount) > 0


