Create Database LoginDemoDB
Go
use LoginDemoDB

Create Table Users (
	Email nvarchar(100) PRIMARY KEY,
	[Password] nvarchar(20) NOT NULL,
	PhoneNumber nvarchar(20) NULL,
	BirthDate DATETIME NULL,
	[Status] int NULL,
	[Name] nvarchar(50) NOT NULL
)
Go

INSERT INTO dbo.Users VALUES ('talsi@talsi.com', '1234', '+972506665835','20-may-1976',1,'Tal Simon')
Go

Create Table Grades (
[TestDate] DATETIME NOT NULL,
[SubjectName] nvarchar(50) NOT NULL,
[Grade] int NOT NULL,
[StudentEmail] nvarchar(100),
CONSTRAINT FK_UsersToGrades FOREIGN KEY(StudentEmail)
REFERENCES Users(Email)
)
Go

INSERT INTO dbo.Grades VALUES ('23-may-2024', 'computer science', 100, 'talsi@talsi.com')
Go
INSERT INTO dbo.Grades VALUES ('29-may-2024', 'math', 68, 'talsi@talsi.com')
Go



--scaffold-DbContext "Server = (localdb)\MSSQLLocalDB;Initial Catalog=LoginDemoDB;Integrated Security=True;Persist Security Info=False;Pooling=False;Multiple Active Result Sets=False;Encrypt=False;Trust Server Certificate=False;Command Timeout=0" Microsoft.EntityFrameworkCore.SqlServer -OutPutDir Models -Context LoginDemoDbContext -DataAnnotations -force