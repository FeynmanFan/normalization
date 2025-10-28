-- This script is idempotent, that is, you can run it over and over again and get the same result
DROP TABLE Accounts
/****** Object:  Table [dbo].[Accounts]    Script Date: 10/28/2025 11:30:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts](
	[AccountNumber] [nvarchar](20) NOT NULL,
	[MemberId] [int] NOT NULL,
	[BranchName] [varchar](50) NULL,
 CONSTRAINT [PK_Accounts] PRIMARY KEY CLUSTERED 
(
	[AccountNumber] ASC,
	[MemberId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Accounts]  WITH CHECK ADD  CONSTRAINT [FK_Accounts_Members] FOREIGN KEY([MemberId])
REFERENCES [dbo].[Members] ([MemberID])
GO

ALTER TABLE [dbo].[Accounts] CHECK CONSTRAINT [FK_Accounts_Members]
GO

INSERT [dbo].[Accounts] ([MemberId], [AccountNumber], [BranchName]) VALUES (1, N'CU1001', N'North Arlington')
GO
INSERT [dbo].[Accounts] ([MemberId], [AccountNumber], [BranchName]) VALUES (2, N'CU2003', N'Fort Worth')
GO
INSERT [dbo].[Accounts] ([MemberId], [AccountNumber], [BranchName]) VALUES (3, N'CU3001', N'Bedford')
GO
INSERT [dbo].[Accounts] ([MemberId], [AccountNumber], [BranchName]) VALUES (4, N'CU4004', N'Mansfield')
GO
INSERT [dbo].[Accounts] ([MemberId], [AccountNumber], [BranchName]) VALUES (5, N'CU5002', N'South Hulen')
GO
INSERT [dbo].[Accounts] ([MemberId], [AccountNumber], [BranchName]) VALUES (1, N'CU1005', N'North Arlington')
GO
INSERT [dbo].[Accounts] ([MemberId], [AccountNumber], [BranchName]) VALUES (3, N'CU3007', N'Bedford')
GO
INSERT [dbo].[Accounts] ([MemberId], [AccountNumber], [BranchName]) VALUES (4, N'CU4008', N'Mansfield')
GO
INSERT [dbo].[Accounts] ([MemberId], [AccountNumber], [BranchName]) VALUES (1, N'CU1012', N'North Arlington')
GO
INSERT [dbo].[Accounts] ([MemberId], [AccountNumber], [BranchName]) VALUES (4, N'CU4015', N'Mansfield')
GO
