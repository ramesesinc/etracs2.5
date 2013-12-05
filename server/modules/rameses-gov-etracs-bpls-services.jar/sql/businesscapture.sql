#######################################
# BusinessCaptureService
#######################################
[getSearchList]
SELECT DISTINCT a.* FROM 
(SELECT * FROM business WHERE owner_name LIKE $P{searchtext}
UNION
SELECT * FROM business WHERE tradename LIKE $P{searchtext}) a
# LEFT JOIN business_activated ba ON a.objid=ba.objid  

[findLOB]
SELECT * FROM lobmapping;