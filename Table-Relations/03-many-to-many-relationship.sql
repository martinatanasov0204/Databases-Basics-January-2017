CREATE TABLE Students (
	StudentID int NOT NULL,
	Name nvarchar(20) NOT NULL,
)

CREATE TABLE Exams (
	ExamID int NOT NULL,
	Name nvarchar(20) NOT NULL,
)

CREATE TABLE StudentsExams (
	StudentID int NOT NULL,
	ExamID int NOT NULL
)

INSERT INTO Exams
VALUES (101,'SpringMVC'),
       (102,'Neo4j'),
	   (103,'Oracle 11g')

INSERT INTO Students
VALUES (1,'Mila'),
	   (2,'Toni'),
	   (3,'Ron')

INSERT INTO StudentsExams
VALUES (1,101),
       (1,102),
	   (2,101),
	   (3,103),
	   (2,102),
	   (2,103)

ALTER TABLE Exams
ADD CONSTRAINT PK_Exams
PRIMARY KEY (ExamID)

ALTER TABLE Students
ADD CONSTRAINT PK_Students
PRIMARY KEY (StudentID)

ALTER TABLE StudentsExams
ADD CONSTRAINT PK_StudentsExams
PRIMARY KEY (StudentID, ExamID)

ALTER TABLE StudentsExams
ADD CONSTRAINT FK_StudentID
FOREIGN KEY(StudentID)
REFERENCES Students(StudentID)

ALTER TABLE StudentsExams
ADD CONSTRAINT FK_ExamID
FOREIGN KEY(ExamID)
REFERENCES Exams(ExamID)