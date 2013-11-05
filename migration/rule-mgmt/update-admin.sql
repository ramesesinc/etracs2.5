
ALTER TABLE sys_usergroup ADD [role] varchar(50);
UPDATE sys_usergroup SET [role]=objid;

ALTER TABLE sys_usergroup_admin NOCHECK CONSTRAINT ALL; 
ALTER TABLE sys_usergroup_member NOCHECK CONSTRAINT ALL; 
ALTER TABLE sys_usergroup_permission NOCHECK CONSTRAINT ALL; 
ALTER TABLE sys_securitygroup NOCHECK CONSTRAINT ALL; 

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

UPDATE a 
SET a.usergroupid = ug.domain + '.' + ug.role 
FROM sys_securitygroup a
INNER JOIN sys_usergroup ug ON a.usergroupid = ug.objid;


UPDATE sys_usergroup SET objid=domain+'.'+role;


ALTER TABLE sys_usergroup_admin WITH CHECK CHECK CONSTRAINT ALL; 
ALTER TABLE sys_usergroup_member WITH CHECK CHECK CONSTRAINT ALL; 
ALTER TABLE sys_usergroup_permission WITH CHECK CHECK CONSTRAINT ALL; 
ALTER TABLE sys_securitygroup WITH CHECK CHECK CONSTRAINT ALL; 
