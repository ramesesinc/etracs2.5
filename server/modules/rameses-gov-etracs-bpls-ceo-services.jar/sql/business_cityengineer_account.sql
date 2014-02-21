[getList]
SELECT r.objid, r.code, r.title, 'OTHERCHARGE' as taxfeetype 
FROM revenueitem r 
WHERE r.org_objid='CEO'