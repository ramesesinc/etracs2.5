[getLiquidationInfo]
select 
  l.txnno, l.dtposted, l.liquidatingofficer_name, l.liquidatingofficer_title, 
  lc.fund_title, lc.cashier_name, 'CASHIER' as cashier_title, lc.amount, l.cashbreakdown
from liquidation l  
   inner join liquidation_cashier_fund lc on lc.liquidationid = l.objid 
where l.objid =$P{liquidationid} and lc.fund_objid=$P{fundname} 

[getRCDRemittances]
select 
    r.collector_name as collectorname, r.txnno, r.dtposted, rf.amount 
from liquidation_remittance lr 
inner join remittance r on r.objid = lr.objid
inner join remittance_fund rf ON rf.remittanceid=r.objid 
where lr.liquidationid = $P{liquidationid}  and rf.fund_objid =$P{fundname} 

[getRCDCollectionSummary]
select  
  case 
      when min(a.objid) in ( '51', '56') and min(a.formtype)='serial' then ( 'AF#'+ min(a.objid) + ': ' + min(ri.fund_title) ) 
      ELSE ( 'AF#'+ min(a.objid) + ': ' + min(a.title) + ' - ' + min(ri.fund_title) ) 
  end as particulars, 
  sum( case when crv.objid is null then cri.amount else 0.0 end ) as amount 
from liquidation_remittance  lr 
   inner join remittance_cashreceipt rc  on rc.remittanceid = lr.objid 
   inner join cashreceipt cr on rc.objid = cr.objid 
   left join cashreceipt_void crv on crv.receiptid = cr.objid 
   inner join collectionform a on a.objid = cr.formno 
   inner join cashreceiptitem cri on cri.receiptid = cr.objid
   inner join revenueitem ri on ri.objid = cri.item_objid 
where lr.liquidationid=$P{liquidationid} and ri.fund_objid =$P{fundname}
group by a.objid, ri.fund_objid 

[getRCDSerialRemittedForms]
SELECT a.*, 
    (a.receivedendseries-a.receivedstartseries+1) AS qtyreceived,
    (a.beginendseries-a.beginstartseries+1) AS qtybegin,
    (a.issuedendseries-a.issuedstartseries+1) AS qtyissued,
    (a.endingendseries-a.endingstartseries+1) AS qtyending
FROM
(SELECT 
   ai.afid AS formno,   
   MIN( ad.receivedstartseries ) AS receivedstartseries,
   MAX( ad.receivedendseries ) AS receivedendseries,
   MAX( ad.beginstartseries ) AS beginstartseries,
   MAX( ad.beginendseries ) AS beginendseries,
   MAX( ad.issuedstartseries ) AS issuedstartseries,
   MAX( ad.issuedendseries ) AS issuedendseries,
   MAX( ad.endingstartseries ) AS endingstartseries,
   MAX( ad.endingendseries ) AS endingendseries
FROM afserial_inventory_detail ad 
INNER JOIN afserial_inventory ai ON ad.controlid=ai.objid
INNER JOIN remittance_afserial r ON r.objid=ad.objid
INNER join liquidation_remittance lr on lr.objid=r.remittanceid 
where lr.liquidationid=$P{liquidationid} 
GROUP BY ai.afid, ad.controlid) a


[getRCDNonSerialRemittedForms]
SELECT a.*, 
    a.qtyreceived+a.qtybegin-a.qtyissued-a.qtycancelled AS qtyending,
    a.receivedamt+a.beginamt-a.issuedamt-a.cancelledamt AS endingamt
FROM
(SELECT 
   ai.afid AS formno,   
   SUM( ad.qtyreceived ) AS qtyreceived,
   sum( ad.qtyreceived * ch.denomination) as receivedamt,
   SUM( ad.qtybegin ) AS qtybegin,
   sum( ad.qtybegin * ch.denomination) as beginamt,
   SUM( ad.qtyissued ) AS qtyissued,
   sum( ad.qtyissued * ch.denomination) as issuedamt,
   SUM( ad.qtycancelled ) AS qtycancelled,  
   sum( ad.qtycancelled * ch.denomination) as cancelledamt
FROM cashticket_inventory_detail ad 
INNER JOIN cashticket_inventory ai ON ad.controlid=ai.objid
INNER JOIN remittance_cashticket r ON r.objid = ad.objid
INNER join liquidation_remittance lr on lr.objid=r.remittanceid 
INNER join cashticket ch on ch.objid = ai.afid 
where lr.liquidationid=$P{liquidationid} 
GROUP BY ai.afid) a

[getRCDOtherPayments]
select  'CHECK' as paytype, min(pc.particulars) as particulars, sum( cri.amount ) as amount 
from liquidation_remittance  lr 
   inner join remittance_cashreceipt rc  on rc.remittanceid = lr.objid 
   inner join cashreceipt cr on rc.objid = cr.objid 
   inner join cashreceiptpayment_check pc on pc.receiptid = rc.objid 
   left join cashreceipt_void crv on crv.receiptid = cr.objid 
   inner join cashreceiptitem cri on cri.receiptid = cr.objid
   inner join revenueitem ri on ri.objid = cri.item_objid   
where lr.liquidationid=$P{liquidationid} and ri.fund_objid =$P{fundname} 
  and crv.objid is null 
group by ri.fund_objid  


[getLiquidationFundlist]
select fund_objid as fundid, fund_title as fundname 
from liquidation_cashier_fund 
where liquidationid=$P{liquidationid}

[getFundSummaries]
SELECT * FROM liquidation_cashier_fund WHERE liquidationid = $P{liquidationid}

