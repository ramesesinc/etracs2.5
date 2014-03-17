DELETE FROM barangay;
DELETE FROM province;
DELETE FROM municipality;
DELETE FROM sys_org;

INSERT [dbo].[sys_orgclass] ([name], [title], [parentclass], [handler]) 
VALUES (N'BARANGAY', N'Barangay', N'MUNICIPALITY', 'barangay');

INSERT [dbo].[sys_orgclass] ([name], [title], [parentclass], [handler]) 
VALUES (N'MUNICIPALITY', N'Municipality', NULL, NULL);

INSERT [dbo].[sys_orgclass] ([name], [title], [parentclass], [handler]) 
VALUES (N'WATERWORKS', N'Water works', NULL, NULL);

INSERT [dbo].[sys_org] ([objid], [name], [orgclass], [parent_objid], [parent_orgclass], [code], [root]) 
VALUES (N'169', N'ILIGAN PROVINCE', N'PROVINCE', NULL, NULL, N'169', 0);

INSERT [dbo].[province] ([objid], [state], [indexno], [pin], [name]) 
VALUES (N'169', N'DRAFT', N'169', N'169', N'ILIGAN PROVINCE');


INSERT [dbo].[municipality] ([objid], [state], [indexno], [pin], [name],[parentid]) 
VALUES (N'169-01', N'DRAFT', N'169-01', N'169-01', N'ILIGAN MUNICIPALITY', N'169');

INSERT [dbo].[sys_org] ([objid], [name], [orgclass], [parent_objid], [parent_orgclass], [code], [root]) 
VALUES (N'169-01', N'ILIGAN 1 municipality', N'MUNICIPALITY', N'169', N'PROVINCE', N'169-01', 1);