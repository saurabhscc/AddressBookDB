/* UC1-Creating the database for address book services*/
create database addressBook_services

/* UC2 Create table for the perform the CRUD operations */
use addressBook_services
 create table addressBook_Table
(firstName varchar(50) not null,
 lastName varchar(50) not null,
 address varchar(50) not null,
 city varchar(50) not null,
 state varchar(50) not null,
 zip bigint not null,
 phoneNumber bigint not null,
 emailId varchar(50) not null);
 select * from addressBook_Table;
 
