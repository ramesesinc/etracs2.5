########################################################
# BusinessInfoService
#########################################################
[getList]
SELECT DISTINCT a.*
FROM 
(
	SELECT xb.objid,xb.state,xb.owner_name,xb.businessname,xb.businessaddress,xb.activeyear,xbb.bin
	FROM business xb
	LEFT JOIN business_bin xbb ON xb.objid=xbb.objid 
	WHERE xb.state=$P{state} AND xb.activeyear=$P{currentyear} AND xb.businessname LIKE $P{searchtext} 
UNION 
	SELECT xb.objid,xb.state,xb.owner_name,xb.businessname,xb.businessaddress,xb.activeyear,xbb.bin
	FROM business xb
	LEFT JOIN business_bin xbb ON xb.objid=xbb.objid 
	WHERE xb.state=$P{state} AND xb.activeyear=$P{currentyear} AND xb.businessname LIKE $P{searchtext}
UNION
	SELECT xb.objid,xb.state,xb.owner_name,xb.businessname,xb.businessaddress,xb.activeyear,xbb.bin
	FROM business xb
	LEFT JOIN business_bin xbb ON xb.objid=xbb.objid 
	WHERE xb.state=$P{state} AND xb.activeyear=$P{currentyear} AND xbb.bin LIKE $P{searchtext}
) a
ORDER BY a.businessname

[getListSearch]
SELECT DISTINCT a.*  
FROM 
(
	SELECT xb.objid,xb.state,xb.owner_name,xb.businessname,xb.businessaddress,xb.activeyear,xbb.bin
	FROM business xb
	LEFT JOIN business_bin xbb ON xb.objid=xbb.objid 
	WHERE xb.owner_name LIKE $P{searchtext}
UNION 
	SELECT xb.objid,xb.state,xb.owner_name,xb.businessname,xb.businessaddress,xb.activeyear,xbb.bin
	FROM business xb
	LEFT JOIN business_bin xbb ON xb.objid=xbb.objid 
	WHERE xb.businessname LIKE $P{searchtext}
UNION
	SELECT xb.objid,xb.state,xb.owner_name,xb.businessname,xb.businessaddress,xb.activeyear,xbb.bin
	FROM business xb
	LEFT JOIN business_bin xbb ON xb.objid=xbb.objid 
	WHERE xbb.bin LIKE $P{searchtext}
) a
ORDER BY a.businessname

[getListForRenewal]
SELECT DISTINCT a.*
FROM (
	SELECT xb.objid,xb.state,xb.owner_name,xb.businessname,xb.businessaddress,xb.activeyear,xbb.bin  
	FROM business xb
	LEFT JOIN business_bin xbb ON xb.objid=xbb.objid
	WHERE xb.state = 'ACTIVE' AND xb.activeyear = $P{prevyear} AND xbb.bin LIKE $P{searchtext} 
UNION
	SELECT xb.objid,xb.state,xb.owner_name,xb.businessname,xb.businessaddress,xb.activeyear,xbb.bin  
	FROM business xb
	LEFT JOIN business_bin xbb ON xb.objid=xbb.objid
	WHERE xb.state = 'ACTIVE' AND xb.activeyear = $P{prevyear}  AND xb.owner_name LIKE $P{searchtext} 
UNION
	SELECT xb.objid,xb.state,xb.owner_name,xb.businessname,xb.businessaddress,xb.activeyear,xbb.bin  
	FROM business xb
	LEFT JOIN business_bin xbb ON xb.objid=xbb.objid
	WHERE xb.state = 'ACTIVE' AND xb.activeyear = $P{prevyear} AND xb.businessname LIKE $P{searchtext} 
) a
ORDER BY a.businessname

[getListForLateRenewal]
SELECT DISTINCT a.*
FROM (
	SELECT xb.objid,xb.state,xb.owner_name,xb.businessname,xb.businessaddress,xb.activeyear,xbb.bin 
	FROM business xb
	LEFT JOIN business_bin xbb ON xb.objid=xbb.objid
	WHERE xb.state = 'ACTIVE' AND xb.activeyear < $P{prevyear} AND xbb.bin LIKE $P{searchtext} 
UNION
	SELECT xb.objid,xb.state,xb.owner_name,xb.businessname,xb.businessaddress,xb.activeyear,xbb.bin 
	FROM business xb
	LEFT JOIN business_bin xbb ON xb.objid=xbb.objid
	WHERE xb.state = 'ACTIVE' AND xb.activeyear < $P{prevyear} AND xb.owner_name LIKE $P{searchtext} 
UNION
	SELECT xb.objid,xb.state,xb.owner_name,xb.businessname,xb.businessaddress,xb.activeyear,xbb.bin 
	FROM business xb
	LEFT JOIN business_bin xbb ON xb.objid=xbb.objid
	WHERE xb.state = 'ACTIVE' AND xb.activeyear < $P{prevyear} AND xb.businessname LIKE $P{searchtext}
) a
ORDER BY a.businessname


########################################################
# BusinessRenewalService
#########################################################
[getAllListForRenewal]
SELECT DISTINCT a.*
FROM (
	SELECT xb.objid,xb.state,xb.owner_name,xb.businessname,xb.businessaddress,xb.activeyear,xbb.bin 
	FROM business xb
	LEFT JOIN business_bin xbb ON xb.objid=xbb.objid
	WHERE xb.state = 'ACTIVE' AND xb.activeyear <= $P{prevyear} AND xbb.bin LIKE $P{bin} 
UNION
	SELECT xb.objid,xb.state,xb.owner_name,xb.businessname,xb.businessaddress,xb.activeyear,xbb.bin 
	FROM business xb
	LEFT JOIN business_bin xbb ON xb.objid=xbb.objid
	WHERE xb.state = 'ACTIVE' AND xb.activeyear <= $P{prevyear} AND xb.owner_name LIKE $P{ownername} 
UNION
	SELECT xb.objid,xb.state,xb.owner_name,xb.businessname,xb.businessaddress,xb.activeyear,xbb.bin 
	FROM business xb
	LEFT JOIN business_bin xbb ON xb.objid=xbb.objid
	WHERE xb.state = 'ACTIVE' AND xb.activeyear <= $P{prevyear} AND xb.businessname LIKE $P{businessname} 
) a
ORDER BY a.businessname

[findExistingApplication]
SELECT appno,state,appversion 
FROM bpapplication WHERE businessid=$P{objid} AND appyear=$P{appyear}

########################################################
# BusinessNameVerificationService
#########################################################
[getListForVerification]
SELECT TOP 500 objid,state,owner_name,tradename,businessaddress,activeyear
FROM business 
WHERE tradename LIKE $P{tradename}
ORDER BY tradename

########################################################
# BusinessInfoService
#########################################################
[getLobs]
SELECT bl.*, lc.name AS classification_name, lc.objid as classification_objid   
FROM business_lob bl
INNER JOIN lob ON bl.lobid=lob.objid
INNER JOIN lobclassification lc ON lob.classification_objid=lc.objid 
WHERE bl.businessid = $P{objid}

[getAppInfos]
SELECT bi.*, 
b.caption  AS attribute_caption, 
b.datatype AS attribute_datatype, 
b.sortorder AS attribute_sortorder,
b.category AS attribute_category,
b.handler AS attribute_handler
FROM business_info bi 
INNER JOIN businessvariable b ON b.objid=bi.attribute_objid
WHERE bi.businessid=$P{objid}
ORDER BY b.category, b.sortorder 

[getAssessmentInfos]
SELECT bi.*, 
b.caption  AS attribute_caption, 
b.datatype AS attribute_datatype, 
b.sortorder AS attribute_sortorder,
b.category AS attribute_category,
b.handler AS attribute_handler
FROM business_assessment_info bi 
INNER JOIN businessvariable b ON b.objid=bi.attribute_objid
WHERE bi.businessid=$P{objid}
ORDER BY b.category, b.sortorder 


################################################
# BusinessInfoService.create and changeState
################################################
[removeInfos]
DELETE FROM business_info WHERE businessid=$P{objid}

[removeLOB]
DELETE FROM business_lob WHERE applicationid=$P{objid}

[removeAssessmentInfos]
DELETE FROM business_assessment_info WHERE applicationid=$P{objid}


[updateActiveStatus]
UPDATE business 
SET activeyear=$P{year},apptype='RENEW' 
WHERE objid=$P{objid}

[changeState]
UPDATE business SET state = $P{state} WHERE objid = $P{objid}

[findBIN]
SELECT bin FROM business_bin WHERE objid=$P{objid}


################################################################
# BusinessRenewalService. Used for checking if there is balance
################################################################
[findIfBusinessHasBalance]
SELECT 1
FROM bpreceivable 
WHERE businessid=$P{objid}
AND amount-amtpaid-discount > 0