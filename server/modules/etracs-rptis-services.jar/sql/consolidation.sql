[getList]
SELECT 
	c.*,
	r.`fullpin` AS newrpu_fullpin,
	r.`totalareaha` AS newrpu_totalareaha,
	r.`totalareasqm` AS newrpu_totalareasqm
FROM consolidation c
	INNER JOIN rpu r ON c.newrpuid = r.objid 
${filters}	
ORDER BY c.txnno DESC 


[open]
SELECT 
	c.*,
	r.`fullpin` AS newrpu_fullpin,
	r.`totalareaha` AS newrpu_totalareaha,
	r.`totalareasqm` AS newrpu_totalareasqm
FROM consolidation c 
	INNER JOIN rpu r ON c.newrpuid = r.objid 
WHERE c.objid = $P{objid}


[getConsolidatedLands]
SELECT cl.*,
	f.tdno AS faas_tdno,
	f.owner_name AS faas_owner_name, 
	r.realpropertyid AS rpu_realpropertyid,
	r.fullpin AS rpu_fullpin,
	r.totalmv AS rpu_totalmv,
	r.totalav AS rpu_totalav,
	r.totalareaha AS rpu_totalareaha,
	r.totalareasqm AS rpu_totalareasqm
FROM consolidatedland cl
	INNER JOIN faas f ON cl.landfaasid = f.objid 
	INNER JOIN rpu r ON f.rpuid = r.objid 
WHERE cl.consolidationid = $P{consolidationid}
ORDER BY r.fullpin 


[getDuplicateConsolidatedLand]
SELECT * FROM consolidatedland 
WHERE consolidationid = $P{consolidationid} AND landfaasid = $P{landfaasid}


[getAffectedRpus]
SELECT 
	car.*,
	f.state AS prevstate,
	f.tdno AS prevtdno,
	r.suffix AS prevsuffix,
	r.fullpin AS prevfullpin,
	r.rputype 
FROM consolidationaffectedrpu car
	INNER JOIN faas f ON car.prevfaasid = f.objid 
	INNER JOIN rpu r ON f.rpuid = r.objid
WHERE car.consolidationid = $P{consolidationid}	


[getAffectedRpusByConsolidatedLandId]
SELECT 
	r.objid,
	r.rputype 
FROM consolidationaffectedrpu car
	INNER JOIN rpu r ON car.newrpuid = r.objid 
WHERE car.landfaasid = $P{landfaasid}


[getAffectedRpusByConsolidatedLand]
SELECT 
	f.objid AS objid,
	$P{consolidationid} AS consolidationid,
	f.objid AS prevfaasid,
	r.objid AS prevrpuid, 
	r.suffix AS newsuffix,
	r.rputype,
	fl.objid AS landfaasid
FROM faas f
	INNER JOIN rpu r ON f.rpuid = r.objid 
	INNER JOIN rpu rl ON r.realpropertyid = rl.realpropertyid
	INNER JOIN faas fl ON rl.objid = fl.rpuid 	
WHERE r.`realpropertyid` = $P{realpropertyid}
  AND r.rputype <> 'land' 
  AND rl.rputype = 'land'
  AND f.state <> 'CANCELLED' 
  AND fl.state = 'CURRENT'
  AND NOT EXISTS(SELECT * FROM consolidationaffectedrpu WHERE prevfaasid = f.objid )




[getNewlyCreatedAffectedRpus]
SELECT 
	f.objid AS objid,
	$P{consolidationid} AS consolidationid,
	f.objid AS prevfaasid,
	r.objid AS prevrpuid, 
	r.suffix AS newsuffix,
	r.rputype,
	fl.objid AS landfaasid
FROM consolidatedland cl
	INNER JOIN rpu r ON cl.rpid = r.`realpropertyid`
	INNER JOIN faas f ON  r.objid = f.rpuid 
	INNER JOIN rpu rl ON cl.rpid = rl.realpropertyid
	INNER JOIN faas fl ON rl.objid = fl.rpuid 
WHERE cl.consolidationid = $P{consolidationid}
  AND r.rputype <> 'land' 
  AND rl.rputype = 'land'
  AND f.state <> 'CANCELLED' 
  AND fl.state = 'CURRENT'
  AND NOT EXISTS(SELECT * FROM consolidationaffectedrpu WHERE prevfaasid = f.objid )
ORDER BY rputype 


[deleteAffectedRpuByLandFaasId]
DELETE FROM consolidationaffectedrpu WHERE landfaasid = $P{landfaasid}


[deleteAffectedRpuByPrevFaasId]
DELETE FROM consolidationaffectedrpu WHERE prevfaasid = $P{prevfaasid}

  
[getTotalConsolidatedLandArea]  
SELECT SUM( r.totalareasqm ) AS totalareasqm 
FROM consolidatedland cl
	INNER JOIN rpu r on cl.rpuid = r.objid 
WHERE cl.consolidationid = $P{consolidationid}


[setConsolidationFaasId]
UPDATE consolidation SET newfaasid = $P{newfaasid} WHERE objid = $P{objid}


[clearConsolidationFaasId]
UPDATE consolidation SET newfaasid = null WHERE objid = $P{objid}


[clearAffectedRpuNewFaasId]
UPDATE consolidationaffectedrpu SET newfaasid = null WHERE objid = $P{objid}




[approveConsolidation]
UPDATE consolidation SET state = 'APPROVED' WHERE objid = $P{objid}

[cancelRealProperty]
UPDATE realproperty SET state = 'CANCELLED' WHERE objid = $P{objid}