USE [CreditUnion]
GO

/****** Object:  Table [dbo].[Branches]    Script Date: 10/28/2025 1:27:43 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

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

ALTER TABLE Members
	ADD BranchID int NULL
	
UPDATE Members SET BranchID = B.BranchId
FROM Members M JOIN Branches B ON M.BranchName = B.Name AND M.BranchManager = B.Manager

ALTER TABLE Members DROP COLUMN BranchName
ALTER TABLE Members DROP COLUMN BranchManager


