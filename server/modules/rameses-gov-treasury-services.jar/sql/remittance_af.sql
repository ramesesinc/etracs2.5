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
   CASE 
      WHEN (ac.currentseries IS NULL OR ac.currentseries=ai.currentseries) THEN NULL 
      ELSE ai.currentseries 
   END  AS issuedstartseries,
   CASE 
      WHEN (ac.currentseries IS NULL OR ac.currentseries=ai.currentseries) THEN NULL 
      ELSE ac.currentseries 
   END AS issuedendseries,
   CASE 
      WHEN (ac.currentseries IS NULL) THEN ai.currentseries
      WHEN (ac.currentseries=ai.currentseries) THEN ai.currentseries
      WHEN (ac.currentseries < ai.endseries ) THEN ac.currentseries + 1
      ELSE NULL 
   END AS endingstartseries,
   CASE
      WHEN (ac.currentseries IS NULL) THEN ai.endseries
      WHEN (ac.currentseries < ai.endseries) THEN ai.endseries
      ELSE NULL
   END AS endingendseries
   
FROM afserial_inventory_detail ad 
INNER JOIN afserial_inventory ai ON ad.controlid=ai.objid
LEFT JOIN remittance_afserial r ON r.objid=ad.objid
LEFT JOIN afserial_control ac ON ac.controlid=ai.objid 
WHERE r.remittanceid IS NULL
AND ai.respcenter_objid = $P{collectorid}
GROUP BY ai.afid, ad.controlid) a

[getUnremittedCashTickets]
SELECT a.*, 
    a.qtyreceived+a.qtybegin-a.qtyissued-a.qtycancelled AS qtyending
FROM
(SELECT 
   ai.afid AS formno,   
   SUM( ad.qtyreceived ) AS qtyreceived,
   SUM( ad.qtybegin ) AS qtybegin,
   SUM( ad.qtyissued ) AS qtyissued,
   SUM( ad.qtycancelled ) AS qtycancelled
FROM cashticket_inventory_detail ad 
INNER JOIN cashticket_inventory ai ON ad.controlid=ai.objid
LEFT JOIN remittance_cashticket r ON r.objid = ad.objid
WHERE r.remittanceid IS NULL
AND ai.respcenter_objid = $P{collectorid}
GROUP BY ai.afid) a


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
  cti.objid,
  cti.qtybalance 
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
WHERE r.remittanceid = $P{objid}
GROUP BY ai.afid, ad.controlid) a

[getRemittedCashTickets]
SELECT a.*, 
    a.qtyreceived+a.qtybegin-a.qtyissued-a.qtycancelled AS qtyending
FROM
(SELECT 
   ai.afid AS formno,   
   SUM( ad.qtyreceived ) AS qtyreceived,
   SUM( ad.qtybegin ) AS qtybegin,
   SUM( ad.qtyissued ) AS qtyissued,
   SUM( ad.qtycancelled ) AS qtycancelled
FROM cashticket_inventory_detail ad 
INNER JOIN cashticket_inventory ai ON ad.controlid=ai.objid
INNER JOIN remittance_cashticket r ON r.objid = ad.objid
WHERE r.remittanceid = $P{objid}
GROUP BY ai.afid) a


