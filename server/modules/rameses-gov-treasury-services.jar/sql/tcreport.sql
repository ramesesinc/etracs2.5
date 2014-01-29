[getCollectionByFund]
select 
  ri.fund_title as fundname, cri.item_objid as acctid, cri.item_title as acctname,
  cri.item_code as acctcode, sum( cri.amount ) as amount 
from( 
  select
    distinct lf.liquidationid
  from bankdeposit b 
    inner join bankdeposit_liquidation bl on b.objid = bl.bankdepositid
    inner join liquidation_cashier_fund lf on lf.objid = bl.objid 
  where b.dtposted between $P{fromdate} and $P{todate} 
  ) a 
  inner join liquidation_remittance lr on lr.liquidationid = a.liquidationid 
  inner join remittance_cashreceipt rc on rc.remittanceid = lr.objid 
  inner join cashreceipt c on c.objid = rc.objid 
  inner join cashreceiptitem cri on cri.receiptid = c.objid
  inner join revenueitem ri on ri.objid = cri.item_objid 
  left join cashreceipt_void cv on cv.receiptid = c.objid 
where ri.fund_objid like $P{fundid} 
group by ri.fund_title, cri.item_objid, cri.item_code, cri.item_title 
order by fundname, acctcode, acctname  

[getFunds]
select * from fund 

[getSubFunds]
select * from fund where parentid = $P{objid}
