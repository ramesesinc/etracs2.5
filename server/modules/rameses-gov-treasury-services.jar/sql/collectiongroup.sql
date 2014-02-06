[getList]
select * from collectiongroup 
where name like $P{searchtext} 

[deleteRevenueItems]
delete from collectiongroup_revenueitem where collectiongroupid=$P{objid} 

[getRevenueItems]
select c.*, r.* from collectiongroup_revenueitem c 
	inner join revenueitem r on r.objid = c.revenueitemid 
where c.collectiongroupid = $P{objid} 

[approve]
update collectiongroup set state='APPROVED' where objid=$P{objid} 

