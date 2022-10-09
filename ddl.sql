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

<<<<<<< HEAD
-- menambahkan data baru pada tabel student
insert into student	(id,full_name,address,major)
values ();	
-- untuk menampilkan data student
select * from student;

-- update info student 
update student
set student_name ="lala",address ="adasd", major ="asdas" where id = "";
-- get list schedule on specific student
select * from course where id ="";
=======
-- INSERT DATA -- 
-- Ini Table student --
INSERT INTO student
VALUES (1, "Agung Kartika Ardhiyanda", "Jl. Jalan No 1", "Sistem Informasi"),
(2, "Muhammad Erwin Arif", "Jl. Jalan No 2", "Sistem Informasi"),
(3, "Syifa Ur Rahmi", "Jl. Jalan No 3", "Sistem Informasi"),
(4, "Eka Hanny Oktavia", "Jl. Jalan No 4", "Sistem Informasi"),
(5, "Andi Muh. Ibnu Hibban Bagoes Malolo", "Jl. Jalan No 6", "Sistem Informasi"),
(6, "Asehpryanto Rari Parinding", "Jl. Jalan No 5", "Sistem Informasi"),
(7, "Michael Gabriel Bida", "Jl. Jalan No 7", "Sistem Informasi");
>>>>>>> 9ab1fc536d742daa3455ee258a0676bd170a0784

-- Ini Table course --
INSERT INTO course (course_name, duration, `date`, `time`)
VALUES ("Basis Data", 150, '2022-10-03', '08:00:00'),
("Struktur Data", 150, '2022-10-04', '10:00:00'),
("Pemrograman Web", 90, '2022-10-06', '09:00:00'),
("Struktur Data", 150, '2022-10-05', '09:00:00');

-- INI TABLE student_schedule
INSERT INTO student_schedule (student_id, course_id) VALUES
(1, 1), (1, 2), (1, 4),
(2, 4), (2, 1), (2, 3),
(3, 3), (3, 4), (3, 2),
(4, 3), (4, 2), (4, 1),
(5, 1), (5, 3), (5, 2),
(6, 1), (6, 2), (6, 4),
(7, 4), (7, 2), (7, 3);