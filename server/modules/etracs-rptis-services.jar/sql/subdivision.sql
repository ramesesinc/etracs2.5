[getList]
SELECT 
	s.*,
	f.tdno AS tdno,
	f.owner_name, 
	f.owner_address,
	r.totalareaha,
	r.totalareasqm,
	r.fullpin,
	r.totalmv, 
	r.totalav,
	rp.surveyno,
	rp.cadastrallotno,
	rp.blockno,
	pc.code AS classfication_code,
	pc.name AS classification_name
FROM subdivision s
	INNER JOIN faas f ON s.motherfaasid = f.objid 
	INNER JOIN rpu r ON f.rpuid = r.objid 
	INNER JOIN realproperty rp ON r.realpropertyid = rp.objid 
	INNER JOIN propertyclassification pc ON r.classification_objid = pc.objid 
WHERE s.state LIKE $P{state}
  AND (s.txnno LIKE $P{searchtext} OR f.tdno LIKE $P{searchtext} OR 
       f.owner_name LIKE $P{searchtext} OR r.fullpin LIKE $P{searchtext} )
ORDER BY s.txnno        


[openSubdivision]
SELECT s.*,
	f.tdno AS motherfaas_tdno, 
	f.taxpayerid AS motherfaas_taxpayerid,
	f.taxpayer_name AS motherfaas_taxpayername,
	f.taxpayer_address AS motherfaas_taxpayeraddress,
	f.owner_name AS motherfaas_ownername,
	f.owner_address AS motherfaas_owneraddress,
	f.lguid AS motherfaas_lguid, 
	f.txntype_objid AS motherfaas_txntype_objid,
	f.datacapture AS motherfaas_datacapture,
	r.objid AS motherfaas_rpuid, 
	r.totalareaha AS motherfaas_totalareaha, 
	r.totalareasqm AS motherfaas_totalareasqm, 
	r.fullpin AS motherfaas_fullpin, 
	r.rputype AS motherfaas_rputype, 
	r.totalmv AS motherfaas_totalmv, 
	r.totalav AS motherfaas_totalav, 
	rp.surveyno AS motherfaas_surveyno,
	rp.cadastrallotno AS motherfaas_cadastrallotno,
	rp.objid AS motherfaas_realpropertyid,
	rp.blockno AS motherfaas_blockno,
	rp.lgutype AS motherfaas_lgutype, 
	rp.barangayid AS motherfaas_barangayid, 
	rp.claimno AS motherfaas_claimno, 
	pc.code AS classfication_code,
	pc.name AS classification_name
FROM subdivision s
	INNER JOIN faas f ON s.motherfaasid = f.objid 
	INNER JOIN rpu r ON f.rpuid = r.objid 
	INNER JOIN realproperty rp ON r.realpropertyid = rp.objid 
	INNER JOIN propertyclassification pc ON r.classification_objid = pc.objid 
WHERE s.objid = $P{objid}	



[deleteFaas]
DELETE FROM faas WHERE objid = $P{objid}


[getSubdividedLands]
SELECT sl.*,
	r.totalav,
	r.totalmv 
FROM subdividedland sl
	INNER JOIN rpu r ON sl.newrpuid = r.objid  
WHERE sl.subdivisionid = $P{subdivisionid}
ORDER BY sl.newpin 
	



[getAffectedRpus]
SELECT 
	sar.*,
	f.state AS prevstate,
	f.tdno AS prevtdno,
	r.suffix AS prevsuffix,
	r.fullpin AS prevfullpin,
	r.rputype 
FROM subdivisionaffectedrpu sar
	INNER JOIN faas f ON sar.prevfaasid = f.objid 
	INNER JOIN rpu r ON f.rpuid = r.objid
WHERE sar.subdivisionid = $P{subdivisionid}	


[getAffectedRpusForCreate]
SELECT 
	f.objid AS objid,
	$P{subdivisionid} AS subdivisionid,
	f.objid AS prevfaasid,
	r.objid AS prevrpuid, 
	r.suffix AS newsuffix,
	r.rputype 
FROM faas f
	INNER JOIN rpu r ON f.rpuid = r.objid 
WHERE r.realpropertyid = $P{realpropertyid}
  AND r.rputype <> 'land' 
  AND f.state <> 'CANCELLED' 
  AND NOT EXISTS(SELECT * FROM subdivisionaffectedrpu WHERE prevfaasid = f.objid )
ORDER BY rputype 


  
[clearAffectedRpuNewFaasId]
UPDATE subdivisionaffectedrpu SET newfaasid = null WHERE objid = $P{objid}

[clearSubdividedLandNewFaasId]
UPDATE subdividedland SET newfaasid = null WHERE objid = $P{objid}


[deleteAffectedRpuByPrevFaasId]
DELETE FROM subdivisionaffectedrpu WHERE prevfaasid = $P{prevfaasid}


[updateAffectedRpuRealPropertyId]
UPDATE rpu SET realpropertyid = $P{realpropertyid} WHERE objid = $P{rpuid}



#--------------------------------------------------------------------------------------------------
#
# APPROVED SUPPORT
#
#--------------------------------------------------------------------------------------------------
[approveSubdivision]
UPDATE subdivision SET state = 'APPROVED' WHERE objid = $P{objid}


[cancelRealProperty]
UPDATE realproperty SET state = 'CANCELLED' WHERE objid = $P{objid}



