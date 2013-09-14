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
	b.name AS barangay_name,
	pc.code AS classification_code
FROM faas f
	INNER JOIN rpu rpu ON f.rpuid = rpu.objid
	INNER  JOIN realproperty rp ON rpu.realpropertyid = rp.objid
	INNER JOIN barangay b ON rp.barangayid = b.objid 
	INNER JOIN propertyclassification pc ON rpu.classification_objid = pc.objid 
WHERE 
${filters}


[getFaasIds]
select
  f.objid, f.tdno
from faas f  
  inner join rpu r on r.objid = f.rpuid 
  inner join realproperty rp on rp.objid = r.realpropertyid 
where f.state = 'CURRENT' 
	and r.ry = $P{revisionyear} 
	and rp.barangayid = $P{barangayid}
	and rp.section like $P{section} 

[openFaas]
SELECT * FROM faas WHERE objid = $P{objid}


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
	r.fullpin, r.totalareasqm, f.owner_name, f.tdno, rp.cadastrallotno 
 from rpu r 
	inner join faas f on f.rpuid = r.objid 
	inner join realproperty rp on rp.objid = r.realpropertyid 
where r.objid=$P{landrpuid} and r.rputype ='land'

[cancelFaas]
UPDATE faas SET 
	state = 'CANCELLED',
	cancelreason = $P{cancelreason},
	canceldate   = $P{canceldate},
	cancelledbytdnos = (CASE WHEN cancelledbytdnos IS NULL OR LEN(RTRIM(LTRIM(cancelledbytdnos))) = 0 THEN '' ELSE cancelledbytdnos END + ', ' + $P{cancelledbytdnos}),
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
	INNER JOIN barangay b ON rp.barangayid = b.objid 
where 1=1 ${filters}	
ORDER BY f.tdno 


[getLandImprovementIds]
SELECT fi.objid 
FROM faas fl 
	INNER JOIN rpu lr ON fl.rpuid = lr.objid 
	INNER JOIN rpu ri ON lr.realpropertyid = ri.realpropertyid
	INNER JOIN faas fi ON ri.objid = fi.rpuid 
WHERE fl.objid = $P{landfaasid}
  AND ri.rputype <> 'land' 
  AND fi.state = 'CURRENT'

[getLguIndex]  
SELECT
	b.indexno as barangayindex,
	case when c.objid is not null then c.indexno else p.indexno end as provcityindex,
	case when d.objid is not null then d.indexno else m.indexno end as munidistrictindex
FROM barangay b
	left join district d on b.parentid = d.objid
	left join city c on d.parentid = c.objid 
	left join municipality m on b.parentid = m.objid 
	left join province p on m.parentid = p.objid 
where b.objid = $P{barangayid}	
