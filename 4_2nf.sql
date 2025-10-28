ALTER TABLE Members
	ADD BranchName varchar(50) NULL

UPDATE Members Set BranchName = A.BranchName
FROM Members M JOIN Accounts A ON M.MemberId = A.MemberId

SELECT * FROM Members

ALTER TABLE Accounts
	DROP COLUMN BranchName

SELECT * FROM Members
SELECT * FROM Accounts