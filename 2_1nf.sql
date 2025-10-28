CREATE TABLE [dbo].[Accounts](
	[AccountNumber] [nvarchar](20) NOT NULL,
	[MemberId] [int] NOT NULL,
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

INSERT INTO ACCOUNTS (AccountNumber, MemberId)
SELECT AccountNumber1, MemberId FROM Members WHERE AccountNumber1 IS NOT NULL
UNION ALL
SELECT AccountNumber2, MemberId FROM Members WHERE AccountNumber2 IS NOT NULL
UNION ALL
SELECT AccountNumber3, MemberId FROM Members WHERE AccountNumber3 IS NOT NULL

ALTER TABLE Members DROP COLUMN AccountNumber1 
ALTER TABLE Members DROP COLUMN AccountNumber2 
ALTER TABLE Members DROP COLUMN AccountNumber3 