USE [Test]
GO

/****** Object:  Table [dbo].[users]    Script Date: 2020/12/7 12:50:28 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[users](
	[userID] [int] IDENTITY(1,1) NOT NULL,
	[userName] [nvarchar](200) NOT NULL,
	[password] [nvarchar](200) NOT NULL,
	[fullName] [nvarchar](200) NULL,
	[gender] [nvarchar](200) NULL,
	[birthDate] [nvarchar](200) NULL,
	[tel] [nvarchar](200) NULL,
	[email] [nvarchar](200) NULL,
	[weChat] [nvarchar](200) NULL,
	[condition] [nvarchar](200) NULL,
	[information] [nvarchar](200) NULL,
	[signDate] [date] NOT NULL,
	[position] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[userID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[weChat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[userName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[password] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[tel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[users] ADD  DEFAULT ('����') FOR [condition]
GO

ALTER TABLE [dbo].[users]  WITH CHECK ADD CHECK  (([condition]='����' OR [condition]='����'))
GO

ALTER TABLE [dbo].[users]  WITH CHECK ADD CHECK  (([gender]='Ů' OR [gender]='��'))
GO

ALTER TABLE [dbo].[users]  WITH CHECK ADD CHECK  (([position]='����Ա' OR [position]='��ͨ�û�'))
GO


