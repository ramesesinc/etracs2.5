[findByCollector]
SELECT 
   cc.objid AS issuanceid,	
   cc.controlid,	
   ac.afid AS formno,
   cc.qtybalance,
   ct.denomination,
   cc.qtybalance * ct.denomination AS amtbalance
FROM cashticket_control cc 
INNER JOIN cashticket_inventory ac ON cc.controlid=ac.objid
INNER JOIN cashticket ct ON ct.objid=ac.afid 
WHERE ac.afid =$P{afid} 
AND ac.respcenter_objid=$P{collectorid}
AND cc.qtybalance > 0


[findAvailableForCollector]
SELECT a.* FROM 
(SELECT DISTINCT
   cc.objid AS issuanceid,	
   cc.controlid,	
   ac.afid,
   cc.qtybalance,
   ct.denomination,
   ac.respcenter_objid AS collector_objid,
   ac.respcenter_name AS collector_name,
   col.jobtitle AS collector_title,
   cc.assignee_objid AS subcollector_objid,
   cc.assignee_name AS subcollector_name,   
   subcol.jobtitle AS subcollector_title,
   (CASE WHEN cc.assignee_objid IS NULL THEN ac.respcenter_objid ELSE cc.assignee_objid END) AS ownerid
FROM cashticket_control cc 
INNER JOIN cashticket_inventory ac ON cc.controlid=ac.objid
INNER JOIN cashticket ct ON ct.objid=ac.afid 
INNER JOIN sys_usergroup_member col ON col.user_objid=ac.respcenter_objid
LEFT JOIN sys_usergroup_member subcol ON subcol.user_objid=cc.assignee_objid
WHERE ac.afid =$P{afid} 
AND cc.qtybalance > 0) a 
WHERE a.ownerid=$P{ownerid}


[updateControlBalance]
UPDATE cashticket_control
SET qtyissued = qtyissued + $P{qtyissued},
qtybalance = qtybalance - $P{qtyissued}
WHERE objid = $P{issuanceid}