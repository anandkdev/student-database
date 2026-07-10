UPDATE Students
SET Phone = '9998887776'
WHERE StudentID = 1;
GO

UPDATE Students
SET
    Phone = '9876512345',
    BloodGroup = 'AB+'
WHERE StudentID = 2;
GO

Update Students 
set 
	IsActive = 0
where BloodGroup = 'B-' and Gender = 'F';


SELECT *
FROM Students;