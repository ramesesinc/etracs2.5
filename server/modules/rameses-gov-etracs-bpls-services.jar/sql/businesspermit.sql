[getPermitLobs]
SELECT p.*
FROM business_lob p
WHERE p.businessid = $P{businessid} 

[getPayments]
SELECT 
    bp.refno AS orno, 
    bp.refdate AS ordate, 
    bp.amount,
    bp.payoption,
    bp.qtr
FROM bppayment bp
INNER JOIN business b ON bp.businessid=b.objid
WHERE businessid=$P{businessid} AND YEAR(bp.refdate)=$P{activeyear}
AND bp.voided = 0

[findPermitByYear]
SELECT permitno, version FROM businesspermit WHERE businessid=$P{businessid} AND activeyear=$P{activeyear}

[updatePermit]
UPDATE business SET currentpermitid = $P{permitid} WHERE objid=$P{objid}

[findActivePermit]
SELECT objid, permitno, version, expirydate, dtissued 
FROM businesspermit 
WHERE businessid=$P{businessid} 
AND state='ACTIVE' 
AND activeyear=$P{activeyear}


