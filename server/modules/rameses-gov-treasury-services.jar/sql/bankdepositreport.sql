[getFundlist]
select 
  lcf.fund_objid as objid , lcf.fund_title as title 
from bankdeposit bd 
  inner join bankdeposit_liquidation bl on bd.objid = bl.bankdepositid 
  inner join liquidation_cashier_fund lcf on lcf.objid = bl.objid  
where bd.objid = $P{bankdepositid}

[getBackAccountList]
select 
     ba.objid, concat( ba.bank_code, ' ( ', ba.code, ' )'  ) as title 
from bankdeposit_entry be 
 inner join bankaccount ba on ba.objid = be.bankaccount_objid 
where parentid=$P{bankdepositid}

[getCollectionSummaryByAFAndFund]
select  
  case 
      when a.objid in ( '51', '56') and a.formtype='serial' then CONCAT( 'AF#', a.objid, ': ', lcf.fund_title ) 
      ELSE CONCAT( 'AF#',a.objid, ': ', a.title,' - ', lcf.fund_title ) 
  end as particulars, 
  sum( case when crv.objid is null then cri.amount else 0.0 end ) as amount 
from bankdeposit_liquidation bl  
   inner join liquidation_cashier_fund lcf on lcf.objid = bl.objid
   inner join liquidation_remittance lr on lr.liquidationid = lcf.liquidationid 
   inner join remittance_cashreceipt rc on rc.remittanceid = lr.objid 
   inner join cashreceipt cr on rc.objid = cr.objid 
   left join cashreceipt_void crv on crv.receiptid = cr.objid 
   inner join collectionform a on a.objid = cr.formno 
   inner join cashreceiptitem cri on cri.receiptid = cr.objid 
where bl.bankdepositid=$P{bankdepositid}  and lcf.fund_objid = $P{fundname}
group by a.objid, lcf.fund_objid 

[getCashFundSummary]
select 
    bd.cashier_name as cashier, 
    concat(ba.bank_code, ' - Cash D/S: Account ' , be.bankaccount_code ) as depositref, 
    be.totalcash as depositamt 
from bankdeposit bd 
 inner join bankdeposit_entry be on bd.objid = be.parentid 
 inner join bankaccount ba on ba.objid = be.bankaccount_objid 
where bd.objid=$P{bankdepositid} and ba.fund_objid=$P{fundname}
  and be.totalcash > 0.0 


[getCheckFundSummary]
select 
    bd.cashier_name as cashier, 
    concat(ba.bank_code, ' - Check D/S: Account ' , be.bankaccount_code ) as depositref, 
    be.totalnoncash as depositamt 
from bankdeposit bd 
 inner join bankdeposit_entry be on bd.objid = be.parentid 
 inner join bankaccount ba on ba.objid = be.bankaccount_objid 
where bd.objid=$P{bankdepositid} and ba.fund_objid=$P{fundname}
  and be.totalnoncash > 0.0 

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
     be.totalcash, be.totalnoncash, ba.bank_code as bankcode, ba.fund_title as fund, be.amount 
from  bankdeposit_entry be 
   inner join bankaccount ba on be.bankaccount_objid = ba.objid 
where be.parentid = $P{bankdepositid} 
  and be.bankaccount_objid=$P{bankaccountid}