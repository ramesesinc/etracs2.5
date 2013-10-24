[getRCDCollectionType]
select  
  cr.formno,
  case when min(ch.objid) is null then min( cr.receiptno) else null end as fromseries, 
  case when min(ch.objid) is null then max(cr.receiptno) else null end as toseries, 
  sum( case when crv.objid is null then cr.amount else 0.0 end ) as amount 
from remittance_cashreceipt rc 
   inner join cashreceipt cr on rc.objid = cr.objid 
   left join cashreceipt_void crv on crv.receiptid = cr.objid 
   left join cashticket ch on ch.objid = cr.formno 
where remittanceid=$P{remittanceid}
group by cr.formno, cr.controlid 


[getRCDCollectionSummaries]
select  
  ('AF#' + a.objid +  ': ' + min(ct.title) + '-' + min(ri.fund_title) )  as particulars, 
  sum( case when crv.objid is null then cri.amount else 0.0 end ) as amount 
from remittance_cashreceipt rc 
   inner join cashreceipt cr on rc.objid = cr.objid 
   left join cashreceipt_void crv on crv.receiptid = cr.objid 
   inner join collectionform a on a.objid = cr.formno 
   inner join collectiontype ct on ct.objid = cr.collectiontype_objid 
   inner join cashreceiptitem cri on cri.receiptid = cr.objid
   inner join revenueitem ri on ri.objid = cri.item_objid 
where remittanceid=$P{remittanceid}
group by a.objid, ct.objid, ri.fund_title


[getRCDOtherPayment]
select  pc.particulars, pc.amount 
from remittance_cashreceipt rc 
   inner join cashreceipt cr on rc.objid = cr.objid 
   inner join cashreceiptpayment_check pc on pc.receiptid = rc.objid 
   left join cashreceipt_void crv on crv.receiptid = cr.objid 
where remittanceid=$P{remittanceid}
	and crv.objid is null 


[getNonCashPayments]
SELECT cc.*
FROM remittance r
	INNER JOIN remittance_cashreceipt rc ON r.objid = rc.remittanceid
	INNER JOIN cashreceiptpayment_check cc ON rc.objid = cc.receiptid 
WHERE r.objid = $P{remittanceid}
  AND NOT EXISTS(SELECT * FROM cashreceipt_void WHERE receiptid = cc.receiptid)
ORDER BY cc.bank, cc.checkno   
  

[getReceiptsByRemittanceCollectionType]
select 
  cr.formno as afid, cr.receiptno as serialno, cr.txndate, paidby,
  case when cv.objid is null then ISNULL( ct.title, cr.collectiontype_name) else '***VOIDED***' END AS collectiontype, 
  case when cv.objid is null then cr.amount else 0.0 END AS amount
from remittance_cashreceipt rem 
   inner join cashreceipt cr on cr.objid = rem.objid 
   left join cashreceipt_void cv on cv.receiptid = cr.objid 
   left join collectiontype ct on ct.objid = cr.collectiontype_objid 
where rem.remittanceid=$P{remittanceid} and cr.collectiontype_objid  like $P{collectiontypeid}
ORDER BY afid, serialno 

[getReceiptsByRemittanceFund]
select 
  cr.formno as afid, 
  cr.txndate, ri.fund_title as fundname, cr.remarks as remarks, 
  case when ch.objid is null then cr.receiptno else null end as serialno, 
  case when cv.objid is null then cr.paidby else '***VOIDED***' END AS payer,
  case when cv.objid is null then cri.item_title else '***VOIDED***' END AS particulars,
  case when cv.objid is null then cr.paidbyaddress else '' END AS payeraddress,
  case when cv.objid is null then cri.amount else 0.0 END AS amount
from remittance_cashreceipt rem 
   inner join cashreceipt cr on cr.objid = rem.objid 
   left join cashticket ch on ch.objid = cr.formno 
   left join cashreceipt_void cv on cv.receiptid = cr.objid 
   inner join cashreceiptitem cri on cri.receiptid = cr.objid 
   inner join revenueitem ri on ri.objid = cri.item_objid
where rem.remittanceid=$P{remittanceid} and ri.fund_objid like $P{fundid}
ORDER BY afid, serialno, payer 

[getSerialReceiptsByRemittanceFund]
select 
  cr.formno as afid, cr.receiptno as serialno, cr.txndate, ri.fund_title as fundname, 
  cr.paidby as payer, cri.item_title as particulars, 
  case when cv.objid is null then cri.amount else 0.0 end as amount 
from remittance_cashreceipt rem 
   inner join cashreceipt cr on cr.objid = rem.objid 
   left join cashreceipt_void cv on cv.receiptid = cr.objid 
   inner join collectionform a on a.objid = cr.formno 
   inner join cashreceiptitem cri on cri.receiptid = cr.objid 
   inner join revenueitem ri on ri.objid = cri.item_objid
where rem.remittanceid=$P{remittanceid} 
  and ri.fund_objid like $P{fundid} 
  and a.formtype='serial'
ORDER BY afid, particulars, serialno 

[getNonSerialReceiptDetailsByFund]
select 
  cr.formno as afid, null as serialno, cr.txndate, ri.fund_title as fundname, 
  cr.paidby as payer, cri.item_title as particulars, 
  case when cv.objid is null then cri.amount else 0.0 end as amount 
from remittance_cashreceipt rem 
   inner join cashreceipt cr on cr.objid = rem.objid 
   left join cashreceipt_void cv on cv.receiptid = cr.objid 
   inner join collectionform a on a.objid = cr.formno 
   inner join cashreceiptitem cri on cri.receiptid = cr.objid 
   inner join revenueitem ri on ri.objid = cri.item_objid
where rem.remittanceid=$P{remittanceid} 
  and ri.fund_objid like $P{fundid} 
  and a.formtype='cashticket'
ORDER BY afid, particulars, serialno 


[getRevenueItemSummaryByFund]
select 
  ri.fund_title as fundname, cri.item_objid as acctid, cri.item_title as acctname,
  min(cri.item_code) as acctcode, sum( cri.amount ) as amount 
from remittance_cashreceipt rem 
   inner join cashreceipt cr on cr.objid = rem.objid 
   left join cashreceipt_void cv on cv.receiptid = cr.objid 
   inner join cashreceiptitem cri on cri.receiptid = cr.objid 
   inner join revenueitem ri on ri.objid = cri.item_objid
where rem.remittanceid=$P{remittanceid} 
  and ri.fund_objid like $P{fundid} and cv.objid is null 
group by ri.fund_title, cri.item_objid , cri.item_title 
order by ri.fund_title, cri.item_title 

[getDistinctAccountSRE]
select 
  distinct sre.objid, sre.code as acctcode, sre.title as accttitle 
from remittance_cashreceipt rem 
   inner join cashreceipt cr on cr.objid = rem.objid 
   inner join cashreceiptitem cri on cri.receiptid = cr.objid 
   inner join revenueitem ri on ri.objid = cri.item_objid 
   left join revenueitem_sreaccount rs on rs.objid = ri.objid 
   left join sreaccount sre on sre.objid = rs.acctid 
where rem.remittanceid=$P{remittanceid} 
ORDER BY acctcode

[getSummaryOfCollectionSRE]
select 
  cr.formno as afid, case when min(ch.objid) is null then cr.receiptno else null end as serialno, 
  case when crv.objid is null then cr.paidby else '*** VOIDED ***' end as paidby, 
  min(cr.txndate) as txndate, ${columnsql} 
  case when crv.objid is null then 0 else 1 end as voided 
from remittance_cashreceipt rem 
   inner join cashreceipt cr on cr.objid = rem.objid 
   left join cashticket ch on ch.objid = cr.formno 
   left join cashreceipt_void crv on crv.receiptid = cr.objid 
   inner join cashreceiptitem cri on cri.receiptid = cr.objid 
   inner join revenueitem ri on ri.objid = cri.item_objid 
   left join revenueitem_sreaccount rs on rs.objid = ri.objid 
   left join sreaccount a on a.objid = rs.acctid 
where rem.remittanceid=$P{remittanceid} 
GROUP BY cr.formno, cr.receiptno, cr.paidby, crv.objid
ORDER BY afid, serialno 


[getDistinctAccountNGAS]
select 
  distinct n.objid, n.code as acctcode, n.title as accttitle 
from remittance_cashreceipt rem 
   inner join cashreceipt cr on cr.objid = rem.objid 
   inner join cashreceiptitem cri on cri.receiptid = cr.objid 
   inner join revenueitem ri on ri.objid = cri.item_objid 
   left join revenueitem_account rs on rs.objid = ri.objid 
   left join account n on n.objid = rs.acctid 
where rem.remittanceid=$P{remittanceid}
ORDER BY acctcode

[getSummaryOfCollectionNGAS]
select 
  cr.formno as afid, case when min(ch.objid) is null then cr.receiptno else null end as serialno, 
  case when crv.objid is null then cr.paidby else '*** VOIDED ***' end as paidby, 
  min(cr.txndate) as txndate, ${columnsql}
  case when crv.objid is null then 0 else 1 end as voided 
from remittance_cashreceipt rem 
   inner join cashreceipt cr on cr.objid = rem.objid 
   left join cashticket ch on ch.objid = cr.formno 
   left join cashreceipt_void crv on crv.receiptid = cr.objid 
   inner join cashreceiptitem cri on cri.receiptid = cr.objid 
   inner join revenueitem ri on ri.objid = cri.item_objid 
   left join revenueitem_account rs on rs.objid = ri.objid 
   left join account a on a.objid = rs.acctid 
where rem.remittanceid=$P{remittanceid}
GROUP BY cr.formno, cr.receiptno, cr.paidby, crv.objid
ORDER BY afid, serialno 

[getFundlist]
select 
  distinct ri.fund_objid as objid, ri.fund_title as title 
from remittance_cashreceipt rc 
  inner join cashreceipt cr on rc.objid = cr.objid 
  inner join cashreceiptitem cri on cri.receiptid = cr.objid 
  inner join revenueitem ri on ri.objid = cri.item_objid 
where rc.remittanceid=$P{remittanceid}

[getCollectionType]
select 
  distinct ct.objid, ct.title 
from remittance_cashreceipt rc 
  inner join cashreceipt cr on rc.objid = cr.objid 
  inner join collectiontype ct on ct.objid = cr.collectiontype_objid 
where rc.remittanceid=$P{remittanceid}  