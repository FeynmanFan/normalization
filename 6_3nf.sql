CREATE TABLE [dbo].[Branches](
	[BranchId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Manager] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Branches] PRIMARY KEY CLUSTERED 
(
	[BranchId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

INSERT INTO Branches(Name, Manager)
SELECT DISTINCT BRanchName, BranchManager FROM Members
GO
ALTER TABLE Members
	ADD BranchID int NULL
GO
UPDATE Members SET BranchID = B.BranchId
FROM Members M JOIN Branches B ON M.BranchName = B.Name AND M.BranchManager = B.Manager
GO
ALTER TABLE [dbo].[Members]  WITH CHECK ADD  CONSTRAINT [FK_Members_Branches] FOREIGN KEY([BranchID])
REFERENCES [dbo].[Branches] ([BranchId])
GO

ALTER TABLE [dbo].[Members] CHECK CONSTRAINT [FK_Members_Branches]
GO

ALTER TABLE Members DROP COLUMN BranchName
ALTER TABLE Members DROP COLUMN BranchManager