-- Table 1.
create table CLIENT_MASTER(ClientNo varchar(20),Name varchar(20),city varchar(15),Pincode int,State varchar(15),BalDue int);

insert into CLIENT_MASTER values ('C0001','Ivan Bayross','Mumbai',400054,'Maharashtra',15000);
insert into CLIENT_MASTER values ('C0002','Mamta Muzumdar','Madras',780001,'Tamil Nadu',0);
insert into CLIENT_MASTER values ('C0003','Chhaya Bankar','Mumbai',400057,'Maharashtra',5000);
insert into CLIENT_MASTER values ('C0004','Ashwini Joshi','Banglore',560001,'Karnataka',0);
insert into CLIENT_MASTER values ('C0005','Hansel Colaco','Mumbai',400060,'Maharashtra',2000);
insert into CLIENT_MASTER values ('C0006','Deepak Sharma','Manalore',560050,'Karnataka',0);

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Table 2.
create table PRODUCT_MASTER (ProductNo varchar(20),Description varchar(20),ProfitPercent int,UniteMeasure varchar(15),QtyOnHand int,RecordLvl int,SellPrice int,CostPrice int);
insert into PRODUCT_MASTER values('P00001','T-Shirts',5,'Piece',200,50,350,250);
insert into PRODUCT_MASTER values('P0345','Shirts',6,'Piece',150,50,500,350);
insert into PRODUCT_MASTER values('P06734','Cotton',5,'Piece',100,20,600,450);
insert into PRODUCT_MASTER values('P07856','Jeans',5,'Piece',100,20,750,500);
insert into PRODUCT_MASTER values('P07868','Trousers',2,'Piece',150,50,850,550);
insert into PRODUCT_MASTER values('P07885','Pull Overs',2.5,'Piece',80,30,700,540);
insert into PRODUCT_MASTER values('P07965','Denim Shirts',4,'Piece',100,40,350,250);
insert into PRODUCT_MASTER values('P07975','Lycra Tops',5,'Piece',70,30,300,175);
insert into PRODUCT_MASTER values('P08865','Skirts',5,'Piece',75,30,450,300);

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Table 3.
 create table SALESMAN_MASTER(SalesmanNo varchar(10),Name varchar(10),Address1 varchar(10),Address2 varchar(10),City varchar(10),Pincode int,State varchar(15),SaleAmt int,TgtToget int,YtdSales int,Remarks varchar(10));

insert into SALESMAN_MASTER values('S0001','Aman','A/14','Worli','Mumbai',400002,'Maharashtra',3000,100,50,'Good');
insert into SALESMAN_MASTER values('S0002','Omkar','65','Nariman','Mumbai',400001,'Maharashtra',3000,200,100,'Good');
insert into SALESMAN_MASTER values('S0003','Raj','P-7','Bandra','Mumbai',400032,'Maharashtra',3000,200,100,'Good');
insert into SALESMAN_MASTER values('S0004','Ashish','A/5','Juhu','Mumbai',400044,'Maharashtra',3500,200,150,'Good');


----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Table 4.
create table sales_order (OrderNo varchar(20),ClientNo varchar(20),OrderDate varchar(20),SalesmanNo varchar(20),DelyType varchar(20),BillYN varchar(20),DelayDate varchar(20),OrderStatus varchar(20));

insert into sales_order values('O19001','C00001','12-June-04','S0001','F','N','20-July-02','In Process');
insert into sales_order values('O19002','C00002','25-June-04','S0002','P','N','27-June-02','Cancelled');
insert into sales_order values('O46865','C00003','18-Feb-04','S0003','F','Y','20-Feb-02','Fullfilled');
insert into sales_order values('O19003','C00001','03-Apr-04','S0001','F','Y','07-Apr-02','Fullfilled');
insert into sales_order values('O46866','C00004','20-May-04','S0004','P','N','22-May-02','Cancelled');
insert into sales_order values('O19008','C00005','24-May-04','S0002','F','N','26-July-02','In Process');



create table sales_order_1 (OrderNo varchar(20),ClientNo varchar(20),OrderDate Date,SalesmanNo varchar(20),DelyType varchar(20),BillYN varchar(20),DelayDate Date,OrderStatus varchar(20));

insert into sales_order_1 values('O19001','C00001','2004-06-12','S0001','F','N','2004-07-20','In Process');
insert into sales_order_1 values('O19002','C00002','2002-06-25','S0002','P','N','2004-07-27','Cancelled');
insert into sales_order_1 values('O46865','C00003','2002-06-18','S0003','F','Y','2004-07-20','Fullfilled');
insert into sales_order_1 values('O19003','C00001','2002-06-03','S0001','F','Y','2004-07-07','Fullfilled');
insert into sales_order_1 values('O46866','C00004','2002-06-20','S0004','P','N','2004-07-22','Cancelled');
insert into sales_order_1 values('O19008','C00005','2002-06-24','S0002','F','N','2004-07-26','In Process');

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Table 5.
create table sales_order_details (OrderNo varchar(20),ProductNo varchar(20),Otyordered int, Otydisp int,Productrate int);


insert into sales_order_details values('O19001','P00001',4,4,525);
insert into sales_order_details values('O19001','P07965',2,1,8400);
insert into sales_order_details values('O19001','P07885',2,1,5250);
insert into sales_order_details values('O19002','P00001',10,0,525);
insert into sales_order_details values('O46865','P07868',3,3,3150);
insert into sales_order_details values('O46865','P07885',3,1,5250);
insert into sales_order_details values('O46865','P00001',10,10,525);
insert into sales_order_details values('O46865','P0345',4,4,1050);
insert into sales_order_details values('O19003','P03453',2,2,1050);
insert into sales_order_details values('O19003','P06734',1,1,12000);
insert into sales_order_details values('O46866','P07965',1,0,8400);
insert into sales_order_details values('O46866','P07975',1,0,1050);
insert into sales_order_details values('O19008','P00001',10,5,525);
insert into sales_order_details values('O19008','P07975',5,3,1050);



create table client_master(
    ClientNo varchar(20) primary key,
    Name varchar(20),
    city varchar(15),
    Pincode int,
    State varchar(15),
    BalDue int
);

create table product_master (
        ProductNo varchar(20) primary key,
        Description varchar(20),
        ProfitPercent int,
        UniteMeasure varchar(15),
        QtyOnHand int,
        RecordLvl int,
        SellPrice int,
        CostPrice int
);

create table salesman_master(SalesmanNo varchar(10) primary key,
        Name varchar(10),
        Address1 varchar(10),
        Address2 varchar(10),
        City varchar(10),
        Pincode int,
        State varchar(15),
        SaleAmt int,
        TgtToget int,
        YtdSales int,
        Remarks varchar(10)
);

create table sales_order (OrderNo varchar(20) primary key,
        ClientNo varchar(20),
        constraint clino_fk foreign key(ClientNo) references client_master(ClientNo),
        OrderDate varchar(20),
        SalesmanNo varchar(10),
        constraint sales_key foreign key (SalesmanNo)  references salesman_master(SalesmanNo),
        DelyType varchar(20),
        BillYN varchar(20),
        DelayDate varchar(20),
        OrderStatus varchar(20)
);

create table sales_order_details(
        orderno varchar(20),
        constraint orderno_fk foreign key (orderno) references sales_order(OrderNo),
        ProductNo varchar(20),
        constraint ProductNo_fk foreign key(ProductNo) references product_master(ProductNo),
        QtyOrderd int,
        QtyDisp int,
        ProductRate int
);





insert into client_master values ('C00001','Ivan Bayross','Mumbai',400054,'Maharashtra',15000);
insert into client_master values ('C00002','Mamta Muzumdar','Madras',780001,'Tamil Nadu',0);
insert into client_master values ('C00003','Chhaya Bankar','Mumbai',400057,'Maharashtra',5000);
insert into client_master values ('C00004','Ashwini Joshi','Bangalore',560001,'Karnataka',0);
insert into client_master values ('C00005','Hansel Colaco','Mumbai',400060,'Maharashtra',2000);
insert into client_master values ('C00006','Deepak Sharma','Mangalore',560050,'Karnataka',0);

insert into product_master values('P00001','T-Shirts',5,'Piece',200,50,350,250);
insert into product_master values('P0345','Shirts',6,'Piece',150,50,500,350);
insert into product_master values('P06734','Cotton',5,'Piece',100,20,600,450);
insert into product_master values('P07856','Jeans',5,'Piece',100,20,750,500);
insert into product_master values('P07868','Trousers',2,'Piece',150,50,850,550);
insert into product_master values('P07885','Pull Overs',2.5,'Piece',80,30,700,540);
insert into product_master values('P07965','Denim Shirts',4,'Piece',100,40,350,250);
insert into product_master values('P07975','Lycra Tops',5,'Piece',70,30,300,175);
insert into product_master values('P08865','Skirts',5,'Piece',75,30,450,300);

insert into salesman_master values('S00001','Aman','A/14','Worli','Mumbai',400002,'Maharashtra',3000,100,50,'Good');
insert into salesman_master values('S00002','Omkar','65','Nariman','Mumbai',400001,'Maharashtra',3000,200,100,'Good');
insert into salesman_master values('S00003','Raj','P-7','Bandra','Mumbai',400032,'Maharashtra',3000,200,100,'Good');
insert into salesman_master values('S00004','Ashish','A/5','Juhu','Mumbai',400044,'Maharashtra',3500,200,150,'Good');

insert into sales_order values('O19001','C00001','12-June-04','S0001','F','N','20-July-02','In Process');
insert into sales_order values('O19002','C00002','25-June-04','S0002','P','N','27-June-02','Cancelled');
insert into sales_order values('O46865','C00003','18-Feb-04','S0003','F','Y','20-Feb-02','Fullfilled');
insert into sales_order values('O19003','C00001','03-Apr-04','S0001','F','Y','07-Apr-02','Fullfilled');
insert into sales_order values('O46866','C00004','20-May-04','S0004','P','N','22-May-02','Cancelled');
insert into sales_order values('O19008','C00005','24-May-04','S0002','F','N','26-July-02','In Process');

insert into sales_order_details values('O19001','P00001',4,4,525);
insert into sales_order_details values('O19001','P07965',2,1,8400);
insert into sales_order_details values('O19001','P07885',2,1,5250);
insert into sales_order_details values('O19002','P00001',10,0,525);
insert into sales_order_details values('O46865','P07868',3,3,3150);
insert into sales_order_details values('O46865','P07885',3,1,5250);
insert into sales_order_details values('O46865','P00001',10,10,525);
insert into sales_order_details values('O46865','P0345',4,4,1050);
insert into sales_order_details values('O19003','P03453',2,2,1050);
insert into sales_order_details values('O19003','P06734',1,1,12000);
insert into sales_order_details values('O46866','P07965',1,0,8400);
insert into sales_order_details values('O46866','P07975',1,0,1050);
insert into sales_order_details values('O19008','P00001',10,5,525);
insert into sales_order_details values('O19008','P07975',5,3,1050);

select * from client_master;
select * from product_master;
select * from salesman_master;
select * from sales_order;
select * from sales_order_details;




-----------------------------------------------------------------------------
create table student(
        rollno int primary key,
        name varchar(20),
        contactNo int,
        Address varchar(20)
);

create table course(
        courseId int primary key,
        Description varchar(20),
        fees int
);

create table student_course(
        st_id int,
        c_id int,
        constraint stid_fk foreign key (st_id) references student(rollno),
        constraint sid_fk foreign key (c_id) references course(courseId)
);

insert into student values(1,'A',95868,'Surat');
insert into student values(2,'B',95815,'Rajkot');
insert into student values(3,'C',89458,'Bangaluru');
insert into student values(4,'D',84658,'Madurai');
insert into student values(5,'E',95865,'Mirzapur');

insert into course values(001,'Python',30000);
insert into course values(002,'Java',35000);
insert into course values(003,'Perl',45000);
insert into course values(004,'Ruby',30600);
insert into course values(005,'Rust',40000);

insert into student_course values(1,001);
insert into student_course values(2,002);
insert into student_course values(3,003);
insert into student_course values(4,004);
insert into student_course values(5,005);

create table course_detail(
        course_det_id int primary key,
        course_id int,
        course_description varchar(20),
        constraint cid_fk foreign key (course_id) references course(courseId)
);

insert into course_detail values (1,001,'intro');
insert into course_detail values (2,001,'syntax');
insert into course_detail values (3,001,'comments');
insert into course_detail values (4,001,'varibles');
insert into course_detail values (5,001,'data types');

insert into course_detail values (6,002,'intro');
insert into course_detail values (7,002,'syntax');
insert into course_detail values (8,002,'Output');
insert into course_detail values (9,002,'varibles');
insert into course_detail values (10,002,'data types');

insert into course_detail values (11,003,'Basic');
insert into course_detail values (12,003,'syntax');
insert into course_detail values (13,003,'Arguments');
insert into course_detail values (14,003,'varibles');
insert into course_detail values (15,003,'reqirements');

insert into course_detail values (16,004,'installing');
insert into course_detail values (17,004,'generating project');
insert into course_detail values (18,004,'dependencies');
insert into course_detail values (19,004,'varibles');
insert into course_detail values (20,004,'cargo types');

insert into course_detail values (21,005,'Koans');
insert into course_detail values (22,005,'Essentails');
insert into course_detail values (23,005,'Library');
insert into course_detail values (24,005,'Api');
insert into course_detail values (25,005,'RubyApi');

-- ---------------------- 1. -------------------

select pm.Description , cm.Name
from Product_Master pm
inner join sales_order_details sod on sod.ProductNo = pm.ProductNo
inner join Sales_Order so on sod.OrderNo = so.OrderNo
inner join Client_Master cm on so.ClientNo = cm.ClientNo
inner join Salesman_Master sm on sm.SalesmanNo = so.SalesmanNo 
where cm.ClientNo = 'C00001';

select pm.Description , cm.Name
from Client_Master cm , Product_Master pm , Salesman_Master sm , Sales_Order so , sales_order_details sod 
where sod.ProductNo = pm.ProductNo
and sod.OrderNo = so.OrderNo
and so.ClientNo = cm.ClientNo
and sm.SalesmanNo = so.SalesmanNo
and so.ClientNo = 'C00001';

---------------------------------------------


---------------------- 2. -------------------

-- select pm.Description , pm.Qtyonhand
-- from Product_Master pm
-- inner join Sales_Order_Details sod on sod.ProductNo = pm.ProductNo
-- inner join Sales_Order so on sod.OrderNo = so.OrderNo
-- inner join Client_Master cm on so.ClientNo = cm.ClientNo
-- inner join Salesman_Master sm on sm.SalesmanNo = so.SalesmanNo
-- where so.Orderdate = '18-feb-04';

-- select pm.Description , pm.Qtyonhand
-- from Client_Master cm , Product_Master pm , Salesman_Master sm , Sales_Order so , Sales_Order_Details sod 
-- where sod.ProductNo = pm.ProductNo
-- and sod.OrderNo = so.OrderNo
-- and so.ClientNo = cm.ClientNo
-- and sm.SalesmanNo = so.SalesmanNo
-- and so.Orderdate = '18-feb-04';

---------------------------------------------


---------------------- 3. -------------------

-- select pm.ProductNo , pm.Description 
-- from Product_Master pm
-- inner join Sales_Order_Details sod on sod.ProductNo = pm.ProductNo
-- inner join Sales_Order so on sod.OrderNo = so.OrderNo
-- inner join Client_Master cm on so.ClientNo = cm.ClientNo
-- inner join Salesman_Master sm on sm.SalesmanNo = so.SalesmanNo
-- where sod.Otyordered = 10;

-- select pm.ProductNo , pm.Description
-- from Client_Master cm , Product_Master pm , Salesman_Master sm , Sales_Order so , Sales_Order_Details sod 
-- where sod.ProductNo = pm.ProductNo
-- and sod.OrderNo = so.OrderNo
-- and so.ClientNo = cm.ClientNo
-- and sm.SalesmanNo = so.SalesmanNo
-- and sod.Otyordered = 10;

---------------------------------------------


---------------------- 4. -------------------

-- select cm.Name , pm.Description 
-- from Product_Master pm
-- inner join Sales_Order_Details sod on sod.ProductNo = pm.ProductNo
-- inner join Sales_Order so on sod.OrderNo = so.OrderNo
-- inner join Client_Master cm on so.ClientNo = cm.ClientNo
-- inner join Salesman_Master sm on sm.SalesmanNo = so.SalesmanNo
-- where pm.Description = 'trousers';

-- select cm.Name , pm.Description
-- from Client_Master cm , Product_Master pm , Salesman_Master sm , Sales_Order so , Sales_Order_Details sod 
-- where sod.ProductNo = pm.ProductNo
-- and sod.OrderNo = so.OrderNo
-- and so.ClientNo = cm.ClientNo
-- and sm.SalesmanNo = so.SalesmanNo
-- and pm.Description = 'trousers';

---------------------------------------------


---------------------- 5. -------------------

-- select pm.Description , sod.Otyordered 
-- from Product_Master pm
-- inner join Sales_Order_Details sod on sod.ProductNo = pm.ProductNo
-- inner join Sales_Order so on sod.OrderNo = so.OrderNo
-- inner join Client_Master cm on so.ClientNo = cm.ClientNo
-- inner join Salesman_Master sm on sm.SalesmanNo = so.SalesmanNo
-- where sod.Otyordered<5 and pm.Description = 'pull overs';

-- select pm.Description , sod.Otyordered
-- from Client_Master cm , Product_Master pm , Salesman_Master sm , Sales_Order so , Sales_Order_Details sod 
-- where sod.ProductNo = pm.ProductNo
-- and sod.OrderNo = so.OrderNo
-- and so.ClientNo = cm.ClientNo
-- and sm.SalesmanNo = so.SalesmanNo
-- and  sod.Otyordered<5 and pm.Description = 'pull overs';

---------------------------------------------


---------------------- 6. -------------------

-- select cm.Name , pm.Description , sod.Otyordered 
-- from Product_Master pm
-- inner join Sales_Order_Details sod on sod.ProductNo = pm.ProductNo
-- inner join Sales_Order so on sod.OrderNo = so.OrderNo
-- inner join Client_Master cm on so.ClientNo = cm.ClientNo
-- inner join Salesman_Master sm on sm.SalesmanNo = so.SalesmanNo
-- where cm.Name = 'ivan bayross' or cm.Name = 'mamta muzumdar';


-- select cm.Name , pm.Description , sod.Otyordered
-- from Client_Master cm , Product_Master pm , Salesman_Master sm , Sales_Order so , Sales_Order_Details sod 
-- where sod.ProductNo = pm.ProductNo
-- and sod.OrderNo = so.OrderNo
-- and so.ClientNo = cm.ClientNo
-- and sm.SalesmanNo = so.SalesmanNo
-- and cm.Name in ('mamta muzumdar','ivan bayross') ;

---------------------------------------------


---------------------- 7. -------------------

-- select cm.ClientNo , pm.Description , sod.Otyordered 
-- from Product_Master pm
-- inner join Sales_Order_Details sod on sod.ProductNo = pm.ProductNo
-- inner join Sales_Order so on sod.OrderNo = so.OrderNo
-- inner join Client_Master cm on so.ClientNo = cm.ClientNo
-- inner join Salesman_Master sm on sm.SalesmanNo = so.SalesmanNo
-- where cm.ClientNo = 'C00001' or cm.ClientNo = 'C00002';

-- select cm.Name , pm.Description , sod.Otyordered
-- from Client_Master cm , Product_Master pm , Salesman_Master sm , Sales_Order so , Sales_Order_Details sod 
-- where sod.ProductNo = pm.ProductNo
-- and sod.OrderNo = so.OrderNo
-- and so.ClientNo = cm.ClientNo
-- and sm.SalesmanNo = so.SalesmanNo
-- and cm.ClientNo in ('C00001','C00002');

-- select * from client_master where Address1 in ('mumbai');
---------------------------------------------


--------------------------------------------------------------------------------------------------




-------------------------------------- 09-02-2024 Group by ------------------------------------------

-- select pm.Description,sum(sod.Otyordered ) "Total Sales"
-- from Product_Master pm, Sales_Order_Details sod
-- where pm.ProductNo =sod.ProductNo 
-- group by pm.Description
-- having pm.Description = 'tshirt';  


-------------------------- 1. --------------------------------

-- select pm.Description,sum(sod.Otyordered ) "Total Sales"
-- from Product_Master pm, Sales_Order_Details sod
-- where pm.ProductNo =sod.ProductNo 
-- group by pm.Description;

-----------------------------------------------------------------------------------------------------

-------------------------- 2. --------------------------------

-- select sod.ProductNo , pm.Description,
-- sum(sod.Otyordered * pm.Sellprice)
-- from Sales_Order_Details sod , Product_Master pm 
-- where sod.ProductNo = pm.ProductNo   
-- group by  sod.ProductNo ;

--------------------------------------------------------------



------------------------ 16-02-2024 Function ---------------------------

-- -> SELECT ascii('t');

-- -> SELECT char_length('Geeks For Geeks1212');
-- -> select LENGTH('Geeks For Geeks1212');
-- -> SELECT CHARACTER_LENGTH('Geeks For Geeks1212');

-- -> SELECT CONCAT_WS('_', 'geeks', 'for', 'geeks');

-- -> SELECT LEFT('geeksforgeeks.org', 5);
-- -> SELECT RIGHT('geeksforgeeks.org', 4);

-- -> SELECT LOCATE('for', 'forgeeksforgeeksfor',10);

-- -> SELECT LOWER('GEEKSFORGEEKS.ORG');
-- -> select UCASE ("GeeksForGeeks");

-- -> select TRIM(LEADING '0' FROM '000123');

-- -> SELECT SUBSTRING_INDEX('www.geeksforgeeks.org', '.', 1);
-- -> SELECT SUBSTRING('GeeksForGeeks.org', 9, 1);
-- -> select SUBSTR('geeksforgeeks', 1, 5);

-- -> select RPAD('geeks', 8, '0');
-- -> SELECT STRCMP('google.com', 'google.com');

-- -> SELECT REVERSE('geeksforgeeks.org');
-- -> SELECT POSITION('e' IN 'geeksforgeeks');

-------------------------------------------------------------

SELECT ascii('t');

SELECT char length('Geeks For Geeks1212');

select LENGTH('Geeks For Geeks1212');

SELECT CHARACTER_LENGTH('Geeks For Geeks1212');

SELECT CONCAT_WS('_', 'geeks', 'for', 'geeks');

SELECT LEFT('geeksforgeeks.org', 5);

SELECT RIGHT('geeksforgeeks.org', 4);

SELECT LOCATE ('for', 'forgeeksforgeeksfor', 10);

SELECT LOWER('GEEKSFORGEEKS.ORG');

select UCASE ("GeeksForGeeks");

select TRIM(LEADING '0' FROM '000123');

SELECT SUBSTRING_INDEX('www.geeksforgeeks.org','', 1); SELECT SUBSTRING('GeeksForGeeks.org', 9, 1);

select SUBSTR('geeksforgeeks', 1, 5);

select RPAD('geeks', 8, '0');

SELECT STRCMP('google.com', 'google.com');


    ------------------------------------------------DATE FUNCATION---------------------------------------------


    select str_to_date(OrderDate,'%d-%M-%Y')from sales_order;

SELECT ADDDATE("2017-06-15", INTERVAL 10 DAY);
SELECT ADDTIME("2017-06-15 09:34:21", "2");
SELECT CURDATE();
SELECT CURRENT_DATE();
SELECT CURRENT_TIME();
SELECT CURTIME();
SELECT DATEDIFF("2017-06-25", "2017-06-15");
SELECT DATE_ADD("2017-06-15", INTERVAL 10 DAY);
SELECT DATE_FORMAT("2017-06-15", "%Y");
SELECT DATE_SUB("2017-06-15", INTERVAL 10 DAY);
SELECT DAY("2017-06-15");
SELECT DAYNAME("2017-06-15");
SELECT DAYOFMONTH("2017-06-15");
SELECT DAYOFWEEK("2017-06-15");
SELECT DAYOFYEAR("2017-06-15");
SELECT EXTRACT(MONTH FROM "2017-06-15");
          SELECT FROM_DAYS(685467);
 SELECT HOUR("2017-06-20 09:34:00");
 SELECT LAST_DAY("2017-06-20");
SELECT LOCALTIME();
SELECT LOCALTIMESTAMP();
SELECT MAKEDATE(2017, 3);
 SELECT MICROSECOND("2017-06-20 09:34:00.000028");
 SELECT MINUTE("2017-06-20 09:34:00");
 SELECT MONTH("2017-06-15");
SELECT MONTHNAME("2017-06-15");
SELECT NOW();
SELECT PERIOD_ADD(201703, 5);
SELECT PERIOD_DIFF(201710, 201703);




