
CREATE TABLE if not exists student(  
    studentid int  PRIMARY KEY,
    name VARCHAR(255),
    email varchar (255) ,
    Phoneno VARCHAR(255),
    address VARCHAR(255)
);
CREATE TABLE if not exists course(  
    courseid int  PRIMARY KEY,
    coursename VARCHAR(255),
    email varchar (255) ,
    credits int
) 

CREATE TABLE if not exists Exam(  
    examid int  PRIMARY KEY,
    examdate DATE,
    examtime TIME  ,
    location VARCHAR(255)
   
);
CREATE TABLE if not exists Faculty(  
    facultyid int  PRIMARY KEY,
    name VARCHAR(255),
    email varchar (255) ,
    Phoneno VARCHAR(20),
    addres VARCHAR(255)
);
CREATE TABLE if not exists enrollment(  
    enrollmentid int PRIMARY KEY,
    studentid int FOREIGN KEY REFERENCES(student),
    courseid int FOREIGN KEY,
    enrollmentdate DATE
);

CREATE TABLE if not exists teaching(  
    teachingid int PRIMARY KEY,
    feacultyid int FOREIGN KEY,
    courseid int FOREIGN KEY
);
CREATE TABLE if not exists examregistration(  
    registrationid int PRIMARY KEY
    studentid int FOREIGN KEY,
    examid int FOREIGN KEY,
    registrationdate DATE
);CREATE TABLE if not exists examresult(  
    resultid int PRIMARY KEY,
    studentid int FOREIGN KEY,
    examid int FOREIGN KEY,
    score DECIMAL(5,2)
);

   