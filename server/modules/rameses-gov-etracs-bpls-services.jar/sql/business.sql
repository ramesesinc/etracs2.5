########################################################
# BusinessInfoService
########################################################
[getList]
SELECT DISTINCT b.*  
FROM 
(
	SELECT xb.objid,xb.state,xb.owner_name,xb.businessname,xb.businessaddress,xb.activeyear,xb.bin,
	ba.appno, ba.apptype, bt.state AS appstate, ba.dtfiled AS appdate,
    bp.permitno, bp.expirydate, bt.assignee_objid, bt.assignee_name, bt.startdate 
	FROM business xb
	LEFT JOIN bpapplication ba ON ba.objid=xb.currentapplicationid
    LEFT JOIN bpapplication_task bt ON bt.objid=ba.task_objid
    LEFT JOIN business_permit bp ON bp.objid=xb.currentpermitid
	WHERE xb.owner_name LIKE $P{searchtext}
UNION 
	SELECT xb.objid,xb.state,xb.owner_name,xb.businessname,xb.businessaddress,xb.activeyear,xb.bin,
	ba.appno, ba.apptype, bt.state AS appstate, ba.dtfiled AS appdate,
    bp.permitno, bp.expirydate, bt.assignee_objid, bt.assignee_name, bt.startdate 
	FROM business xb
    LEFT JOIN bpapplication ba ON ba.objid=xb.currentapplicationid
    LEFT JOIN bpapplication_task bt ON bt.objid=ba.task_objid
    LEFT JOIN business_permit bp ON bp.objid=xb.currentpermitid
	WHERE xb.businessname LIKE $P{searchtext}
UNION
	SELECT xb.objid,xb.state,xb.owner_name,xb.businessname,xb.businessaddress,xb.activeyear,xb.bin,
	ba.appno, ba.apptype, bt.state AS appstate, ba.dtfiled AS appdate,
    bp.permitno, bp.expirydate, bt.assignee_objid, bt.assignee_name, bt.startdate     
	FROM business xb 
    LEFT JOIN bpapplication ba ON ba.objid=xb.currentapplicationid
    LEFT JOIN bpapplication_task bt ON bt.objid=ba.task_objid
    LEFT JOIN business_permit bp ON bp.objid=xb.currentpermitid
	WHERE xb.bin LIKE $P{searchtext}
) b
WHERE NOT(b.objid IS NULL)
${filter}
ORDER BY b.startdate

[getOpenTaskList]
SELECT DISTINCT b.*  
FROM 
(
    SELECT xb.objid,xb.state,xb.owner_name,xb.businessname,xb.businessaddress,xb.activeyear,xb.bin,
    ba.appno, ba.apptype, bt.state AS appstate, ba.dtfiled AS appdate,
    bt.assignee_objid, bt.assignee_name, bt.startdate
    FROM business xb
    INNER JOIN bpapplication ba ON ba.objid=xb.currentapplicationid
    INNER JOIN bpapplication_task bt ON bt.applicationid=ba.objid
    WHERE xb.owner_name LIKE $P{searchtext} AND bt.enddate IS NULL 
UNION 
    SELECT xb.objid,xb.state,xb.owner_name,xb.businessname,xb.businessaddress,xb.activeyear,xb.bin,
    ba.appno, ba.apptype, bt.state AS appstate, ba.dtfiled AS appdate,
    bt.assignee_objid, bt.assignee_name, bt.startdate
    FROM business xb
    INNER JOIN bpapplication ba ON ba.objid=xb.currentapplicationid
    INNER JOIN bpapplication_task bt ON bt.applicationid=ba.objid
    WHERE xb.businessname LIKE $P{searchtext}  AND bt.enddate IS NULL 
UNION
    SELECT xb.objid,xb.state,xb.owner_name,xb.businessname,xb.businessaddress,xb.activeyear,xb.bin,
    ba.appno, ba.apptype, bt.state AS appstate, ba.dtfiled AS appdate,
    bt.assignee_objid, bt.assignee_name, bt.startdate    
    FROM business xb 
    INNER JOIN bpapplication ba ON ba.objid=xb.currentapplicationid
    INNER JOIN bpapplication_task bt ON bt.applicationid=ba.objid
    WHERE xb.bin LIKE $P{searchtext}  AND bt.enddate IS NULL
) b
WHERE NOT(b.objid IS NULL)
${filter}
ORDER BY b.startdate

[findMyTaskListCount]
SELECT COUNT(*) AS icount 
FROM business xb 
INNER JOIN bpapplication ba ON ba.objid=xb.currentapplicationid
INNER JOIN bpapplication_task bt ON bt.applicationid=ba.objid
WHERE bt.assignee_objid=$P{assigneeid} AND bt.enddate IS NULL


[getLookup]
SELECT 
	b.objid,
    b.businessname,
    b.businessaddress, 
    b.owner_name,
    b.owner_objid,
    b.bin,
    b.activeyear,
    b.state,
    b.currentapplicationid,
    ba.objid AS applicationid,
    ba.appno AS appno,
    ba.apptype AS apptype,
    bt.state AS appstate
FROM business b
LEFT JOIN bpapplication ba ON b.currentapplicationid=ba.objid
LEFT JOIN bpapplication_task bt ON ba.task_objid=bt.objid
WHERE  NOT(b.state = 'RETIRED')
${filter} 
ORDER BY b.businessname

########################################################
# CashReceiptService related 
#########################################################
[findByBIN]
SELECT * FROM business WHERE bin=$P{bin}

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
[getActiveLobs]
SELECT 
    bl.*, 
    lc.name AS classification_name, 
    lc.objid as classification_objid   
FROM business_lob bl
INNER JOIN business b ON b.objid=bl.businessid
INNER JOIN lob ON bl.lobid=lob.objid
INNER JOIN lobclassification lc ON lob.classification_objid=lc.objid 
WHERE bl.businessid = $P{objid} AND bl.iyear=b.activeyear 
AND NOT( bl.assessmenttype = 'RETIRE' )

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

[getActiveAssessmentInfos]
SELECT bi.*, 
bv.caption  AS attribute_caption, 
bv.datatype AS attribute_datatype, 
bv.sortorder AS attribute_sortorder,
bv.category AS attribute_category,
bv.handler AS attribute_handler
FROM business_assessment_info bi 
INNER JOIN business b ON bi.businessid=b.objid
INNER JOIN businessvariable bv ON bv.objid=bi.attribute_objid
WHERE bi.businessid=$P{objid} AND bi.iyear=b.activeyear
ORDER BY bv.category, bv.sortorder 

################################################
# BusinessInfoService.create and changeState
################################################
[removeInfos]
DELETE FROM business_info WHERE applicationid=$P{objid}

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

[getPermitPayments]
SELECT 
    bp.refno AS orno, 
    bp.refdate AS ordate, 
    bp.amount,
    bp.payoption,
    bp.qtr
FROM bppayment bp
INNER JOIN business_permit p ON p.applicationid=bp.applicationid
WHERE p.objid = $P{objid} AND bp.voided = 0

[getPermitLobs]
SELECT *
FROM business_lob bl
INNER JOIN business_permit p ON p.applicationid=bl.applicationid
WHERE p.objid = $P{objid} AND NOT( bl.assessmenttype = 'RETIRE' )

[getRedflags]
SELECT * FROM business_redflag WHERE businessid=$P{businessid} ORDER BY dtposted DESC

[removeBusinessLOB]
DELETE FROM business_lob WHERE businessid=$P{objid} AND applicationid IS NULL

[getBusinessLOB]
SELECT * FROM business_lob WHERE businessid=$P{objid}

[getApplicationList]
SELECT * FROM bpapplication WHERE businessid=$P{objid}
