[getBillItems]
SELECT br.objid, br.businessid,  
r.code as account_code, br.account_title, br.account_objid, 
br.lob_objid,br.lob_name,
ba.paymentmode, 
(br.amount - br.amtpaid) AS amtdue 
FROM business_receivable br
INNER JOIN revenueitem r ON br.account_objid=r.objid 
LEFT JOIN businessaccount ba ON ba.objid=r.objid 
WHERE br.businessid=$P{businessid} AND (br.amount-br.amtpaid) > 0 
