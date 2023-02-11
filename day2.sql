drop database if assignment2;
create database if not assignment2;
use assignment2;
/* create table*/
create table department (
DepartmentID tinyint primary key auto_increment, 
DepartmentName varchar(50) not null unique
);
create table 'position'(
positionID int primary key auto_increment,
PositionName enum('dev', 'test','scrum master','PM')
);
create table 'account'(
AccountID int primary key auto_increment ,
Email varchar(50) unique not null,
username varchar(50) unique not null,
Fullname varchar(30) ,
DepartmentID tinyint auto_increment,
PositionID int auto_increment,
CreateDate date 
-- constraint foreign key (DepartmentID) references (departmentID)
-- constraint account_Department_fk foreign key(Department) references Department(DepartmentID),
-- constraint account_Position_fk foreign key(Department) references 'Position'(PositionID)
);
create table 'group'(
GroupID int primary key auto_increment,
GroupName varchar(30) not null,
CreatorID tinyint not null,
CreateData date
);
create table GroupAccount(
GroupID int primary key auto_increment,
AccountID int unique,
JoinDate date not null
-- constraint GroupAccount
);
create table TypeQuestion(
TypeID int primary key auto_increment,
TypeName enum('essay', 'Multiple-choice')
);
create table categoryquestion(
categoryID int primary key auto_increment,
categoryName varchar(50) not null
);
create table Question(
questionID  int primary key auto_increment,
Content varchar(100),
categoryID int not null,
TypeID int unique not null,
CreatorID tinyint ,
CreateDate date
);
create table Answer(
AnswerID int primary key auto_increment,
Content varchar(100) not null,
QuestionID int not null,
isCorrect ---
);
create table Exam(
ExamID int primary key auto_increment,
'code' tinyint(20) ,
title varchar(40) not full,
CategoryID int foreign key ,
Duration datetime,
CreatorID  tinyint foreign key,
CreateDate date
);
create table ExamQuestion(
ExamID tinyint primary key auto_increment,
QuestionID int 
);