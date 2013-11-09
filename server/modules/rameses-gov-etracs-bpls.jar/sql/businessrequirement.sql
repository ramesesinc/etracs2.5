[getList]
SELECT *
FROM business_requirement

[getLookup]
SELECT * FROM business_requirement WHERE code LIKE $P{searchtext}

[findReq]
SELECT * FROM business_requirement WHERE objid=$P{objid}

[getDepartments]
SELECT objid, department, 'forassessment' AS state  
FROM business_requirement 
WHERE type='WORKFLOW'

[getOpenApplicationsList]
SELECT DISTINCT bp.* 
FROM bpapplication bp
INNER JOIN bpapplication_requirement br ON bp.objid=br.parentid
INNER JOIN business_requirement r ON r.objid=br.refid
WHERE r.department = $P{department} AND bp.state = $P{state}


[sgetOpenApplicationsList]
SELECT bp.* 
FROM bpapplication bp
WHERE bp.state = $P{state}
AND EXISTS ( 
	SELECT * FROM bpapplication_requirement WHERE parentid=bp.objid AND status='pending' 
)

[getOpenFeeRequirements]
SELECT bp.objid, br.code, br.account_code, br.account_objid, br.account_title, bp.status    
FROM bpapplication_requirement bp
INNER JOIN business_requirement br ON bp.refid=br.objid AND br.type='OTHERFEE' 
WHERE  bp.parentid=$P{objid} AND NOT(status='completed')

[getCompletedFeeRequirements]
SELECT bp.objid, bt.account_title, bt.account_code, bt.account_code, bt.amount     
FROM bpapplication_requirement bp
INNER JOIN bpapplication_taxfee bt ON bp.objid=bt.refid  
WHERE  bp.parentid=$P{objid} 

[updateCompletedFeeRequirement]
UPDATE bpapplication_requirement 
SET status='completed', completedby_objid=$P{userid}, completedby_name=$P{username},
dtcompleted=$P{dtcompleted}, remarks=$P{remarks} 
WHERE objid=$P{objid}


