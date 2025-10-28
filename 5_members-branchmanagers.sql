DROP TABLE ACCOUNTS
DROP TABLE MEMBERS
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
GO
CREATE TABLE [dbo].[Members](
	[MemberID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[PhoneNumber] [varchar](15) NULL,
	[BranchName] [varchar](50) NULL,
	[BranchManager] [varchar](50) NULL,
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
SET IDENTITY_INSERT [dbo].[Members] ON 
GO
INSERT [dbo].[Members] ([MemberID], [FirstName], [LastName], [PhoneNumber], [BranchName], [BranchManager]) VALUES (1, N'Jane', N'Doe', N'555-123-4567', N'North Arlington', 'Lisa Chen')
GO
INSERT [dbo].[Members] ([MemberID], [FirstName], [LastName], [PhoneNumber], [BranchName], [BranchManager]) VALUES (2, N'Robert', N'Smith', N'555-987-6543', N'Fort Worth', 'Sean Bolton')
GO
INSERT [dbo].[Members] ([MemberID], [FirstName], [LastName], [PhoneNumber], [BranchName], [BranchManager]) VALUES (3, N'Maria', N'Garcia', N'555-555-0199', N'Bedford', 'Brad Miller')
GO
INSERT [dbo].[Members] ([MemberID], [FirstName], [LastName], [PhoneNumber], [BranchName], [BranchManager]) VALUES (4, N'David', N'Lee', N'555-444-7777', N'Mansfield', 'David Herrerez')
GO
INSERT [dbo].[Members] ([MemberID], [FirstName], [LastName], [PhoneNumber], [BranchName], [BranchManager]) VALUES (5, N'Sarah', N'Johnson', N'555-222-3333', N'South Hulen', 'Susan Collins')
GO
SET IDENTITY_INSERT [dbo].[Members] OFF
GO
ALTER TABLE [dbo].[Accounts]  WITH CHECK ADD  CONSTRAINT [FK_Accounts_Members] FOREIGN KEY([MemberId])
REFERENCES [dbo].[Members] ([MemberID])
GO
ALTER TABLE [dbo].[Accounts] CHECK CONSTRAINT [FK_Accounts_Members]
GO
