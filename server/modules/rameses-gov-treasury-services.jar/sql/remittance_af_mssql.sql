[updateRemittanceAF]
INSERT INTO remittance_afserial (objid,remittanceid)
SELECT ad.objid, $P{remittanceid} 
FROM afserial_inventory_detail ad
INNER JOIN afserial_inventory ai ON ai.objid=ad.controlid
LEFT JOIN remittance_afserial af ON af.objid=ad.objid
WHERE ai.respcenter_objid = $P{collectorid}
AND af.objid IS NULL

[updateRemittanceCashTicket]
INSERT INTO remittance_cashticket (objid,remittanceid)
SELECT ad.objid, $P{remittanceid} 
FROM cashticket_inventory_detail ad
INNER JOIN cashticket_inventory ai ON ai.objid=ad.controlid
LEFT JOIN remittance_cashticket af ON af.objid=ad.objid
WHERE ai.respcenter_objid = $P{collectorid}
AND af.objid IS NULL


[getUnremittedAFSerial]
SELECT b.*, 
    (b.receivedendseries-b.receivedstartseries+1) AS qtyreceived,
    (b.beginendseries-b.beginstartseries+1) AS qtybegin,
    (b.issuedendseries-b.issuedstartseries+1) AS qtyissued,
    (b.endingendseries-b.endingstartseries+1) AS qtyending
FROM

(SELECT 
   a.formno,
   a.controlid,
   MIN( a.receivedstartseries ) AS receivedstartseries,
   MAX( a.receivedendseries ) AS receivedendseries,
   MAX( a.beginstartseries ) AS beginstartseries,
   MAX( a.beginendseries ) AS beginendseries,
   MIN( a.issuedstartseries ) AS issuedstartseries, 
   MIN( a.issuedendseries ) AS  issuedendseries,  
   MAX( a.endingstartseries ) AS endingstartseries,
   MAX( a.endingendseries ) AS endingendseries

FROM 
   
(SELECT 
   ai.afid AS formno,   
   ad.controlid,
   MIN( ad.receivedstartseries ) AS receivedstartseries,
   MAX( ad.receivedendseries ) AS receivedendseries,
   MAX( ad.beginstartseries ) AS beginstartseries,
   MAX( ad.beginendseries ) AS beginendseries,
   NULL AS issuedstartseries, 
   NULL AS  issuedendseries,  
   MAX( ad.endingstartseries ) AS endingstartseries,
   MAX( ad.endingendseries ) AS endingendseries
FROM afserial_inventory_detail ad 
INNER JOIN afserial_inventory ai ON ad.controlid=ai.objid
LEFT JOIN remittance_afserial r ON r.objid=ad.objid
WHERE r.remittanceid IS NULL
AND ai.respcenter_objid =  $P{collectorid}
GROUP BY ai.afid, ad.controlid
UNION ALL
SELECT 
    c.formno,
    c.controlid,  
    NULL AS receivedstartseries,
    NULL AS receivedendseries,
    NULL AS beginstartseries,
    NULL AS beginendseries,
    MIN(c.series) AS issuedstartseries,
    MAX(c.series) AS issuedendseries,
    MAX(c.series)+1 AS endingstartseries,
    NULL AS endingendseries
FROM cashreceipt c
INNER JOIN afserial_inventory ai on ai.objid = c.controlid 
LEFT JOIN remittance_cashreceipt r ON r.objid=c.objid
WHERE r.objid IS NULL 
AND c.state = 'POSTED'   
AND c.collector_objid =  $P{collectorid}
AND c.formtype = 'serial'
GROUP BY c.formno, c.controlid) a
GROUP BY a.formno, a.controlid) b

[getUnremittedCashTickets]
SELECT b.*,  
     b.qtyreceived+b.qtybegin-b.qtyissued-b.qtycancelled AS qtyending
FROM
(SELECT a.formno, 
   SUM(a.qtyreceived) AS qtyreceived,
    SUM(a.qtybegin) AS qtybegin,
    SUM(a.qtyissued) AS qtyissued,
    SUM(a.qtycancelled) AS qtycancelled
FROM 

(SELECT 
   ai.afid AS formno,   
   SUM( ad.qtyreceived ) AS qtyreceived,
   SUM( ad.qtybegin) AS qtybegin,
   0 AS qtyissued,
   0 AS qtycancelled
FROM cashticket_inventory_detail ad 
INNER JOIN cashticket_inventory ai ON ad.controlid=ai.objid
LEFT JOIN remittance_cashticket rc ON rc.objid=ad.objid
WHERE  rc.objid IS NULL 
AND ai.respcenter_objid =  $P{collectorid}
GROUP BY ai.afid
UNION ALL
  SELECT 
    c.formno,
    0 AS qtyreceived,
    0 AS qtybegin,
    SUM(CASE WHEN cct.qtyissued is NULL THEN 0 ELSE cct.qtyissued END ) AS qtyissued,
    0 AS qtycancelled
  FROM cashreceipt c 
  INNER JOIN cashreceipt_cashticket cct ON c.objid=cct.objid
  LEFT JOIN remittance_cashreceipt rc ON rc.objid=c.objid
  WHERE rc.objid IS NULL 
  AND c.state = 'POSTED'
  AND c.collector_objid =  $P{collectorid}
  GROUP BY c.formno
) a
GROUP BY a.formno) b


[getRemittanceForBalanceForward]
SELECT 
  ad.controlid,
  MAX(ad.endingstartseries) AS startseries,
  MAX(ad.endingendseries) AS endseries
FROM afserial_inventory_detail ad 
INNER JOIN remittance_afserial af ON ad.objid=af.objid
WHERE af.remittanceid = $P{remittanceid}
GROUP BY ad.controlid

[getCashTicketRemittanceForBalanceForward]
SELECT DISTINCT
  ct.controlid,
  min(cti.qtybalance),
  min(cti.afid) 
FROM cashticket_inventory_detail ct 
INNER JOIN cashticket_inventory cti ON ct.controlid=cti.objid 
INNER JOIN remittance_cashticket rc ON ct.objid=rc.objid
WHERE rc.remittanceid=$P{remittanceid}
GROUP BY ct.controlid

[getRemittedAFSerial]
SELECT a.*, 
    (a.receivedendseries-a.receivedstartseries+1) AS qtyreceived,
    (a.beginendseries-a.beginstartseries+1) AS qtybegin,
    (a.issuedendseries-a.issuedstartseries+1) AS qtyissued,
    case when a.issuedendseries = a.endingstartseries then 0 
    else  (a.endingendseries-a.endingstartseries+1) end AS qtyending
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
WHERE r.remittanceid = $P{objid}
GROUP BY ai.afid, ad.controlid 
) a
order by a.formno, a.endingstartseries

[getRemittedCashTickets]
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
INNER join cashticket ch on ch.objid = ai.afid 
WHERE r.remittanceid = $P{objid}
GROUP BY ai.afid) a


