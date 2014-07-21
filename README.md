CinemallWebApp
==============

Cinemall's splash screen messages web-application



MYSQL SCHEMA (DB AND TABLE):

CREATE DATABASE cinemall DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

CREATE TABLE splash_messages (id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, title VARCHAR(512) COLLATE utf8_general_ci, content VARCHAR(1024)  COLLATE utf8_general_ci, published_date DATETIME, start_date DATETIME, end_date DATETIME, active VARCHAR(3)) ENGINE=InnoDB DEFAULT CHARSET utf8;



Sample table INSERT:
INSERT INTO splash_messages (title,content,published_date,start_date,end_date,active) VALUES("Test","Content",NOW(),"2014-08-01 08:00:00","2015-07-01 08:00:00","NO");
