ALTER TABLE Members
	ADD BranchName varchar(50) NULL

UPDATE Members SET BranchName = A.BranchName
FROM Members M JOIN Accounts A ON M.MemberId = A.MemberId

ALTER TABLE Accounts
   DROP COLUMN BranchName