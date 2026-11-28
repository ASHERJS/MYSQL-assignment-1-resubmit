CREATE DATABASE EMPLOYEE;
USE EMPLOYEE;
CREATE TABLE DEPARTMENTS (DEPARTMENT_ID INT,DEPARTMENT_NAME VARCHAR(100));
CREATE TABLE LOCATION (LOCATION_ID INT,LOCATION VARCHAR(30));
CREATE TABLE employees (EMPLOYEE_ID INT,EMPLOYEE_NAME VARCHAR(50),
gender enum('m','f'),
age int,
hire_date date,
designation varchar(255),
department_id int,
location_id int,
salary decimal(10,2)
);
alter table employees add email varchar(255);
alter table employees modify column designation varchar(255);
alter table employees drop column age;
alter table employees rename column hire_date to date_of_joining;
alter table departments rename to departments_info;
alter table  location rename to locations;
truncate table employees;
drop table employees;
drop database employee;
drop database if exists employee;
create database employee;
use employee;
create table departments (
department_id int primary key,
department_name varchar(100) not null unique
);
create table location (
location_id int primary key auto_increment,
location varchar(100) not null unique
);
create table employees (
employee_id int primary key,
employee_name varchar(100) not null,
gender char(1) check (gender in ('m','f')),
age int check (age>= 18),
hire_date date default (current_date),
designation varchar(100),
department_id int,
location_id int,
salary decimal(10,2),
foreign key (department_id) references departments(department_id),
foreign key (location_id) references location(location_id)
);





















