USE [CoffeeHome]
GO
/****** Object:  Table [dbo].[Bill_details]    Script Date: 3/22/2018 6:26:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bill_details](
	[id_bill] [int] NOT NULL,
	[id_food] [int] NOT NULL,
	[quantity] [int] NULL,
	[price] [int] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_bill] ASC,
	[id_food] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Bill_Online]    Script Date: 3/22/2018 6:26:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bill_Online](
	[name_customer] [nvarchar](255) NULL,
	[address] [nvarchar](500) NULL,
	[total_price] [int] NULL,
	[sdt] [int] NULL,
	[updated_at] [datetime] NULL,
	[created_at] [datetime] NULL,
	[id_bill_online] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_bill_online] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Bill_Online_Detail]    Script Date: 3/22/2018 6:26:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bill_Online_Detail](
	[id_bill] [int] NOT NULL,
	[id_drink] [int] NOT NULL,
	[price] [int] NULL,
	[quantity] [int] NULL,
	[updated_at] [datetime] NULL,
	[created_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_bill] ASC,
	[id_drink] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Bills]    Script Date: 3/22/2018 6:26:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bills](
	[id_customer] [int] NULL,
	[id_table] [int] NOT NULL,
	[total_price] [int] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[id_bill] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK__Bills__3213E83F1A14E395] PRIMARY KEY CLUSTERED 
(
	[id_bill] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Customer]    Script Date: 3/22/2018 6:26:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customer](
	[name] [nvarchar](255) NULL,
	[points] [int] NULL,
	[email] [nvarchar](255) NULL,
	[sdt] [int] NULL,
	[id_customer] [int] IDENTITY(1,1) NOT NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[avatar] [varchar](255) NULL,
 CONSTRAINT [PK__Customer__3213E83F117F9D94] PRIMARY KEY CLUSTERED 
(
	[id_customer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Drink_type]    Script Date: 3/22/2018 6:26:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Drink_type](
	[name] [nvarchar](255) NOT NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[id_type] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK__Drink_ty__72E12F1A267ABA7A] PRIMARY KEY CLUSTERED 
(
	[id_type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DrinkAndDessert]    Script Date: 3/22/2018 6:26:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DrinkAndDessert](
	[name] [nvarchar](255) NULL,
	[description] [nvarchar](255) NULL,
	[price] [int] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[id_drink] [int] IDENTITY(1,1) NOT NULL,
	[id_type] [int] NULL,
	[image] [varchar](255) NULL,
 CONSTRAINT [PK__DrinkAnd__3213E83F0CBAE877] PRIMARY KEY CLUSTERED 
(
	[id_drink] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Staff]    Script Date: 3/22/2018 6:26:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff](
	[name] [nvarchar](255) NULL,
	[username] [nvarchar](255) NULL,
	[password] [nvarchar](255) NULL,
	[email] [nvarchar](255) NULL,
	[sdt] [int] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[id_staff] [int] IDENTITY(1,1) NOT NULL,
	[level] [nvarchar](255) NULL,
 CONSTRAINT [PK__Staff__3213E83F22AA2996] PRIMARY KEY CLUSTERED 
(
	[id_staff] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tables]    Script Date: 3/22/2018 6:26:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tables](
	[name] [nvarchar](255) NULL,
	[status] [tinyint] NOT NULL,
	[id_table] [int] IDENTITY(1,1) NOT NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_table] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Bills] ADD  DEFAULT (NULL) FOR [id_table]
GO
ALTER TABLE [dbo].[Tables] ADD  DEFAULT ((0)) FOR [status]
GO
ALTER TABLE [dbo].[Bill_details]  WITH CHECK ADD  CONSTRAINT [FK_Bill_details_Bills] FOREIGN KEY([id_bill])
REFERENCES [dbo].[Bills] ([id_bill])
GO
ALTER TABLE [dbo].[Bill_details] CHECK CONSTRAINT [FK_Bill_details_Bills]
GO
ALTER TABLE [dbo].[Bill_details]  WITH CHECK ADD  CONSTRAINT [FK_Bill_details_DrinkAndDessert] FOREIGN KEY([id_food])
REFERENCES [dbo].[DrinkAndDessert] ([id_drink])
GO
ALTER TABLE [dbo].[Bill_details] CHECK CONSTRAINT [FK_Bill_details_DrinkAndDessert]
GO
ALTER TABLE [dbo].[Bill_Online_Detail]  WITH CHECK ADD  CONSTRAINT [FK_Bill_Online_Detail_Bill_Online] FOREIGN KEY([id_bill])
REFERENCES [dbo].[Bill_Online] ([id_bill_online])
GO
ALTER TABLE [dbo].[Bill_Online_Detail] CHECK CONSTRAINT [FK_Bill_Online_Detail_Bill_Online]
GO
ALTER TABLE [dbo].[Bill_Online_Detail]  WITH CHECK ADD  CONSTRAINT [FK_Bill_Online_Detail_DrinkAndDessert] FOREIGN KEY([id_drink])
REFERENCES [dbo].[DrinkAndDessert] ([id_drink])
GO
ALTER TABLE [dbo].[Bill_Online_Detail] CHECK CONSTRAINT [FK_Bill_Online_Detail_DrinkAndDessert]
GO
ALTER TABLE [dbo].[Bills]  WITH CHECK ADD  CONSTRAINT [FK_Bills_Customer] FOREIGN KEY([id_customer])
REFERENCES [dbo].[Customer] ([id_customer])
GO
ALTER TABLE [dbo].[Bills] CHECK CONSTRAINT [FK_Bills_Customer]
GO
ALTER TABLE [dbo].[Bills]  WITH CHECK ADD  CONSTRAINT [FK_Bills_Tables] FOREIGN KEY([id_table])
REFERENCES [dbo].[Tables] ([id_table])
GO
ALTER TABLE [dbo].[Bills] CHECK CONSTRAINT [FK_Bills_Tables]
GO
ALTER TABLE [dbo].[DrinkAndDessert]  WITH CHECK ADD  CONSTRAINT [FK_DrinkAndDessert_Drink_type] FOREIGN KEY([id_type])
REFERENCES [dbo].[Drink_type] ([id_type])
GO
ALTER TABLE [dbo].[DrinkAndDessert] CHECK CONSTRAINT [FK_DrinkAndDessert_Drink_type]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'depends on customer table' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bills', @level2type=N'COLUMN',@level2name=N'id_customer'
GO
