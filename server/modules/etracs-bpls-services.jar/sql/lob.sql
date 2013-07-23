[getList]
SELECT 
	l.*, lc.name as classification_name 
FROM lob l 
	inner join lobclassification lc on lc.objid = l.lobclassificationid 
WHERE l.name like $P{name}
ORDER BY l.name  

[lookup]
SELECT
  objid,
  name
FROM lob
WHERE state = 'APPROVED' 
  AND name LIKE $P{name} 
ORDER BY name

[getLobAttributes]
select  
	lla.*, la.name as lobattr_name 
from lob_lobattribute lla 
   inner join lobattribute la on la.objid = lla.lobattributeid  
where lla.lobid=$P{lobid}

[deleteLobAttributes]
delete from lob_lobattribute where lobid =$P{lobid}

[getClassification] 
SELECT 
	 lc.objid,
	 lc.name,
	 lc.remarks
FROM lob l 
	inner join lobclassification lc on lc.objid = l.lobclassificationid 
WHERE l.objid = $P{lobid}
 
