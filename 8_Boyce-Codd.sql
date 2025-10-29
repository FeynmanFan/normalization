CREATE TABLE [dbo].[Regions](
	[RegionId] [int] IDENTITY(1,1) NOT NULL,
	[Director] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Regions] PRIMARY KEY CLUSTERED 
(
	[RegionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

INSERT INTO Regions (Director)
SELECT DISTINCT RegionalDirector FROM Branches
GO

ALTER TABLE Branches 
	ADD RegionId int NULL
GO
UPDATE Branches
SET RegionId = R.RegionID
FROM dbo.Branches b
INNER JOIN dbo.Regions r on b.RegionalDirector = r.Director
GO
ALTER TABLE dbo.Branches
ALTER COLUMN RegionId INT NOT NULL
GO
ALTER TABLE dbo.Branches
ADD CONSTRAINT FK_Branches_Regions
	FOREIGN KEY (RegionID) REFERENCES dbo.Regions(RegionID)
GO