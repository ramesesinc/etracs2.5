[removeLink]
DELETE FROM business_cityengineer
WHERE businessid=$P{businessid}

[addLink]
INSERT INTO business_cityengineer 
(objid,businessid,state)
VALUES 
($P{businessid}, $P{business_cityengineer}, 'PENDING')