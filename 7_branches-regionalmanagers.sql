DROP TABLE Accounts
DROP TABLE Members
DROP TABLE Branches
GO
CREATE TABLE [dbo].[Accounts](
	[AccountNumber] [nvarchar](20) NOT NULL,
	[MemberId] [int] NOT NULL,
 CONSTRAINT [PK_Accounts] PRIMARY KEY CLUSTERED 
(
	[AccountNumber] ASC,
	[MemberId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Branches]    Script Date: 10/28/2025 3:13:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Branches](
	[BranchId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Manager] [varchar](50) NOT NULL,
	[RegionalDirector] [varchar](50) NULL,
 CONSTRAINT [PK_BRANCHES] PRIMARY KEY CLUSTERED 
(
	[BranchId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Members]    Script Date: 10/28/2025 3:13:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Members](
	[MemberID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[PhoneNumber] [varchar](15) NULL,
	[BranchID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MemberID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Accounts] ([AccountNumber], [MemberId]) VALUES (N'CU1001', 1)
GO
INSERT [dbo].[Accounts] ([AccountNumber], [MemberId]) VALUES (N'CU1005', 1)
GO
INSERT [dbo].[Accounts] ([AccountNumber], [MemberId]) VALUES (N'CU1012', 1)
GO
INSERT [dbo].[Accounts] ([AccountNumber], [MemberId]) VALUES (N'CU2003', 2)
GO
INSERT [dbo].[Accounts] ([AccountNumber], [MemberId]) VALUES (N'CU3001', 3)
GO
INSERT [dbo].[Accounts] ([AccountNumber], [MemberId]) VALUES (N'CU3007', 3)
GO
INSERT [dbo].[Accounts] ([AccountNumber], [MemberId]) VALUES (N'CU4004', 4)
GO
INSERT [dbo].[Accounts] ([AccountNumber], [MemberId]) VALUES (N'CU4008', 4)
GO
INSERT [dbo].[Accounts] ([AccountNumber], [MemberId]) VALUES (N'CU4015', 4)
GO
INSERT [dbo].[Accounts] ([AccountNumber], [MemberId]) VALUES (N'CU5002', 5)
GO
SET IDENTITY_INSERT [dbo].[Branches] ON 
GO
INSERT [dbo].[Branches] ([BranchId], [Name], [Manager], [RegionalDirector]) VALUES (1, N'Bedford', N'Brad Miller', N'James Keating')
GO
INSERT [dbo].[Branches] ([BranchId], [Name], [Manager], [RegionalDirector]) VALUES (2, N'Fort Worth', N'Sean Bolton', N'James Keating')
GO
INSERT [dbo].[Branches] ([BranchId], [Name], [Manager], [RegionalDirector]) VALUES (3, N'Mansfield', N'David Herrerez', N'Betsy Price')
GO
INSERT [dbo].[Branches] ([BranchId], [Name], [Manager], [RegionalDirector]) VALUES (4, N'North Arlington', N'Lisa Chen', N'Betsy Price')
GO
INSERT [dbo].[Branches] ([BranchId], [Name], [Manager], [RegionalDirector]) VALUES (5, N'South Hulen', N'Susan Collins', N'James Keating')
GO
SET IDENTITY_INSERT [dbo].[Branches] OFF
GO
SET IDENTITY_INSERT [dbo].[Members] ON 
GO
INSERT [dbo].[Members] ([MemberID], [FirstName], [LastName], [PhoneNumber], [BranchID]) VALUES (1, N'Jane', N'Doe', N'555-123-4567', 4)
GO
INSERT [dbo].[Members] ([MemberID], [FirstName], [LastName], [PhoneNumber], [BranchID]) VALUES (2, N'Robert', N'Smith', N'555-987-6543', 2)
GO
INSERT [dbo].[Members] ([MemberID], [FirstName], [LastName], [PhoneNumber], [BranchID]) VALUES (3, N'Maria', N'Garcia', N'555-555-0199', 1)
GO
INSERT [dbo].[Members] ([MemberID], [FirstName], [LastName], [PhoneNumber], [BranchID]) VALUES (4, N'David', N'Lee', N'555-444-7777', 3)
GO
INSERT [dbo].[Members] ([MemberID], [FirstName], [LastName], [PhoneNumber], [BranchID]) VALUES (5, N'Sarah', N'Johnson', N'555-222-3333', 5)
GO
SET IDENTITY_INSERT [dbo].[Members] OFF
GO
ALTER TABLE [dbo].[Accounts]  WITH CHECK ADD  CONSTRAINT [FK_Accounts_Members] FOREIGN KEY([MemberId])
REFERENCES [dbo].[Members] ([MemberID])
GO
ALTER TABLE [dbo].[Accounts] CHECK CONSTRAINT [FK_Accounts_Members]
GO
ALTER TABLE [dbo].[Members]  WITH CHECK ADD  CONSTRAINT [FK_Members_Branches] FOREIGN KEY([BranchID])
REFERENCES [dbo].[Branches] ([BranchId])
GO
ALTER TABLE [dbo].[Members] CHECK CONSTRAINT [FK_Members_Branches]
GO