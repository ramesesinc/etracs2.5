#######################################
# BPApplicationListService
#######################################
[getList]
SELECT DISTINCT a.* FROM 
(SELECT * FROM bpapplication WHERE owner_name LIKE $P{searchtext}
UNION
SELECT * FROM bpapplication WHERE tradename LIKE $P{searchtext}
UNION
SELECT * FROM bpapplication WHERE appno LIKE $P{searchtext}) a
WHERE a.state=$P{state}
ORDER BY a.appno

[getSearchList]
SELECT DISTINCT a.* FROM 
(SELECT * FROM bpapplication WHERE owner_name LIKE $P{searchtext}
UNION
SELECT * FROM bpapplication WHERE tradename LIKE $P{searchtext}
UNION
SELECT * FROM bpapplication WHERE appno LIKE $P{searchtext}) a
ORDER BY a.appno

#######################################
# used for retrieving the application
#######################################
[getLobs]
SELECT *, lc.name AS classification_name, lc.objid as classification_objid   
FROM bpapplication_lob bl
INNER JOIN lob ON bl.lobid=lob.objid
INNER JOIN lobclassification lc ON lob.classification_objid=lc.objid 
WHERE bl.applicationid = $P{objid}

[getInfos]
SELECT bi.*, 
b.caption  AS attribute_caption, 
b.datatype AS attribute_datatype, 
b.sortorder AS attribute_sortorder,
b.category AS attribute_category,
b.handler AS attribute_handler
FROM bpapplication_info bi 
INNER JOIN businessvariable b ON b.objid=bi.attribute_objid
WHERE bi.applicationid=$P{objid}

[getTaxfees]
SELECT br.*, r.code AS account_code, ba.taxfeetype, ba.taxfeetype AS account_taxfeetype 
FROM business_receivable br 
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

[findApplicationByAppNo]
SELECT ba.objid AS applicationid, ba.appno, ba.apptype, ba.owner_objid, ba.owner_name, 
ba.tradename, ba.businessid, b.bin, ba.businessaddress 
FROM bpapplication ba 
LEFT JOIN business_bin b ON b.objid=ba.businessid
WHERE  ba.appno=$P{appno}

####################################
# used for update infos.
####################################
[removeLobs]
DELETE FROM bpapplication_lob WHERE applicationid=$P{objid}

[removeInfos]
DELETE FROM bpapplication_info WHERE applicationid=$P{objid}


####################################
# used to lookup application
####################################
[getLookupByOwner]
SELECT ba.objid AS applicationid, ba.appno, ba.apptype, ba.owner_name, 
ba.tradename, ba.businessid, b.bin, ba.businessaddress 
FROM bpapplication ba 
LEFT JOIN business_bin b ON b.objid=ba.businessid
WHERE ba.state = $P{state} AND ba.owner_objid=$P{ownerid}

[changeState]
UPDATE bpapplication SET state = $P{state} WHERE objid = $P{objid}


