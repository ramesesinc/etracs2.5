[getList]
SELECT DISTINCT a.* FROM 
(SELECT objid,state,permitee_name,tradename,businessaddress,activeyear
FROM business WHERE state=$P{state} AND permitee_name LIKE $P{searchtext}
UNION 
SELECT objid,state,permitee_name,tradename,businessaddress,activeyear
FROM business WHERE state=$P{state} AND tradename LIKE $P{searchtext}
) a
ORDER BY a.tradename

[getListSearch]
SELECT DISTINCT a.* FROM 
(SELECT objid,state,permitee_name,tradename,businessaddress,activeyear
FROM business WHERE permitee_name LIKE $P{searchtext}
UNION 
SELECT objid,state,permitee_name,tradename,businessaddress,activeyear
FROM business WHERE tradename LIKE $P{searchtext}
) a
ORDER BY a.tradename

########################################################
# BusinessNameVerificationService
#########################################################
[getListForVerification]
SELECT TOP 500 objid,state,permitee_name,tradename,businessaddress,activeyear
FROM business 
WHERE tradename LIKE $P{tradename}
ORDER BY tradename

[approve]
UPDATE business 
SET state = 'APPROVED'
WHERE objid = $P{objid}


########################################################
# BusinessInfoService.postReceivables
#########################################################
[updateStatePaymentPending]
UPDATE business SET state='PAYMENT' WHERE objid=$P{objid}

[getLobs]
SELECT * 
FROM business_lob 
WHERE businessid = $P{objid}

[getInfos]
SELECT * 
FROM business_info 
WHERE businessid = $P{objid}

[getReceivables]
SELECT * 
FROM business_receivable
WHERE businessid = $P{objid}

[getReceivablePayments]
SELECT * 
FROM business_receivable_payment 
WHERE receivableid = $P{objid}

################################################
# BPApplicationService
################################################
[updateActiveStatus]
UPDATE business 
SET activeyear=$P{year},apptype='RENEW' 
WHERE objid=$P{objid}

[removeLobs]
DELETE FROM business_lob WHERE businessid=$P{objid}

[removeInfos]
DELETE FROM business_info WHERE businessid=$P{objid}

[removeReceivables]
DELETE FROM business_receivable WHERE businessid=$P{objid}

################################################
# used in lookup in cash receipts
################################################
[getLookupByPermitee]
SELECT objid, apptype, permitee_name, tradename, objid AS businessid 
FROM business 
WHERE state = $P{state} AND permitee_objid=$P{permiteeid} AND tradename LIKE $P{searchtext}


###########################################
# used by BPApplicationCashReceiptService
###########################################
[getUnpaidReceivables]
SELECT br.objid, br.businessid, br.objid AS receivableid, 
r.code as account_code, br.account_title, br.account_objid, ba.taxfeetype AS account_taxfeetype,
br.lob_objid,br.lob_name,
ba.paymentmode, br.amount, br.amtpaid
FROM business_receivable br
INNER JOIN revenueitem r ON br.account_objid=r.objid 
LEFT JOIN businessaccount ba ON ba.objid=r.objid 
WHERE br.businessid=$P{businessid}  AND ((br.amount-br.amtpaid) > 0) 

##########################################
# used by BusinessCashReceiptInterceptor
##########################################
[updateReceivablePayment]
UPDATE business_receivable 
SET amtpaid = amtpaid + $P{amtpaid}, 
discount=discount + $P{discount} 
WHERE objid=$P{receivableid}

[getReceivableBalances]
SELECT br.applicationid, br.businessid, SUM( br.amount - br.amtpaid ) AS balance
FROM business_receivable br 
WHERE br.objid IN (${receivableids}) 
GROUP BY br.applicationid, br.businessid


###############################################
# used by BusinessCashReceiptInterceptor .Void
###############################################
[getReceivablePaymentForVoiding]
SELECT * 
FROM business_receivable_payment 
WHERE refid=$P{receiptid}

[reverseReceivablePayment]
UPDATE business_receivable 
SET amtpaid = amtpaid - $P{amtpaid}, 
discount=discount - $P{discount} 
WHERE objid=$P{receivableid}

[updateReceivablePaymentForVoiding]
UPDATE business_receivable_payment 
SET voided = 1 
WHERE refid=$P{receiptid}



############################################################
# not sure who uses this service. schedule for deprecation
############################################################
[getUnpaid]
SELECT *
FROM business_receivable
WHERE businessid=$P{objid}
AND (amount - amtpaid - discount) > 0

[getListForRenewal]
SELECT a.*, 
CASE WHEN a.activeyear=$P{year} THEN 0 ELSE 1 END AS laterenewal
FROM (
SELECT objid, tradename, permitee_name, businessaddress, state, activeyear FROM business WHERE state NOT IN ('RETIRED','PENDING','PAYMENT_PENDING') 
	AND permitee_name LIKE $P{permiteename} AND activeyear < $P{year}
UNION
SELECT objid, tradename, permitee_name, businessaddress, state, activeyear FROM business WHERE state NOT IN ('RETIRED','PENDING','PAYMENT_PENDING') 
	AND tradename LIKE $P{tradename} AND activeyear < $P{year}
) a
ORDER BY a.permitee_name

[changeState]
UPDATE business SET state = $P{state} WHERE objid = $P{objid}

[getListByPermitee]
SELECT objid,permitee_name,tradename
FROM business WHERE permitee_objid=$P{permiteeid} AND tradename LIKE $P{searchtext}


################################################
# This is a temporary solution just for today
###############################################
[findPermiteeInfo]
SELECT entityno, address FROM entity WHERE objid=$P{objid}