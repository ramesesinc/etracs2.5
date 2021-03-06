[getFundlist]
select 
  distinct lcf.fund_objid as objid , lcf.fund_title as title 
from bankdeposit bd 
  inner join bankdeposit_liquidation bl on bd.objid = bl.bankdepositid 
  inner join liquidation_cashier_fund lcf on lcf.objid = bl.objid  
where bd.objid = $P{bankdepositid}

[getBackAccountList]
select 
    distinct ba.objid, ( ba.bank_code + ' ( ' + ba.code + ' )'  ) as title 
from bankdeposit_entry be 
 inner join bankaccount ba on ba.objid = be.bankaccount_objid 
where parentid=$P{bankdepositid}

[getCollectionSummaryByAFAndFund]
select  
  ('AF#' + a.objid +  ':' + min(ct.title) + '-' + ri.fund_title )  as particulars, 
  sum( case when crv.objid is null then cri.amount else 0.0 end ) as amount 
from bankdeposit_liquidation bl  
   inner join liquidation_cashier_fund lcf on lcf.objid = bl.objid
   inner join liquidation_remittance lr on lr.liquidationid = lcf.liquidationid and lcf.fund_objid=$P{fundname}
   inner join remittance_cashreceipt rc on rc.remittanceid = lr.objid 
   inner join cashreceipt cr on rc.objid = cr.objid 
   left join cashreceipt_void crv on crv.receiptid = cr.objid 
   inner join collectionform a on a.objid = cr.formno 
   inner join collectiontype ct on ct.objid = cr.collectiontype_objid 
   inner join cashreceiptitem cri on cri.receiptid = cr.objid
   inner join revenueitem ri on ri.objid = cri.item_objid 
where bl.bankdepositid=$P{bankdepositid}  and ri.fund_objid = $P{fundname}
group by a.objid, ct.objid, ri.fund_title

[getCashFundSummary]
select 
    bd.cashier_name as cashier, 
    (ba.bank_code + ' - Cash D/S: Account ' + be.bankaccount_code ) as depositref, 
    NULL as depositamt 
from bankdeposit bd 
 inner join bankdeposit_entry be on bd.objid = be.parentid 
 inner join bankaccount ba on ba.objid = be.bankaccount_objid 
where bd.objid=$P{bankdepositid} and ba.fund_objid=$P{fundname}
  and be.totalcash > 0.0 


[getCheckFundSummary]
select 
    bd.cashier_name as cashier, 
    (ba.bank_code + ' - Check D/S: Account ' + be.bankaccount_code ) as depositref, 
    NULL AS depositamt 
from bankdeposit bd 
 inner join bankdeposit_entry be on bd.objid = be.parentid 
 inner join bankaccount ba on ba.objid = be.bankaccount_objid 
where bd.objid=$P{bankdepositid} and ba.fund_objid=$P{fundname}
  and be.totalnoncash > 0.0 

[getCashReceiptByBankdepositid]
select 
  c.collector_name as collectorname,  
  c.receiptdate as receiptdate,  
  c.receiptno as serialno, 
  c.paidby as payorname,  
  ci.item_title as accttitle,  
  ci.amount as amount, 
  ci.item_code as acctno,
  case when cv.objid IS null then 0 else 1 end as voided,
  c.formno as afid 
from( 
  select
    distinct lf.liquidationid
  from bankdeposit b 
    inner join bankdeposit_liquidation bl on b.objid = bl.bankdepositid
    inner join liquidation_cashier_fund lf on lf.objid = bl.objid 
  where b.objid=$P{bankdepositid} 
  ) a 
  inner join liquidation_remittance lr on lr.liquidationid = a.liquidationid 
  inner join remittance_cashreceipt rc on rc.remittanceid = lr.objid 
  inner join cashreceipt c on c.objid = rc.objid 
  inner join cashreceiptitem ci on ci.receiptid = c.objid
  left join cashreceipt_void cv on cv.receiptid = c.objid 

[getRevenueItemSummaryByFund]
select 
  ri.fund_title as fundname, cri.item_objid as acctid, cri.item_title as acctname,
  cri.item_code as acctcode, sum( cri.amount ) as amount 
from( 
  select
    distinct lf.liquidationid
  from bankdeposit b 
    inner join bankdeposit_liquidation bl on b.objid = bl.bankdepositid
    inner join liquidation_cashier_fund lf on lf.objid = bl.objid 
  where b.objid=$P{bankdepositid} 
  ) a 
  inner join liquidation_remittance lr on lr.liquidationid = a.liquidationid 
  inner join remittance_cashreceipt rc on rc.remittanceid = lr.objid 
  inner join cashreceipt c on c.objid = rc.objid 
  inner join cashreceiptitem cri on cri.receiptid = c.objid
  inner join revenueitem ri on ri.objid = cri.item_objid
  left join cashreceipt_void cv on cv.receiptid = c.objid 
where cv.objid is null 
group by ri.fund_title, cri.item_objid, cri.item_code, cri.item_title 
order by fundname, acctcode, acctname  


[getBarangayShares]
select 
  ri.fund_title as fundname, ri.objid as acctid, ri.title as acctname,
  ri.code as acctcode, sum( cri.brgyshare + cri.brgyintshare ) as amount 
from( 
  select
    distinct lf.liquidationid
  from bankdeposit b 
    inner join bankdeposit_liquidation bl on b.objid = bl.bankdepositid
    inner join liquidation_cashier_fund lf on lf.objid = bl.objid 
  where b.objid=$P{bankdepositid} 
  ) a 
  inner join liquidation_remittance lr on lr.liquidationid = a.liquidationid 
  inner join remittance_cashreceipt rc on rc.remittanceid = lr.objid 
  inner join cashreceipt c on c.objid = rc.objid 
  inner join cashreceiptitem_rpt cri on cri.rptreceiptid = c.objid
  inner join brgyshare_account_mapping bam on cri.barangayid = bam.barangayid 
  left join revenueitem ri on ri.objid = bam.acct_objid
  left join cashreceipt_void cv on cv.receiptid = c.objid 
  where cv.objid is null and c.formno = '56'
group by ri.fund_title, ri.objid, ri.code, ri.title 
order by fundname, acctcode, acctname  


[updateBrgyShares]
update cri set 
  cri.brgyshare = ROUND((cri.basic - cri.basicdisc) * 0.30, 2),
  cri.brgyintshare = ROUND(cri.basicint * 0.30, 2)
from( 
    select
    distinct lf.liquidationid
    from bankdeposit b 
    inner join bankdeposit_liquidation bl on b.objid = bl.bankdepositid
    inner join liquidation_cashier_fund lf on lf.objid = bl.objid 
    where b.objid =  $P{bankdepositid} 
  ) a 
  inner join liquidation_remittance lr on lr.liquidationid = a.liquidationid 
  inner join remittance_cashreceipt rc on rc.remittanceid = lr.objid 
  inner join cashreceipt c on c.objid = rc.objid 
  inner join cashreceiptitem_rpt cri on cri.rptreceiptid = c.objid
  left join cashreceipt_void cv on cv.receiptid = c.objid 
  where cv.objid IS NULL 



[getSerialRemittedForms]
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
INNER join liquidation_remittance lr on lr.objid=ad.remittanceid 
INNER JOIN liquidation_cashier_fund lcf on lcf.liquidationid = lr.liquidationid
INNER JOIN bankdeposit_liquidation bl on bl.objid = lcf.objid 
where bl.bankdepositid=$P{bankdepositid} 
     and lcf.fund_objid=$P{fundname}
     and afc.af=$P{afid}
GROUP BY ai.afid, ad.controlid) a    

[getNonSerialRemittedForms]
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
INNER join cashticket ch on ch.objid = ai.afid 
INNER join liquidation_remittance lr on lr.objid=ad.remittanceid 
INNER JOIN liquidation_cashier_fund lcf on lcf.liquidationid = lr.liquidationid
INNER JOIN bankdeposit_liquidation bl on bl.objid = lcf.objid 
where bl.bankdepositid=$P{bankdepositid} 
     and lcf.fund_objid=$P{fundname}
     and afc.af=$P{afid}
GROUP BY ai.afid, ad.controlid) a


[getDepositAmount]
select 
     be.totalcash, be.totalnoncash, ba.code AS bankacctno, ba.bank_code as bankcode, ba.fund_title as fund, be.amount, be.summaries 
from  bankdeposit_entry be 
   inner join bankaccount ba on be.bankaccount_objid = ba.objid 
where be.parentid = $P{bankdepositid} 
  and be.bankaccount_objid=$P{bankaccountid}



[getDepositSlipSummaryByFund]
select 
  bd.cashier_name as cashier, 
    (ba.bank_code + ' - Cash D/S: Account ' + be.bankaccount_code ) as depositref, 
    NULL as depositamt 
from bankdeposit bd 
 inner join bankdeposit_entry be on bd.objid = be.parentid 
 inner join bankaccount ba on ba.objid = be.bankaccount_objid 
 inner join fund f on ba.fund_objid = f.parentid
where bd.objid=$P{bankdepositid} and f.objid = $P{fundname}
