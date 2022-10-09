CREATE DATABASE db_klp4;
USE db_klp4;

CREATE table student(
	id INT UNSIGNED AUTO_INCREMENT,
	student_name VARCHAR(255) NOT NULL,
  address VARCHAR(255),
  major VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE course (
	id INT UNSIGNED AUTO_INCREMENT,
	course_name VARCHAR(255),
	duration INT UNSIGNED,
	`date` DATE,	
	`time` TIME,
	PRIMARY KEY (id)
);

CREATE TABLE student_schedule (
   student_id INT UNSIGNED,
   course_id INT UNSIGNED,
   FOREIGN KEY (student_id) REFERENCES student(id) ON UPDATE CASCADE ON DELETE CASCADE,
   FOREIGN KEY (course_id) REFERENCES course(id) ON UPDATE CASCADE ON DELETE CASCADE
);

SHOW TABLES;
DESC course;
DESC student;
DESC student_schedule;

-- menambahkan data baru pada tabel student
insert into student	(id,full_name,address,major)
values ();	
-- untuk menampilkan data student
select * from student;

-- update info student 
update student
set id = 124, student_name =,address =, major =;
-- get list schedule on specific student
select * from course where id ="";


-- INI TABLE student_schedule
INSERT INTO student_schedule (student_id, course_id) VALUES
(1, 1), (1, 2), (1, 4),
(2, 4), (2, 1), (2, 3),
(3, 3), (3, 4), (3, 2),
(4, 3), (4, 2), (4, 1),
(5, 1), (5, 3), (5, 2),
(6, 1), (6, 2), (6, 4),
(7, 4), (7, 2), (7, 3);


