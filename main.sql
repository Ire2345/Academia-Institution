CREATE TABLE Instituitions(
InstituitionID INT PRIMARY KEY,
Name VARCHAR(255),
Location VARCHAR(255),
Contact VARCHAR(255),
Website VARCHAR(255)
);

CREATE TABLE Courses(
CourseID INT PRIMARY KEY,
InstituitionID INT,
CourseName VARCHAR(255),
CourseCode VARCHAR(255),
Department VARCHAR(100),
Description TEXT,
CreditHours INT,
FOREIGN KEY (InstituitionID) REFERENCES Instituitions(InstituitionID)
);

CREATE TABLE Students(
StudentID INT PRIMARY KEY,
FirstName VARCHAR(100),
SecondName VARCHAR(100),
DOB DATE,
Contact VARCHAR(200),
EnrollmentDate DATE,
InstituitionID INT,
FOREIGN KEY (InstituitionID) REFERENCES Instituitions(InstituitionID)
);


CREATE TABLE Faculty(
FacultyID INT PRIMARY KEY,
FirstName VARCHAR(100),
SecondName VARCHAR(100),
DOB DATE,
Contact VARCHAR(200),
HireDate DATE,
InstituitionID INT,
Department VARCHAR(100),
FOREIGN KEY (InstituitionID) REFERENCES Instituitions(InstituitionID)
);

CREATE TABLE Enrollments(
EnrollmentID INT PRIMARY KEY,
StudentID INT,
CourseID INT,
EnrollmentDate DATE,
FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);

CREATE TABLE Assignments(
AssignmentID INT PRIMARY KEY,
CourseID INT,
Title VARCHAR(255),
Description TEXT,
DueDate DATE,
FOREIGN KEY(CourseID) REFERENCES Courses(CourseID)
);

CREATE TABLE Grades(
GradeID INT PRIMARY KEY,
StudentID INT,
AssignmentID INT,
Score DECIMAL(5,2),
FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
FOREIGN KEY (AssignmentID) REFERENCES Assignments(AssignmentID)
);

CREATE TABLE Events(
EventID INT PRIMARY KEY,
InstituitionID INT,
EventName VARCHAR(255),
EventDate DATE,
Description TEXT,
FOREIGN KEY (InstituitionID) REFERENCES Instituitions(InstituitionID)
);

CREATE TABLE FacultyCourses(
FacultyCourseID INT PRIMARY KEY,
FacultyID INT,
CourseID INT,
FOREIGN KEY (FacultyID) REFERENCES Faculty(FacultyID),
FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);

INSERT INTO Instituitions(InstituitionID, Name, Location, Contact, Website)
VALUES (1,'Univeristy of Texas','Texas, United States','TexasUni@email.com','https://www.TexasUni.com'),
       (2,'Harvard University','Massachusetts, United States','HarvardUni@email.com','https://www.HarvardUni.com'),
       (3,'University of California',' California, United States','CaliforniaUni@email.com','https://www.CaliforniaUni.com'),
       (4,'University of Oxford','Oxford, United Kingdom','OxfordUni@email.com','https://www.OxfordUni.com'),
       (5,'University of Florida','Florida, United States','FloridaUni@email.com','https://www.FloridaUni.com'),
       (6,'University of Cambridge','Cambridge, United Kingdom','CambridgeUni@email.com','https://www.CambridgeUni.com'),
       (7,'University of London','London, United Kingdom','LondonUni@email.com','https://www.LondonUni.com'),
       (8,'University of Ohio','Ohio, United States','OhioUni@email.com','https://www.OhioUni.com'),
       (9,'University of Georgia','Georgia, United States','GeorgiaUni@email.com','https://www.GeorgiaUni.com'),
       (10,'University of Illnois','Illnois, United States','IllnoisUni@email.com','https://www.IllnoisUni.com'),
       (11,'University of Alaska','Alaska, United States','AlaskaUni@email.com','https://www.AlaskaUni.com'),
       (12,'University of Toronto','Toronto, Canada','TorontoUni@email.com','https://www.TorontoUni.com'),
       (13,'University of New York','New York City, United States','NewYorkUni@email','https://www.NewYorkUni.com'),
       (14,'University of Tokyo','Tokyo, Japan','TokyoUni@email.com','https://www.TokyoUni.com'),
       (15,'University of Seoul','Seoul, South Korea','SeoulUni@email.com','https://www.SeoulUni.com'),
       (16,'University of Mumbai','Mumbai, India','MumbaiUni@email.com','https://www.MumbaiUni.com'),
       (17,'University of Moscow','Moscow, Russia','MoscowUni@email.com','https://www.MoscowUni.com'),
       (18,'University of Arizona','Arizona, United States','ArizonaUni@email.com','https://www.ArizonaUni.com'),
       (19,'University of Paris','Paris, France','ParisUni@email.com','https://www.ParisUni.com'),
       (20,'University of Michigan','Michigan, United States','MichiganUni@email.com','https://www.MichiganUni.com');

INSERT INTO Courses(CourseID,InstituitionID, CourseName, CourseCode, Department, Description, CreditHours)
VALUES (1,1,'Computing Science','CS100','Technology','Undergraduate Computing Science Degree',9),
       (2,2,'Physics','PHYS101','Science','Undergraduate Physics Degree',10),
       (3,3,'Maths','MATH102','Mathematics','Undergraduate Maths Degree',9),
       (4,4,'Chemistry','CHEM103','Science','Undergraduate Chemistry Degree',7),
       (5,5,'Biology', 'BIO104','Science','Undergraduate Biology Degree',8), 
       (6,6,'Electronic Engineering','EE105','Engineering','Undergraduate Electronic Engineering Degree',11),
       (7,7,'Aerospace Engineering','AE106','Engineering','Undergraduate Aerospace Engineering Degree',9),
       (8,8,'Mechanical Engineering','ME107','Engineering','Undergraduate Mechanical Engineering Degree',12),
       (9,9,'Software Engineering','SE108','Engineering','Undergraduate Software Engineering Degree',8),
       (10,10,'Medicine','M109','Science','Medicine Degree',15),
       (11,11,'Business','B110','Finance and Economics','Undergraduate Business Degree',13),
       (12,12,'Finance','F111','Finance and Economics','Undergraduate Finance Degree',6),
       (13,13,'Economics','E112','Finance and Economics','Undergraduate Economics Degree',7),
       (14,14,'History','H113','Social Subjects','Undergraduate History Degree',8),
       (15,15,'Politics','P114','Social Subjects','Undergraduate Politics Degree',9),
       (16,16,'Geography','G115','Social Subjects','Undergraduate Geography Degree',10),
       (17,17,'Modern Studies','MS116','Social Subjects','Undergraduate Modern Studies Degree',8),
       (18,18,'English','ENG117','Languages','English Degree',12),
       (19,19,'Spanish','SPANISH118','Languages','Spanish Degree',8),
       (20,20,'French','FRENCH119','Languages','French Degree',8);


INSERT INTO Students(StudentID, FirstName, SecondName, DOB, Contact, EnrollmentDate, InstituitionID)
VALUES (1, 'John', 'Doe', '1995-05-15', 'John@example.com', '2021-09-01', 1),
    (2, 'Jane', 'Smith', '1998-02-20', 'Jane@example.com', '2022-01-15', 1),
    (3, 'Bob', 'Johnson', '1997-11-10', 'Bob@example.com', '2022-03-10', 2),
    (4, 'Alice', 'Brown', '1999-07-30', 'Alice@example.com', '2022-09-05', 3),
    (5, 'Eva', 'Miller', '1996-04-25', 'Eva@example.com', '2021-08-20', 2),
    (6,'Brandon','Shine','2000-09-27','Brandon@email.com','2022-07-21',3),
    (7,'Frank','Ocean','2001-05-25','Frank@email.com','2021-06-14',4),
    (8,'Leah','Love','1997-08-28','Leah@email.com','2021-03-19',5),
    (9,'Stelah','Steam','1996-11-12','Stelah@email.com','2022-09-17',4),
    (10,'Eli','Extra','1999-10-09','Eli@email.com','2022-01-25',5),
    (11,'Francesca','Rodriguez','2003-09-18','Francesca@email.com','2022-11-24',6),
    (12,'Vanessa','Pretty','2004-08-15','Vanessa@email.com','2021-02-21',7),
    (13,'Esmerelda','Frale','2002-05-17','Esmerelda@email.com','2022-04-07',6),
    (14,'Senku','Ishigami','1998-09-23','Senku@email.com','2021-08-10',7),
    (15,'Taiju','Shizuku','2003-11-26','Taiju@email.com','2022-03-12',8),
    (16,'Yuzuhira','Shazam','2001-10-06','Yuzuhira@email.com','2021-08-29',8),
    (17,'Bombaclaat','Rastafari','1997-05-20','Bombaclaat@email.com','2022-10-18',9),
    (18,'Bob','Marley','2002-05-04','Bob@email.com','2021-07-13',10),
    (19,'Harmony','Love','2000-06-10','Harmony@email.com','2021-11-22',9),
    (20,'Cookie','Sunshine','2005-03-07','Cookie@email.com','2022-04-27',10),
    (21,'Billy','Beam','2000-02-28','Billy@email.com','2022-12-30',11),
    (22,'Weather','Weak','1999-04-18','Weather@email.com','2021-07-12',12),
    (23,'Reel','Red','2000-03-05','Reel@email.com','2022-03-09',11),
    (24,'Dustin','Destinty','2001-09-04','Dustin@email.com','2021-08-18',12),
    (25,'Dean', 'Dealer','2002-10-03','Dean@email.com','2022-05-09',13),
    (26,'Max','Wheels','2004-10-17','Max@email.com','2021-02-10',14),
    (27, 'Xi', 'Li','2005-02-28','Xi@email.com','2022-03-19',13),
    (28,'Ali','Shiny','2004-10-11','Ali@email.com','2021-02-22',14),
    (29,'Sean','Leaves','2001-07-27','Sean@email.com','2022-11-03',15),
    (30,'Gia','Gym','2003-01-19','Gia@email.com','2021-11-06',16),
    (31,'Levi','Legs','1998-04-23','Levi@email.com','2022-08-19',15),
    (32,'Freddie','Flee','1999-04-21','Freddie@email.com','2021-07-10',16),
    (33, 'Heather','Hope','1997-09-18','Heather@email.com','2022-12-01',17),
    (34,'Keem','Keith','1999-03-26','Keem@email.com','2021-05-19',18),
    (35,'Zack','Zeal','2003-05-31','Zack@email.com','2022-06-08',17),
    (36,'Jack','Jeel','2001-03-20','Jack@email.com','2021-03-29',18),
    (37,'Craig','Cell','2003-08-23','Craig@email.com','2022-02-11',19),
    (38,'Brag','Beef', '2002-01-29','Brag@email.com','2021-03-02',20),
    (39,'Oliver','Oil','1997-10-21','Oliver@email.com','2022-02-13',19),
    (40,'Trent','Teal','1998-09-04','Trent@email.com','2021-03-07',20);
    

INSERT INTO Faculty(FacultyID, FirstName, SecondName, DOB, Contact, HireDate, InstituitionID, Department)
VALUES (1, 'Prof', 'Smith', '1970-09-05', 'prof.smith@example.com', '2015-02-15', 1, 'Technology'),
    (2, 'Dr', 'Johnson', '1985-03-20', 'dr.johnson@example.com', '2010-05-10', 2, 'Science'),
    (3, 'Prof', 'White', '1978-06-15', 'prof.white@example.com', '2018-01-20', 1, 'Mathematics'),
    (4, 'Dr', 'Brown', '1980-11-30', 'dr.brown@example.com', '2017-09-03', 1, 'Science'),
    (5, 'Prof', 'Clark', '1975-08-10', 'prof.clark@example.com', '2014-03-01', 4, 'Social Subjects'),
    (6, 'Dr', 'Brian','1970-09-15','dr.brian@email.com','2012-07-10',2,'Science'),
    (7,'Prof','Dune','1977-05-19','prof.dune@email.com','2011-02-14',2,'Languages'),
    (8,'Dr', 'Weasel', '1988-08-23','dr.weasel@email.com','2015-09-20',3,'Science'),
    (9,'Prof','Cherry','1993-07-27','prof.cherry@email.com','2017-05-18',3,'Engineering'),
    (10,'Dr', 'Quan','1982-11-22','dr.quan@email.com','2018-04-28',3,'Science'),
    (11, 'Prof','Daquan','1989-03-22','prof.daquan@email.com','2020-10-18',4,'Technology'),
    (12,'Dr','Cherry','1987-04-28','dr.cherry@email.com','2021-12-13',4,'Science'),
    (13,'Dr','Eli','1991-01-14','dr.eli@email.com','2020-05-25',20,'Science'),
    (14,'Prof','Peel','1993-09-16','prof.peel@email.com','2017-07-12',5,'Languages'),
    (15,'Prof','William','1990-10-29','prof.william@email.com','2018-10-14',5,'Engineering'),
    (16,'Dr','Cheese','1995-06-06','dr.cheese@email.com','2011-02-21',5,'Science'),
    (17,'Prof','Dustin','1992-01-24','prof.dustin@email.com','2013-07-18',6,'Finance and Economics'),
    (18,'Prof','Leo','1990-09-19','prof.leo@email.com','2019-05-15',6,'Engineering'),
    (19,'Dr','Gio','1979-06-12','dr.gio@email.com','2018-09-11',6,'Science'),
    (20,'Prof','Siham','1980-09-16','prof.siham@email.com','2016-04-22',7,'Social Subjects'),
    (21,'Dr','Hercules','1982-08-08','dr.hercules@email.com','2018-11-11',7,'Science'),
    (22,'Prof','Reiss','1983-03-18','prof.reiss@email.com','2014-07-19',7,'Finance and Economics'),
    (23,'Prof','Deal','1984-03-04','prof.deal@email.com','2015-04-17',8,'Languages'),
    (24,'Dr','Betty','1985-07-20','dr.betty@email.com','2019-10-18',8,'Science'),
    (25,'Prof','Jackie','1986-05-11','prof.jackie@email.com','2013-03-19',8,'Finance and Economics'),
    (26,'Dr','Colin','1987-06-13','dr.colin@email.com','2014-06-13',9,'Science'),
    (27,'Prof','Kiaran','1988-04-21','prof.kiaran@email.com','2012-04-04',9,'Engineering'),
    (28,'Prof','Vicky','1979-02-11','prof.vicky@email.com','2014-08-05',9,'Technology'),
    (29,'Prof','Akin','1990-03-16','prof.akin@email.com','2010-03-23',10,'Social Subjects'),
    (30,'Prof','Neon','1980-03-20','prof.neon@email.com','2011-12-23',10,'Finance and Economics'),
    (31,'Dr','Strange','1984-09-07','dr.strange@email.com','2013-04-26',10,'Technology'),
    (32,'Prof','Ola','1985-04-01','prof.ola@email.com','2010-03-01',11,'Languages'),
    (33,'Prof','Zach','1978-05-25','prof.zach@email.com','2014-02-17',11,'Engineering'),
    (34,'Dr','James','1991-09-08','dr.james@email.com','2016-04-09',11,'Science'),
    (35,'Prof','Alan','1992-06-23','prof.alan@email.com','2017-03-03',12,'Technology'),
    (36,'Prof','Lexi','1990-08-19','prof.lexi@email.com','2015-04-17',12,'Engineering'),
    (37,'Dr','Qi','1994-08-30','dr.qi@email.com','2019-06-03',12,'Science'),
    (38,'Prof','Tristan','1981-07-17','prof.tristan@email.com','2020-12-25',13,'Science'),
    (39,'Prof','Matthew','1980-03-23','prof.matthew@email.com','2018-09-24',13,'Technology'),
    (40,'Dr','Dhruv','1978-05-11','dr.dhruv@email.com','2012-04-15',13,'Science'),
    (41,'Prof','Fred','1976-11-20','prof.fred@email.com','2014-08-19',14,'Social Subjects'),
    (42,'Prof','Charlie','1974-03-23','prof.charlie@email.com','2016-02-20',14,'Engineering'),
    (43,'Prof','Xiao','1973-06-13','prof.xiao@email.com','2018-04-11',14,'Technology'),
    (44,'Dr','Howie','1972-07-10','dr.howie@email.com','2019-03-18',15,'Science'),
    (45,'Prof','Larry','1973-09-11','prof.larry@email.com','2020-09-14',15,'Technology'),
    (46,'Prof','Chad','1977-07-25','prof.chasd@email.com','2021-05-11',15,'Engineering'),
    (47,'Dr','Chloe','1981-11-24','dr.chloe@email.com','2020-04-13',16,'Science'),
    (48,'Prof','Nati','1980-03-29','prof.nati@email.com','2022-05-10',16,'Technology'),
    (49,'Prof','Victoria','1987-06-30','prof.victoria@email.com','2021-09-16',16,'Engineering'),
    (50,'Prof','Creek','1985-09-11','prof.creek@email.com','2023-04-24',17,'Finance and Economics'),
    (51,'Prof','Jerry','1984-04-21','prof.jerry@email.com','2022-07-10',17,'Technology'),
    (52,'Prof','Dylan','1983-10-17','prof.dylan@email.com','2021-06-12',17,'Social Subjects'),
    (53,'Dr','Mack','1982-09-09','dr.mack@email.com','2022-04-13',18,'Science'),
    (54,'Prof','Wade','1980-03-07','prof.wade@email.com','2021-08-09',18,'Social Subjects'),
    (55,'Prof','Declan','1979-02-11','prof.declan@email.com','2022-05-06',18,'Technology'),
    (56,'Dr','Neil','1990-10-28','dr.neil@email.com','2023-09-12',19,'Science'),
    (57,'Prof','Ugo','1983-09-17','prof.ugo@email.com','2023-04-16',19,'Finance and Economics'),
    (58,'Prof','Caitlin','1989-04-14','prof.caitilin@email.com','2022-10-04',19,'Engineering'),
    (59,'Prof','Qasim','1981-03-11','prof.qasim@email.com','2021-04-19',20,'Technology'),
    (60,'Prof','Frankie','1980-06-10','dr.frankie@email.com','2023-05-16',20,'Social Subjects');
    
    
  

INSERT INTO Enrollments(EnrollmentID, StudentID, CourseID, EnrollmentDate)
VALUES (1,1,2,'2021-09-01'),
       (2,2,1,'2022-01-15'),
       (3,3,4,'2022-03-10'),
       (4,4,3,'2022-09-05'),
       (5,5,6,'2021-08-20'),
       (6,6,5,'2022-07-21'),
       (7,7,9,'2021-06-14'),
       (8,8,7,'2021-03-19'),
       (9,9,8,'2022-09-17'),
       (10,10,12,'2022-01-25'),
       (11,11,10,'2022-01-25'),
       (12,12,11,'2021-02-21'),
       (13,13,14,'22-04-07'),
       (14,14,13,'2021-08-10'),
       (15,15,16,'2022-03-12'),
       (16,16,15,'2021-08-29'),
       (17,17,18,'2022-10-18'),
       (18,18,17,'2021-07-13'),
       (19,19,20,'2021-11-22'),
       (20,20,19,'2022-04-27'),
       (21,21,1,'2022-12-30'),
       (22,22,2,'2021-07-12'),
       (23,23,3,'2022-03-09'),
       (24,24,5,'2021-08-18'),
       (25,25,7,'2022-05-09'),
       (26,26,6,'2021-02-10'),
       (27,27,9,'2022-03-19'),
       (28,28,8,'2021-02-22'),
       (29,29,10,'2022-11-03'),
       (30,30,11,'2021-11-06'),
       (31,31,13,'2022-08-19'),
       (32,32,12,'2021-07-10'),
       (33,33,15,'2022-12-01'),
       (34,34,14,'2021-05-19'),
       (35,35,4,'2022-06-08'),
       (36,36,16,'2021-03-29'),
       (37,37,18,'2022-02-11'),
       (38,38,17,'2021-03-02'),
       (39,39,19,'2022-02-13'),
       (40,40,20,'2021-03-07');

INSERT INTO Assignments(AssignmentID, CourseID, Title, Description, DueDate)
VALUES (1,1,'Hackathon','Solve 3 hackathon type questions','2024-10-02'),
       (2,1,'Graph','Create your first graph to display a dataset','2024-09-15'),
       (3,1,'Website','Create a website similar to one on the internet','2024-09-21'),
       (4,2,'Motion','Complete homework on laws of motion','2024-09-21'),
       (5,2,'Electricity','Complete homework on electricity','2024-09-21'),
       (6,2,'Radioactivity and Waves','Complete homework on radioactivity and waves','2024-09-21'),
       (7,3,'Calculus','Complete the first 10 questions','2024-09-17'),
       (8,3,'Matrices','Complete homework on matrices','2024-09-21'),
       (9,3,'Binomial Theoreom','Complete homework on Binomial Theoreom','2024-09-21'),
       (10,4,'Periodic Table','Complete questions on the periodic table','2024-09-26'),
       (11,4,'Electron, Protons and Neutrons (in-depth)','Complete questions on the sub-atomic particles','2024-10-17'),
       (12,4,'Experimental Procedures','Watch the videos provided and answer questions provided','2024-09-29'),
       (13,5,'Animals','Complete questions on the biology of animals','2024-09-30'),
       (14,5,'Humans(Anatomy)','Complete questions on Anatomy','2024-10-04'),
       (15,5,'Plants/other forms of life','Complete questions on plants/other forms of life','2024-10-06'),
       (16,6,'Programming robots','Program a robot to work','2024-10-15'),
       (17,6,'Robot''s Elctricity','Work on the robot''s electrical system','2024-10-20'),
       (18,6,'Robot Testing','Test out the robot and see how it works','2024-10-20'),
       (19,7,'Aerospace VR','Play with Aerosapce VR on a "real plane"','2024-09-15'),
       (20,7,'Plane flying testing','Practice flying a plane for the first time','2024-11-27'),
       (21,7,'Making a toy plane','Manufacture a toy plane','2024-11-19'),
       (22,8,'Create vehicles','Manufacture a toy car','2024-11-16'),
       (23,8,'Fixing a real car','Fix a real car at a mechanic','2024-12-09'),
       (24,8,'Team building a car','Manufacture a real working car with a group of people','2025-05-30'),
       (25,9,'Create a website','Make a website for a useful cause','2024-09-23'),
       (26,9,'Company''s website','Change software within a company''s website','2024-10-02'),
       (27,9,'Solve Interview Questions','Solve 5 interview questions from companies','2024-11-26'),
       (28,10,'Anatomy','Complete questions based on the human body','2024-09-21'),
       (29,10,'Medical Equipment','Answer questions on how to use medical equipment','2024-10-05'),
       (30,10,'Weekly Tests','Complete questions on weekly tests on medicine topics','2024-10-10'),
       (31,11,'Strategies to start a business','Find the best way to start a business','2024-09-29'),
       (32,11,'Profits','Analyse and make calculation of certain businesses'' profits', '2024-09-27'),
       (33,11,'Economy','Find solutions to fix each country''s economy','2024-11-28'),
       (34,12,'Saving','Find strategies to save your money smartly','2024-10-29'),
       (35,12,'Spending','Spend your money within a budget and write an essay on how you did it','2024-11-19'),
       (36,12,'Earn','Find a job and earn good amount of money','2024-11-18'),
       (37,13,'Economic state of the UK','Research on the economic state of the UK','2024-12-09'),
       (38,13,'Economic history of the world','Research on what the world''s economy has been like for many years','2024-12-18'),
       (39,13,'Economy crises','Research on the economy crises on 5 countries around the world','2024-11-28'),
       (40,14,'World War 1','Write a report summarising world war 1','2024-10-23'),
       (41,14,'World War 2','Write a report summarising world war 2','2024-11-23'),
       (42,14,'Country relationships','Write an essay about the relationship between the UK and USA from 1950 - 2024','2024-11-28'),
       (43,15,'North Korea','Write an essay on how north korea is sending balloons to spy on countries','2024-10-19'),
       (44,15,'Russia Relations with China','Write an essay on how Russia is with China','2024-09-29'),
       (45,15,'President Elections in USA','Write an article about the president election','2024-12-06'),
       (46,16,'Size of the earth land','Calculate the size of the land on earth','2024-11-29'),
       (47,16,'Weather forecast','Predict the weather of 5 countries in next few days based on the geography','2024-10-20'),
       (48,16,'Famine','Research countries with good land to grow crop and countries that are not','2024-09-28'),
       (49,17,'Ukraine War','Write an essay about the Ukranian War bewteen Ukraine and Russia','2024-10-27'),
       (50,17,'Israel and Gaza','Write an article about what''s going on between Israel and Gaza','2024-11-16'),
       (51,17,'China and Taiwan','Write an essay about the China and Taiwanese conflict','2024-10-09'),
       (52,18,'English Vocabulary','Complete the homework to expand on your vocabulary','2024-10-28'),
       (53,18,'Reading Extract','Answer Questions from a reading extract','2024-11-19'),
       (54,18,'Book','Study a book and write an essay on it','2024-12-12'),
       (55,19,'Listening','Complete the listening homework','2024-09-23'),
       (56,19,'Reading','Complete The reading homework','2024-09-27'),
       (57,19,'Speaking','Complete the speaking homework','2024-09-30'),
       (58,20,'Listening','Complete the listening homework','2024-10-13'),
       (59,20,'Reading','Complete the reading homework','2024-09-24'),
       (60,20,'Speaking','Complete the speaking homework','2024-10-11');

INSERT INTO Grades(GradeID, StudentID, AssignmentID, Score)
VALUES (1,1,1,'80.0'),
       (2,1,2,'70.0'),
       (3,1,3,'65.0'),
       (4,2,4,'75.0'),
       (5,2,5,'85.0'),
       (6,2,6,'95.0'),
       (7,3,7,'60.0'),
       (8,3,8,'70.0'),
       (9,3,9,'75.0'),
       (10,4,10,'80.0'),
       (11,4,11,'55.0'),
       (12,4,12,'85.0'),
       (13,5,13,'90.0'),
       (14,5,14,'55.0'),
       (15,5,15,'67.0'),
       (16,6,16,'69.0'),
       (17,6,17,'50.0'),
       (18,6,18,'78.0'),
       (19,7,19,'91.0'),
       (20,7,20,'68.0'),
       (21,7,21,'84.0'),
       (22,8,22,'90.0'),
       (23,8,23,'63.0'),
       (24,8,24,'71.0'),
       (25,9,25,'72.0'),
       (26,9,26,'79.0'),
       (27,9,27,'83.0'),
       (28,10,28,'66.0'),
       (29,10,29,'78.0'),
       (30,10,30,'86.0'),
       (31,11,31,'87.0'),
       (32,11,32,'88.0'),
       (33,11,33,'84.0'),
       (34,12,34,'49.0'),
       (35,12,35,'67.0'),
       (36,12,36,'78.0'),
       (37,13,37,'89.0'),
       (38,13,38,'91.0'),
       (39,13,39,'95.0'),
       (40,14,40,'96.0'),
       (41,14,41,'92.0'),
       (42,14,42,'83.0'),
       (43,15,43,'99.0'),
       (44,15,44,'55.0'),
       (45,15,45,'89.0'),
       (46,16,46,'88.0'),
       (47,16,27,'98.0'),
       (48,16,48,'62.0'),
       (49,17,49,'51.0'),
       (50,17,50,'50.0'),
       (51,17,51,'48.0'),
       (52,18,52,'44.0'),
       (53,18,53,'76.0'),
       (54,18,54,'93.0'),
       (55,19,55,'94.0'),
       (56,19,56,'95.0'),
       (57,19,57,'65.0'),
       (58,20,58,'94.0'),
       (59,20,59,'92.0'),
       (60,20,60,'39.0');

INSERT INTO Events(EventID, InstituitionID, EventName, EventDate, Description)
VALUES (1,1,'Careers Fair','2024-09-25','Find careers paths for you'),
       (2,2,'Sports Fair','2024-09-27','Find sports that you''d be interested in joining'),
       (3,3,'Board Game','2024-09-30','Play board games with new people'),
       (4,4,'STEM Fair','2024-10-09','Meet people in the STEM industry'),
       (5,5,'Art Fair','2024-11-13','Discover New Art Work'),
       (6,6,'Club Fair','2024-09-28','Find clubs you''d like to join'),
       (7,7,'D&D Event','2024-09-30','Play D&D with different people'),
       (8,8,'Job Fair','2024-09-29','Get employed at a job'),
       (9,9,'Hackathon','2024-10-21','Solve a problem and win a prize'),
       (10,10,'NightClub','2024-09-27','Socialise and hangout with people'),
       (11,11,'Free Food','2024-09-27','Get free food and hang out with others'),
       (12,12,'Free drinks','2024-09-26','Get free drinks and hangout with people'),
       (13,13,'Joke Night','2024-09-25','Get on stage and tell jokes'),
       (14,14,'Welcome Ceremony','2024-09-30','You''ll be welcomed into out instituition'),
       (15,15,'Library Fair','2024-10-05','Find new books that you''d like to read'),
       (16,16,'Religious Commons','2024-11-07','Meet people with different religions'),
       (17,17,'Gym Fair','2024-09-24','Meet people who like to go to the gym'),
       (18,18,'Engineering Fair','2024-09-29','Meet Professional Engineers'),
       (19,19,'Fresher Fair','2024-10-20','Get free stuff you need'),
       (20,20,'Social Fair','2024-09-27','Talk to and meet new people');


INSERT INTO FacultyCourses(FacultyCourseID, FacultyID, CourseID)
VALUES (1,1,2),
       (2,2,3),
       (3,3,1),
       (4,4,5),
       (5,5,6),
       (6,6,7),
       (7,7,4),
       (8,8,9),
       (9,9,8),
       (10,10,11),
       (11,11,10),
       (12,12,13),
       (13,13,12),
       (14,14,15),
       (15,15,16),
       (16,16,17),
       (17,17,14),
       (18,18,19),
       (19,19,18),
       (20,20,1),
       (21,21,20),
       (22,22,3),
       (23,23,2),
       (24,24,5),
       (25,25,4),
       (26,26,7),
       (27,27,6),
       (28,28,9),
       (29,29,8),
       (30,30,10),
       (31,31,12),
       (32,32,11),
       (33,33,13),
       (34,34,15),
       (35,35,14),
       (36,36,16),
       (37,37,18),
       (38,38,17),
       (39,39,19),
       (40,40,20),
       (41,41,1),
       (42,42,2),
       (43,43,3),
       (44,44,5),
       (45,45,6),
       (46,46,4),
       (47,47,8),
       (48,48,7),
       (49,49,9),
       (50,50,10),
       (51,51,12),
       (52,52,14),
       (53,53,16),
       (54,54,18),
       (56,56,20),
       (57,57,11),
       (58,58,13),
       (59,59,15),
       (60,60,17);




-- SQL queries of above data


-- 2. Find all courses offered by a specific instituition
SELECT CourseName, Department, Description
FROM Courses
    
WHERE InstituitionID = 2;

-- 4. List all faculty members in the Technology Department:
SELECT *FROM Faculty WHERE Department = 'Technology';

-- 5. Get a list of students enrolled in a specific course (e.g., Coding):
SELECT Students.FirstName, Students.SecondName
FROM Students
JOIN Enrollments ON Students.StudentID = Enrollments.StudentID
JOIN Courses ON Enrollments.CourseID = Courses.CourseID
WHERE Courses.CourseName = 'Computing Science';

-- 6. Retrieve the assignments and their due dates for a specific course (e.g., Coding)
SELECT Assignments.Title ,Assignments.Description, Assignments.DueDate
FROM Assignments
JOIN Courses ON Assignments.CourseID = Courses.CourseID
WHERE Courses.CourseName = 'Computing Science';

-- 7. Calculate the average grade of a specific student (e.g., John Doe):
SELECT AVG(Score)
FROM Grades
WHERE StudentID = 1;

-- 8. List all upcoming events for an institution:
SELECT EventName, EventDate, Description
FROM Events
WHERE InstituitionID = 2
AND EventDate >= CURRENT_DATE;


-- 9. Find the faculty teaching a specific course (e.g., Coding):
SELECT Faculty.FirstName, Faculty.SecondName
FROM Faculty
JOIN FacultyCourses ON Faculty.FacultyID = FacultyCourses.FacultyID
JOIN Courses ON FacultyCourses.CourseID = Courses.CourseID
WHERE Courses.CourseName = 'Coding';

-- 10. Retrieve the top-scoring students in a specific course (e.g., Maths):
SELECT Students.FirstName, Students.SecondName, Grades.Score
FROM Students
JOIN Grades ON Students.StudentID = Grades.StudentID
JOIN Courses ON Grades.AssignmentID = Courses.CourseID
WHERE Courses.CourseName = "Mathematics"
ORDER BY Grades.Score DESC
LIMIT 5;


