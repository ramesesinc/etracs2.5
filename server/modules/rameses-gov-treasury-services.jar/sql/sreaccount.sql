[getRootNodes]
SELECT a.* FROM sreaccount a 
WHERE a.parentid IS NULL and a.type='group' 
ORDER BY a.code 

[getChildNodes]
SELECT a.* FROM sreaccount a 
WHERE a.parentid=$P{objid} and a.type='group' 
ORDER BY a.code 

[getList]
SELECT * FROM sreaccount WHERE parentid=$P{objid} ORDER BY code

[search]
SELECT t.* FROM sreaccount t  
WHERE ${filter} t.parentid IS NOT NULL 
ORDER BY t.title 

[getLookup]
SELECT * FROM 
(SELECT objid,code,title FROM sreaccount t WHERE t.code LIKE $P{searchtext} AND t.type=$P{type} 
UNION 
SELECT objid,code,title FROM sreaccount t WHERE t.title  LIKE $P{searchtext} AND t.type=$P{type} ) a
ORDER BY a.title 




[approve]
UPDATE sreaccount SET state='APPROVED' 
WHERE objid=$P{objid} 