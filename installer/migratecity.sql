DELETE FROM barangay;
DELETE FROM district;
DELETE FROM city;
DELETE FROM sys_org;

INSERT [dbo].[sys_orgclass] ([name], [title], [parentclass], [handler]) VALUES (N'BARANGAY', N'Barangay', N'DISTRICT', 'barangay')
INSERT [dbo].[sys_orgclass] ([name], [title], [parentclass], [handler]) VALUES (N'CITY', N'City', NULL, NULL)
INSERT [dbo].[sys_orgclass] ([name], [title], [parentclass], [handler]) VALUES (N'DISTRICT', N'District', NULL, NULL)
INSERT [dbo].[sys_orgclass] ([name], [title], [parentclass], [handler]) VALUES (N'HOSPITAL', N'Hospital', NULL, NULL)
INSERT [dbo].[sys_orgclass] ([name], [title], [parentclass], [handler]) VALUES (N'WATERWORKS', N'Water works', NULL, NULL)


INSERT [dbo].[city] ([objid], [state], [indexno], [pin], [name]) 
VALUES (N'169', N'DRAFT', N'169', N'169', N'ILIGAN CITY');

INSERT [dbo].[sys_org] ([objid], [name], [orgclass], [parent_objid], [parent_orgclass], [code], [root]) 
VALUES (N'169', N'ILIGAN CITY', N'CITY', NULL, NULL, N'169', 1);
