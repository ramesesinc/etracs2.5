[insert]
INSERT INTO workflowstate (objid, state)
VALUES ($P{objid}, $P{state})

[delete]
DELETE FROM workflowstate WHERE objid = $P{objid} AND state = $P{state}

[deleteAll]
DELETE FROM workflowstate WHERE objid = $P{objid}

[get]
SELECT * FROM workflowstate WHERE objid = $P{objid} AND state = $P{state} 
