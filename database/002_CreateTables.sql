Use StudentDB;
GO

Create Table Students(
StudentID int Identity(1,1) primary key,
FirstName varchar(50) not null,
LastName varchar(50) not null,
Email varchar(100) unique,
Phone varchar(15),
DateOfBirth date not null,
Gender char(1) check(Gender in ('M', 'F', 'O')),
AdmissionDate date default GetDate(), -- Getdate will use todays date automatically
IsActive bit default 1
);
GO