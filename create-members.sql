-- Drop table if it exists (for re-runs)
IF OBJECT_ID('dbo.Members', 'U') IS NOT NULL
    DROP TABLE dbo.Members;
GO

-- Create the Members table
CREATE TABLE dbo.Members (
    MemberID        INT IDENTITY(1,1) PRIMARY KEY,
    FirstName       VARCHAR(50) NOT NULL,
    LastName        VARCHAR(50) NOT NULL,
    PhoneNumber     VARCHAR(15) NULL,
    AccountNumber1  VARCHAR(20) NULL,
    AccountNumber2  VARCHAR(20) NULL,
    AccountNumber3  VARCHAR(20) NULL
);
GO

-- Insert 5 rows of sample data
INSERT INTO dbo.Members (FirstName, LastName, PhoneNumber, AccountNumber1, AccountNumber2, AccountNumber3)
VALUES
    ('Jane',     'Doe',       '555-123-4567', 'CU1001', 'CU1005', 'CU1012'),
    ('Robert',   'Smith',     '555-987-6543', 'CU2003', NULL,     NULL),
    ('Maria',    'Garcia',    '555-555-0199', 'CU3001', 'CU3007', NULL),
    ('David',    'Lee',       '555-444-7777', 'CU4004', 'CU4008', 'CU4015'),
    ('Sarah',    'Johnson',   '555-222-3333', 'CU5002', NULL,     NULL);
GO

-- Optional: View the data
SELECT * FROM dbo.Members;
GO