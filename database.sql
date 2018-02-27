# Note: The "if exists" which only works with MySQL 3.22 or later
drop database if exists userdb;
create database userdb;
use userdb;

CREATE TABLE users (
  user_id int(9) NOT NULL,
  user_name varchar(50) NOT NULL,
  password varchar(32) NOT NULL,
  PRIMARY KEY (user_name),
  KEY password (password),
  KEY user_id (user_id)
);

CREATE TABLE students (
  user_id int(9) NOT NULL,
  surname varchar(50),
  firstname varchar(50),
  PRIMARY KEY (user_id)
);

CREATE TABLE professors (
  user_id int(9) NOT NULL,
  surname varchar(50),
  firstname varchar(50)
  PRIMARY KEY (user_id)
);


CREATE TABLE classes (
  class_id int(5) NOT NULL,
  class_name varchar(50) DEFAULT '' NOT NULL,
  course_id varchar(8), NOT NULL,
  class_professor varchar(50), NOT NULL,
  PRIMARY KEY (class_id),
  KEY var (class_name)
);

INSERT INTO users VALUES (9001230123,  'boudreauxr2', 'toor');

INSERT INTO students VALUES (9001230123,'Boudreaux','Ryan');

INSERT INTO professors VALUES (6001230123,'Chang','Yuchou');

INSERT INTO classes VALUES (23924,'Software Engineering','CS3420','Chang');
