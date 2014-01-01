#######################################
# BPLedgerService
#######################################
[getReceivables]
SELECT 
	br.*, 
	r.code AS account_code, 
	ba.taxfeetype, 
	ba.taxfeetype AS account_taxfeetype, 
	br.amount - br.amtpaid - br.discount AS balance,
	app.appno
FROM bpreceivable br 
INNER JOIN businessaccount ba ON br.account_objid = ba.objid
INNER JOIN revenueitem r ON  r.objid=ba.objid 
LEFT JOIN bpapplication app ON app.objid=br.applicationid
WHERE br.businessid=$P{objid} 
ORDER BY br.iyear DESC, br.lob_name ASC

[getReceivablePayments]
SELECT * 
FROM bpreceivable_credit 
WHERE receivableid = $P{objid}

[removeReceivables]
DELETE FROM bpreceivable WHERE ledgerid=$P{objid}


###########################################
# used by BPApplicationCashReceiptService
###########################################
[getUnpaidReceivables]
SELECT br.objid, br.businessid, br.objid AS receivableid, 
r.code as account_code, br.account_title, br.account_objid, ba.taxfeetype AS account_taxfeetype,
br.lob_objid,br.lob_name,br.amount, br.amtpaid
FROM bpreceivable br
INNER JOIN revenueitem r ON br.account_objid=r.objid 
LEFT JOIN businessaccount ba ON ba.objid=r.objid 
WHERE br.businessid=$P{businessid}  AND ((br.amount-br.amtpaid) > 0) 

##########################################
# used by BusinessCashReceiptInterceptor
##########################################
[updateReceivablePayment]
UPDATE bpreceivable 
SET amtpaid = amtpaid + $P{amtpaid}, 
discount=discount + $P{discount} 
WHERE objid=$P{receivableid}

[getReceivableBalances]
SELECT br.applicationid, br.ledgerid, SUM( br.amount - br.amtpaid ) AS balance
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

