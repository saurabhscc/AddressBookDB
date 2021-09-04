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

  /* UC3-Inserting data into the table*/
  Insert into addressBook_Table (firstName, lastName, address, city, state, zip, phoneNumber, emailId)
 values
 ('DJ', 'Arjun', 'Ramtek', 'Mumbai', 'MH', '111111', '1111111110', 'dj@gmail.com'),
 ('Raj', 'Sharma', 'Vasantkunj', 'Delhi', 'Delhi', '222222',' 2222222220', 'Raj@gmail.com'),
 ('Shubham', 'Sawant', 'Pahadganj', 'Kanpur', 'UP', '333333', '3333333330', 'shubham@gmail.com'),
 ('Raj', 'Kumar', 'Ramnagar', 'Hisar', 'Haryana', '444444', '4444444440', 'rajk@gmail.com');

 select * from addressBook_Table

 /*UC4- Updating the row contact detail from the address book table finding by the contact name  */

  Update addressBook_Table set address ='Yashwardhan' 
 where firstName = 'DJ' and lastName = 'Arjun';
 
   /* UC5- Delete the row entry from the address book table where name matches */

 select * from addressBook_Table
 delete from addressBook_Table where firstName ='Raj' and lastName = 'Kumar'

 /* UC6- Display the contact from the address book table matching the city OR state*/

 select * from addressBook_Table
  where state = 'UP' or city = 'Mumbai';

   /* UC7- Display the count of contacts by city and state*/

 select city,count (*) as 'Number of Contacts'
 from addressBook_Table 
 group by city
 select state,count (*) as 'Number of Contacts'
  from addressBook_Table 
  group by state
