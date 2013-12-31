[findCashreceipt]
select * from cashreceipt where receiptno=$P{orno}

[updateCashreceiptNoncash]
update cashreceipt set 
	totalcash = 0.0,
	totalnoncash = amount
where objid = $P{objid}

[insertCheckPayment] 
insert into cashreceiptpayment_check 
(
	objid, receiptid, bank, checkno, checkdate,
	amount, particulars, bankid, deposittype 
)
values 
(
	$P{objid}, $P{receiptid}, $P{bank}, $P{checkno}, $P{checkdate}, 
	$P{amount}, $P{particulars}, $P{bankid}, $P{deposittype} 
)



