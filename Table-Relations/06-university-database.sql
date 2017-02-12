CREATE TABLE Subjects(
	SubjectID int PRIMARY KEY NOT NULL,
	SubjectName varchar(50) NOT NULL
)

CREATE TABLE Majors(
	MajorID INT PRIMARY KEY NOT NULL,
	Name VARCHAR(50) NOT NULL
)

CREATE TABLE Students (
	StudentID int PRIMARY KEY NOT NULL,
	StudentNumber int NOT NULL,
	StudentName varchar(50) NOT NULL,
	MajorID int NOT NULL,
	CONSTRAINT FK_MajorID FOREIGN KEY (MajorID) REFERENCES Majors(MajorID)
)

CREATE TABLE Payments(
	PaymentID int PRIMARY KEY NOT NULL,
	PaymentDate DATE NOT NULL,
	PaymentAmount DECIMAL(8,2) NOT NULL,
	StudentID int NOT NULL,
	CONSTRAINT FK_Payments_StudentID FOREIGN KEY (StudentID) REFERENCES Students(StudentID)
)

CREATE TABLE Agenda (
	StudentID int NOT NULL,
	SubjectID int NOT NULL,
	CONSTRAINT PK_Agenda PRIMARY KEY(StudentID,SubjectID),
	CONSTRAINT FK_Agenda_StudentID FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
	CONSTRAINT FK_SubjectID FOREIGN KEY (SubjectID) REFERENCES Subjects(SubjectID)
)