
--CREATE DATABASE QUIZ_PRACTICE

GO
USE QUIZ_PRACTICE
GO


/**********************************************************
**********************************************************/

----  Create table Admin ----
CREATE TABLE [Admin] (
	[admin_id] [int] PRIMARY KEY not null ,
	[email] [nvarchar] (250) not null,
	[password] [nvarchar] (250) not null
)


---- Create table User ----
CREATE TABLE [User] (
	[user_id] [int] IDENTITY (1,1) PRIMARY KEY not null,
	[email] [nvarchar] (250) not null,
	[image] [nvarchar] (250) not null,
	[password] [nvarchar] (250) not null,
	[display_name] [nvarchar] (250) not null,
	[created_date] [date] not null
)


---- Create table Subject -----
CREATE TABLE [Subject] (
	[subject_id] [int] IDENTITY (1,1) PRIMARY KEY not null,
	[subject_name] [nvarchar] (250) not null,
	[image] [nvarchar] (250) not null
)


----- Create table Course ------
CREATE TABLE [Course] (
	[course_id] [int] IDENTITY (1,1) PRIMARY KEY not null,
	[course_name] [nvarchar] (250) not null,
	[description] [nvarchar] (max) not null,
	[image] [nvarchar] (250) not null,
	[is_publish] [int] not null,
	[subject_id] [int] not null FOREIGN KEY REFERENCES [Subject]([subject_id])
)

---- Create table Errol ----
CREATE TABLE [Errol] (
	[user_id] [int] not null FOREIGN KEY REFERENCES [User]([user_id]),
	[course_id] [int] not null FOREIGN KEY REFERENCES [Course]([course_id]),
	[erroled_date] [date] not null,
	PRIMARY KEY ([user_id], [course_id])
)


---- Create table Quiz ----
CREATE TABLE [Quiz] (
	[quiz_id] [int] IDENTITY (1,1) PRIMARY KEY not null,
	[course_id] [int] not null FOREIGN KEY REFERENCES [Course]([course_id]),
	[quiz_name] [nvarchar] (250) not null,
	[duration] [int] not null,
	[description] [nvarchar] (max) not null,
	[created_date] [date] not null,
)


--- Create table ResultTest ----
CREATE TABLE [Result_test] (
	[user_id] [int] not null FOREIGN KEY REFERENCES [User]([user_id]),
	[quiz_id] [int] not null FOREIGN KEY REFERENCES [Quiz]([quiz_id]),
	[status] [nvarchar] (250) not null,
	[score] [int] not null,
	PRIMARY KEY ([user_id], [quiz_id])
)


---- Create table Question ----
CREATE TABLE [Question] (
	[question_id] [int] IDENTITY (1,1) not null PRIMARY KEY,
	[question_name] [nvarchar] (250) not null,
	[image] [nvarchar] (250),
	[quiz_id] [int] not null FOREIGN KEY REFERENCES [Quiz]([quiz_id]) 
)


---- Create table Answer -----
CREATE TABLE [Answer] (
	[answer_id] [int] IDENTITY (1,1) not null PRIMARY KEY,
	[answer_name] [nvarchar] (max) not null,
	[explain] [nvarchar] (max),
	[is_correct] [int] not null, ---nhận giá trị 0 và 1( 0: sai , 1: đúng)
	[question_id] [int] not null FOREIGN KEY REFERENCES [Question]([question_id])
)



---- Create table Mentor ----
CREATE TABLE [Mentor] (
	[mentor_id] [int] IDENTITY (1,1) not null PRIMARY KEY,
	[email] [nvarchar] (250) not null,
	[password] [nvarchar] (250) not null,
	[image] [nvarchar] (250) not null,
	[display_name] [nvarchar] (250) not null,
	[created_date] [date] not null
)



----- Create table Teach -----
CREATE TABLE [Teach] (
	[mentor_id] [int] not null FOREIGN KEY REFERENCES [Mentor]([mentor_id]),
	[course_id] [int] not null FOREIGN KEY REFERENCES [Course]([course_id]),
	[created_date] [nvarchar] (250) not null,
	[updated_date] [nvarchar] (250) not null,
	PRIMARY KEY ([created_date], [updated_date])
)


---- Create table Marketer ------
CREATE TABLE [Marketer] (
	[marketer_id] [int] IDENTITY (1,1) not null PRIMARY KEY,
	[email] [nvarchar] (250) not null,
	[password] [nvarchar] (250) not null,
	[image] [nvarchar] (250) not null,
	[display_name] [nvarchar] (250) not null,
	[created_date] [date] not null
)



---- Create table List_marketing ------
CREATE TABLE [List_marketing] (
	[lc_id] [int] IDENTITY (1,1) PRIMARY KEY not null,
	[public_date] [date] not null,
	[course_id] [int] not null FOREIGN KEY REFERENCES [Course]([course_id]),
)


---- Create table Marketing -----
CREATE TABLE [Marketing] (
	[marketing_id] [int] IDENTITY (1,1) PRIMARY KEY not null,
	[marketer_id] [int] not null FOREIGN KEY REFERENCES [Marketer]([marketer_id]),
	[lc_id] [int] not null FOREIGN KEY REFERENCES [List_marketing]([lc_id]),
	[posted_date] [date] not null,
	[updated_date] [date] not null,
	[image] [nvarchar] (250) not null,
	[content] [nvarchar] (max) not null,
	[tittle] [nvarchar] (max) not null
)
		

