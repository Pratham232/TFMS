create database TFMS;
use TFMS;
DROP TABLE IF EXISTS Trainer;
CREATE TABLE Trainer
(
	T_id INT PRIMARY KEY,
    T_name VARCHAR(35),
	Track ENUM('Java','dotnet','mainframe','testing'),
    T_qualification VARCHAR(30),
    T_experience INT
);



DROP TABLE IF EXISTS Associate ;
CREATE TABLE Associate
(
	A_id INT PRIMARY KEY,
    A_name VARCHAR(35),
    Track ENUM('Java','dotnet','mainframe','testing'),
    A_qualification VARCHAR(30),
    A_experience INT
);



DROP TABLE IF EXISTS Batch;
CREATE TABLE Batch
(
	Name_of_the_topic VARCHAR(45),
    Duration INT,
    Start_date DATE,
    End_date DATE,
    T_id INT REFERENCES Trainer(T_id),
    A_id INT REFERENCES Associate(A_id)
);



DROP TABLE IF EXISTS Question_management;
CREATE TABLE Question_management
(
	Q_id varchar(10) PRIMARY KEY,
    Q_section ENUM('Instructor','Course Material','Learning Effectiveness','Environment','Job Impact'),
    Q_text TEXT
);



DROP TABLE IF EXISTS Capture_feedback;
CREATE TABLE Capture_feedback
(
	Name_of_the_topic VARCHAR(45),
    Q_section ENUM('Instructor','Course Material','Learning Effectiveness','Environment','Job Impact'),
    Q_text TEXT,
    Rating INT,
    Q_id INT REFERENCES Question_management(Q_id),
    T_id INT REFERENCES Trainer(T_id),
    A_id INT REFERENCES Associate(A_id)
);
