[findFaasByTdNo]
SELECT f.objid, f.state, rl.objid AS rptledgerid 
FROM faas f
	LEFT JOIN rptledger rl ON f.objid = rl.faasid 
WHERE tdno = $P{tdno}


[findRegisteredFaasByTdNo]
SELECT f.tdno, f.state, rp.cadastrallotno, r.totalmv, r.totalav, 
	rl.objid AS rptledgerid,
	rl.lastyearpaid, rl.lastqtrpaid
FROM rpt_sms_registration s
	INNER JOIN rptledger rl ON s.rptledgerid = rl.objid 
	INNER JOIN faas f ON f.objid = rl.faasid 
	INNER JOIN rpu r ON f.rpuid = r.objid 
	INNER JOIN realproperty rp ON f.realpropertyid = rp.objid 
WHERE f.tdno = $P{tdno}
  

 [getRegisteredFaasesByPhoneNo]
 SELECT f.tdno, f.state, rp.cadastrallotno, r.totalmv, r.totalav ,
 	rl.objid AS rptledgerid,
	rl.lastyearpaid, rl.lastqtrpaid
FROM rpt_sms_registration s
	INNER JOIN rptledger rl ON s.rptledgerid = rl.objid 
	INNER JOIN faas f ON f.objid = rl.faasid 
	INNER JOIN rpu r ON f.rpuid = r.objid 
	INNER JOIN realproperty rp ON f.realpropertyid = rp.objid 
WHERE s.phoneno = $P{phoneno}


[enroll]
INSERT INTO rpt_sms_registration 
	(phoneno, rptledgerid, dtregistered)
VALUES
	($P{phoneno}, $P{rptledgerid}, GETDATE())


[deleteRegisteredTdNo]		
DELETE FROM rpt_sms_registration 
WHERE rptledgerid IN (
	SELECT rl.objid 
	FROM rptledger rl 
		INNER JOIN faas f ON rl.faasid = f.objid 
		INNER JOIN rpt_sms_registration s ON rl.objid = s.rptledgerid 
	WHERE f.tdno = $P{tdno}
	  AND s.phoneno = $P{phoneno}
)


[deleteAllRegistration]
DELETE FROM rpt_sms_registration WHERE phoneno = $P{phoneno}