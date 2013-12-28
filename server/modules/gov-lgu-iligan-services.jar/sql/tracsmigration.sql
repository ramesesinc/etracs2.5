[getList]
select * from tracs_remittance 
where txnno like $P{txnno}
order by dtposted desc  

[findRemittance]
select * from tracs_remittance 
where objid like $P{objid} 

[getRemittanceEntries]
select min(formno) as formno, 
	min(receiptno) as startseries,
	max(receiptno) as endseries,
	sum(amount) as amount 
from tracs_cashreceipt
where remittanceid=$P{objid}
group by formno 

[getCashreceipts]
select
	o.ObjID as objid, o.strORNo as receiptno, o.dtORDate as receiptdate, o.strORNo as series,
	'batchcapture:misc' as _filetype, o.strPayor as paidby, 
	o.strPayorAddress as paidbyaddress, o.intVoid as voided, o.strRemarks as remarks,
	case when o.intVoid = 0 then o.curAmount else 0.0 end as amount 
from tblOR o
	left join tracs_etracs..cashreceipts c on c.objid = o.ObjID 
where o.strORNo between '${startseries}' and '${endseries}'
	and c.objid is null  
order by o.strORNo 

[getCashreceiptsItem]
select 
	oi.ID as objid, oi.ParentID as receiptid,  m.*, oi.curAmount as amount, 
	tf.strDescription as taxfeedesc, tf.ObjID as ttaxfeeid  
from tblORItem oi 
	inner join tblTaxFeeAccount tf on tf.ObjID = oi.strAcctID 
	left join tracs_etracs..tbletracsaccountmapping m on m.taxfeeid = tf.ObjID 
where oi.ParentID='${objid}' 	

[getCheckPayments]
select 
	c.ObjID as objid, c.ParentID as receiptid, c.strCheckNO as checkno, 'CHECK' as type, 
	b.strBankCode as bank, c.dtDateIssued as checkdate, c.curAmount as amount
from tblIncomingCheck c
 inner join tblBank b on c.strBankID = b.ObjID 
where c.ParentID = $P{objid} 


[createAccountMapping]
insert into tracs_etracs..tbletracsaccountmapping
(
	taxfeeid, item_objid, item_code, item_title, 
	fund_objid, fund_code, fund_title
)
values 
(
	$P{taxfeeid}, $P{itemid}, $P{itemcode}, $P{itemtitle}, 
	$P{fundid}, $P{fundcode}, $P{fundtitle}	

)

[createTRACSRemittance]
insert into tracs_remittance 
(
	objid, txnno, dtposted, collector_objid, collector_name, collector_title, 
	amount, postedby 
)
values 
(
	$P{objid}, $P{txnno}, $P{dtposted},  $P{collectorid}, $P{collectorname}, $P{collectortitle},
	$P{amount}, $P{postedby}
)

[createTRACSCashreceipt]
insert into tracs_cashreceipt
(
	objid, formno, formtype, receiptno, receiptdate, paidby, paidbyaddress,
	amount, collector_objid, collector_name, collector_title,
	collectiontype_objid, collectiontype_name, remittanceid 
)
values 
(
		$P{objid}, $P{formno}, $P{formtype}, $P{receiptno}, $P{receiptdate}, $P{paidby}, $P{paidbyaddress},
		$P{amount}, $P{collectorid}, $P{collectorname}, $P{collectortitle},
		$P{collectiontypeid}, $P{collectiontypename}, $P{remittanceid} 
)

[createTRACSCashreceiptitem]
insert into tracs_cashreceiptitem 
(
	objid, receiptid, item_objid, item_code,
	item_title, amount 
)
values
(
	$P{objid}, $P{receiptid}, $P{itemid}, $P{itemcode},
	$P{itemtitle}, $P{amount}  		
)

[createCashreceipt]
insert into tracs_etracs..cashreceipts 
(
	objid
)
values 
(
	$P{objid}  
)