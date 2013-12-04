[getList]
SELECT a.* FROM 
(SELECT * FROM inactive_business WHERE tradename LIKE $P{searchtext}
 UNION 	
 SELECT * FROM inactive_business WHERE owner_name LIKE $P{searchtext}) a

