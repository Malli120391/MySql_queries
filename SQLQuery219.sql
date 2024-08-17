use My_own_db
go

create schema MasterSchema
go

create table MasterSchema.StudentInfo(
StuID int identity(1,1) primary key,
FirstName nvarchar(50),
LastName nvarchar(50),
Age int,
EmailAddress nvarchar(50),
Gender nvarchar(50)
)

create table MasterSchema.Instructor(
InstructorID int identity(1,1),
FirstName nvarchar(50),
LastName nvarchar(50),
EmailAddress nvarchar(50),
Gender nvarchar(50),
CONSTRAINT pk_masterschema_instructor primary key (InstructorID)
)

create table MasterSchema.Courses(
CourseID int primary key,
CourseNama nvarchar(50),
CourseDescription nvarchar(50),
InstructorID int foreign key REFERENCES MasterSchema.Instructor(InstructorID),
StuID int,
CONSTRAINT fk_masterschema_course_students foreign key(StuID) REFERENCES MasterSchema.StudentInfo(StuID)

)
