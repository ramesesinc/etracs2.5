[getList]
SELECT a.* FROM 
(SELECT objid,tradename,businessaddress,owner_name,owner_address 
	FROM inactive_business WHERE tradename LIKE $P{searchtext}
 UNION 	
 SELECT objid,tradename,businessaddress,owner_name,owner_address  
 	FROM inactive_business WHERE owner_name LIKE $P{searchtext}
 ) a

