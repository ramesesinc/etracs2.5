[getList]
SELECT * FROM directcash_collection WHERE refno LIKE $P{searchtext} ORDER BY refdate DESC 

[getItems]
SELECT 
	dci.*,
	ri.code AS item_code,
	ri.title AS item_title
FROM directcash_collection_item dci 
	INNER JOIN revenueitem ri ON dci.item_objid = ri.objid 
WHERE dci.parentid = $P{objid}	 


[approve]
UPDATE directcash_collection SET state = 'APPROVED' WHERE objid = $P{objid} AND state = 'DRAFT'