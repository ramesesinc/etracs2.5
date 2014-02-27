[saveHeader]
INSERT INTO image_file
	(objid, refid, title, filesize, extension)
VALUES	
	($P{objid}, $P{refid}, $P{title}, $P{filesize}, $P{extension})


[deleteHeader]
DELETE FROM image_file WHERE objid = $P{objid}

[deleteAllHeaders]
DELETE FROM image_file WHERE refid = $P{refid}


[getImages]	
SELECT * FROM image_file WHERE refid = $P{refid} ORDER BY title 



[saveItem]
INSERT INTO image_file_item
	(objid, parentid, fileno, byte)
VALUES
	($P{objid}, $P{parentid}, $P{fileno}, $P{byte})	

[getItems]	
SELECT * FROM image_file_item WHERE parentid = $P{objid} ORDER BY fileno

[deleteItems]
DELETE FROM image_file_item WHERE parentid = $P{objid}

[deleteAllItems]
DELETE FROM image_file_item 
WHERE parentid IN (
	SELECT objid FROM image_file WHERE refid = $P{refid} 
)