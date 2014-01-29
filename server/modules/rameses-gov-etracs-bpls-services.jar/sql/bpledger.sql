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
WHERE br.businessid=$P{objid} AND ((br.amount-br.amtpaid- br.discount) > 0) 
ORDER BY br.iyear DESC, br.lob_name DESC, r.code ASC

[getPayments]
SELECT * FROM bppayment WHERE businessid=$P{objid} ORDER BY refdate DESC

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
WHERE br.businessid=$P{businessid}  AND ((br.amount-br.amtpaid- br.discount) > 0) 


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
[findReceivablePaymentForVoid]
SELECT * 
FROM bppayment 
WHERE refid=$P{receiptid}

[getPaymentItemsForVoid]
SELECT * 
FROM bppayment_item WHERE paymentid=$P{paymentid} 

[reverseReceivablePayment]
UPDATE bpreceivable 
SET amtpaid = amtpaid - $P{amtpaid}, 
discount=discount - $P{discount} 
WHERE objid=$P{receivableid}

[updateReceivablePaymentForVoiding]
UPDATE bppayment 
SET voided = 1 
WHERE refid=$P{receiptid}


###############################################
# used by BPLedgerService
###############################################
[getHasPaidReceivable]
SELECT * FROM bpreceivable WHERE applicationid=$P{applicationid} AND amtpaid > 0

[removeReceivablesForApplication]
DELETE FROM bpreceivable WHERE applicationid=$P{applicationid}


[findTaxCreditAccount]
SELECT 
r.objid,
r.code,
r.title,
r.fund_objid, 
r.fund_title 
FROM businessaccount ba
INNER JOIN revenueitem r ON r.objid=ba.objid
WHERE ba.taxfeetype = 'TAXCREDIT'

[getPaymentItems]
SELECT * FROM bppayment_item WHERE paymentid=$P{objid} ORDER BY lob_name DESC, account_code ASC