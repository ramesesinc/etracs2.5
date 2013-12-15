[getList]
SELECT ba.*, r.code, r.title
FROM businessaccount ba 
INNER JOIN revenueitem r ON ba.objid=r.objid 
WHERE ba.department='CEO'