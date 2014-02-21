[getList]
SELECT r.objid, r.code, r.title, 'OTHERCHARGE' 
FROM revenueitem r 
WHERE r.org_objid='CEO'