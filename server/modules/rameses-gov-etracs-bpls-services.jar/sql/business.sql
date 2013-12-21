########################################################
# BusinessInfoService
########################################################
[getListSearch]
SELECT DISTINCT b.*  
FROM 
(
	SELECT xb.objid,xb.state,xb.owner_name,xb.businessname,xb.businessaddress,xb.activeyear,xb.bin,
	ba.appno, ba.apptype, ba.state AS appstate, ba.dtfiled AS appdate
	FROM business xb
	LEFT JOIN bpapplication ba ON ba.objid=xb.currentapplicationid
	WHERE xb.owner_name LIKE $P{searchtext}
UNION 
	SELECT xb.objid,xb.state,xb.owner_name,xb.businessname,xb.businessaddress,xb.activeyear,xb.bin,
	ba.appno, ba.apptype, ba.state AS appstate, ba.dtfiled AS appdate
	FROM business xb
	LEFT JOIN bpapplication ba ON ba.objid=xb.currentapplicationid
	WHERE xb.businessname LIKE $P{searchtext}
UNION
	SELECT xb.objid,xb.state,xb.owner_name,xb.businessname,xb.businessaddress,xb.activeyear,xb.bin,
	ba.appno, ba.apptype, ba.state AS appstate, ba.dtfiled AS appdate
	FROM business xb 
	LEFT JOIN bpapplication ba ON ba.objid=xb.currentapplicationid
	WHERE xb.bin LIKE $P{searchtext}
) b
ORDER BY b.businessname

[getListWithApplication]
SELECT 
	b.objid,
    b.businessname,
    b.businessaddress, 
    b.owner_name,
    ba.appno,
    b.bin,
	ba.state AS appstate,    
    ba.dtfiled AS appdate,
    ba.state,
    ba.apptype,
    b.activeyear
FROM business b
INNER JOIN bpapplication ba ON ba.objid=b.currentapplicationid
WHERE NOT( b.objid IS NULL )
${filter} 
ORDER BY ba.dtfiled DESC

[getActiveListWithoutPermit]
SELECT 
	b.objid,
    b.businessname,
    b.businessaddress, 
    b.owner_name,
    ba.appno,
    b.bin,
	ba.state AS appstate,    
    ba.dtfiled AS appdate,
    ba.state,
    ba.apptype,
    b.activeyear
FROM business b
INNER JOIN bpapplication ba ON ba.objid=b.currentapplicationid
LEFT JOIN business_permit bp ON bp.businessid=b.objid
WHERE bp.objid IS NULL AND b.state='ACTIVE' AND b.activeyear=$P{activeyear}
${filter} 
ORDER BY ba.dtfiled DESC

[getActiveListWithPermit]
SELECT 
	b.objid,
    b.businessname,
    b.businessaddress, 
    b.owner_name,
    ba.appno,
    b.bin,
	ba.state AS appstate,    
    ba.dtfiled AS appdate,
    ba.state,
    ba.apptype,
    b.activeyear,
    bp.permitno
FROM business b
INNER JOIN bpapplication ba ON ba.objid=b.currentapplicationid
INNER JOIN business_permit bp ON bp.businessid=b.objid
WHERE ba.state='ACTIVE' AND b.activeyear=$P{activeyear}
${filter} 
ORDER BY ba.dtfiled DESC

[getList]
SELECT 
	b.objid,
    b.businessname,
    b.businessaddress, 
    b.owner_name,
    ba.appno,
    b.bin,
	ba.state AS appstate,    
    ba.dtfiled AS appdate,
    ba.state,
    ba.apptype,
    b.activeyear
FROM business b
LEFT JOIN bpapplication ba ON ba.objid=b.currentapplicationid
WHERE NOT( b.objid IS NULL )
${filter} 
ORDER BY b.businessname

[getListForRenewal]
SELECT 
	b.objid,
    b.businessname,
    b.businessaddress, 
    b.owner_name,
    b.bin,
    b.activeyear
FROM business b
WHERE b.activeyear < $P{activeyear}
${filter} 
ORDER BY b.businessname

[getListForAmendment]
SELECT 
    b.objid,
    b.businessname,
    b.businessaddress, 
    b.owner_name,
    b.bin,
    b.activeyear
FROM business b
WHERE b.state = 'ACTIVE'
${filter} 
ORDER BY b.businessname

[getRetiredList]
SELECT 
	b.objid,
    b.businessname,
    b.businessaddress, 
    b.owner_name,
    b.bin,
    b.activeyear
FROM business b
WHERE b.state='RETIRED'
${filter} 
ORDER BY b.businessname

[getCapturedList]
SELECT 
    b.objid,
    b.businessname,
    b.businessaddress, 
    b.owner_name,
    b.bin,
    b.activeyear
FROM business b
WHERE b.state='CAPTURED' 
${filter} 
ORDER BY b.businessname

[getInactiveList]
SELECT 
    b.objid,
    b.businessname,
    b.businessaddress, 
    b.owner_name,
    ba.appno,
    b.bin,
    ba.state AS appstate,    
    ba.dtfiled AS appdate,
    ba.state,
    ba.apptype,
    b.activeyear
FROM business b
INNER JOIN bpapplication ba ON ba.objid=b.currentapplicationid
WHERE b.state = 'PENDING' AND b.activeyear < $P{activeyear}
${filter} 
ORDER BY b.activeyear DESC, b.businessname ASC


########################################################
# CashReceiptService related 
#########################################################
[findIdByBIN]
SELECT objid FROM business WHERE bin=$P{bin}

[findByBINForReceipt]
SELECT objid, owner_name, owner_objid, businessname, businessaddress, 
currentapplicationid AS applicationid, objid AS businessid  
FROM business WHERE bin=$P{bin}


[getBusinessesByOwner]
SELECT b.objid, b.owner_name, b.businessname, 
b.bin, b.objid AS businessid,
b.businessaddress, 
b.currentapplicationid AS applicationid 
FROM business b 
WHERE b.owner_objid=$P{ownerid}

[activate]
UPDATE business SET state = 'ACTIVE', qtrpaid=${qtr} WHERE objid = $P{objid}

########################################################
# BusinessNameVerificationService
#########################################################
[getListForVerification]
SELECT TOP 1000 objid,state,owner_name,businessname,businessaddress,activeyear
FROM business 
WHERE businessname LIKE $P{businessname}
ORDER BY businessname

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

################################################################
# BusinessRenewalService. Used for checking if there is balance
################################################################
[findIfBusinessHasBalance]
SELECT 1
FROM bpreceivable 
WHERE businessid=$P{objid}
AND amount-amtpaid-discount > 0


[findPermitByYear]
SELECT permitno, version FROM business_permit WHERE businessid=$P{businessid} AND activeyear=$P{activeyear}

[updatePermit]
UPDATE business SET currentpermitid = $P{permitid} WHERE objid=$P{objid}

[updatePIN]
UPDATE business SET pin=$P{pin} WHERE objid=$P{objid}