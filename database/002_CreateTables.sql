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

    IsActive bit default 1,

    BloodGroup VARCHAR(5)
);
GO

CREATE TABLE Teachers
(
    TeacherID INT IDENTITY(1,1) PRIMARY KEY,

    FirstName VARCHAR(50) NOT NULL,

    LastName VARCHAR(50) NOT NULL,

    Email VARCHAR(100) UNIQUE,

    Phone VARCHAR(15),

    HireDate DATE NOT NULL
);
GO

CREATE TABLE Courses
(
    CourseID INT IDENTITY(1,1) PRIMARY KEY,

    CourseName VARCHAR(100) NOT NULL,

    Credits INT NOT NULL
        CHECK (Credits BETWEEN 1 AND 6),

    TeacherID INT NOT NULL,

    CONSTRAINT FK_Courses_Teachers
        FOREIGN KEY (TeacherID)
        REFERENCES Teachers(TeacherID)
);
GO

CREATE TABLE Enrollments
(
    EnrollmentID INT IDENTITY(1,1) PRIMARY KEY,

    StudentID INT NOT NULL,

    CourseID INT NOT NULL,

    EnrollmentDate DATE DEFAULT GETDATE(),

    Grade CHAR(2),

    CONSTRAINT FK_Enrollments_Students
        FOREIGN KEY (StudentID)
        REFERENCES Students(StudentID),

    CONSTRAINT FK_Enrollments_Courses
        FOREIGN KEY (CourseID)
        REFERENCES Courses(CourseID)
);
GO