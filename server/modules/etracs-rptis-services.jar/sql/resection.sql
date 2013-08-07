[getList]
SELECT 
	r.objid, r.state, r.pintype, r.txnno, r.section, r.appraiser_name, r.appraiser_title,
	b.name AS barangay 
FROM resection r 
	INNER JOIN lgu_barangay b ON r.barangayid = b.objid 
${filters}	
ORDER BY r.txnno DESC 


[getBarangayLastSection]
SELECT MAX(section) AS section
FROM realproperty 
WHERE barangayid = $P{barangayid}
  AND state = 'CURRENT' 


[getAffectedRpus]
SELECT
	r.rputype,
	f.objid AS prevfaasid,
	r.objid AS prevrpuid,
	rp.objid AS prevrpid,
	f.tdno,
	r.fullpin
FROM realproperty rp
	INNER JOIN rpu r ON rp.objid = r.realpropertyid
	INNER JOIN faas f ON r.objid = f.rpuid 
WHERE rp.barangayid = $P{barangayid}
  AND rp.section = $P{section}
  AND f.state = 'CURRENT' 
ORDER BY r.fullpin   


[getResectionItems]
SELECT *
FROM resectionitem 
WHERE resectionid = $P{resectionid}


[getResectionAffectedRpus]
SELECT
	arpu.*,
	r.rputype,
	f.objid AS prevfaasid,
	r.objid AS prevrpuid,
	rp.objid AS prevrpid,
	f.tdno,
	r.fullpin
FROM resectionaffectedrpu arpu
	INNER JOIN faas f ON arpu.prevfaasid = f.objid
	INNER JOIN rpu r ON f.rpuid = r.objid
	INNER JOIN realproperty rp ON r.realpropertyid = rp.objid 
WHERE arpu.resectionid = $P{resectionid} AND f.state = 'CURRENT' 
ORDER BY r.fullpin 


[deleteResectionItems]
DELETE FROM resectionitem WHERE resectionid = $P{resectionid}

[deleteResectionAffectedRpus]
DELETE FROM resectionaffectedrpu WHERE resectionid = $P{resectionid}



[getSection]
SELECT MAX(section) AS section
FROM realproperty 
WHERE barangayid = $P{barangayid}
  AND section = $P{section}


[getState]  
SELECT state FROM resection WHERE objid = $P{objid}


  
[clearAffectedRpuNewRefIds]
UPDATE resectionaffectedrpu SET 
	newfaasid = null, newrpuid = null, newrpid = null 
WHERE resectionid = $P{resectionid}

[approveResection]
UPDATE resection SET state = 'APPROVED' WHERE objid = $P{objid}