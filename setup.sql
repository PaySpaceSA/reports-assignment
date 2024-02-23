CREATE TABLE Company
(
pkCompanyID BIGINT IDENTITY(1,1) NOT NULL,
CompanyName VARCHAR(100)
)

INSERT INTO Company (CompanyName)
SELECT 'Acme Industries'
UNION ALL
SELECT 'Globex Corporation'
UNION ALL
SELECT 'Krusty Krab'


CREATE TABLE Employee
(
pkEmployeeID	BIGINT  IDENTITY(1,1) NOT NULL,
fkCompanyID		BIGINT,
EmployeeNumber	VARCHAR(100),
FirstName		VARCHAR(100),
LastName		VARCHAR(100),
DateOfBirth		DATE,
Gender			VARCHAR(100),
Nationality		VARCHAR(100)
)

INSERT INTO Employee (fkCompanyID, EmployeeNumber, FirstName, LastName, DateOfBirth, Gender, Nationality) 
SELECT 1, 'A1', 'Bugs', 'Bunny', '1999/02/04', 'Male', 'South African'
UNION  ALL
SELECT 1, 'A2', 'Donald', 'Duck', '1998/01/14', 'Male', 'Canadian'
UNION  ALL
SELECT 1, 'A3', 'Tweety', 'Bird', '1990/11/04', 'Female', 'South African'
UNION  ALL
SELECT 1, 'A4', 'Speedy', 'Gonzalez', '2000/01/01', 'Male', 'South African'
UNION ALL
SELECT 2, 'B1', 'Homer', 'Simpson', '1989/08/13', 'Male', 'American'
UNION  ALL
SELECT 2, 'B2', 'Bart', 'Simpson', '2003/06/10', 'Male', 'American'
UNION  ALL
SELECT 2, 'B3', 'Marge', 'Simpson', '1990/02/14', 'Female', 'Mexican'
UNION  ALL
SELECT 2, 'B4', 'Lisa', 'Simpson', '2001/06/12', 'Female', 'American'
UNION ALL
SELECT 3, 'C1', 'Spongebob', 'Squarepants', '2003/04/02', 'Female', 'English'
UNION  ALL
SELECT 3, 'C2', 'Patrick', 'Star', '1995/05/05', 'Male', 'Scottish'
UNION  ALL
SELECT 3, 'C3', 'Sandy', 'Cheeks', '2006/12/31', 'Female', 'Irish'



CREATE TABLE Address
(
pkAddressID		BIGINT  IDENTITY(1,1) NOT NULL,
Town			VARCHAR(100)
)

INSERT INTO Address (Town)
SELECT 'Johannesburg'
UNION  ALL
SELECT 'Cape Town'


CREATE TABLE TaxRates
(
pkTaxRatesID	BIGINT  IDENTITY(1,1) NOT NULL,
SalaryRateFrom	INT,
SalaryRateTo	INT, 
RatePercentage	INT
)

INSERT INTO TaxRates
SELECT 0, 7500, 10
UNION  ALL
SELECT 7501, 15000, 15
UNION  ALL
SELECT 15001, 23000, 18
UNION  ALL
SELECT 23001, 31000, 23
UNION  ALL
SELECT 31001, 40000, 30
UNION  ALL
SELECT 40001, 9999999, 40

CREATE TABLE Salaries
(
pkSalaryID		BIGINT IDENTITY(1,1) NOT NULL,
fkEmployeeID	BIGINT,
Salary			INT
)

INSERT INTO Salaries (fkEmployeeID, Salary)
SELECT 1, 5000
UNION  ALL
SELECT 2, 24000
UNION  ALL
SELECT 3, 14000
UNION  ALL
SELECT 4, 32000
UNION  ALL
SELECT 5, 89000
UNION  ALL
SELECT 6, 10000
UNION  ALL
SELECT 7, 10000
UNION  ALL
SELECT 8, 20000
UNION  ALL
SELECT 9, 25000
UNION  ALL
SELECT 10, 35000
UNION  ALL
SELECT 11, 42000


CREATE TABLE Position
(
pkPositionID	BIGINT IDENTITY(1,1) NOT NULL,
fkEmployeeID	BIGINT,
Position		VARCHAR(100),
EffectiveDate	DATE
)

INSERT INTO Position (fkEmployeeID, Position, EffectiveDate)
SELECT 1, 'Junior Developer', '2020/01/01'
UNION  ALL
SELECT 1, 'Intermediate Developer', '2022/01/01'
UNION  ALL
SELECT 2, 'Junior Accountant', '2020/01/01'
UNION  ALL
SELECT 3, 'Associate Attorney', '2020/01/01'
UNION  ALL
SELECT 3, 'Senior Attorney', '2023/01/01'
UNION  ALL
SELECT 4, 'Junior Analyst', '2020/01/01'
UNION  ALL
SELECT 5, 'Junior Scientist', '2020/01/01'
UNION  ALL
SELECT 6, 'Junior Doctor', '2020/01/01'
UNION  ALL
SELECT 6, 'Senior Doctor', '2024/01/01'
UNION  ALL
SELECT 7, 'Junior Data Analyst', '2020/01/01'
UNION  ALL
SELECT 8, 'Junior Developer', '2020/01/01'
UNION  ALL
SELECT 9, 'Junior Finance Analyst', '2020/01/01'
UNION  ALL
SELECT 9, 'Intermediate Manager', '2022/01/01'
UNION  ALL
SELECT 10,'Junior Mediator', '2020/01/01'
UNION  ALL
SELECT 11,'Junior Consultant', '2020/01/01'
UNION  ALL
SELECT 11,'Senior Consultant', '2023/01/01'