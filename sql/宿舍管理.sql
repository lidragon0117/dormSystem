CREATE DATABASE dorm;#创建数据库
USE dorm;#使用数据库
#创建学生表
CREATE TABLE tb_sudent(
	studentId INT(11) AUTO_INCREMENT PRIMARY KEY,
	stuNum VARCHAR(11),
	PASSWORD VARCHAR(16),
	NAME VARCHAR(11),
	dormBuildId INT (10),
	dormName VARCHAR(11),
	sex VARCHAR(11),
	tel VARCHAR(11)

);
SELECT * FROM tb_sudent;#查询学生表
#===========================================================
#创建admin表 
CREATE TABLE tb_admin(
	adminId INT(11) AUTO_INCREMENT PRIMARY KEY,
	userName VARCHAR(11),
	PASSWORD VARCHAR(16),
	NAME VARCHAR(11),
	sex VARCHAR(11),
	tel VARCHAR(11)
);
SELECT *FROM tb_admin;#查询tb_admin表
INSERT INTO tb_admin(userName,PASSWORD,NAME,sex,tel) VALUES('20020101','123','王进','女','18733791');
#========================================================================================================
#创建tb_dormmanager表
CREATE TABLE tb_dormmanager(
	dormManId VARCHAR(20),
	dormManagerId INT(11) AUTO_INCREMENT PRIMARY KEY,
	userName VARCHAR(11),
	PASSWORD VARCHAR(16),
	dormBuildId INT (11),
	NAME VARCHAR(11),
	sex VARCHAR(11),
	tel VARCHAR(11)

);
SELECT * FROM tb_dormmanager;#查询dormmanager表
#=========================
#record 表
CREATE TABLE tb_record(
	recordId INT(11) AUTO_INCREMENT PRIMARY KEY,
	studentNumber VARCHAR(11),
	studentName VARCHAR(11),
	dormBuildId INT(11),
	dormName VARCHAR(11),
	DATE VARCHAR(30),
	detail VARCHAR(100)

);
SELECT *FROM tb_record;#查询tb_record表
#===========================
#dormbuild表
CREATE TABLE tb_dormbuild(
	dormBuildId INT(11) AUTO_INCREMENT PRIMARY KEY,
	dormBuildName VARCHAR(11),
	detail VARCHAR(100)
);
SELECT *FROM tb_dormbuild;


