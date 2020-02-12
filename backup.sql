--USE ONLY IF YOU ARE USING A DEVICE NEVER BUILD THIS APPLICATION BEFORE
create database lecture;

grant all privileges on lecture.* to projectTest@localhost;

create table user (
    id int primary key auto_increment, 
    user_id varchar(20) not null, 
    user_pw varchar(20) not null
    ) ENGINE=INNODB;

create table lecture (
    id int primary key auto_increment, 
    title varchar(20) not null, 
    description text no null,
    link text not null, 
    date datetime not null, 
    instructor_id int not null
    ) ENGINE=INNODB;