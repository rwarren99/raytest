CREATE TABLE [dbo].[Table_1]
(
[col1] [bigint] NOT NULL,
[col2] [varchar] (50) COLLATE Latin1_General_CI_AS NULL,
[col3] [numeric] (18, 0) NULL,
[col4] [varbinary] (50) NULL,
[col5] [nchar] (10) COLLATE Latin1_General_CI_AS NULL,
[col6] [nchar] (100) COLLATE Latin1_General_CI_AS NULL,
[col7] [nchar] (10) COLLATE Latin1_General_CI_AS NULL,
[col8] [nchar] (10) COLLATE Latin1_General_CI_AS NULL,
[col9] [nchar] (100) COLLATE Latin1_General_CI_AS NULL,
[col10] [nchar] (10) COLLATE Latin1_General_CI_AS NULL,
[cola] [nchar] (10) COLLATE Latin1_General_CI_AS NULL,
[coly] [nchar] (10) COLLATE Latin1_General_CI_AS NULL,
[colc] [nchar] (10) COLLATE Latin1_General_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Table_1] ADD CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED  ([col1]) ON [PRIMARY]
GO
