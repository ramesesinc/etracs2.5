[getOpenItems]
SELECT 
b.objid as refid,
b.objid,
b.lob_name,
b.lob_objid,
b.item_code, 
b.item_objid, 
b.item_title,
b.amount, 
r.fund_code as item_fund_code, 
r.fund_objid as item_fund_objid, 
r.fund_title as item_fund_title,
ROUND((b.amount/4.0),2) as qtrpayment,
b.lastqtrpaid,
b.allowqtr 
FROM businessreceivable b 
INNER JOIN revenueitem r ON b.item_objid=r.objid 
WHERE b.appid = $P{appid}
AND b.amtpaid < b.amount 

[getUnpaidBalance]
SELECT SUM(balance) AS balance FROM businessreceivable WHERE appid=$P{appid}

[updateStateClosed]
UPDATE businessapplication ba
SET ba.state='PAID' 
WHERE ba.objid = $P{appid}