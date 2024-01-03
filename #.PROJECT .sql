create database sales;
use sales;

create table suppliers(
id int primary key,
supplier_name varchar(50)
);
SHOW TABLES;
    DESC suppliers;
    
insert into suppliers(id,supplier_name)
values
(1,"shockwave tech");
select * from suppliers;

insert into suppliers(id,supplier_name)
values
(2,"CDW"),
(3,"Acme Tech"),
(4,"cloudTail"),
(5,"Alpha Seller");
select * from suppliers;


create table products(
id int primary key,
productname varchar(50),
partnumber int,
productlabel varchar(50),
startingInventory int,
inventoryReceived int,
inventoryShipped int,
inventoryonHand int,
MinimumRequired int
);
select * from products;

insert into products(id ,productname ,partnumber ,productlabel ,startingInventory ,inventoryReceived ,inventoryShipped ,inventoryonHand ,MinimumRequired )
values
(1, "APPLE", 12345, "ABC", 10, 8, 5,5,10);
select * from products;

insert into products(id ,productname ,
partnumber ,productlabel ,startingInventory ,
inventoryReceived ,inventoryShipped ,inventoryonHand ,MinimumRequired )
values
(2, "GOOGLE", 23456, "DEF", 8, 9, 4,8,10),
(3, "ONEPLUS", 34567, "GHI", 51, 6, 12,18,20),
(4, "XIAOMI", 45678, "JKL", 18, 19, 14,8,10),
(5, "REALME", 56789, "MNO", 20, 9, 24,18,30),
(6, "AUSU", 19456, "PQR", 28, 19, 24,12,15),
(7, "MOTOROLA", 20233, "STU", 34, 19, 28,22,40),
(8, "OPPO", 42345, "VWX", 40, 32, 34,24,50),
(9, "VIVO", 24656, "AEF", 30, 24, 14,18,40),
(10, "HUAWEI", 33456, "BEF", 28, 13,23,17,80),
(11, "LAVA", 43456, "CEF", 34, 25, 27,21,60),
(12, "LENOVO", 53456, "EEF", 18, 9, 4,18,10),
(13, "MICROMAX", 63456, "FEF", 23, 2, 4,8,40),
(14, "POCO", 73456, "GEF", 34, 19, 23,8,50),
(15, "SUMSUNG", 83456, "JEF", 21,15,24,23,60),
(16, "NOKIA", 93456, "IEF", 30,25,14,24,40),
(17, "IPAD", 103456, "KEF", 33, 26,24,18,70),
(18, "MACBOOK", 50456, "LEF", 37,29,14,13,80),
(19, "COCA_COLA", 763456,"GEF",38, 29, 15,13,40),
(20, "WASGING MACHINE", 26756, "HEF", 28, 25, 14,13,50),
(21, "SPEAKER", 533456, "ASEF",38,23,14,25,100),
(22, "PRINTER", 763456, "BDGF",40,27,22,35,200),
(23, "COFFEE MAKER", 456576, "CDEF",32,16,34,28,90),
(24, "MICROWAVE", 344546, "DDEF", 24, 19, 14,45,100),
(25, "DVD PLAYER", 283456, "EDEF", 13, 19, 34,24,200),
(26, "JUICER", 87456, "FDEF",29, 19, 17,8,100),
(27, "AIR PURIFIER", 58456, "GDEF", 35, 16, 24,18,200),
(28, "BLENDER", 84456, "HDEF", 18, 11, 14,8,100),
(29, "RICE COOKER", 73456, "IDEF",25, 21, 14,28,500),
(30, "TOASTER", 17456, "JDEF",18, 9, 24,18,100),
(31, "Nestle", 363456, "KSEF",48,23,14,35,100),
(32, "Shoes", 933456, "LDGF",30,37,22,45,200),
(33, "Sandals", 756576, "MDEF",52,16,35,18,800),
(34, "Shampoo", 454546, "NDEF", 34, 13, 24,45,100),
(35, "Sickles", 833456, "ODEF", 33, 19, 24,14,200),
(36, "Light", 69456, "PDEF",49, 39, 27,18,500),
(37, "Lamps", 28456, "QDEF", 35, 16, 14,18,200),
(38, "Table", 34456, "RDEF", 48, 11, 24,28,400),
(39, "Bottles",43456, "SDEF",25, 21, 34,48,600),
(40, "Paint", 17756, "TDEF",38, 19, 24,18,400);
select * from products;

create table orders(
id int primary key,
title varchar(100),
First_Name varchar(100),
Middle_Name varchar(100),
Last_Name varchar(100),
Product_id int  not null,
NumberShipped int not null,
OrderDate date,
foreign key (Product_id) references products (id));
select * from orders;

insert into orders (id,title ,First_Name ,Middle_Name, Last_Name ,Product_id ,NumberShipped ,OrderDate)
values
(1, "Mr", "Rohit", "Kesavan", "Malhotra", 1, 19, "2005-07-10"),
(2, "Mr", "Vivaan", "Kesavan", "Malhotra", 2, 9, "2007-07-01"),
(3, "Ms", "Vivaan", "Nanak", "Chauhan",3, 11, "2013-04-20"),
(4, "Mr", "Reyansh", "Rajendra", "Khanna", 4, 20,"2004-11-05"),
(5, "Ms", "Ishita", "Vishnu", "Gupta", 5, 7,"2015-11-18"),
(6, "Ms", "Avani", "Shankar", "Verma", 6, 6,"2017-01-30"),
(7, "Ms", "Aanya", "Rajendra", "Chauhan", 7, 7,"2012-02-10"),
(8, "Ms", "Dev","Ramnath","Das",8, 1,"2019-03-23"),
(9, "Ms", "Kabir", "Govind", "Jain", 9, 9,"2003-04-27"),
(10, "Ms", "Ishaan", "Govind", "Mishra", 10, 12,"2018-06-22");
select * from orders;

insert into orders (id,title ,First_Name ,Middle_Name, Last_Name ,Product_id ,NumberShipped ,OrderDate)
values
(11, "Mr", "Aanya", "Girdhar", "Mehta", 11, 4,"2002-08-07"),
(12, "Ms", "Aanya", "Veerabhadra", "Tiwari",12, 17,"2007-07-01"),
(13, "Ms", "Vivaan", "Shivaram", "Jain", 13, 17,"2010-07-15"),
(14, "Mr", "Rudra", "Govind", "Verma", 14, 5,"2018-06-22"),
(15, "Ms", "Aanya", "Nanak", "Kumar", 15, 8,"2007-12-19"),
(16, "Ms", "Aaradhya", "Nanak", "Yadav",16, 19,"2007-12-19"),
(17, "Ms", "Ishita", "Gopal", "Sharma",17, 14,"2019-03-23"),
(18, "Ms", "Aryan", "Govind", "Das",18,5,"2016-12-06"),
(19, "Ms", "Arnav", "Shivaram", "Chauhan", 19, 13, "2011-08-11"),
(20, "Mr", "Vivaan", "Rajendra", "Rajput",20, 7, "2012-02-10");
select * from orders;

insert into orders (id,title ,First_Name ,Middle_Name, Last_Name ,Product_id ,NumberShipped ,OrderDate)
values
(21, "Ms", "Dev", "Harihar", "Gandhi", 21, 20, "2012-02-10"),
(22, "Ms", "Aaryan", "Harihar", "Reddy", 22, 20, "2001-05-12"),
(23, "Ms", "Aaryan", "Ramkishan", "Khanna", 23, 12, "2014-09-09"),
(24, "Mr", "Dhruv", "Madan", "Bhatia", 24, 18, "2009-10-25"),
(25, "Ms", "Vivaan", "Vishnu", "Mehta", 25, 14, "2019-03-23"),
(26, "Ms", "Dhruv", "Shankar", "Mehta", 26, 4, "2003-04-27"),
(27, "Mr", "Avani", "Haridas", "Sharma", 27, 12, "2003-03-27"),
(28, "Ms", "Aanya", "Ramchandra", "Mishra",28, 2, "2004-11-05"),
(29, "Ms", "Aanya", "Narayan", "Shah",29, 5, "2005-09-28"),
(30, "Mr", "Dev", "Keshav", "Singh",30, 11, "2014-09-09");
select * from orders;

insert into orders (id,title ,First_Name ,Middle_Name, Last_Name ,Product_id ,NumberShipped ,OrderDate)
values
(31, "Mr", "Kabir", "Shyam", "Reddy",31, 12, "2014-09-09"),
(32, "Ms", "Aryan", "Kesavan", "Agarwal",32, 21, "2015-11-18"),
(33, "Mr", "Aaradhya", "Ramchandra", "Das",33, 10, "2012-07-25"),
(34, "Ms", "Rudra", "Pranab", "Kumar",34, 18,"2009-10-25"),
(35, "Ms", "Aanya", "Ramnath", "Jain",35, 12,"2017-01-30"),
(36, "Mr", "Ishita", "Narayan", "Patel",36,19,"2008-12-03"),
(37, "Ms", "Advika", "Rajendra", "Gupta",37,23,"2005-09-28"),
(38, "Ms", "Vihaan", "Pranab", "Jain",38, 12,"2010-09-14"),
(39, "Ms", "Kavya", "Madan", "Jain",39, 13,"2014-09-09"),
(40, "Mr", "Samarth", "Hemachandra", "Agarwal",40,14,"2014-09-09");
select * from orders;

insert into orders (id,title ,First_Name ,Middle_Name, Last_Name ,Product_id ,NumberShipped ,OrderDate)
values
(41, "Ms", "Kabir", "Shivaram", "Gandhi",40, 12,"2010-09-14"),
(42, "Mr", "Aarav", "Ramchandra", "Singh",39, 19,"2015-11-18"),
(43, "Ms", "Arnav", "Shankar", "Chauhan",38, 19,"2003-04-27"),
(44, "Mr", "Aanya", "Chandrakant", "Sinha", 37, 12, "2001-05-12"),
(45, "Ms", "Aanya", "Govind", "Yadav", 36, 11, "2010-07-15"),
(46, "Mr", "Vihaan", "Nandlal", "Kumar",35,13, "2005-09-28"),
(47, "Ms", "Aaradhya", "Shivaram", "Rajput",34,7, "2011-08-11"),
(48, "Mr", "Aarav", "Nandlal", "Chopra", 33,11, "2012-07-25"),
(49, "Ms", "Dev", "Chandrakant", "Das",32,14, "2005-09-28"),
(50, "Ms", "Reyansh", "Ramkishan", "Tiwari",31,16, "2009-10-25");
select * from orders;

insert into orders (id,title ,First_Name ,Middle_Name, Last_Name ,Product_id ,NumberShipped ,OrderDate)
values
(51, "Ms", "Anaya", "Keshav", "Patel",30,7, "2007-07-01"),
(52, "Ms", "Kabir", "Kesavan", "Verma",29,32, "2010-07-15"),
(53, "Ms", "Aanya", "Nandlal", "Reddy",28,25, "2016-05-04"),
(54, "Ms", "Vivaan", "Shivaram", "Yadav",27,10, "2003-04-27"),
(55, "Mr", "Advait", "Nanak", "Bansal",26,8, "2017-01-30"),
(56, "Mr", "Avani", "Kesavan", "Sharma",25,12, "2002-08-07"),
(57, "Mr", "Aanya", "Shivaram", "Rajput",24,13, "2005-09-28"),
(58, "Ms", "Kabir", "Narayan", "Chauhan",23,15, "2010-09-14"),
(59, "Mr", "Vihaan", "Haridas", "Agarwal",22,27, "2000-01-16"),
(60, "Mr", "Reyansh", "Krishnadas", "Agarwal",21,17, "2007-12-19");
select * from orders;

insert into orders (id,title ,First_Name ,Middle_Name, Last_Name ,Product_id ,NumberShipped ,OrderDate)
values
(61, "Mr", "Shreya", "Chandrakant", "Reddy",20,6, "2003-04-27"),
(62, "Ms", "Advika", "Pranab", "Bansal", 19, 7, "2008-10-08"),
(63, "Ms", "Kavya", "Shankar", "Verma", 18, 10, "2000-01-16"),
(64, "Mr", "Samarth", "Ramkishan", "Sinha",16, "17", "2013-04-20"),
(65, "Ms", "Reyansh", "Madan", "Shah", 15, "9", "2003-04-27"),
(66, "Ms", "Aanya", "Nandlal", "Verma",14,17, "2017-01-30"),
(67, "Mr", "Dev", "Gopal", "Chauhan",13,48, "2007-07-01"),
(68, "Mr", "Ishita", "Vishnu", "Gandhi",12,8, "2008-12-03"),
(69, "Ms", "Reyansh", "Shyam", "Das",11,15, "2013-04-20"),
(70, "Ms", "Aaradhya", "Narayan", "Agarwal",40,34, "2009-10-25");
select * from orders;

insert into orders (id,title ,First_Name ,Middle_Name, Last_Name ,Product_id ,NumberShipped ,OrderDate)
values
(71, "Mr", "Reyansh", "Nanak", "Mishra",32, 30, "2007-12-19"),
(72, "Ms", "Aaradhya", "Shankar", "Khanna",33,3, "2016-12-06"),
(73, "Ms", "Rudra", "Hemachandra", "Chauhan",34,12, "2018-06-22"),
(74, "Mr", "Vivaan", "Madan", "Deshmukh",35,16, "2010-07-15"),
(75, "Ms", "Aanya", "Haridas", "Das",36,37, "2008-10-08"),
(76, "Mr", "Samarth", "Nanak", "Verma",37, 26, "2005-09-28"),
(77, "Mr", "Aanya", "Shivaram", "Tiwari",38,20, "2001-05-12"),
(78, "Ms", "Advait", "Shivaram", "Verma",39, 19, "2014-09-09"),
(79, "Ms", "Aanya", "Girdhar", "Patel",25, 14, "2017-01-30"),
(80, "Mr", "Aanya", "Shyam", "Agarwal",28, 5, "2010-07-15");
    select * from orders;

create table Purchases(
id int primary key,
Supplier_id int,
Product_id int not null,
NumberReceived int,
PurchaseDate Date,
foreign key (Supplier_id) references suppliers(id),
foreign key (Product_id) references products (id));
select * from Purchases;

 insert into Purchases (id ,Supplier_id ,Product_id ,NumberReceived ,PurchaseDate )
values
( 1,1,1,10,"2023-11-05");
select * from Purchases;
insert into Purchases (id ,Supplier_id ,Product_id ,NumberReceived ,PurchaseDate )
values
( 2,2,1,20,"2022-09-15"),
( 3,3,2,30,"2023-10-19"),
( 4,4,3,40,"2020-11-25"),
( 5,5,4,50,"2001-03-21"),
( 6,1,5,60,"2002-06-11"),
( 7,2,6,70,"2003-07-17"),
( 8,3,7,80,"2004-02-20"),
( 9,4,8,90,"2005-09-27"),
( 10,5,9,40,"2023-10-25");
select * from Purchases;
insert into Purchases (id ,Supplier_id ,Product_id ,NumberReceived ,PurchaseDate )
values
( 11,1,10,45,"2021-10-05"),
( 12,2,11,35,"2006-06-23"),
( 13,3,12,75,"2007-07-13"),
( 14,4,13,95,"2008-02-09"),
( 15,5,14,46,"2009-01-23"),
( 16,1,15,38,"2010-04-28"),
( 17,2,16,22,"2011-05-12"),
( 18,3,17,21,"2013-08-30"),
( 19,4,18,28,"2012-09-21"),
( 20,5,19,42,"2013-02-04");
select * from Purchases;
insert into Purchases (id ,Supplier_id ,Product_id ,NumberReceived ,PurchaseDate )
values
( 21,1,20,68,"2014-09-27"),
( 22,2,21,64,"2015-07-19"),
( 23,3,22,47,"2016-07-16"),
( 24,4,23,55,"2017-05-18"),
( 25,5,24,44,"2018-04-05"),
( 26,1,25,18,"2019-03-02"),
( 27,2,26,49,"2020-08-17"),
( 28,3,27,68,"2021-03-29"),
( 29,4,28,37,"2022-02-18"),
( 30,5,29,17,"2023-02-04");
select * from Purchases;
insert into Purchases (id ,Supplier_id ,Product_id ,NumberReceived ,PurchaseDate )
values
( 31,1,30,42,"1999-07-05"),
( 32,2,31,69,"1997-09-05"),
( 33,3,32,76,"1998-05-05"),
( 34,4,33,53,"1997-03-05"),
( 35,5,34,79,"1996-08-05"),
( 36,1,35,88,"1995-09-05"),
( 37,2,36,49,"1994-04-05"),
( 38,3,37,29,"1993-02-05"),
( 39,4,38,39,"1994-05-05"),
( 40,5,39,59,"1992-06-05");
select * from Purchases;
insert into Purchases (id ,Supplier_id ,Product_id ,NumberReceived ,PurchaseDate )
values
( 41,1,40,69,"2001-03-11"),
( 42,2,1,49,"2002-03-22"),
( 43,3,2,41,"2003-12-23"),
( 44,4,3,23,"2004-11-17"),
( 45,5,4,56,"2020-09-18"),
( 46,1,5,76,"2005-08-23"),
( 47,2,6,89,"2006-07-05"),
( 48,3,7,37,"2007-06-08"),
( 49,4,8,59,"2007-05-16"),
( 50,5,9,51,"2008-04-29");
select * from Purchases;
insert into Purchases (id ,Supplier_id ,Product_id ,NumberReceived ,PurchaseDate )
values
( 51,1,10,53,"2009-05-22"),
( 52,2,11,68,"2010-06-23"),
( 53,3,12,77,"2011-07-17"),
( 54,4,13,69,"2012-08-19"),
( 55,5,14,36,"2013-09-13"),
( 56,1,15,39,"2014-10-04"),
( 57,2,16,41,"2015-11-19"),
( 58,3,17,89,"2016-12-25"),
( 59,4,18,94,"2017-02-04"),
( 60,5,19,63,"2018-03-18");
select * from Purchases;
insert into Purchases (id ,Supplier_id ,Product_id ,NumberReceived ,PurchaseDate )
values
( 61,1,20,44,"2019-05-23"),
( 62,2,21,50,"2020-06-28"),
( 63,3,22,62,"2021-06-19"),
( 64,4,23,51,"2022-08-14"),
( 65,5,24,60,"2023-01-05"),
( 66,1,26,62,"2024-02-25"),
( 67,2,26,47,"2025-05-11"),
( 68,3,27,33,"2026-11-23"),
( 69,4,28,22,"2027-07-21"),
( 70,5,29,37,"2028-11-05");
select * from Purchases;
insert into Purchases (id ,Supplier_id ,Product_id ,NumberReceived ,PurchaseDate )
values
( 71,1,30,29,"2029-08-22"),
( 72,2,31,55,"2030-04-21"),
( 73,3,32,66,"2031-05-03"),
( 74,4,33,77,"2032-08-06"),
( 75,5,34,22,"2033-11-05"),
( 76,1,35,11,"2034-09-01"),
( 77,2,36,33,"2035-10-09"),
( 78,3,37,55,"2031-09-10"),
( 79,4,38,77,"2028-03-11"),
( 80,5,39,88,"2030-01-12");
select * from Purchases;




