
DROP TABLE [dbo].[sys_ruleset]
GO 






/****** Object:  Table [dbo].[sys_ruleset]    Script Date: 10/22/2013 15:35:45 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[sys_ruleset](
	[name] [varchar](50) NOT NULL,
	[title] [varchar](160) NULL,
	[packagename] [varchar](50) NULL,
	[domain] [varchar](50) NULL,
	[role] [varchar](50) NULL,
	[permission] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[sys_ruleset] ADD  DEFAULT (NULL) FOR [title]
GO

ALTER TABLE [dbo].[sys_ruleset] ADD  DEFAULT (NULL) FOR [packagename]
GO

ALTER TABLE [dbo].[sys_ruleset] ADD  DEFAULT (NULL) FOR [domain]
GO

ALTER TABLE [dbo].[sys_ruleset] ADD  DEFAULT (NULL) FOR [role]
GO

ALTER TABLE [dbo].[sys_ruleset] ADD  DEFAULT (NULL) FOR [permission]
GO

/****** Object:  Table [dbo].[sys_rulegroup]    Script Date: 10/22/2013 15:36:24 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[sys_rulegroup](
	[name] [varchar](50) NOT NULL,
	[ruleset] [varchar](50) NOT NULL,
	[title] [varchar](160) NULL,
	[sortorder] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[name] ASC,
	[ruleset] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[sys_rulegroup]  WITH CHECK ADD  CONSTRAINT [fk_sysrulegroup_ruleset_sysruleset_name] FOREIGN KEY([ruleset])
REFERENCES [dbo].[sys_ruleset] ([name])
GO

ALTER TABLE [dbo].[sys_rulegroup] CHECK CONSTRAINT [fk_sysrulegroup_ruleset_sysruleset_name]
GO

ALTER TABLE [dbo].[sys_rulegroup] ADD  DEFAULT (NULL) FOR [title]
GO

ALTER TABLE [dbo].[sys_rulegroup] ADD  DEFAULT ('0') FOR [sortorder]
GO


/****** Object:  Table [dbo].[sys_rule_fact]    Script Date: 10/22/2013 15:36:57 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[sys_rule_fact](
	[objid] [varchar](50) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[ruleset] [varchar](50) NOT NULL,
	[title] [varchar](160) NULL,
	[factclass] [varchar](50) NULL,
	[sortorder] [int] NULL,
	[handler] [varchar](50) NULL,
	[defaultvarname] [varchar](25) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [uid_ruleset_fact] UNIQUE NONCLUSTERED 
(
	[name] ASC,
	[ruleset] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[sys_rule_fact] ADD  DEFAULT ('') FOR [name]
GO

ALTER TABLE [dbo].[sys_rule_fact] ADD  DEFAULT ('') FOR [ruleset]
GO

ALTER TABLE [dbo].[sys_rule_fact] ADD  DEFAULT (NULL) FOR [title]
GO

ALTER TABLE [dbo].[sys_rule_fact] ADD  DEFAULT (NULL) FOR [factclass]
GO

ALTER TABLE [dbo].[sys_rule_fact] ADD  DEFAULT (NULL) FOR [sortorder]
GO

ALTER TABLE [dbo].[sys_rule_fact] ADD  DEFAULT (NULL) FOR [handler]
GO

ALTER TABLE [dbo].[sys_rule_fact] ADD  DEFAULT (NULL) FOR [defaultvarname]
GO


/****** Object:  Table [dbo].[sys_rule_fact_field]    Script Date: 10/22/2013 15:37:20 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[sys_rule_fact_field](
	[objid] [varchar](50) NOT NULL,
	[parentid] [varchar](50) NULL,
	[name] [varchar](50) NOT NULL,
	[title] [varchar](160) NULL,
	[datatype] [varchar](50) NULL,
	[sortorder] [int] NULL,
	[handler] [varchar](50) NULL,
	[lookuphandler] [varchar](50) NULL,
	[lookupkey] [varchar](50) NULL,
	[lookupvalue] [varchar](50) NULL,
	[lookupdatatype] [varchar](50) NULL,
	[multivalued] [int] NULL,
	[required] [int] NULL,
	[vardatatype] [varchar](50) NULL,
	[lovname] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [uid_ruleset_fact_name] UNIQUE NONCLUSTERED 
(
	[name] ASC,
	[parentid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[sys_rule_fact_field]  WITH CHECK ADD  CONSTRAINT [FK_sys_rule_fact_field_fact] FOREIGN KEY([parentid])
REFERENCES [dbo].[sys_rule_fact] ([objid])
GO

ALTER TABLE [dbo].[sys_rule_fact_field] CHECK CONSTRAINT [FK_sys_rule_fact_field_fact]
GO

ALTER TABLE [dbo].[sys_rule_fact_field] ADD  DEFAULT (NULL) FOR [parentid]
GO

ALTER TABLE [dbo].[sys_rule_fact_field] ADD  DEFAULT ('') FOR [name]
GO

ALTER TABLE [dbo].[sys_rule_fact_field] ADD  DEFAULT (NULL) FOR [title]
GO

ALTER TABLE [dbo].[sys_rule_fact_field] ADD  DEFAULT (NULL) FOR [datatype]
GO

ALTER TABLE [dbo].[sys_rule_fact_field] ADD  DEFAULT (NULL) FOR [sortorder]
GO

ALTER TABLE [dbo].[sys_rule_fact_field] ADD  DEFAULT (NULL) FOR [handler]
GO

ALTER TABLE [dbo].[sys_rule_fact_field] ADD  DEFAULT (NULL) FOR [lookuphandler]
GO

ALTER TABLE [dbo].[sys_rule_fact_field] ADD  DEFAULT (NULL) FOR [lookupkey]
GO

ALTER TABLE [dbo].[sys_rule_fact_field] ADD  DEFAULT (NULL) FOR [lookupvalue]
GO

ALTER TABLE [dbo].[sys_rule_fact_field] ADD  DEFAULT (NULL) FOR [lookupdatatype]
GO

ALTER TABLE [dbo].[sys_rule_fact_field] ADD  DEFAULT (NULL) FOR [multivalued]
GO

ALTER TABLE [dbo].[sys_rule_fact_field] ADD  DEFAULT (NULL) FOR [required]
GO

ALTER TABLE [dbo].[sys_rule_fact_field] ADD  DEFAULT (NULL) FOR [vardatatype]
GO

ALTER TABLE [dbo].[sys_rule_fact_field] ADD  DEFAULT (NULL) FOR [lovname]
GO


/****** Object:  Table [dbo].[sys_rule_actiondef]    Script Date: 10/22/2013 15:38:11 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[sys_rule_actiondef](
	[objid] [varchar](50) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[ruleset] [varchar](50) NOT NULL,
	[title] [varchar](250) NULL,
	[sortorder] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [uid_ruleset_actiondef] UNIQUE NONCLUSTERED 
(
	[name] ASC,
	[ruleset] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[sys_rule_actiondef] ADD  DEFAULT ('') FOR [objid]
GO

ALTER TABLE [dbo].[sys_rule_actiondef] ADD  DEFAULT ('') FOR [name]
GO

ALTER TABLE [dbo].[sys_rule_actiondef] ADD  DEFAULT ('') FOR [ruleset]
GO

ALTER TABLE [dbo].[sys_rule_actiondef] ADD  DEFAULT (NULL) FOR [title]
GO

ALTER TABLE [dbo].[sys_rule_actiondef] ADD  DEFAULT (NULL) FOR [sortorder]
GO


/****** Object:  Table [dbo].[sys_rule_actiondef_param]    Script Date: 10/22/2013 15:38:39 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[sys_rule_actiondef_param](
	[objid] [varchar](50) NOT NULL,
	[parentid] [varchar](50) NULL,
	[name] [varchar](50) NOT NULL,
	[sortorder] [int] NULL,
	[title] [varchar](50) NULL,
	[datatype] [varchar](50) NULL,
	[handler] [varchar](50) NULL,
	[lookuphandler] [varchar](50) NULL,
	[lookupkey] [varchar](50) NULL,
	[lookupvalue] [varchar](50) NULL,
	[vardatatype] [varchar](50) NULL,
	[lovname] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [uid_ruleset_actiondef_name] UNIQUE NONCLUSTERED 
(
	[name] ASC,
	[parentid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[sys_rule_actiondef_param]  WITH CHECK ADD  CONSTRAINT [FK_sys_rule_actiondef_param_actiondef] FOREIGN KEY([parentid])
REFERENCES [dbo].[sys_rule_actiondef] ([objid])
GO

ALTER TABLE [dbo].[sys_rule_actiondef_param] CHECK CONSTRAINT [FK_sys_rule_actiondef_param_actiondef]
GO

ALTER TABLE [dbo].[sys_rule_actiondef_param] ADD  DEFAULT (NULL) FOR [parentid]
GO

ALTER TABLE [dbo].[sys_rule_actiondef_param] ADD  DEFAULT ('') FOR [name]
GO

ALTER TABLE [dbo].[sys_rule_actiondef_param] ADD  DEFAULT (NULL) FOR [sortorder]
GO

ALTER TABLE [dbo].[sys_rule_actiondef_param] ADD  DEFAULT (NULL) FOR [title]
GO

ALTER TABLE [dbo].[sys_rule_actiondef_param] ADD  DEFAULT (NULL) FOR [datatype]
GO

ALTER TABLE [dbo].[sys_rule_actiondef_param] ADD  DEFAULT (NULL) FOR [handler]
GO

ALTER TABLE [dbo].[sys_rule_actiondef_param] ADD  DEFAULT (NULL) FOR [lookuphandler]
GO

ALTER TABLE [dbo].[sys_rule_actiondef_param] ADD  DEFAULT (NULL) FOR [lookupkey]
GO

ALTER TABLE [dbo].[sys_rule_actiondef_param] ADD  DEFAULT (NULL) FOR [lookupvalue]
GO

ALTER TABLE [dbo].[sys_rule_actiondef_param] ADD  DEFAULT (NULL) FOR [vardatatype]
GO

ALTER TABLE [dbo].[sys_rule_actiondef_param] ADD  DEFAULT (NULL) FOR [lovname]
GO










/****** Object:  Table [dbo].[sys_rule]    Script Date: 10/22/2013 15:35:11 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[sys_rule](
	[objid] [varchar](50) NOT NULL,
	[state] [varchar](25) NULL,
	[name] [varchar](50) NOT NULL,
	[ruleset] [varchar](50) NOT NULL,
	[rulegroup] [varchar](50) NULL,
	[title] [varchar](250) NULL,
	[description] [text] NULL,
	[salience] [int] NULL,
	[effectivefrom] [date] NULL,
	[effectiveto] [date] NULL,
	[dtfiled] [datetime] NULL,
	[user_objid] [varchar](50) NULL,
	[user_name] [varchar](100) NULL,
 CONSTRAINT [PK__sys_rule__530D6FE4157B1701] PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [uid_ruleset_name] UNIQUE NONCLUSTERED 
(
	[name] ASC,
	[ruleset] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[sys_rule]  WITH CHECK ADD  CONSTRAINT [FK_sys_rule_rulegroup] FOREIGN KEY([rulegroup], [ruleset])
REFERENCES [dbo].[sys_rulegroup] ([name], [ruleset])
GO

ALTER TABLE [dbo].[sys_rule] CHECK CONSTRAINT [FK_sys_rule_rulegroup]
GO

ALTER TABLE [dbo].[sys_rule]  WITH CHECK ADD  CONSTRAINT [FK_sys_rule_ruleset] FOREIGN KEY([ruleset])
REFERENCES [dbo].[sys_ruleset] ([name])
GO

ALTER TABLE [dbo].[sys_rule] CHECK CONSTRAINT [FK_sys_rule_ruleset]
GO

ALTER TABLE [dbo].[sys_rule] ADD  CONSTRAINT [DF__sys_rule__objid__185783AC]  DEFAULT ('') FOR [objid]
GO

ALTER TABLE [dbo].[sys_rule] ADD  CONSTRAINT [DF__sys_rule__state__194BA7E5]  DEFAULT (NULL) FOR [state]
GO

ALTER TABLE [dbo].[sys_rule] ADD  CONSTRAINT [DF__sys_rule__name__1A3FCC1E]  DEFAULT ('') FOR [name]
GO

ALTER TABLE [dbo].[sys_rule] ADD  CONSTRAINT [DF__sys_rule__rulegr__1B33F057]  DEFAULT (NULL) FOR [rulegroup]
GO

ALTER TABLE [dbo].[sys_rule] ADD  CONSTRAINT [DF__sys_rule__title__1C281490]  DEFAULT (NULL) FOR [title]
GO

ALTER TABLE [dbo].[sys_rule] ADD  CONSTRAINT [DF__sys_rule__salien__1D1C38C9]  DEFAULT ('0') FOR [salience]
GO

ALTER TABLE [dbo].[sys_rule] ADD  CONSTRAINT [DF__sys_rule__effect__1E105D02]  DEFAULT (NULL) FOR [effectivefrom]
GO

ALTER TABLE [dbo].[sys_rule] ADD  CONSTRAINT [DF__sys_rule__effect__1F04813B]  DEFAULT (NULL) FOR [effectiveto]
GO

ALTER TABLE [dbo].[sys_rule] ADD  CONSTRAINT [DF__sys_rule__dtfile__1FF8A574]  DEFAULT (NULL) FOR [dtfiled]
GO

ALTER TABLE [dbo].[sys_rule] ADD  CONSTRAINT [DF__sys_rule__user_o__20ECC9AD]  DEFAULT (NULL) FOR [user_objid]
GO

ALTER TABLE [dbo].[sys_rule] ADD  CONSTRAINT [DF__sys_rule__user_n__21E0EDE6]  DEFAULT (NULL) FOR [user_name]
GO


/****** Object:  Table [dbo].[sys_rule_condition]    Script Date: 10/22/2013 15:39:56 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[sys_rule_condition](
	[objid] [varchar](50) NOT NULL,
	[parentid] [varchar](50) NULL,
	[fact_name] [varchar](50) NULL,
	[fact_objid] [varchar](50) NULL,
	[varname] [varchar](50) NULL,
	[pos] [int] NULL,
	[ruletext] [text] NULL,
	[displaytext] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[sys_rule_condition]  WITH CHECK ADD  CONSTRAINT [FK_sys_rule_condition_fact] FOREIGN KEY([fact_objid])
REFERENCES [dbo].[sys_rule_fact] ([objid])
GO

ALTER TABLE [dbo].[sys_rule_condition] CHECK CONSTRAINT [FK_sys_rule_condition_fact]
GO

ALTER TABLE [dbo].[sys_rule_condition]  WITH CHECK ADD  CONSTRAINT [FK_sys_rule_condition_rule] FOREIGN KEY([parentid])
REFERENCES [dbo].[sys_rule] ([objid])
GO

ALTER TABLE [dbo].[sys_rule_condition] CHECK CONSTRAINT [FK_sys_rule_condition_rule]
GO

ALTER TABLE [dbo].[sys_rule_condition] ADD  DEFAULT (NULL) FOR [parentid]
GO

ALTER TABLE [dbo].[sys_rule_condition] ADD  DEFAULT (NULL) FOR [fact_name]
GO

ALTER TABLE [dbo].[sys_rule_condition] ADD  DEFAULT (NULL) FOR [fact_objid]
GO

ALTER TABLE [dbo].[sys_rule_condition] ADD  DEFAULT (NULL) FOR [varname]
GO

ALTER TABLE [dbo].[sys_rule_condition] ADD  DEFAULT (NULL) FOR [pos]
GO


/****** Object:  Table [dbo].[sys_rule_condition_var]    Script Date: 10/22/2013 15:40:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[sys_rule_condition_var](
	[objid] [varchar](50) NOT NULL,
	[parentid] [varchar](50) NULL,
	[ruleid] [varchar](50) NULL,
	[varname] [varchar](50) NULL,
	[datatype] [varchar](50) NULL,
	[pos] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [uix_rule_var] UNIQUE NONCLUSTERED 
(
	[varname] ASC,
	[ruleid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[sys_rule_condition_var]  WITH CHECK ADD  CONSTRAINT [FK_sys_rule_condition_var_condition] FOREIGN KEY([parentid])
REFERENCES [dbo].[sys_rule_condition] ([objid])
GO

ALTER TABLE [dbo].[sys_rule_condition_var] CHECK CONSTRAINT [FK_sys_rule_condition_var_condition]
GO

ALTER TABLE [dbo].[sys_rule_condition_var] ADD  DEFAULT (NULL) FOR [parentid]
GO

ALTER TABLE [dbo].[sys_rule_condition_var] ADD  DEFAULT (NULL) FOR [ruleid]
GO

ALTER TABLE [dbo].[sys_rule_condition_var] ADD  DEFAULT (NULL) FOR [varname]
GO

ALTER TABLE [dbo].[sys_rule_condition_var] ADD  DEFAULT (NULL) FOR [datatype]
GO

ALTER TABLE [dbo].[sys_rule_condition_var] ADD  DEFAULT (NULL) FOR [pos]
GO


/****** Object:  Table [dbo].[sys_rule_condition_constraint]    Script Date: 10/22/2013 15:40:40 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[sys_rule_condition_constraint](
	[objid] [varchar](50) NOT NULL,
	[parentid] [varchar](50) NULL,
	[field_objid] [varchar](50) NULL,
	[fieldname] [varchar](50) NULL,
	[varname] [varchar](50) NULL,
	[operator_caption] [varchar](50) NULL,
	[operator_symbol] [varchar](50) NULL,
	[usevar] [int] NULL,
	[var_objid] [varchar](50) NULL,
	[var_name] [varchar](50) NULL,
	[decimalvalue] [decimal](16, 2) NULL,
	[intvalue] [int] NULL,
	[stringvalue] [varchar](255) NULL,
	[listvalue] [text] NULL,
	[pos] [int] NULL,
	[dynamicvar_objid] [varchar](50) NULL,
	[dynamicvar_name] [varchar](50) NULL,
	[dynamicvar_datatype] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[sys_rule_condition_constraint]  WITH CHECK ADD  CONSTRAINT [FK_sys_rule_condition_constraint_condition] FOREIGN KEY([parentid])
REFERENCES [dbo].[sys_rule_condition] ([objid])
GO

ALTER TABLE [dbo].[sys_rule_condition_constraint] CHECK CONSTRAINT [FK_sys_rule_condition_constraint_condition]
GO

ALTER TABLE [dbo].[sys_rule_condition_constraint]  WITH CHECK ADD  CONSTRAINT [FK_sys_rule_condition_constraint_var] FOREIGN KEY([var_objid])
REFERENCES [dbo].[sys_rule_condition_var] ([objid])
GO

ALTER TABLE [dbo].[sys_rule_condition_constraint] CHECK CONSTRAINT [FK_sys_rule_condition_constraint_var]
GO

ALTER TABLE [dbo].[sys_rule_condition_constraint] ADD  DEFAULT (NULL) FOR [parentid]
GO

ALTER TABLE [dbo].[sys_rule_condition_constraint] ADD  DEFAULT (NULL) FOR [field_objid]
GO

ALTER TABLE [dbo].[sys_rule_condition_constraint] ADD  DEFAULT (NULL) FOR [fieldname]
GO

ALTER TABLE [dbo].[sys_rule_condition_constraint] ADD  DEFAULT (NULL) FOR [varname]
GO

ALTER TABLE [dbo].[sys_rule_condition_constraint] ADD  DEFAULT (NULL) FOR [operator_caption]
GO

ALTER TABLE [dbo].[sys_rule_condition_constraint] ADD  DEFAULT (NULL) FOR [operator_symbol]
GO

ALTER TABLE [dbo].[sys_rule_condition_constraint] ADD  DEFAULT (NULL) FOR [usevar]
GO

ALTER TABLE [dbo].[sys_rule_condition_constraint] ADD  DEFAULT (NULL) FOR [var_objid]
GO

ALTER TABLE [dbo].[sys_rule_condition_constraint] ADD  DEFAULT (NULL) FOR [var_name]
GO

ALTER TABLE [dbo].[sys_rule_condition_constraint] ADD  DEFAULT (NULL) FOR [decimalvalue]
GO

ALTER TABLE [dbo].[sys_rule_condition_constraint] ADD  DEFAULT (NULL) FOR [intvalue]
GO

ALTER TABLE [dbo].[sys_rule_condition_constraint] ADD  DEFAULT (NULL) FOR [stringvalue]
GO

ALTER TABLE [dbo].[sys_rule_condition_constraint] ADD  DEFAULT (NULL) FOR [pos]
GO

ALTER TABLE [dbo].[sys_rule_condition_constraint] ADD  DEFAULT (NULL) FOR [dynamicvar_objid]
GO

ALTER TABLE [dbo].[sys_rule_condition_constraint] ADD  DEFAULT (NULL) FOR [dynamicvar_name]
GO

ALTER TABLE [dbo].[sys_rule_condition_constraint] ADD  DEFAULT (NULL) FOR [dynamicvar_datatype]
GO







/****** Object:  Table [dbo].[sys_rule_action]    Script Date: 10/22/2013 15:39:09 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[sys_rule_action](
	[objid] [varchar](50) NOT NULL,
	[parentid] [varchar](50) NULL,
	[actiondef_objid] [varchar](50) NULL,
	[actiondef_name] [varchar](50) NULL,
	[pos] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[sys_rule_action]  WITH CHECK ADD  CONSTRAINT [FK_sys_rule_action_rule] FOREIGN KEY([parentid])
REFERENCES [dbo].[sys_rule] ([objid])
GO

ALTER TABLE [dbo].[sys_rule_action] CHECK CONSTRAINT [FK_sys_rule_action_rule]
GO

ALTER TABLE [dbo].[sys_rule_action] ADD  DEFAULT ('') FOR [objid]
GO

ALTER TABLE [dbo].[sys_rule_action] ADD  DEFAULT (NULL) FOR [parentid]
GO

ALTER TABLE [dbo].[sys_rule_action] ADD  DEFAULT (NULL) FOR [actiondef_objid]
GO

ALTER TABLE [dbo].[sys_rule_action] ADD  DEFAULT (NULL) FOR [actiondef_name]
GO

ALTER TABLE [dbo].[sys_rule_action] ADD  DEFAULT (NULL) FOR [pos]
GO

/****** Object:  Table [dbo].[sys_rule_action_param]    Script Date: 10/22/2013 15:39:34 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[sys_rule_action_param](
	[objid] [varchar](50) NOT NULL,
	[parentid] [varchar](50) NULL,
	[actiondefparam_objid] [varchar](50) NULL,
	[stringvalue] [varchar](255) NULL,
	[booleanvalue] [int] NULL,
	[var_objid] [varchar](50) NULL,
	[var_name] [varchar](50) NULL,
	[expr] [text] NULL,
	[exprtype] [varchar](25) NULL,
	[pos] [int] NULL,
	[obj_key] [varchar](50) NULL,
	[obj_value] [varchar](255) NULL,
	[listvalue] [text] NULL,
	[lov] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[sys_rule_action_param]  WITH CHECK ADD  CONSTRAINT [FK_sys_rule_action_param_action] FOREIGN KEY([parentid])
REFERENCES [dbo].[sys_rule_action] ([objid])
GO

ALTER TABLE [dbo].[sys_rule_action_param] CHECK CONSTRAINT [FK_sys_rule_action_param_action]
GO

ALTER TABLE [dbo].[sys_rule_action_param]  WITH CHECK ADD  CONSTRAINT [FK_sys_rule_action_param_var] FOREIGN KEY([var_objid])
REFERENCES [dbo].[sys_rule_condition_var] ([objid])
GO

ALTER TABLE [dbo].[sys_rule_action_param] CHECK CONSTRAINT [FK_sys_rule_action_param_var]
GO

ALTER TABLE [dbo].[sys_rule_action_param] ADD  DEFAULT ('') FOR [objid]
GO

ALTER TABLE [dbo].[sys_rule_action_param] ADD  DEFAULT (NULL) FOR [parentid]
GO

ALTER TABLE [dbo].[sys_rule_action_param] ADD  DEFAULT (NULL) FOR [actiondefparam_objid]
GO

ALTER TABLE [dbo].[sys_rule_action_param] ADD  DEFAULT (NULL) FOR [stringvalue]
GO

ALTER TABLE [dbo].[sys_rule_action_param] ADD  DEFAULT (NULL) FOR [booleanvalue]
GO

ALTER TABLE [dbo].[sys_rule_action_param] ADD  DEFAULT (NULL) FOR [var_objid]
GO

ALTER TABLE [dbo].[sys_rule_action_param] ADD  DEFAULT (NULL) FOR [var_name]
GO

ALTER TABLE [dbo].[sys_rule_action_param] ADD  DEFAULT (NULL) FOR [exprtype]
GO

ALTER TABLE [dbo].[sys_rule_action_param] ADD  DEFAULT (NULL) FOR [pos]
GO

ALTER TABLE [dbo].[sys_rule_action_param] ADD  DEFAULT (NULL) FOR [obj_key]
GO

ALTER TABLE [dbo].[sys_rule_action_param] ADD  DEFAULT (NULL) FOR [obj_value]
GO

ALTER TABLE [dbo].[sys_rule_action_param] ADD  DEFAULT (NULL) FOR [lov]
GO





/****** Object:  Table [dbo].[sys_rule_deployed]    Script Date: 10/22/2013 15:37:48 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[sys_rule_deployed](
	[objid] [varchar](50) NOT NULL,
	[ruletext] [text] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[sys_rule_deployed]  WITH CHECK ADD  CONSTRAINT [FK_sys_rule_deployed_rule] FOREIGN KEY([objid])
REFERENCES [dbo].[sys_rule] ([objid])
GO

ALTER TABLE [dbo].[sys_rule_deployed] CHECK CONSTRAINT [FK_sys_rule_deployed_rule]
GO

ALTER TABLE [dbo].[sys_rule_deployed] ADD  DEFAULT ('') FOR [objid]
GO