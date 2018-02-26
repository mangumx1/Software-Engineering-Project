# Note: The "if exists" which only works with MySQL 3.22 or later
drop database if exists userdb;
create database userdb;
use userdb;

CREATE TABLE users (
  user_id int(5) NOT NULL,
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
  initial char(1),
  address varchar(50),
  city varchar(50),
  state varchar(20),
  zipcode varchar(10),
  phone varchar(15),
  birth_date char(10),
  PRIMARY KEY (user_id)
);

CREATE TABLE professors (
  user_id int(5) NOT NULL,
  surname varchar(50),
  firstname varchar(50),
  initial char(1),
  title_id int(3),
  address varchar(50),
  city varchar(50),
  state varchar(20),
  zipcode varchar(10,
  country_id int(4),
  phone varchar(15),
  birth_date char(10),
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

INSERT INTO students VALUES (9001230123,'Boudreaux','Ryan','J','123 Fake St','Houston','Texas','77002','(832)373-7433','06-28-1988');

INSERT INTO professors VALUES (6001230123,'Chang','Yuchou','','Houston','Texas','','','');

INSERT INTO classes VALUES ('23924','Software Engineering','CS3420','Chang');
