-- This script is idempotent, that is, you can run it over and over again and get the same result
DROP TABLE Accounts
/****** Object:  Table [dbo].[Accounts]    Script Date: 10/28/2025 11:30:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts](
	[AccountId] [int] IDENTITY(1,1) NOT NULL,
	[MemberId] [int] NOT NULL,
	[AccountNumber] [varchar](20) NOT NULL,
	[BranchName] [varchar](50) NULL,
 CONSTRAINT [PK_Accounts] PRIMARY KEY CLUSTERED 
(
	[AccountId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Accounts] ON 
GO
INSERT [dbo].[Accounts] ([AccountId], [MemberId], [AccountNumber], [BranchName]) VALUES (1, 1, N'CU1001', N'North Arlington')
GO
INSERT [dbo].[Accounts] ([AccountId], [MemberId], [AccountNumber], [BranchName]) VALUES (2, 2, N'CU2003', N'Fort Worth')
GO
INSERT [dbo].[Accounts] ([AccountId], [MemberId], [AccountNumber], [BranchName]) VALUES (3, 3, N'CU3001', N'Bedford')
GO
INSERT [dbo].[Accounts] ([AccountId], [MemberId], [AccountNumber], [BranchName]) VALUES (4, 4, N'CU4004', N'Mansfield')
GO
INSERT [dbo].[Accounts] ([AccountId], [MemberId], [AccountNumber], [BranchName]) VALUES (5, 5, N'CU5002', N'South Hulen')
GO
INSERT [dbo].[Accounts] ([AccountId], [MemberId], [AccountNumber], [BranchName]) VALUES (6, 1, N'CU1005', N'North Arlington')
GO
INSERT [dbo].[Accounts] ([AccountId], [MemberId], [AccountNumber], [BranchName]) VALUES (7, 3, N'CU3007', N'Bedford')
GO
INSERT [dbo].[Accounts] ([AccountId], [MemberId], [AccountNumber], [BranchName]) VALUES (8, 4, N'CU4008', N'Mansfield')
GO
INSERT [dbo].[Accounts] ([AccountId], [MemberId], [AccountNumber], [BranchName]) VALUES (9, 1, N'CU1012', N'North Arlington')
GO
INSERT [dbo].[Accounts] ([AccountId], [MemberId], [AccountNumber], [BranchName]) VALUES (10, 4, N'CU4015', N'Mansfield')
GO
SET IDENTITY_INSERT [dbo].[Accounts] OFF
GO
ALTER TABLE [dbo].[Accounts]  WITH CHECK ADD  CONSTRAINT [FK_Accounts_Members] FOREIGN KEY([MemberId])
REFERENCES [dbo].[Members] ([MemberId])
GO
ALTER TABLE [dbo].[Accounts] CHECK CONSTRAINT [FK_Accounts_Members]
GO
