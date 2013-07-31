[getList]
SELECT 
	f.*,
	rpu.rputype,
	rpu.ry,
	rpu.fullpin ,
	rpu.taxable,
	rpu.totalareaha,
	rpu.totalareasqm,
	rpu.totalbmv,
	rpu.totalmv,
	rpu.totalav,
	rp.section,
	rp.parcel,
	rp.surveyno,
	rp.cadastrallotno,
	rp.blockno,
	rp.claimno,
	b.name AS barangay_name
FROM faas f
	INNER JOIN rpu rpu ON f.rpuid = rpu.objid
	LEFT JOIN realproperty rp ON rpu.realpropertyid = rp.objid
	LEFT JOIN lgu_barangay b ON rp.barangayid = b.objid 
WHERE f.tdno LIKE $P{searchtext}	
   OR f.ownername LIKE $P{searchtext} 
   OR rpu.fullpin LIKE $P{searchtext}
ORDER BY rpu.ry, rpu.fullpin, f.tdno    


[getState]   
SELECT state FROM faas WHERE objid = $P{objid}


[getFaasByTdNo]
SELECT * FROM faas WHERE tdno = $P{tdno} 


[getPreviousFaases]
SELECT pf.*, f.rpuid AS prevrpuid
FROM previousfaas pf
INNER JOIN faas f ON pf.prevfaasid = f.objid 
WHERE faasid = $P{faasid}

[getBackTaxes]
SELECT * FROM faasbacktax WHERE faasid = $P{faasid} ORDER BY effectivityyear DESC 

[getLandReference]
select
	r.fullpin, r.totalareasqm, f.ownername, f.tdno, rp.cadastrallotno 
 from rpu r 
	inner join faas f on f.rpuid = r.objid 
	inner join realproperty rp on rp.objid = r.realpropertyid 
where r.objid=$P{landrpuid} and r.rputype ='land'

[cancelFaas]
UPDATE faas SET 
	state = 'CANCELLED',
	cancelreason = $P{cancelreason},
	canceldate   = $P{canceldate},
	cancelledbytdnos = CONCAT(CASE WHEN cancelledbytdnos IS NULL OR LENGTH(TRIM(cancelledbytdnos)) = 0 THEN '' ELSE cancelledbytdnos END, ', ', $P{cancelledbytdnos}),
	cancelledtimestamp = $P{cancelledtimestamp}
WHERE objid = $P{objid}


[cancelRpu]
UPDATE rpu SET state = 'CANCELLED' WHERE objid = $P{objid}





#---------------------------------------------------------
#
#  LOOKUP SUPPORT
#
#---------------------------------------------------------
[lookupFaas]
SELECT 
	f.*,
	pc.code AS classification_code, 
	pc.name AS classification_name, 
	r.ry, r.realpropertyid, r.rputype, r.fullpin, r.totalmv, r.totalav,
	r.totalareasqm, r.totalareaha,
	rp.barangayid, rp.cadastrallotno, rp.blockno, rp.surveyno,
	b.name AS barangay_name
FROM faas f
	INNER JOIN rpu r ON f.rpuid = r.objid 
	INNER JOIN realproperty rp ON r.realpropertyid = rp.objid 
	INNER JOIN propertyclassification pc ON r.classification_objid = pc.objid 
	INNER JOIN lgu_barangay b ON rp.barangayid = b.objid 
${filters}	
ORDER BY f.tdno 