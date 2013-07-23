[checkOverlapSeries]
SELECT stubno FROM afissue 
WHERE objid <> $P{objid} 
	AND af_objid = $P{af_objid}
	AND $P{startseries} BETWEEN startseries AND endseries 

[getOpenAFIssueList]
SELECT * FROM afissue 
WHERE collector_objid = $P{collector_objid} 
  AND af_objid LIKE $P{af_objid} 
  AND endqty > 0 
ORDER BY af_objid 