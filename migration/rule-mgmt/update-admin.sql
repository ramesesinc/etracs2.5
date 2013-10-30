ALTER TABLE sys_usergroup ADD role varchar(50);
UPDATE sys_usergroup SET role=objid;

ALTER TABLE sys_usergroup_admin NO CHECK CONSTRAINT ALL; 
ALTER TABLE sys_usergroup_member NO CHECK CONSTRAINT ALL; 
ALTER TABLE sys_usergroup_permission NO CHECK CONSTRAINT ALL; 

UPDATE a 
SET a.usergroupid = ug.domain + '.' + ug.role 
FROM sys_usergroup_admin a
INNER JOIN sys_usergroup ug  ON a.usergroupid = ug.objid;
  

UPDATE a 
SET a.usergroupid = ug.domain + '.' + ug.role 
FROM sys_usergroup_member a
INNER JOIN sys_usergroup ug ON a.usergroupid = ug.objid;


UPDATE a 
SET a.usergroupid = ug.domain + '.' + ug.role 
FROM sys_usergroup_permission a
INNER JOIN sys_usergroup ug ON a.usergroupid = ug.objid;


UPDATE sys_usergroup SET objid=domain+'.'+role;


ALTER TABLE sys_usergroup_admin WITH CHECK CHECK CONSTRAINT ALL; 
ALTER TABLE sys_usergroup_member WITH CHECK CHECK CONSTRAINT ALL; 
ALTER TABLE sys_usergroup_permission WITH CHECK CHECK CONSTRAINT ALL; 
