

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
alter table rpttask add findings varchar(1000) 
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





/* RPT WORKFLOW */

delete from rptworkflow_state 
go 

delete from rptworkflow 
go


/* TRANSFER WORKFLOW */
insert into rptworkflow 
	values('TR', 'TR WORKFLOW', 'TR|TRC|TRE')
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




/* SUBDIVISION TRANSFER WORKFLOW */

insert into rptworkflow 
	values('SD', 'SD WORKFLOW', 'SD')
go



delete from rptworkflow_state 
go 

insert into rptworkflow_state values('SD-W1', 'SD', null, 'receive', 'start', 1, 'receiver', '#{docname} documents are received and undergoing verification.')
insert into rptworkflow_state values('SD-W2', 'SD', 'receive', 'assign-taxmapper', 'process', 1, 'taxmapper',  '#{docname} is already forwarded to taxmapping.')
insert into rptworkflow_state values('SD-W3', 'SD', 'assign-taxmapper', 'fortaxmapping', 'process', 1, 'taxmapper', '#{docname} is currently taxmapped by #{name}.')
insert into rptworkflow_state values('SD-W4', 'SD', 'fortaxmapping', 'assign-taxmapping-approval', 'process', 1, 'taxmapping_chief', '#{docname} is submitted for taxmapping approval.')

insert into rptworkflow_state values('SD-W5', 'SD', 'assign-taxmapping-approval', 'fortaxmapping-approval', 'process', 1, 'taxmapping_chief', '#{docname} taxmapping approval is currently verified by #{name}.')
insert into rptworkflow_state values('SD-W6', 'SD', 'fortaxmapping-approval', 'assign-examiner', 'process', 1, 'examiner', '#{docname} is already submitted for examination.')

insert into rptworkflow_state values('SD-W7', 'SD', 'assign-examiner', 'forexamination', 'process', 1, 'examiner', '#{docname} is currently examined by the group of #{name}.')
insert into rptworkflow_state values('SD-W8', 'SD', 'forexamination', 'assign-appraiser', 'process', 1, 'appraiser', '#{docname} is already submitted for appraisal.')

insert into rptworkflow_state values('SD-W9', 'SD', 'assign-appraiser', 'forappraisal', 'process', 1, 'appraiser', '#{docname} is currenty appraised by #{name}.')
insert into rptworkflow_state values('SD-W10', 'SD', 'forappraisal', 'assign-appraisal-chief', 'process', 1, 'appraisal_chief', '#{docname} appraisal is already submitted for approval.')


insert into rptworkflow_state values('SD-W11', 'SD', 'assign-appraisal-chief', 'forappraisal-approval', 'process', 1, 'appraisal_chief', '#{docname} appraisal is currently verified by #{name}.')
insert into rptworkflow_state values('SD-W12', 'SD', 'forappraisal-approval', 'assign-assistant-approval', 'process', 1, 'assistant_assessor', '#{docname} is already submitted to assistant assessor for approval.')

insert into rptworkflow_state values('SD-W13', 'SD', 'assign-assistant-approval', 'forassistant-approval', 'process', 1, 'assistant_assessor', '#{docname} is currently reviewed by assistant assessor #{name}.')
insert into rptworkflow_state values('SD-W14', 'SD', 'forassistant-approval', 'assign-approver', 'process', 1, 'approver', '#{docname} is already submitted to assistant assessor for approval.')

insert into rptworkflow_state values('SD-W15', 'SD', 'assign-approver', 'forapproval', 'process', 1, 'approver', '#{docname} is currently approved by #{name}.')
insert into rptworkflow_state values('SD-W16', 'SD', 'forapproval', 'approved', 'end', 1, 'approver', '#{docname} is already approved and current.')
go	





/* CONSOLIDATION TRANSFER WORKFLOW */

insert into rptworkflow 
	values('CS', 'CS WORKFLOW', 'CS')
go



delete from rptworkflow_state 
go 

insert into rptworkflow_state values('CS-W1', 'CS', null, 'receive', 'start', 1, 'receiver', '#{docname} documents are received and undergoing verification.')
insert into rptworkflow_state values('CS-W2', 'CS', 'receive', 'assign-taxmapper', 'process', 1, 'taxmapper',  '#{docname} is already forwarded to taxmapping.')
insert into rptworkflow_state values('CS-W3', 'CS', 'assign-taxmapper', 'fortaxmapping', 'process', 1, 'taxmapper', '#{docname} is currently taxmapped by #{name}.')
insert into rptworkflow_state values('CS-W4', 'CS', 'fortaxmapping', 'assign-taxmapping-approval', 'process', 1, 'taxmapping_chief', '#{docname} is submitted for taxmapping approval.')

insert into rptworkflow_state values('CS-W5', 'CS', 'assign-taxmapping-approval', 'fortaxmapping-approval', 'process', 1, 'taxmapping_chief', '#{docname} taxmapping approval is currently verified by #{name}.')
insert into rptworkflow_state values('CS-W6', 'CS', 'fortaxmapping-approval', 'assign-examiner', 'process', 1, 'examiner', '#{docname} is already submitted for examination.')

insert into rptworkflow_state values('CS-W7', 'CS', 'assign-examiner', 'forexamination', 'process', 1, 'examiner', '#{docname} is currently examined by the group of #{name}.')
insert into rptworkflow_state values('CS-W8', 'CS', 'forexamination', 'assign-appraiser', 'process', 1, 'appraiser', '#{docname} is already submitted for appraisal.')

insert into rptworkflow_state values('CS-W9', 'CS', 'assign-appraiser', 'forappraisal', 'process', 1, 'appraiser', '#{docname} is currenty appraised by #{name}.')
insert into rptworkflow_state values('CS-W10', 'CS', 'forappraisal', 'assign-appraisal-chief', 'process', 1, 'appraisal_chief', '#{docname} appraisal is already submitted for approval.')


insert into rptworkflow_state values('CS-W11', 'CS', 'assign-appraisal-chief', 'forappraisal-approval', 'process', 1, 'appraisal_chief', '#{docname} appraisal is currently verified by #{name}.')
insert into rptworkflow_state values('CS-W12', 'CS', 'forappraisal-approval', 'assign-assistant-approval', 'process', 1, 'assistant_assessor', '#{docname} is already submitted to assistant assessor for approval.')

insert into rptworkflow_state values('CS-W13', 'CS', 'assign-assistant-approval', 'forassistant-approval', 'process', 1, 'assistant_assessor', '#{docname} is currently reviewed by assistant assessor #{name}.')
insert into rptworkflow_state values('CS-W14', 'CS', 'forassistant-approval', 'assign-approver', 'process', 1, 'approver', '#{docname} is already submitted to assistant assessor for approval.')

insert into rptworkflow_state values('CS-W15', 'CS', 'assign-approver', 'forapproval', 'process', 1, 'approver', '#{docname} is currently approved by #{name}.')
insert into rptworkflow_state values('CS-W16', 'CS', 'forapproval', 'approved', 'end', 1, 'approver', '#{docname} is already approved and current.')
go	














alter table subdividedland alter column newrpuid varchar(50) null
go


alter table subdivision alter column state varchar(50) not null
go

