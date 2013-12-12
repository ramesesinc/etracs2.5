#######################################
# BPApplicationListService
#######################################
[getList]
SELECT DISTINCT a.* FROM 
(SELECT objid,state,appno,owner_name,businessname,businessaddress,appyear,apptype
 FROM bpapplication WHERE owner_name LIKE $P{searchtext}
UNION
SELECT objid,state,appno,owner_name,businessname,businessaddress,appyear,apptype 
FROM bpapplication WHERE businessname LIKE $P{searchtext}
UNION
SELECT objid,state,appno,owner_name,businessname,businessaddress,appyear,apptype
FROM bpapplication WHERE appno LIKE $P{searchtext}) a
WHERE a.state=$P{state}
ORDER BY a.appno

[getSearchList]
SELECT DISTINCT a.* FROM 
(SELECT 
objid,state,appno,owner_name,businessname,businessaddress,appyear,apptype	
 FROM bpapplication WHERE owner_name LIKE $P{searchtext}
UNION
SELECT 
objid,state,appno,owner_name,businessname,businessaddress,appyear,apptype
 FROM bpapplication WHERE businessname LIKE $P{searchtext}
UNION
SELECT 
objid,state,appno,owner_name,businessname,businessaddress,appyear,apptype
 FROM bpapplication WHERE appno LIKE $P{searchtext}) a
ORDER BY a.appno

#######################################
# used for retrieving the application
#######################################
[findBIN]
SELECT bin FROM business_bin WHERE objid=$P{businessid}

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

[getLateRenewals]
SELECT * 
FROM bpapplication_laterenewal b
WHERE b.refid=$P{objid}


#######################################
# used for cash receipt
#######################################
[findApplicationByAppNo]
SELECT ba.objid AS applicationid, ba.appno, 
ba.apptype, ba.owner_objid, ba.owner_name, 
ba.businessname, ba.businessid, ba.businessaddress, ba.state 
FROM bpapplication ba 
WHERE  ba.appno=$P{appno}

[getApplicationsByOwner]
SELECT ba.objid AS applicationid, ba.appno, ba.apptype, ba.owner_name, 
ba.businessname, ba.businessid, bb.bin, ba.businessaddress 
FROM bpapplication ba 
LEFT JOIN business b ON b.objid=ba.businessid
LEFT JOIN business_bin bb ON b.objid=bb.objid
WHERE ba.state = $P{state} AND ba.owner_objid=$P{ownerid}


[changeState]
UPDATE bpapplication SET state = $P{state} WHERE objid = $P{objid}


