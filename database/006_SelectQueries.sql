--Select All Records
SELECT *
FROM Students;
--Select Specific Columns
SELECT
    FirstName,
    LastName,
    Email
FROM Students;
--Column Aliases (AS)
SELECT
    FirstName AS First_Name,
    LastName AS Last_Name,
    Email AS Email_Address
FROM Students;
--Filter with WHERE
SELECT *
FROM Students
WHERE Gender = 'F';
--Comparison Operators
SELECT *
FROM Students
WHERE DateOfBirth > '2001-01-01';
--Multiple Conditions (AND)
SELECT *
FROM Students
WHERE Gender = 'F'
  AND IsActive = 1;
--Multiple Conditions (OR)
SELECT *
FROM Students
WHERE BloodGroup = 'A+'
   OR BloodGroup = 'O+';
--Conditions (IN)
SELECT *
FROM Students
WHERE BloodGroup IN ('A+', 'B+', 'O+');
--Multiple Conditions (BETWEEN)
SELECT *
FROM Students
WHERE DateOfBirth
BETWEEN '2000-01-01' AND '2002-12-31';
--Conditions (LIKE)
SELECT *
FROM Students
WHERE FirstName LIKE 'A%';

SELECT *
FROM Students
WHERE FirstName LIKE '%an%';
--ORDER BY
SELECT *
FROM Students
ORDER BY DateOfBirth DESC;
--TOP
SELECT TOP 3 *
FROM Students
ORDER BY DateOfBirth DESC;
--Calculated Column
SELECT
    FirstName,
    LastName,
    FirstName + ' ' + LastName AS FullName
FROM Students;