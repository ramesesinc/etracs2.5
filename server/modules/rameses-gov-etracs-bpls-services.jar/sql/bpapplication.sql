#######################################
# used for retrieving the application
#######################################
[getTaxfees]
SELECT br.*, r.code AS account_code, ba.taxfeetype, ba.taxfeetype AS account_taxfeetype 
FROM bpreceivable br 
INNER JOIN businessaccount ba ON br.account_objid = ba.objid
INNER JOIN revenueitem r ON  r.objid=ba.objid 
WHERE br.applicationid=$P{objid} 

[getRequirements]
SELECT bpr.*, br.type, bd.*  
FROM bpapplication_requirement bpr
INNER JOIN businessrequirement br ON bpr.refid=br.objid
LEFT JOIN  bpapplication_requirement_data bd ON bd.objid=br.objid
WHERE bpr.applicationid=$P{objid}

[getDocRequirements]
SELECT * 
FROM bpapplication_requirement_data b
WHERE b.objid=$P{objid}

#######################################
# workflow
#######################################
[getOpenSubTasks]
SELECT * FROM bpapplication_task
WHERE parentid=$P{taskid} AND enddate IS NULL

[updateTask]
UPDATE bpapplication SET task_objid=$P{taskid} WHERE objid=$P{objid}

[findAssessedBy]
SELECT u.lastname, u.firstname, u.jobtitle, u.objid   
FROM bpapplication ba 
LEFT JOIN sys_user u ON u.objid=ba.assessedby_objid
WHERE ba.objid=$P{objid} 

[findApprovedBy]
SELECT approvedby_name FROM bpapplication WHERE objid=$P{objid} 

[updateAssessedBy]
UPDATE bpapplication SET 
assessedby_objid=$P{userid}, assessedby_name=$P{username}
WHERE objid=$P{objid} 

[updateApprovedBy]
UPDATE bpapplication SET 
approvedby_objid=$P{userid}, approvedby_name=$P{username}
WHERE objid=$P{objid} 

[getApproverList]
SELECT  u.objid, u.name, ug.role, ug.domain
FROM sys_usergroup_member sgm
INNER JOIN sys_user u ON u.objid=sgm.user_objid
INNER JOIN sys_usergroup ug ON ug.objid=sgm.usergroup_objid
WHERE ug.domain='BPLS' AND ug.role='APPROVER' 
ORDER BY u.name

[findCurrentTaskid]
SELECT task_objid AS taskid FROM bpapplication WHERE objid=$P{objid}

[closeCurrentTask]
UPDATE bpapplication SET task_objid = NULL, dtreleased=$P{dtreleased} 
WHERE objid=$P{objid}

[changeState]
UPDATE bpapplication SET state = $P{state} WHERE objid = $P{objid}

[getTaskList]
SELECT * FROM bpapplication_task WHERE applicationid=$P{objid} ORDER BY startdate ASC
