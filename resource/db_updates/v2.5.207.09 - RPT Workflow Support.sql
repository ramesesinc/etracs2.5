

insert into sys_usergroup 
	(objid, title, domain, userclass, role)
values
	('RPT.TAXMAPPER_CHIEF', 'TAXMAPPER DIVISION CHIEF', 'RPT', 'usergroup', 'TAXMAPPER_CHIEF')	
GO	

insert into sys_usergroup 
	(objid, title, domain, userclass, role)
values
	('RPT.APPRAISAL_CHIEF', 'APPRAISAL DIVISION CHIEF', 'RPT', 'usergroup', 'APPRAISAL_CHIEF')	
go

insert into sys_usergroup 
	(objid, title, domain, userclass, role)
values
	('RPT.ASSISTANT_ASSESSOR', 'ASSISTANT ASSESSOR', 'RPT', 'usergroup', 'ASSISTANT_ASSESSOR')	
GO




alter table rpttask add workflowid varchar(50) 
go
alter table rpttask add signatory varchar(50) 
go

alter table rpttask add docname varchar(50) 
go



create table rptworkflow
(
	objid varchar(50) primary key,
	name varchar(100),
	appliedto varchar(100) not null
)
go






create table rptworkflow_state
(
	objid varchar(50) primary key,
	workflowid varchar(50) not null,
	fromstate varchar(50) null,
	tostate varchar(50) null,
	type varchar(50) not null,
	active int not null,
	signatory varchar(50),
	message varchar(100) not null,
	constraint FK_rptworkflowstate_rptworkflow foreign key(workflowid)
		references rptworkflow(objid)
)
go

create index ix_rptworkflowstate_workflowid on rptworkflow_state(workflowid)
go



/* TRANSFER WORKFLOW */
insert into rptworkflow 
	values('TR', 'TR WORKFLOW', 'TR|TRC|TRE')
go



delete from rptworkflow_state 
go 

insert into rptworkflow_state values('TR-W1', 'TR', null, 'receive', 'start', 1, 'receiver', '#{docname} documents are received and undergoing verification.')
insert into rptworkflow_state values('TR-W2', 'TR', 'receive', 'assign-taxmapper', 'process', 1, 'taxmapper',  '#{docname} is already forwarded to taxmapping.')
insert into rptworkflow_state values('TR-W3', 'TR', 'assign-taxmapper', 'fortaxmapping', 'process', 1, 'taxmapper', '#{docname} is currently taxmapped by #{name}.')
insert into rptworkflow_state values('TR-W4', 'TR', 'fortaxmapping', 'assign-taxmapping-approval', 'process', 1, 'taxmapping_chief', '#{docname} is submitted for taxmapping approval.')

insert into rptworkflow_state values('TR-W5', 'TR', 'assign-taxmapping-approval', 'fortaxmapping-approval', 'process', 1, 'taxmapping_chief', '#{docname} taxmapping approval is currently verified by #{name}.')
insert into rptworkflow_state values('TR-W6', 'TR', 'fortaxmapping-approval', 'assign-examiner', 'process', 1, 'examiner', '#{docname} is already submitted for examination.')

insert into rptworkflow_state values('TR-W7', 'TR', 'assign-examiner', 'forexamination', 'process', 1, 'examiner', '#{docname} is currently examined by the group of #{name}.')
insert into rptworkflow_state values('TR-W8', 'TR', 'forexamination', 'assign-appraiser', 'process', 1, 'appraiser', '#{docname} is already submitted for appraisal.')

insert into rptworkflow_state values('TR-W9', 'TR', 'assign-appraiser', 'forappraisal', 'process', 1, 'appraiser', '#{docname} is currenty appraised by #{name}.')
insert into rptworkflow_state values('TR-W10', 'TR', 'forappraisal', 'assign-appraisal-chief', 'process', 1, 'appraisal_chief', '#{docname} appraisal is already submitted for approval.')


insert into rptworkflow_state values('TR-W11', 'TR', 'assign-appraisal-chief', 'forappraisal-approval', 'process', 1, 'appraisal_chief', '#{docname} appraisal is currently verified by #{name}.')
insert into rptworkflow_state values('TR-W12', 'TR', 'forappraisal-approval', 'assign-assistant-approval', 'process', 1, 'assistant_assessor', '#{docname} is already submitted to assistant assessor for approval.')

insert into rptworkflow_state values('TR-W13', 'TR', 'assign-assistant-approval', 'forassistant-approval', 'process', 1, 'assistant_assessor', '#{docname} is currently reviewed by assistant assessor #{name}.')
insert into rptworkflow_state values('TR-W14', 'TR', 'forassistant-approval', 'assign-approver', 'process', 1, 'approver', '#{docname} is already submitted to assistant assessor for approval.')

insert into rptworkflow_state values('TR-W15', 'TR', 'assign-approver', 'forapproval', 'process', 1, 'approver', '#{docname} is currently approved by #{name}.')
insert into rptworkflow_state values('TR-W16', 'TR', 'forapproval', 'approved', 'end', 1, 'approver', '#{docname} is already approved and current.')
go	



