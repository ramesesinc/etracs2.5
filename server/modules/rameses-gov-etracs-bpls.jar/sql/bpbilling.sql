[getBillItems]
SELECT br.*, r.code as account_code, ba.paymentmode 
FROM business_receivable br
INNER JOIN revenueitem r ON br.account_objid=r.objid 
LEFT JOIN businessaccount ba ON ba.objid=r.objid 
WHERE br.businessid=$P{businessid} AND (br.amount-br.amtpaid) > 0 
