[getApproveFaasListing]
SELECT 
	f.state,
	f.tdno,
	f.ownername,
	f.titleno,
	f.prevtdno,
	f.prevowner,
	f.effectivityyear,
	cancelledbytdnos,
	canceldate,
	cancelreason,
	r.rputype,
	r.fullpin,
	r.totalareasqm,
	r.totalareaha,
	r.totalmv,
	r.totalav,
	rp.cadastrallotno,
	rp.surveyno,
	pc.code AS classcode
FROM faas f 
	INNER JOIN rpu r ON f.rpuid = r.objid
	INNER JOIN realproperty rp ON r.realpropertyid = rp.objid 
	INNER JOIN propertyclassification pc ON r.classification_objid = pc.objid 
	INNER JOIN txnsignatory s ON f.objid = s.refid AND s.type = 'approver'
WHERE f.state IN ('CURRENT', 'CANCELLED')
	AND rp.barangayid LIKE $P{barangayid}
	AND YEAR(s.dtsigned) = $P{year}  
	AND QUARTER(s.dtsigned) = $P{quarter}      
	AND MONTH(s.dtsigned) LIKE $P{month} 

ORDER BY r.fullpin 	


[getMasterListing]
SELECT t.* FROM (  
	SELECT 
		f.state, f.ownername, r.fullpin, f.tdno, f.titleno, rp.cadastrallotno,  
		r.rputype, pc.code AS classcode, r.totalareaha, r.totalareasqm, r.totalmv, r.totalav, f.effectivityyear, 
		f.prevtdno, f.prevowner, f.prevmv, f.prevav, 
		NULL AS cancelledbytdnos, NULL AS cancelreason, canceldate 
	FROM faas f
		INNER JOIN rpu r ON f.rpuid = r.objid 
		INNER JOIN realproperty rp ON r.realpropertyid = rp.objid 
		INNER JOIN propertyclassification pc ON r.classification_objid = pc.objid 
	WHERE f.state = 'CURRENT'  
	  ${classidfilter}

	UNION 

	SELECT 
		f.state, f.ownername, r.fullpin, f.tdno, f.titleno, rp.cadastrallotno,  
		r.rputype, pc.code AS classcode, r.totalareaha, r.totalareasqm, r.totalmv, r.totalav, f.effectivityyear, 
		f.prevtdno, f.prevowner, f.prevmv, f.prevav, 
		cancelledbytdnos, cancelreason, canceldate 
	FROM faas f
		INNER JOIN rpu r ON f.rpuid = r.objid 
		INNER JOIN realproperty rp ON r.realpropertyid = rp.objid 
		INNER JOIN propertyclassification pc ON r.classification_objid = pc.objid 
	WHERE f.state = 'CANCELLED'  
	  AND YEAR(f.canceldate) = $P{currentyear}  
	  ${classidfilter}
) t 
${orderby} 



[getAssessmentRollTaxable]
SELECT
	r.ry, rp.section,  
	CASE WHEN p.objid IS NOT NULL THEN p.name ELSE c.name END AS parentlguname, 
	CASE WHEN p.objid IS NOT NULL THEN p.indexno ELSE c.indexno END AS parentlguindex,   
	CASE WHEN m.objid IS NOT NULL THEN m.name ELSE d.name END AS lguname, 
	CASE WHEN m.objid IS NOT NULL THEN m.indexno ELSE d.indexno END AS lguindex,  
	
	b.name AS barangay, b.indexno AS barangayindex, 
	f.ownername, f.owneraddress, f.tdno, f.effectivityyear, 
	rp.cadastrallotno, pc.code AS classcode, r.rputype, r.totalav, 
	r.fullpin, f.prevtdno, f.memoranda, rp.barangayid 
FROM faas f
	INNER JOIN rpu r ON f.rpuid = r.objid 
	INNER JOIN realproperty rp ON r.realpropertyid = rp.objid
	INNER JOIN propertyclassification pc ON r.classification_objid = pc.objid 
	INNER JOIN barangay b ON rp.barangayid = b.objid 
	LEFT JOIN municipality m ON b.parentid = m.objid  
	LEFT JOIN district d ON b.parentid = d.objid 
	LEFT JOIN province p ON m.parentid = p.objid 
	LEFT JOIN city c ON d.parentid = c.objid 
WHERE rp.barangayid = $P{barangayid} 
  AND rp.section LIKE $P{section} 
  AND f.state = 'CURRENT'  
  AND r.taxable = 1 
ORDER BY fullpin   


[getAssessmentRollExempt]
SELECT
	r.ry, rp.section,  
	CASE WHEN p.objid IS NOT NULL THEN p.name ELSE c.name END AS parentlguname, 
	CASE WHEN p.objid IS NOT NULL THEN p.indexno ELSE c.indexno END AS parentlguindex,   
	CASE WHEN m.objid IS NOT NULL THEN m.name ELSE d.name END AS lguname, 
	CASE WHEN m.objid IS NOT NULL THEN m.indexno ELSE d.indexno END AS lguindex,  
	
	b.name AS barangay, b.indexno AS barangayindex, 
	f.ownername, f.owneraddress, f.tdno, f.effectivityyear, 
	rp.cadastrallotno, pc.code AS classcode, r.rputype, r.totalav, 
	r.fullpin, f.memoranda, rp.barangayid,
	f.memoranda, et.code AS legalbasis  
FROM faas f
	INNER JOIN rpu r ON f.rpuid = r.objid 
	INNER JOIN realproperty rp ON r.realpropertyid = rp.objid
	INNER JOIN propertyclassification pc ON r.classification_objid = pc.objid 
	INNER JOIN barangay b ON rp.barangayid = b.objid 
	LEFT JOIN exemptiontype et ON r.exemptiontype_objid = et.objid 
	LEFT JOIN municipality m ON b.parentid = m.objid  
	LEFT JOIN district d ON b.parentid = d.objid 
	LEFT JOIN province p ON m.parentid = p.objid 
	LEFT JOIN city c ON d.parentid = c.objid 
WHERE rp.barangayid = $P{barangayid} 
  AND rp.section LIKE $P{section} 
  AND f.state = 'CURRENT'  
  AND r.taxable = 0 
ORDER BY fullpin   


[getTmcrList]
SELECT
	b.name AS barangay, pc.code AS classcode, 
	f.state,  f.memoranda, f.ownername, f.owneraddress, r.rputype, f.tdno, f.titleno, 
	rp.cadastrallotno, rp.section, rp.surveyno, 
	r.fullpin, r.totalareasqm, r.totalareasqm, r.totalav, r.totalmv 
FROM faas f
	INNER JOIN rpu r ON f.rpuid = r.objid 
	INNER JOIN realproperty rp ON r.realpropertyid = rp.objid
	INNER JOIN propertyclassification pc ON r.classification_objid = pc.objid 
	INNER JOIN barangay b ON rp.barangayid = b.objid 
WHERE rp.barangayid = $P{barangayid} 
  AND f.state IN ('CURRENT', 'CANCELLED')
  AND rp.section LIKE $P{section} 
ORDER BY fullpin   


[getJAT]
SELECT 
	b.name AS barangay, s.dtsigned AS issuedate, f.tdno, r.fullpin, 
	f.txntype_objid AS txntype, f.ownername, r.rputype, pc.code AS classcode, 
	r.totalareaha, r.totalmv, r.totalav, f.state 
FROM faas f
	INNER JOIN rpu r ON f.rpuid = r.objid 
	INNER JOIN realproperty rp ON r.realpropertyid = rp.objid
	INNER JOIN propertyclassification pc ON r.classification_objid = pc.objid 
	INNER JOIN barangay b ON rp.barangayid = b.objid 
	INNER JOIN txnsignatory s ON f.objid = s.refid AND s.type = 'approver'
WHERE rp.barangayid = $P{barangayid} 
  AND f.state IN ('CURRENT', 'CANCELLED')
ORDER BY s.dtsigned, tdno 


[getAnnotationListing]
SELECT 
	f.tdno, f.titleno, f.titledate, f.titletype, f.ownername, f.owneraddress, 
	r.fullpin, rp.cadastrallotno, r.rputype, b.name AS barangay, pc.code AS classcode, r.totalmv, r.totalav, 
	r.totalareaha,	r.totalareasqm, fat.type AS annotationtype, fa.memoranda 
FROM faasannotation fa 
	INNER JOIN faasannotationtype fat ON fa.annotationtype_objid = fat.objid 
	INNER JOIN faas f ON fa.faasid = f.objid 
	INNER JOIN rpu r ON f.rpuid = r.objid 
	INNER JOIN realproperty rp ON r.realpropertyid = rp.objid
	INNER JOIN propertyclassification pc ON r.classification_objid = pc.objid 
	INNER JOIN barangay b ON rp.barangayid = b.objid 
WHERE fa.state = 'APPROVED'  
  AND f.state = 'CURRENT'  
${orderby} 



[getRDAP-RPTA-100]
SELECT 
	b.pin,
	b.name AS barangay,
	b.indexno, 
	SUM( CASE WHEN r.taxable = 1 THEN 1.0 ELSE 0 END ) AS landtaxablecount,
	SUM( CASE WHEN r.taxable = 0 THEN 1.0 ELSE 0 END ) AS landexemptcount,
	SUM( CASE WHEN r.taxable = 1 THEN r.totalareaha ELSE 0 END ) AS landareataxable,
	SUM( CASE WHEN r.taxable = 0 THEN r.totalareaha ELSE 0 END ) AS landareaexempt,
	SUM( r.totalareaha ) AS landareatotal,
	SUM( CASE WHEN r.taxable = 1 THEN 1 ELSE 0 END ) AS tdtaxablecount,
	SUM( CASE WHEN r.taxable = 0 THEN 1 ELSE 0 END ) AS tdexemptcount,
	SUM( CASE WHEN f.objid IS NULL THEN 0 ELSE 1 END ) AS tdcount,
	SUM( CASE WHEN r.rputype = 'land' THEN r.totalav ELSE 0 END ) AS landavtotal,
	SUM( CASE WHEN r.rputype <> 'land' THEN r.totalav ELSE 0 END ) AS improvavtotal,
	SUM( r.totalav ) AS avtotal,
	SUM( CASE WHEN r.taxable = 1 THEN r.totalav ELSE 0 END ) AS avtaxable,
	SUM( CASE WHEN r.taxable = 0 THEN r.totalav ELSE 0 END ) AS avexempt
FROM barangay b
	LEFT JOIN realproperty rp ON b.objid = rp.barangayid 
	LEFT JOIN rpu r ON rp.objid = r.realpropertyid 
	LEFT JOIN faas f ON r.objid = f.rpuid 
WHERE f.objid IS NULL
  OR (f.state = 'CURRENT' 	AND f.txntimestamp <= $P{txntimestamp})
  AND r.rputype = 'land' 
GROUP BY b.pin, b.indexno, b.name 
ORDER BY b.pin 


  
[getORF]  
SELECT
	b.name AS barangay, rp.cadastrallotno, pc.code AS classcode, r.fullpin, 
	f.prevtdno, f.taxpayeraddress, f.taxpayername, f.tdno, 
	r.totalareasqm, r.totalareaha, r.totalav, f.txntype_objid AS txntype
FROM faas f
	INNER JOIN rpu r ON f.rpuid = r.objid 
	INNER JOIN realproperty rp ON r.realpropertyid = rp.objid
	INNER JOIN propertyclassification pc ON r.classification_objid = pc.objid 
	INNER JOIN barangay b ON rp.barangayid = b.objid 
WHERE f.taxpayerid = $P{taxpayerid} 
  AND f.state = 'CURRENT'  
ORDER BY r.fullpin   





#----------------------------------------------------------------------
#
# Real Property Assessment Accomplishment Report 
#
#----------------------------------------------------------------------
[getPreceedingRPAAccomplishment]
SELECT  
	b.objid AS barangayid, 
	b.name AS barangay, 
	SUM( CASE WHEN r.taxable = 1 THEN 1 ELSE 0 END ) AS preceedingtaxablecount, 
	SUM( CASE WHEN r.taxable = 1 THEN r.totalav ELSE 0 END ) AS preceedingtaxableav, 
	SUM( CASE WHEN r.taxable = 0 THEN 1 ELSE 0 END ) AS preceedingexemptcount, 
	SUM( CASE WHEN r.taxable = 0 THEN r.totalav ELSE 0 END ) AS preceedingexemptav 
FROM faas f
	INNER JOIN rpu r ON f.rpuid = r.objid 
	INNER JOIN realproperty rp ON r.realpropertyid = rp.objid
	INNER JOIN propertyclassification pc ON r.classification_objid = pc.objid 
	INNER JOIN barangay b ON rp.barangayid = b.objid 
WHERE f.txntimestamp < $P{currenttimestamp} 
  AND f.state = 'CURRENT' 
GROUP BY b.objid, b.name 
ORDER BY b.indexno 	 


[getCurrentRPAAccomplishment]
SELECT  
	b.objid AS barangayid, 
	b.name AS barangay, 
	SUM( IFNULL(CASE WHEN r.taxable = 1 THEN 1 ELSE 0 END,0) ) AS currenttaxablecount, 
	SUM( CASE WHEN r.taxable = 1 THEN r.totalav ELSE 0 END ) AS currenttaxableav, 
	SUM( CASE WHEN r.taxable = 0 THEN 1 ELSE 0 END ) AS currentexemptcount, 
	SUM( CASE WHEN r.taxable = 0 THEN r.totalav ELSE 0 END ) AS currentexemptav 
FROM faas f
	INNER JOIN rpu r ON f.rpuid = r.objid 
	INNER JOIN realproperty rp ON r.realpropertyid = rp.objid
	INNER JOIN propertyclassification pc ON r.classification_objid = pc.objid 
	INNER JOIN barangay b ON rp.barangayid = b.objid 
WHERE f.txntimestamp LIKE $P{currenttimestamp} 
  AND f.state = 'CURRENT' 
GROUP BY b.objid, b.name 
ORDER BY b.indexno 	 


[getCancelledRPAAccomplishment]
SELECT  
	b.objid AS barangayid, 
	b.name AS barangay, 
	SUM( IFNULL(CASE WHEN r.taxable = 1 THEN 1 ELSE 0 END,0) ) AS cancelledtaxablecount, 
	SUM( CASE WHEN r.taxable = 1 THEN r.totalav ELSE 0 END ) AS cancelledtaxableav, 
	SUM( CASE WHEN r.taxable = 0 THEN 1 ELSE 0 END ) AS cancelledexemptcount, 
	SUM( CASE WHEN r.taxable = 0 THEN r.totalav ELSE 0 END ) AS cancelledexemptav 
FROM faas f
	INNER JOIN rpu r ON f.rpuid = r.objid 
	INNER JOIN realproperty rp ON r.realpropertyid = rp.objid
	INNER JOIN propertyclassification pc ON r.classification_objid = pc.objid 
	INNER JOIN barangay b ON rp.barangayid = b.objid 
WHERE f.cancelledtimestamp LIKE $P{currenttimestamp} 
  AND f.state = 'CANCELLED' 
GROUP BY b.objid, b.name 
ORDER BY b.indexno 	 


[getEndingRPAAccomplishment]
SELECT  
	b.objid AS barangayid, 
	b.name AS barangay, 
	SUM( IFNULL(CASE WHEN r.taxable = 1 THEN 1 ELSE 0 END,0) ) AS endingtaxablecount, 
	SUM( CASE WHEN r.taxable = 1 THEN r.totalav ELSE 0 END ) AS endingtaxableav, 
	SUM( CASE WHEN r.taxable = 0 THEN 1 ELSE 0 END ) AS endingexemptcount, 
	SUM( CASE WHEN r.taxable = 0 THEN r.totalav ELSE 0 END ) AS endingexemptav 
FROM faas f
	INNER JOIN rpu r ON f.rpuid = r.objid 
	INNER JOIN realproperty rp ON r.realpropertyid = rp.objid
	INNER JOIN propertyclassification pc ON r.classification_objid = pc.objid 
	INNER JOIN barangay b ON rp.barangayid = b.objid 
WHERE f.txntimestamp < $P{endingtimestamp} 
  AND f.state = 'CURRENT' 
GROUP BY b.objid, b.name 
ORDER BY b.indexno 	 






#----------------------------------------------------------------------
#
# COMPARATIVE DATA ON AV
#
#----------------------------------------------------------------------
[getPreceedingComparativeAV]
SELECT
	'TAXABLE' AS taxability, 
	pc.objid AS classid, 
	pc.name AS classname, 
	pc.special AS special, 
	SUM( CASE WHEN r.rputype = 'land' THEN totalav ELSE 0.0 END ) AS preceedinglandav, 
	SUM( CASE WHEN r.rputype <> 'land' THEN totalav ELSE 0.0 END ) AS preceedingimpav, 
	SUM( r.totalav ) AS preceedingtotal 
FROM faas f
	INNER JOIN rpu r ON f.rpuid = r.objid 
	INNER JOIN propertyclassification pc ON r.classification_objid = pc.objid 
WHERE f.txntimestamp < $P{currenttimestamp}
  AND f.state = 'CURRENT'  
  AND r.taxable = 1 
GROUP BY pc.objid, pc.name, pc.special 
ORDER BY pc.orderno 


[getCurrentComparativeAV]
SELECT
	'TAXABLE' AS taxability, 
	pc.objid AS classid, 
	pc.name AS classname, 
	pc.special AS special, 
	SUM( CASE WHEN r.rputype = 'land' THEN totalav ELSE 0.0 END ) AS currentlandav, 
	SUM( CASE WHEN r.rputype <> 'land' THEN totalav ELSE 0.0 END ) AS currentimpav, 
	SUM( r.totalav ) AS currenttotal 
FROM faas f
	INNER JOIN rpu r ON f.rpuid = r.objid 
	INNER JOIN propertyclassification pc ON r.classification_objid = pc.objid 
WHERE f.txntimestamp LIKE $P{currenttimestamp}    
  AND f.state = 'CURRENT'  
  AND r.taxable = 1 
GROUP BY pc.objid, pc.name, pc.special 
ORDER BY pc.orderno 


[getCancelledComparativeAV]
SELECT
	'TAXABLE' AS taxability, 
	pc.objid AS classid, 
	pc.name AS classname, 
	pc.special AS special, 
	SUM( CASE WHEN r.rputype = 'land' THEN totalav ELSE 0.0 END ) AS cancelledlandav, 
	SUM( CASE WHEN r.rputype <> 'land' THEN totalav ELSE 0.0 END ) AS cancelledimpav, 
	SUM( r.totalav ) AS cancelledtotal 
FROM faas f
	INNER JOIN rpu r ON f.rpuid = r.objid 
	INNER JOIN propertyclassification pc ON r.classification_objid = pc.objid 
WHERE f.cancelledtimestamp LIKE $P{currenttimestamp}    
  AND f.state = 'CANCELLED'  
  AND r.taxable = 1 
GROUP BY pc.objid, pc.name, pc.special 
ORDER BY pc.orderno 


[getEndingComparativeAV]
SELECT
	'TAXABLE' AS taxability, 
	pc.objid AS classid, 
	pc.name AS classname, 
	pc.special AS special, 
	SUM( CASE WHEN r.rputype = 'land' THEN totalav ELSE 0.0 END ) AS endinglandav, 
	SUM( CASE WHEN r.rputype <> 'land' THEN totalav ELSE 0.0 END ) AS endingimpav, 
	SUM( r.totalav ) AS endingtotal 
FROM faas f
	INNER JOIN rpu r ON f.rpuid = r.objid 
	INNER JOIN propertyclassification pc ON r.classification_objid = pc.objid 
WHERE f.txntimestamp < $P{endingtimestamp} 
  AND f.state = 'CURRENT'  
  AND r.taxable = 1 
GROUP BY pc.objid, pc.name, pc.special 
ORDER BY pc.orderno 



[getPreceedingComparativeAVExempt]
SELECT 
	'EXEMPT' AS taxability,  
	e.objid AS classid,  
	e.name AS classname,  
	0 AS special,  
	SUM( CASE WHEN r.rputype = 'land' THEN r.totalav ELSE 0.0 END ) AS preceedinglandav,  
	SUM( CASE WHEN r.rputype <> 'land' THEN r.totalav ELSE 0.0 END ) AS preceedingimpav,  
	SUM( r.totalav ) AS preceedingtotal  
FROM faas f
	INNER JOIN rpu r ON f.rpuid = r.objid 
	INNER JOIN exemptiontype e ON r.exemptiontype_objid = e.objid 
WHERE f.txntimestamp < $P{currenttimestamp}  
  AND f.state = 'CURRENT'   
  AND r.taxable = 0 
GROUP BY e.objid, e.name 
ORDER BY e.orderno


[getCurrentComparativeAVExempt]
SELECT 
	'EXEMPT' AS taxability,  
	e.objid AS classid,  
	e.name AS classname,  
	0 AS special,  
	SUM( CASE WHEN r.rputype = 'land' THEN r.totalav ELSE 0.0 END ) AS currentlandav,  
	SUM( CASE WHEN r.rputype <> 'land' THEN r.totalav ELSE 0.0 END ) AS currentimpav,  
	SUM( r.totalav ) AS currenttotal  
FROM faas f
	INNER JOIN rpu r ON f.rpuid = r.objid 
	INNER JOIN exemptiontype e ON r.exemptiontype_objid = e.objid 
WHERE f.txntimestamp LIKE $P{currenttimestamp}  
  AND f.state = 'CURRENT'   
  AND r.taxable = 0 
GROUP BY e.objid, e.name 
ORDER BY e.orderno


[getCancelledComparativeAVExempt]
SELECT 
	'EXEMPT' AS taxability,  
	e.objid AS classid,  
	e.name AS classname,  
	0 AS special,  
	SUM( CASE WHEN r.rputype = 'land' THEN r.totalav ELSE 0.0 END ) AS cancelledlandav,  
	SUM( CASE WHEN r.rputype <> 'land' THEN r.totalav ELSE 0.0 END ) AS cancelledimpav,  
	SUM( r.totalav ) AS cancelledtotal  
FROM faas f
	INNER JOIN rpu r ON f.rpuid = r.objid 
	INNER JOIN exemptiontype e ON r.exemptiontype_objid = e.objid 
WHERE f.cancelledtimestamp LIKE $P{currenttimestamp}  
  AND f.state = 'CANCELLED'   
  AND r.taxable = 0 
GROUP BY e.objid, e.name 
ORDER BY e.orderno


[getEndingComparativeAVExempt]
SELECT 
	'EXEMPT' AS taxability,  
	e.objid AS classid,  
	e.name AS classname,  
	0 AS special,  
	SUM( CASE WHEN r.rputype = 'land' THEN r.totalav ELSE 0.0 END ) AS endinglandav,  
	SUM( CASE WHEN r.rputype <> 'land' THEN r.totalav ELSE 0.0 END ) AS endingimpav,  
	SUM( r.totalav ) AS endingtotal  
FROM faas f
	INNER JOIN rpu r ON f.rpuid = r.objid 
	INNER JOIN exemptiontype e ON r.exemptiontype_objid = e.objid 
WHERE f.txntimestamp < $P{endingtimestamp}  
  AND f.state = 'CURRENT'   
  AND r.taxable = 0 
GROUP BY e.objid, e.name 
ORDER BY e.orderno





#----------------------------------------------------------------------
#
# COMPARATIVE DATA ON NUMBER OF RPU
#
#----------------------------------------------------------------------
[getPreceedingComparativeRpuCount]
SELECT
	'TAXABLE' AS taxability, 
	pc.objid AS classid, 
	pc.name AS classname, 
	pc.special AS special, 
	SUM( CASE WHEN r.rputype = 'land' THEN 1.0 ELSE 0.0 END ) AS preceedinglandcount, 
	SUM( CASE WHEN r.rputype <> 'land' THEN 1.0 ELSE 0.0 END ) AS preceedingimpcount, 
	SUM( 1 ) AS preceedingtotal 
FROM faas f
	INNER JOIN rpu r ON f.rpuid = r.objid 
	INNER JOIN propertyclassification pc ON r.classification_objid = pc.objid 
WHERE f.txntimestamp < $P{currenttimestamp}
  AND f.state = 'CURRENT'  
  AND r.taxable = 1 
GROUP BY pc.objid, pc.name, pc.special 
ORDER BY pc.orderno 


[getNewDiscoveryComparativeRpuCount]
SELECT
	'TAXABLE' AS taxability, 
	pc.objid AS classid, 
	pc.name AS classname, 
	pc.special AS special, 
	SUM( CASE WHEN r.rputype = 'land' THEN 1.0 ELSE 0.0 END ) AS newdiscoverylandcount, 
	SUM( CASE WHEN r.rputype <> 'land' THEN 1.0 ELSE 0.0 END ) AS newdiscoveryimpcount, 
	SUM( 1 ) AS newdiscoverytotal 
FROM faas f
	INNER JOIN rpu r ON f.rpuid = r.objid 
	INNER JOIN propertyclassification pc ON r.classification_objid = pc.objid 
WHERE f.txntimestamp LIKE $P{currenttimestamp}    
  AND f.state = 'CURRENT'  
  AND r.taxable = 1 
  AND f.txntype_objid = 'ND'
GROUP BY pc.objid, pc.name, pc.special 
ORDER BY pc.orderno 


[getCancelledComparativeRpuCount]
SELECT
	'TAXABLE' AS taxability, 
	pc.objid AS classid, 
	pc.name AS classname, 
	pc.special AS special, 
	SUM( CASE WHEN r.rputype = 'land' THEN 1.0 ELSE 0.0 END ) AS cancelledlandcount, 
	SUM( CASE WHEN r.rputype <> 'land' THEN 1.0 ELSE 0.0 END ) AS cancelledimpcount, 
	SUM( 1 ) AS cancelledtotal 
FROM faas f
	INNER JOIN rpu r ON f.rpuid = r.objid 
	INNER JOIN propertyclassification pc ON r.classification_objid = pc.objid 
WHERE f.cancelledtimestamp LIKE $P{currenttimestamp} 
  AND f.state = 'CANCELLED'  
  AND r.taxable = 1 
GROUP BY pc.objid, pc.name, pc.special 
ORDER BY pc.orderno 


[getEndingComparativeRpuCount]
SELECT
	'TAXABLE' AS taxability, 
	pc.objid AS classid, 
	pc.name AS classname, 
	pc.special AS special, 
	SUM( CASE WHEN r.rputype = 'land' THEN 1.0 ELSE 0.0 END ) AS endinglandcount, 
	SUM( CASE WHEN r.rputype <> 'land' THEN 1.0 ELSE 0.0 END ) AS endingimpcount, 
	SUM( 1 ) AS endingtotal 
FROM faas f
	INNER JOIN rpu r ON f.rpuid = r.objid 
	INNER JOIN propertyclassification pc ON r.classification_objid = pc.objid 
WHERE f.txntimestamp < $P{endingtimestamp}
  AND f.state = 'CURRENT'  
  AND r.taxable = 1 
GROUP BY pc.objid, pc.name, pc.special 
ORDER BY pc.orderno 



[getPreceedingComparativeRpuCountExempt]
SELECT 
	'EXEMPT' AS taxability,  
	e.objid AS classid,  
	e.name AS classname,  
	0 AS special,  
	SUM( CASE WHEN r.rputype = 'land' THEN 1.0 ELSE 0.0 END ) AS preceedinglandcount,  
	SUM( CASE WHEN r.rputype <> 'land' THEN 1.0 ELSE 0.0 END ) AS preceedingimpcount,  
	SUM( 1.0 ) AS preceedingtotal     
FROM faas f
	INNER JOIN rpu r ON f.rpuid = r.objid 
	INNER JOIN exemptiontype e ON r.exemptiontype_objid = e.objid   
WHERE f.txntimestamp < $P{currenttimestamp} 
  AND f.state = 'CURRENT'  
  AND r.taxable = 0
GROUP BY e.objid, e.name 
ORDER BY e.orderno  


[getNewDiscoveryComparativeRpuCountExempt]
SELECT 
	'EXEMPT' AS taxability,  
	e.objid AS classid,  
	e.name AS classname,  
	0 AS special,  
	SUM( CASE WHEN r.rputype = 'land' THEN 1.0 ELSE 0.0 END ) AS newdiscoverylandcount,  
	SUM( CASE WHEN r.rputype <> 'land' THEN 1.0 ELSE 0.0 END ) AS newdiscoveryimpcount,  
	SUM( 1.0 ) AS newdiscoverytotal     
FROM faas f
	INNER JOIN rpu r ON f.rpuid = r.objid 
	INNER JOIN exemptiontype e ON r.exemptiontype_objid = e.objid   
WHERE f.txntimestamp LIKE $P{currenttimestamp}
  AND f.state = 'CURRENT'  
  AND f.txntype_objid = 'ND'
  AND r.taxable = 0
GROUP BY e.objid, e.name 
ORDER BY e.orderno  


[getCancelledComparativeRpuCountExempt]
SELECT 
	'EXEMPT' AS taxability,  
	e.objid AS classid,  
	e.name AS classname,  
	0 AS special,  
	SUM( CASE WHEN r.rputype = 'land' THEN 1.0 ELSE 0.0 END ) AS cancelledlandcount,  
	SUM( CASE WHEN r.rputype <> 'land' THEN 1.0 ELSE 0.0 END ) AS cancelledimpcount,  
	SUM( 1.0 ) AS cancelledtotal     
FROM faas f
	INNER JOIN rpu r ON f.rpuid = r.objid 
	INNER JOIN exemptiontype e ON r.exemptiontype_objid = e.objid   
WHERE f.cancelledtimestamp LIKE $P{currenttimestamp} 
  AND f.state = 'CANCELLED'  
  AND r.taxable = 0
GROUP BY e.objid, e.name 
ORDER BY e.orderno  


[getEndingComparativeRpuCountExempt]
SELECT 
	'EXEMPT' AS taxability,  
	e.objid AS classid,  
	e.name AS classname,  
	0 AS special,  
	SUM( CASE WHEN r.rputype = 'land' THEN 1.0 ELSE 0.0 END ) AS preceedinglandcount,  
	SUM( CASE WHEN r.rputype <> 'land' THEN 1.0 ELSE 0.0 END ) AS preceedingimpcount,  
	SUM( 1.0 ) AS preceedingtotal     
FROM faas f
	INNER JOIN rpu r ON f.rpuid = r.objid 
	INNER JOIN exemptiontype e ON r.exemptiontype_objid = e.objid   
WHERE f.txntimestamp < $P{endingtimestamp}  
  AND f.state = 'CURRENT'  
  AND r.taxable = 0
GROUP BY e.objid, e.name 
ORDER BY e.orderno  





#----------------------------------------------------------------------
#
# COMPARATIVE DATA ON MV
#
#----------------------------------------------------------------------
[getStartComparativeMV]
SELECT
	'TAXABLE' AS taxability, 
	pc.objid AS classid, 
	pc.name AS classname, 
	pc.special AS special, 
	SUM( CASE WHEN r.rputype = 'land' THEN r.totalmv ELSE 0.0 END ) AS startlandmv, 
	SUM( CASE WHEN r.rputype <> 'land' THEN r.totalmv ELSE 0.0 END ) AS startimpmv, 
	SUM( r.totalmv ) AS starttotal  
FROM faas f
	INNER JOIN rpu r ON f.rpuid = r.objid 
	INNER JOIN propertyclassification pc ON r.classification_objid = pc.objid 
WHERE f.txntimestamp < $P{currenttimestamp}  
  AND f.state = 'CURRENT'   
  AND r.taxable = 1  
GROUP BY pc.objid, pc.name, pc.special  
ORDER BY pc.orderno  


[getEndComparativeMV]
SELECT
	'TAXABLE' AS taxability, 
	pc.objid AS classid, 
	pc.name AS classname, 
	pc.special AS special, 
	SUM( CASE WHEN r.rputype = 'land' THEN r.totalmv ELSE 0.0 END ) AS endlandmv, 
	SUM( CASE WHEN r.rputype <> 'land' THEN r.totalmv ELSE 0.0 END ) AS endimpmv, 
	SUM( r.totalmv ) AS endtotal  
FROM faas f
	INNER JOIN rpu r ON f.rpuid = r.objid 
	INNER JOIN propertyclassification pc ON r.classification_objid = pc.objid 
WHERE f.txntimestamp < $P{endingtimestamp}   
  AND f.state = 'CURRENT'   
  AND r.taxable = 1  
GROUP BY pc.objid, pc.name, pc.special  
ORDER BY pc.orderno  


[getStartComparativeMVExempt]
SELECT 
	'EXEMPT' AS taxability,  
	e.objid AS classid,  
	e.name AS classname,  
	0 AS special,  
	SUM( CASE WHEN r.rputype = 'land' THEN r.totalmv ELSE 0.0 END ) AS startlandmv,  
	SUM( CASE WHEN r.rputype <> 'land' THEN r.totalmv ELSE 0.0 END ) AS startimpmv,  
	SUM( r.totalmv ) AS starttotal  
FROM faas f
	INNER JOIN rpu r ON f.rpuid = r.objid 
	INNER JOIN exemptiontype e ON r.exemptiontype_objid = e.objid    
WHERE f.txntimestamp < $P{currenttimestamp}  
  AND f.state = 'CURRENT'   
  AND r.taxable = 0   
GROUP BY e.objid, e.name
ORDER BY e.orderno  


[getEndComparativeMVExempt]
SELECT 
	'EXEMPT' AS taxability,  
	e.objid AS classid,  
	e.name AS classname,  
	0 AS special,  
	SUM( CASE WHEN r.rputype = 'land' THEN r.totalmv ELSE 0.0 END ) AS endlandmv,  
	SUM( CASE WHEN r.rputype <> 'land' THEN r.totalmv ELSE 0.0 END ) AS endimpmv,  
	SUM( r.totalmv ) AS endtotal  
FROM faas f
	INNER JOIN rpu r ON f.rpuid = r.objid 
	INNER JOIN exemptiontype e ON r.exemptiontype_objid = e.objid    
WHERE f.txntimestamp < $P{endingtimestamp} 
  AND f.state = 'CURRENT'   
  AND r.taxable = 0   
GROUP BY e.objid, e.name
ORDER BY e.orderno  




#----------------------------------------------------------------------
#
# Report on Real Property Assessments  
#
#----------------------------------------------------------------------
[getReportOnRPATaxable]
SELECT 
	pc.objid AS classid,
	pc.name AS classname, 
	COUNT( 1 ) AS rpucount,
	SUM( r.totalareasqm ) AS areasqm, 
	SUM( r.totalareaha) AS areaha,

	SUM( CASE WHEN r.rputype = 'land' THEN r.totalmv ELSE 0.0 END ) AS landmv,
	SUM( CASE WHEN r.rputype = 'bldg' AND r.totalmv <= 175000 THEN r.totalmv ELSE 0.0 END ) AS bldgmv150less,
	SUM( CASE WHEN r.rputype = 'bldg' AND r.totalmv > 175000 THEN r.totalmv ELSE 0.0 END ) AS bldgmvover150,
	SUM( CASE WHEN r.rputype = 'mach' THEN r.totalmv ELSE 0.0 END ) AS machmv,
	SUM( CASE WHEN rputype NOT IN( 'land', 'bldg', 'mach') THEN r.totalmv ELSE 0.0 END ) AS othermv, 
	SUM( r.totalmv ) AS totalmv,
	
	SUM( CASE WHEN r.rputype = 'land' THEN r.totalav ELSE 0.0 END ) AS landav,
	SUM( CASE WHEN r.rputype = 'bldg' AND r.totalav <= 175000 THEN r.totalav ELSE 0.0 END ) AS bldgav150less,
	SUM( CASE WHEN r.rputype = 'bldg' AND r.totalav > 175000 THEN r.totalav ELSE 0.0 END ) AS bldgavover150,
	SUM( CASE WHEN r.rputype = 'mach' THEN r.totalav ELSE 0.0 END ) AS machav,
	SUM( CASE WHEN rputype NOT IN( 'land', 'bldg', 'mach') THEN r.totalav ELSE 0.0 END ) AS otherav, 
	SUM( r.totalav ) AS totalav,
	
	SUM( CASE WHEN f.restrictionid = 'CARP' THEN r.totalav ELSE 0.0 END ) AS carpav,
	SUM( CASE WHEN f.restrictionid = 'UNDER_LITIGATION' THEN r.totalav ELSE 0.0 END ) AS litigationav,
	SUM( CASE WHEN f.restrictionid = 'OTHER' THEN r.totalav ELSE 0.0 END ) AS otherrestrictionav,
	SUM( CASE WHEN f.restrictionid IS NOT NULL THEN r.totalav ELSE 0.0 END ) AS totalrestriction 

FROM faas f
	INNER JOIN rpu r ON f.rpuid = r.objid 
	INNER JOIN realproperty rp ON r.realpropertyid = rp.objid
	INNER JOIN propertyclassification pc ON r.classification_objid = pc.objid 
WHERE f.txntimestamp <= $P{txntimestamp} 
  AND f.state = 'CURRENT' 
  AND r.taxable = 1 
GROUP BY pc.objid, pc.name
ORDER BY pc.orderno  


[getReportOnRPAExempt]
SELECT 
	e.objid AS classid,
	e.name AS classname, 
	COUNT( 1 ) AS rpucount,
	SUM( r.totalareasqm ) AS areasqm, 
	SUM( r.totalareaha) AS areaha,

	SUM( CASE WHEN r.rputype = 'land' THEN r.totalmv ELSE 0.0 END ) AS landmv,
	SUM( CASE WHEN r.rputype = 'bldg' AND r.totalmv <= 175000 THEN r.totalmv ELSE 0.0 END ) AS bldgmv150less,
	SUM( CASE WHEN r.rputype = 'bldg' AND r.totalmv > 175000 THEN r.totalmv ELSE 0.0 END ) AS bldgmvover150,
	SUM( CASE WHEN r.rputype = 'mach' THEN r.totalmv ELSE 0.0 END ) AS machmv,
	SUM( CASE WHEN rputype NOT IN( 'land', 'bldg', 'mach') THEN r.totalmv ELSE 0.0 END ) AS othermv, 
	SUM( r.totalmv ) AS totalmv,
	
	SUM( CASE WHEN r.rputype = 'land' THEN r.totalav ELSE 0.0 END ) AS landav,
	SUM( CASE WHEN r.rputype = 'bldg' AND r.totalav <= 175000 THEN r.totalav ELSE 0.0 END ) AS bldgav150less,
	SUM( CASE WHEN r.rputype = 'bldg' AND r.totalav > 175000 THEN r.totalav ELSE 0.0 END ) AS bldgavover150,
	SUM( CASE WHEN r.rputype = 'mach' THEN r.totalav ELSE 0.0 END ) AS machav,
	SUM( CASE WHEN rputype NOT IN( 'land', 'bldg', 'mach') THEN r.totalav ELSE 0.0 END ) AS otherav, 
	SUM( r.totalav ) AS totalav,
	
	SUM( CASE WHEN f.restrictionid = 'CARP' THEN r.totalav ELSE 0.0 END ) AS carpav,
	SUM( CASE WHEN f.restrictionid = 'UNDER_LITIGATION' THEN r.totalav ELSE 0.0 END ) AS litigationav,
	SUM( CASE WHEN f.restrictionid = 'OTHER' THEN r.totalav ELSE 0.0 END ) AS otherrestrictionav,
	SUM( CASE WHEN f.restrictionid IS NOT NULL THEN r.totalav ELSE 0.0 END ) AS totalrestriction 

FROM faas f
	INNER JOIN rpu r ON f.rpuid = r.objid 
	INNER JOIN realproperty rp ON r.realpropertyid = rp.objid
	INNER JOIN exemptiontype e ON r.exemptiontype_objid = e.objid 
WHERE f.txntimestamp <= $P{txntimestamp} 
  AND f.state = 'CURRENT' 
  AND r.taxable = 0
GROUP BY e.objid, e.name
ORDER BY e.orderno  




[generateTopNDelinquentProperty]
SELECT
	f.ownername,
	f.tdno,
	r.totalav,
	MIN(ri.year) AS minyear, 
	SUM( ri.basic + ri.basicint - ri.basicdisc - ri.basicpaid + 
		 ri.sef + ri.sefint - ri.sefdisc - ri.sefpaid 
	) AS amount
FROM rptledger rl
	INNER JOIN rptledgeritem ri ON rl.objid = ri.rptledgerid 
	INNER JOIN faas f ON rl.faasid = f.objid 
	INNER JOIN rpu r ON f.rpuid = r.objid 
WHERE rl.state = 'APPROVED'
  AND ri.state = 'OPEN' 
  AND ri.year <= $P{cy}
GROUP BY f.ownername, f.tdno, r.totalav, ri.rptledgerid
ORDER BY 
	SUM( ri.basic + ri.basicint - ri.basicdisc - ri.basicpaid + 
		 ri.sef + ri.sefint - ri.sefdisc - ri.sefpaid 
	) DESC 
LIMIT $P{topn}


[generateTopNDelinquentTaxpayer]
SELECT 
	tmp.ownername,
	COUNT(tmp.objid) AS rpucount,
	SUM(tmp.totalav) AS totalav,
	SUM(tmp.amount) AS amount
FROM (
	SELECT
		f.ownername,
		rl.objid, 
		r.totalav,
		SUM( ri.basic + ri.basicint - ri.basicdisc - ri.basicpaid + 
			 ri.sef + ri.sefint - ri.sefdisc - ri.sefpaid 
		) AS amount
	FROM rptledger rl
		INNER JOIN rptledgeritem ri ON rl.objid = ri.rptledgerid 
		INNER JOIN faas f ON rl.faasid = f.objid 
		INNER JOIN rpu r ON f.rpuid = r.objid 
	WHERE rl.state = 'APPROVED' 
	  AND ri.state = 'OPEN' 
	  AND ri.year <= $P{cy}
	GROUP BY f.ownername, rl.objid 
	ORDER BY amount DESC
	LIMIT $P{topn}
) tmp	
GROUP BY tmp.ownername 

