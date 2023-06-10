

-- BEGINNER EXERCICES

TALBE VENDEURS 
-- Creer une table Vendeurs et entrer les donnees qui suivent
-- Creation de la base de donnees Market
CREATE DATABASE Market;
--Selection de la base de donnees Market
Use Market; 
-- Creation de la table Vendeurs
CREATE TABLE Vendeurs(salesman_id int, name varchar(150), city varchar(150), commission float, PRIMARY KEY(salesman_id));

-- Insertion des donnees
INSERT INTO Vendeurs VALUES(5001, "James Hoog", "New York", 0.15), 
                                                        (5002,"Nail Knite", "Paris", 0.13),
                                                        (5005, "Nail Knite", "London", 0.11),
                                                        (5006, "Mc Lyon", "Paris", 0.14),
                                                        (5007, "Paul Adam", "Rome", 0.13),
                                                        (5003, "Lauson Hen", "San Jose", 0.12);



TABLE Commandes 

insert into orders values( 70008,5760,"2012-09-10",3002,5001);
insert into orders values(70010,1983.43,"2012-10-10",3004,5006);
insert into orders values( 70005,2400.6,"2012-07-27",3007,5001);
insert into orders values( 70007,948.5,"2012-09-10",3005,5002);
insert into orders values( 70004,110.5,"2012-08-17",3009,5003);
insert into orders values( 70002,65.26,"2012-10-05",3002,5001);
insert into orders values( 70009,270.65,"2012-09-10",3001,5005);
insert into orders values( 70001,150.5,"2012-10-05",3005,5002);
INSERT INTO orders VALUES(70003,2480.4,"2012-10-10",3009,5003);

insert into orders values(70012,250.45,"2012-06-27",3008,5002);
insert into orders values(70011,75.29,"2012-08-17",3003,5007);
insert into orders values(70013,3045.6,"2012-04-25",3002,5001);






EXERCICES - JOINS(INNER JOIN,LEFT JOIN...)

EXO1. From the following tables write a SQL query to find the 
salesperson and customer who reside in the same city. 
Return Salesman, cust_name and city.

        Sol
        SELECT Salesman.Name AS Salesman, Customer.cust_name, Customer.city
        FROM Salesman, Customer
        WHERE Salesman.salesman_id=Customer.customer_id

        OTHER WAY

        SELECT Salesman.Name AS Salesman, Customer.cust_name, Customer.city
        FROM (Salesman INNER JOIN Customer ON Salesman.City=Customer.city) 

EXO2. 2. From the following tables write a SQL query to find 
those orders where the order amount exists between 500 
and 2000. Return ord_no, purch_amt, cust_name, city. 


/*Sample Solution: */
SELECT  a.ord_no,a.purch_amt,
b.cust_name,b.city 
FROM orders a,customer b 
WHERE a.customer_id=b.customer_id 
AND a.purch_amt BETWEEN 500 AND 2000;


EXO3. From the following tables write a SQL query to find the salesperson(s) 
and the customer(s) he represents. Return Customer Name, city, Salesman, 
commission.


/*Sample Solution: */
SELECT a.cust_name AS "Customer Name", 
a.city, b.name AS "Salesman", b.commission 
FROM customer a 
INNER JOIN salesman b 
ON a.salesman_id=b.salesman_id;

/*Sample table: salesman*/

        salesman_id |    name    |   city   | commission 
-------------+------------+----------+------------
        5001 | James Hoog | New York |       0.15
        5002 | Nail Knite | Paris    |       0.13
        5005 | Pit Alex   | London   |       0.11
        5006 | Mc Lyon    | Paris    |       0.14
        5007 | Paul Adam  | Rome     |       0.13
        5003 | Lauson Hen | San Jose |       0.12


/*Sample table: Customer*/

 customer_id |   cust_name    |    city    | grade | salesman_id 
-------------+----------------+------------+-------+-------------
        3002 | Nick Rimando   | New York   |   100 |        5001
        3007 | Brad Davis     | New York   |   200 |        5001
        3005 | Graham Zusi    | California |   200 |        5002
        3008 | Julian Green   | London     |   300 |        5002
        3004 | Fabian Johnson | Paris      |   300 |        5006
        3009 | Geoff Cameron  | Berlin     |   100 |        5003
        3003 | Jozy Altidor   | Moscow     |   200 |        5007
        3001 | Brad Guzan     | London     |       |        5005


/*Sample table: orders*/

ord_no      purch_amt   ord_date    customer_id  salesman_id
----------  ----------  ----------  -----------  -----------
70001       150.5       2012-10-05  3005         5002
70009       270.65      2012-09-10  3001         5005
70002       65.26       2012-10-05  3002         5001
70004       110.5       2012-08-17  3009         5003
70007       948.5       2012-09-10  3005         5002
70005       2400.6      2012-07-27  3007         5001
70008       5760        2012-09-10  3002         5001
70010       1983.43     2012-10-10  3004         5006
70003       2480.4      2012-10-10  3009         5003
70012       250.45      2012-06-27  3008         5002
70011       75.29       2012-08-17  3003         5007
70013       3045.6      2012-04-25  3002         5001
