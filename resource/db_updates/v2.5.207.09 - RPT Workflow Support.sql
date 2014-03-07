

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
    values('ALL', 'TR WORKFLOW', 'TR,TRE,TRC,CE,CC,CT,CD,RE,GR,ND,MC,RV')
go




insert into rptworkflow_state values('ALL-W1', 'ALL', null, 'receive', 'start', 1, 'receiver', '#{docname} documents are received and undergoing verification.')
insert into rptworkflow_state values('ALL-W2', 'ALL', 'receive', 'assign-taxmapper', 'process', 1, 'taxmapper',  '#{docname} is already forwarded to taxmapping.')
insert into rptworkflow_state values('ALL-W3', 'ALL', 'assign-taxmapper', 'fortaxmapping', 'process', 1, 'taxmapper', '#{docname} is currently taxmapped by #{name}.')
insert into rptworkflow_state values('ALL-W4', 'ALL', 'fortaxmapping', 'assign-taxmapping-approval', 'process', 1, 'taxmapping_chief', '#{docname} is submitted for taxmapping approval.')

insert into rptworkflow_state values('ALL-W5', 'ALL', 'assign-taxmapping-approval', 'fortaxmapping-approval', 'process', 1, 'taxmapping_chief', '#{docname} taxmapping approval is currently verified by #{name}.')
insert into rptworkflow_state values('ALL-W6', 'ALL', 'fortaxmapping-approval', 'assign-examiner', 'process', 1, 'examiner', '#{docname} is already submitted for examination.')

insert into rptworkflow_state values('ALL-W7', 'ALL', 'assign-examiner', 'forexamination', 'process', 1, 'examiner', '#{docname} is currently examined by the group of #{name}.')
insert into rptworkflow_state values('ALL-W8', 'ALL', 'forexamination', 'assign-appraiser', 'process', 1, 'appraiser', '#{docname} is already submitted for appraisal.')

insert into rptworkflow_state values('ALL-W9', 'ALL', 'assign-appraiser', 'forappraisal', 'process', 1, 'appraiser', '#{docname} is currenty appraised by #{name}.')
insert into rptworkflow_state values('ALL-W10', 'ALL', 'forappraisal', 'assign-appraisal-chief', 'process', 1, 'appraisal_chief', '#{docname} appraisal is already submitted for approval.')


insert into rptworkflow_state values('ALL-W11', 'ALL', 'assign-appraisal-chief', 'forappraisal-approval', 'process', 1, 'appraisal_chief', '#{docname} appraisal is currently verified by #{name}.')
insert into rptworkflow_state values('ALL-W12', 'ALL', 'forappraisal-approval', 'assign-assistant-approval', 'process', 1, 'assistant_assessor', '#{docname} is already submitted to assistant assessor for approval.')

insert into rptworkflow_state values('ALL-W13', 'ALL', 'assign-assistant-approval', 'forassistant-approval', 'process', 1, 'assistant_assessor', '#{docname} is currently reviewed by assistant assessor #{name}.')
insert into rptworkflow_state values('ALL-W14', 'ALL', 'forassistant-approval', 'assign-approver', 'process', 1, 'approver', '#{docname} is already submitted to assistant assessor for approval.')

insert into rptworkflow_state values('ALL-W15', 'ALL', 'assign-approver', 'forapproval', 'process', 1, 'approver', '#{docname} is currently approved by #{name}.')
insert into rptworkflow_state values('ALL-W16', 'ALL', 'forapproval', 'approved', 'end', 1, 'approver', '#{docname} is already approved and current.')
go  




/* SUBDIVISION TRANSFER WORKFLOW */

insert into rptworkflow 
	values('SD', 'SD WORKFLOW', 'SD')
go


insert into rptworkflow_state values('SD-W1', 'SD', null, 'receive', 'start', 1, 'receiver', '#{docname} documents are received and undergoing verification.')
insert into rptworkflow_state values('SD-W2', 'SD', 'receive', 'assign-taxmapper', 'process', 1, 'taxmapper',  '#{docname} is already forwarded to taxmapping.')
insert into rptworkflow_state values('SD-W3', 'SD', 'assign-taxmapper', 'fortaxmapping', 'process', 1, 'taxmapper', '#{docname} is currently taxmapped by #{name}.')
insert into rptworkflow_state values('SD-W4', 'SD', 'fortaxmapping', 'assign-taxmapping-approval', 'process', 1, 'taxmapping_chief', '#{docname} is submitted for taxmapping approval.')

insert into rptworkflow_state values('SD-W5', 'SD', 'assign-taxmapping-approval', 'fortaxmapping-approval', 'process', 1, 'taxmapping_chief', '#{docname} taxmapping approval is currently verified by #{name}.')
insert into rptworkflow_state values('SD-W6', 'SD', 'fortaxmapping-approval', 'assign-examiner', 'process', 1, 'examiner', '#{docname} is already submitted for examination.')

insert into rptworkflow_state values('SD-W7', 'SD', 'assign-examiner', 'forexamination', 'process', 1, 'examiner', '#{docname} is currently examined by the group of #{name}.')
insert into rptworkflow_state values('SD-W8', 'SD', 'forexamination', 'assign-retaxmapper', 'process', 1, 'appraiser', '#{docname} is already submitted for appraisal.')


insert into rptworkflow_state values('SD-W9', 'SD', 'assign-retaxmapper', 'forretaxmapping', 'process', 1, 'taxmapper', '#{docname} is currently taxmapped by #{name}.')
insert into rptworkflow_state values('SD-W10', 'SD', 'forretaxmapping', 'assign-retaxmapping-approval', 'process', 1, 'taxmapping_chief', '#{docname} is submitted for taxmapping approval.')

insert into rptworkflow_state values('SD-W11', 'SD', 'assign-retaxmapping-approval', 'forretaxmapping-approval', 'process', 1, 'taxmapping_chief', '#{docname} taxmapping approval is currently verified by #{name}.')
insert into rptworkflow_state values('SD-W12', 'SD', 'forretaxmapping-approval', 'assign-appraiser', 'process', 1, 'examiner', '#{docname} is already submitted for examination.')

insert into rptworkflow_state values('SD-W13', 'SD', 'assign-appraiser', 'forappraisal', 'process', 1, 'appraiser', '#{docname} is currenty appraised by #{name}.')
insert into rptworkflow_state values('SD-W14', 'SD', 'forappraisal', 'assign-appraisal-chief', 'process', 1, 'appraisal_chief', '#{docname} appraisal is already submitted for approval.')


insert into rptworkflow_state values('SD-W15', 'SD', 'assign-appraisal-chief', 'forappraisal-approval', 'process', 1, 'appraisal_chief', '#{docname} appraisal is currently verified by #{name}.')
insert into rptworkflow_state values('SD-W16', 'SD', 'forappraisal-approval', 'assign-assistant-approval', 'process', 1, 'assistant_assessor', '#{docname} is already submitted to assistant assessor for approval.')

insert into rptworkflow_state values('SD-W17', 'SD', 'assign-assistant-approval', 'forassistant-approval', 'process', 1, 'assistant_assessor', '#{docname} is currently reviewed by assistant assessor #{name}.')
insert into rptworkflow_state values('SD-W18', 'SD', 'forassistant-approval', 'assign-approver', 'process', 1, 'approver', '#{docname} is already submitted to assistant assessor for approval.')

insert into rptworkflow_state values('SD-W19', 'SD', 'assign-approver', 'forapproval', 'process', 1, 'approver', '#{docname} is currently approved by #{name}.')
insert into rptworkflow_state values('SD-W20', 'SD', 'forapproval', 'approved', 'end', 1, 'approver', '#{docname} is already approved and current.')
go	





/* CONSOLIDATION TRANSFER WORKFLOW */

insert into rptworkflow 
	values('CS', 'CS WORKFLOW', 'CS')
go


insert into rptworkflow_state values('CS-W1', 'CS', null, 'receive', 'start', 1, 'receiver', '#{docname} documents are received and undergoing verification.')
insert into rptworkflow_state values('CS-W2', 'CS', 'receive', 'assign-taxmapper', 'process', 1, 'taxmapper',  '#{docname} is already forwarded to taxmapping.')
insert into rptworkflow_state values('CS-W3', 'CS', 'assign-taxmapper', 'fortaxmapping', 'process', 1, 'taxmapper', '#{docname} is currently taxmapped by #{name}.')
insert into rptworkflow_state values('CS-W4', 'CS', 'fortaxmapping', 'assign-taxmapping-approval', 'process', 1, 'taxmapping_chief', '#{docname} is submitted for taxmapping approval.')

insert into rptworkflow_state values('CS-W5', 'CS', 'assign-taxmapping-approval', 'fortaxmapping-approval', 'process', 1, 'taxmapping_chief', '#{docname} taxmapping approval is currently verified by #{name}.')
insert into rptworkflow_state values('CS-W6', 'CS', 'fortaxmapping-approval', 'assign-examiner', 'process', 1, 'examiner', '#{docname} is already submitted for examination.')

insert into rptworkflow_state values('CS-W7', 'CS', 'assign-examiner', 'forexamination', 'process', 1, 'examiner', '#{docname} is currently examined by the group of #{name}.')
insert into rptworkflow_state values('CS-W8', 'CS', 'forexamination', 'assign-retaxmapper', 'process', 1, 'appraiser', '#{docname} is already submitted for appraisal.')


insert into rptworkflow_state values('CS-W9', 'CS', 'assign-retaxmapper', 'forretaxmapping', 'process', 1, 'taxmapper', '#{docname} is currently taxmapped by #{name}.')
insert into rptworkflow_state values('CS-W10', 'CS', 'forretaxmapping', 'assign-retaxmapping-approval', 'process', 1, 'taxmapping_chief', '#{docname} is submitted for taxmapping approval.')

insert into rptworkflow_state values('CS-W11', 'CS', 'assign-retaxmapping-approval', 'forretaxmapping-approval', 'process', 1, 'taxmapping_chief', '#{docname} taxmapping approval is currently verified by #{name}.')
insert into rptworkflow_state values('CS-W12', 'CS', 'forretaxmapping-approval', 'assign-appraiser', 'process', 1, 'examiner', '#{docname} is already submitted for examination.')


insert into rptworkflow_state values('CS-W13', 'CS', 'assign-appraiser', 'forappraisal', 'process', 1, 'appraiser', '#{docname} is currenty appraised by #{name}.')
insert into rptworkflow_state values('CS-W14', 'CS', 'forappraisal', 'assign-appraisal-chief', 'process', 1, 'appraisal_chief', '#{docname} appraisal is already submitted for approval.')


insert into rptworkflow_state values('CS-W15', 'CS', 'assign-appraisal-chief', 'forappraisal-approval', 'process', 1, 'appraisal_chief', '#{docname} appraisal is currently verified by #{name}.')
insert into rptworkflow_state values('CS-W16', 'CS', 'forappraisal-approval', 'assign-assistant-approval', 'process', 1, 'assistant_assessor', '#{docname} is already submitted to assistant assessor for approval.')

insert into rptworkflow_state values('CS-W17', 'CS', 'assign-assistant-approval', 'forassistant-approval', 'process', 1, 'assistant_assessor', '#{docname} is currently reviewed by assistant assessor #{name}.')
insert into rptworkflow_state values('CS-W18', 'CS', 'forassistant-approval', 'assign-approver', 'process', 1, 'approver', '#{docname} is already submitted to assistant assessor for approval.')

insert into rptworkflow_state values('CS-W19', 'CS', 'assign-approver', 'forapproval', 'process', 1, 'approver', '#{docname} is currently approved by #{name}.')
insert into rptworkflow_state values('CS-W20', 'CS', 'forapproval', 'approved', 'end', 1, 'approver', '#{docname} is already approved and current.')
go	








alter table subdividedland alter column newrpuid varchar(50) null
go


alter table subdivision alter column state varchar(50) not null
go

