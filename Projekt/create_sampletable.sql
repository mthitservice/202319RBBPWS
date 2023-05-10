USE [FFB]
GO

/****** Object:  Table [dbo].[tab_serviceInventar]    Script Date: 10.05.2023 15:26:30 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tab_serviceInventar](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[creationDate] [datetime] NULL,
	[Computername] [nvarchar](255) NOT NULL,
	[Path] [nvarchar](255) NOT NULL,
	[updateDate] [datetime] NULL,
	[DiensteName] [nvarchar](255) NULL,
 CONSTRAINT [PK_tab_serviceInventar] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[tab_serviceInventar] ADD  CONSTRAINT [DF_tab_serviceInventar_creationDate]  DEFAULT (getdate()) FOR [creationDate]
GO


