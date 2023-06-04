

CREATE DATABASE QUIZ_PRACTICE

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


----  Create table Role ----
CREATE TABLE [Role] (
	[role_id] [int] PRIMARY KEY not null ,
	[role_name] [nvarchar] (250) not null,
)


---- Create table User ----
CREATE TABLE [User_type] (
	[user_id] [int] IDENTITY (1,1) PRIMARY KEY not null,
	[email] [nvarchar] (250) not null,
	[password] [nvarchar] (250) not null,
	[describe_yourself] [nvarchar] (MAX),
	[fullname] [nvarchar] (250) not null,
	[image] [nvarchar] (250),
	[display_name] [nvarchar] (250),
	[created_date] [nvarchar] (250) default getdate(),
	[address] [nvarchar] (250),
	[date_of_birth] [nvarchar] (250),
	[academic_level] [nvarchar] (250),
	[modify_date] [nvarchar] (250),
	[gender] [int] NOT NULL CHECK (gender IN (0, 1)),
	[role_id] [int] FOREIGN KEY REFERENCES [Role]([role_id]),
)


---- Create table Subject -----
CREATE TABLE [Subject] (
	[subject_id] [int] IDENTITY (1,1) PRIMARY KEY not null,
	[subject_name] [nvarchar] (250) not null,
	[image] [nvarchar] (250)
)
--------------------------------add
ALTER TABLE [Subject]
ADD status BIT not null DEFAULT 0;

ALTER TABLE [Subject]
ADD title nvarchar(255);

ALTER TABLE [Subject]
ADD description nvarchar(255);

----------------------------------add

--add slider ket noi voi subject
CREATE TABLE Slider (
 slider_id [int] IDENTITY (1,1) PRIMARY KEY not null,
 [subject_id] [int] FOREIGN KEY REFERENCES [Subject]([subject_id]) ,
 slider_url varchar(255),
 content nvarchar(255),
 note nvarchar(255),
 isShow BIT not null DEFAULT 0
)

---- Create table Mentor ----
CREATE TABLE [Mentor_type] (
	[mentor_id] [int] IDENTITY (1,1) PRIMARY KEY not null,
	[email] [nvarchar] (250) not null,
	[password] [nvarchar] (250) not null,
	[describe_yourself] [nvarchar] (MAX),
	[fullname] [nvarchar] (250) not null,
	[image] [nvarchar] (250),
	[display_name] [nvarchar] (250),
	[created_date] [nvarchar] (250) default getdate(),
	[address] [nvarchar] (250),
	[date_of_birth] [nvarchar] (250),
	[academic_level] [nvarchar] (250),
	[modify_date] [nvarchar] (250),
	[gender] [int] NOT NULL CHECK (gender IN (0, 1)),
	[specialize] [nvarchar] (MAX),
	[role_id] [int] FOREIGN KEY REFERENCES [Role]([role_id]),
)


----- Create table Course ------
CREATE TABLE [Course] (
	[course_id] [int] IDENTITY (1,1) PRIMARY KEY not null,
	[subject_id] [int] not null FOREIGN KEY REFERENCES [Subject]([subject_id]),
	[mentor_id] [int] FOREIGN KEY REFERENCES [Mentor_type]([mentor_id]) default null,
	[course_name] [nvarchar] (250) not null,
	[description] [nvarchar] (max),
	[image] [nvarchar] (250) not null,
	[is_publish] [int],
	[quantity] [int] default 0,
	[created_date] [nvarchar] (250) default (getdate()),
	[updated_date] [nvarchar] (250),
)

---- Create table Errol ----
CREATE TABLE [Errol] (
	[user_id] [int] not null FOREIGN KEY REFERENCES [User_type]([user_id]),
	[course_id] [int] not null FOREIGN KEY REFERENCES [Course]([course_id]),
	[erroled_date] [date] default (getdate()),
	PRIMARY KEY ([user_id], [course_id])
)

--- Create table ResultTest ----
CREATE TABLE [Result_test] (
	[user_id] [int] not null FOREIGN KEY REFERENCES [User_type]([user_id]),
	[course_id] [int] not null FOREIGN KEY REFERENCES [Course]([course_id]),
	[status] [nvarchar] (250) not null,
	[score] [int] not null,
	PRIMARY KEY ([user_id], [course_id])
)

---- Create table Question ----
CREATE TABLE [Question] (
	[question_id] [int] IDENTITY (1,1) not null PRIMARY KEY,
	[question_name] [nvarchar] (250) not null,
	[course_id] [int] not null FOREIGN KEY REFERENCES [Course]([course_id]) 
)

---- Create table Answer -----
CREATE TABLE [Answer] (
	[answer_id] [int] IDENTITY (1,1) not null PRIMARY KEY,
	[answer_name] [nvarchar] (max) not null,
	[is_correct] [int] not null, ---nhận giá trị 0 và 1( 0: sai , 1: đúng)
	[question_id] [int] not null FOREIGN KEY REFERENCES [Question]([question_id])
)


---- Create table Marketer ------
CREATE TABLE [Marketer_type] (
	[marketer_id] [int] IDENTITY (1,1) PRIMARY KEY not null,
	[email] [nvarchar] (250) not null,
	[password] [nvarchar] (250) not null,
	[describe_yourself] [nvarchar] (MAX),
	[fullname] [nvarchar] (250) not null,
	[image] [nvarchar] (250),
	[display_name] [nvarchar] (250),
	[created_date] [nvarchar] (250) default getdate(),
	[address] [nvarchar] (250),
	[date_of_birth] [nvarchar] (250),
	[academic_level] [nvarchar] (250),
	[modify_date] [nvarchar] (250),
	[gender] [int] NOT NULL CHECK (gender IN (0, 1)),
	[role_id] [int] FOREIGN KEY REFERENCES [Role]([role_id]),
)

---------------------------------------------------------------add

---- Create table Blog ------(List_marketing )
--DROP TABLE [List_marketing]
CREATE TABLE Blog (
	[blog_id] [int] IDENTITY (1,1) PRIMARY KEY not null,
	blog_name nvarchar(255) not null,
	[subject_id] [int] FOREIGN KEY REFERENCES [Subject]([subject_id])
)

---- Create table Post -----(Marketing)
-- DROP TABLE [Marketing]
CREATE TABLE Post (
	[post_id] [int] IDENTITY (1,1) PRIMARY KEY not null,
	[marketer_id] [int] not null FOREIGN KEY REFERENCES [Marketer_type]([marketer_id]),
	[blog_id] [int] not null FOREIGN KEY REFERENCES Blog([blog_id]),
	[tittle] [nvarchar] (max) not null,
	[posted_date] [date] default getdate(),
	[updated_date] [date],
	[image] [nvarchar] (250) not null,
	[content] [nvarchar] (max) not null,
	[short_content] [nvarchar] (250) not null,
	status BIT not null DEFAULT 0
	
)

---------------------------------------------------------------add
--add role	
INSERT INTO Role(role_id,role_name) VALUES(1,'admin')
INSERT INTO Role(role_id,role_name) VALUES(2,'mentor')
INSERT INTO Role(role_id,role_name) VALUES(3,'marketer')
INSERT INTO Role(role_id,role_name) VALUES(4,'user')

--add admin
insert into [Admin] values (1, 'tuanvm@gmail.com', '12345678')

--add user
INSERT INTO [dbo].[User_type]
           ([email] ,[password],[fullname],[display_name],[address],[date_of_birth],[gender],[role_id])
     VALUES
           ('ngohuunam2002@gmail.com','123456789','Ngo Huu Nam','NamNH',N'Việt Nam','2002-10-01',1,4)


INSERT INTO [dbo].[User_type]
           ([email] ,[password],[fullname],[display_name],[address],[date_of_birth],[gender],[role_id])
     VALUES
           ('nguyenvana@gmail.com','123456','Nguyen Van A','VanANguyen',N'Việt Nam','1999-10-01',1,4)


--add markerter
INSERT INTO [dbo].[Marketer_type]
           ([email] ,[password],[fullname],[display_name],[address],[date_of_birth],[gender],[role_id])
     VALUES
           ('TranThiB@gmail.com','12345','Tran Thi B','BTran',N'Việt Nam','1998-01-01',0,3)



--add mentor

INSERT INTO [dbo].[Mentor_type]
           ([email] ,[password],[fullname],[display_name],[address],[date_of_birth],[gender],[role_id])
     VALUES
           ('TranQuyBan@gmail.com','12345','BanKelly','QuyTran',N'Việt Nam','1990-01-01',0,2)


insert into [Subject] values ('C', './assets/images/categories/C.png', 0),
							 ('C++', './assets/images/categories/C++.png', 0),
							 ('C#', './assets/images/categories/CSharp.png', 0),
							 ('Java', './assets/images/categories/Java.png', 0),
							 ('Javascript', './assets/images/categories/Javascript.png', 0),
							 ('Python', './assets/images/categories/Python.png', 0)

insert into [Course]([subject_id], [course_name], [description], [image], [is_publish], [created_date]) values (1, N'Khóa học C cơ bản cho người mới bắt đầu', N'Khóa học C cơ bản giúp các bạn nắm chắc những kiến thức cơ bản của lập trình nói chung và lập trình C nói riêng để các bạn có nền tảng vững chắc để chinh phục con đường trở thành một lập trình viên', './assets/images/categories/CourseC(1).png', 0, '24/05/2023'),
													       (1, N'Lập trình C từ cơ bản đến nâng cao', N'Khóa học lập trình C từ cơ bản tới nâng cao dành cho người mới bắt đầu. Mục tiêu của khóa học này nhằm giúp các bạn nắm được các khái niệm căn cơ của lập trình, giúp các bạn có nền tảng vững chắc để chinh phục con đường trở thành một lập trình viên.', './assets/images/categories/CourseC(2).png', 0, '24/05/2023')

insert into [Question] values ('In C, correct order(s) of a function implementation. Choose at least one answer.', 1), ---- 1 ----
							  ('The while loop can be written as a for loop', 1), ---- 2 ----
							  ('Using break statement we can exit from', 1), ---- 3 ----
							  ('Declare a two dimensional integer array of two rows and four columns having some initial values', 1), ---- 4 ----
							  ('What number is equivalent to -4e3?', 1),
							  ('Which of the following statement are true with regards to the || operator?(select al correct answer', 2), ---- 5 ----
							  ('What is the incorrect statement about floating-point data types(float and double)?', 2), ---- 6 ----
							  ('Which one of the following is a variable, which can contain the address of the memory location of another variable?(choose the best answer)', 2), ---- 7 ----
							  ('How is a variable accessed from another file?', 2), ---- 8 ----
							  ('Which option is correct about the function scanf?', 2), ---- 9 ----
							  ('What value will x contain in the sample code below? int x=011|0x10;', 2)  ---- 10 ----

insert into [Answer] values ('a. Return type, body, function name, parameters', 0, 1),
						    ('b. Return type, body, parameters, function name', 0, 1),
							('c. Return type, function name, parameters, body', 1, 1),
							('d. Return type, parameters, body, function name', 0, 1),
							('a. True', 1, 2),
							('b. False', 0, 2),
							('a. for a loop', 1, 3),
							('b. an if statement', 0, 3),
							('c. the main() function', 0, 3),
							('d. a program', 0, 3),
							('a.int arr1[4][2]={{8,12},{22,45},{23,40},{44,79}}', 0, 4),
							('b.int arr1[2][4]={{8,12},{22,45},{23,40},{44,79}}', 1, 4),
							('c.int arr1[4][2]={{8,12};{22,45};{23,40};{44,79}}', 0, 4),
							('d.int arr1[][2]={{8,12},{22,45},{23,40},{44,79}}', 0, 4),
							('a. This operator is used to combine two conditional expressions which evaluate to true as a whole only if either of the two expressions evaluate to true.', 0, 5),
							('b. Only if both the expressions evaluate to false, the outcome is false', 0, 5),
							('c. If one of the conditional expressions return false, the outcome is false', 0, 5),
							('d. This operator is used to combine two logical expressions which evaluate to true if both individual expression are true', 0, 5),
							('a. Computers store floating-point data using separate components, including the mantissa and exponent', 0, 6),
							('b.Float-point means that the decimal point can float(that is, it can ba placed anywhere relative to the significant digits)', 1, 6),
							('c.Both data types(float and double) can represent arbitrarily small as well as arbitrarily large numbers', 0, 6),
							('d.None of the above', 0, 6),
							('a.String', 0, 7),
							('b.Struct', 1, 7),
							('c.Array', 0, 7),
							('d.Pointer', 0, 7),
							('a. The global variable is referenced via the auto specifier', 0, 8),
							('b. The global variable is referenced via the extern specifier', 1, 8),
							('c. The global variable is referenced via the pointer specifier', 0, 8),
							('d. The global variable is referenced via the ext specifie', 0, 8),
							('e. The global variable is referenced via the global specifier', 0, 8),
							('a. EOF indicates that scanf filled all addresses successfully', 0, 9),
							('b. Scanf returns the number of addresses successfully filled of EOF', 1, 9),
							('c.Return avoid type', 0, 9),
							('a.27', 0, 10),
							('b.19', 0, 10),
							('c.25', 1, 10),
							('d.13', 0, 10),
							('e.3', 0, 10)
