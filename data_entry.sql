

-- BEGINNER EXERCICES

TALBE VENDEURS 

/*Sample table: salesman*/

        salesman_id |    name    |   city   | commission 
-------------+------------+----------+------------
        5001 | James Hoog | New York |       0.15
        5002 | Nail Knite | Paris    |       0.13
        5005 | Pit Alex   | London   |       0.11
        5006 | Mc Lyon    | Paris    |       0.14
        5007 | Paul Adam  | Rome     |       0.13
        5003 | Lauson Hen | San Jose |       0.12



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



TABLE CLIENTS
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

--Creation de la table Clients
CREATE TABLE Clients(customer_id int, cust_name varchar(150), city varchar(150), grade int, salesman_id int, PRIMARY KEY(customer_id));
-- Insertion des donnees dans la table Clients
INSERT INTO Clients VALUES(3002, "Nick Rimando", "New York", 100, 5001),
                        (3007, "Brad Davis", "New York", 200, 5001),
                        (3005, "Graham Zusi", "California", 200, 5002),
                        (3008, "Julian Green", "London", 300, 5006),
                        (3009, "Geoff Cameron", "Berlin", 100, 5003),
                        (3003, "Jozy Altidor", "Moscow", 200, 5005),
                        (3001, "Brad Guzan", "London", NULL, 5005);



TABLE COMMANDES
/*Sample table: Orders*/

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

-- Creation de la table Orders
CREATE TABLE Orders(id int, purch_amt float, ord_date date, customer_id int, salesman_id int, PRIMARY KEY(id));
-- Insertion des donnees dans la table Orders
INSERT INTO Orders VALUES( 70008,5760,"2012-09-10",3002,5001),
                        (70010,1983.43,"2012-10-10",3004,5006),
                        (70005,2400.6,"2012-07-27",3007,5001),
                        (70007,948.5,"2012-09-10",3005,5002),
                        (70004,110.5,"2012-08-17",3009,5003),
                        (70002,65.26,"2012-10-05",3002,5001),
                        (70009,270.65,"2012-09-10",3001,5005),
                        (70001,150.5,"2012-10-05",3005,5002),
                        (70003,2480.4,"2012-10-10",3009,5003),

                        (70012,250.45,"2012-06-27",3008,5002),
                        (70011,75.29,"2012-08-17",3003,5007),
                        (70013,3045.6,"2012-04-25",3002,5001);


TABLE NOBEL_WIN

YEAR SUBJECT                   WINNER                                        COUNTRY                CATEGORY
---- ------------------------- --------------------------------------------- ------------------------- ------------
1970 Physics                   Hannes Alfven                                 Sweden                 Scientist
1970 Physics                   Louis Neel                                    France                 Scientist
1970 Chemistry                 Luis Federico Leloir                          France                 Scientist
1970 Physiology                Ulf von Euler                                 Sweden                 Scientist
1970 Physiology                Bernard Katz                                  Germany                Scientist
1970 Literature                Aleksandr Solzhenitsyn                        Russia                 Linguist
1970 Economics                 Paul Samuelson                                USA                    Economist
1970 Physiology                Julius Axelrod                                USA                    Scientist
1971 Physics                   Dennis Gabor                                  Hungary                Scientist
1971 Chemistry                 Gerhard Herzberg                              Germany                Scientist
1971 Peace                     Willy Brandt                                  Germany                Chancellor
1971 Literature                Pablo Neruda                                  Chile                  Linguist
1971 Economics                 Simon Kuznets                                 Russia                 Economist
1978 Peace                     Anwar al-Sadat                                Egypt                  President
1978 Peace                     Menachem Begin                                Israel                 Prime Minister
1987 Chemistry                 Donald J. Cram                                USA                    Scientist
1987 Chemistry                 Jean-Marie Lehn                               France                 Scientist
1987 Physiology                Susumu Tonegawa                               Japan                  Scientist
1994 Economics                 Reinhard Selten                               Germany                Economist
1994 Peace                     Yitzhak Rabin                                 Israel                 Prime Minister
1987 Physics                   Johannes Georg Bednorz                        Germany                Scientist
1987 Literature                Joseph Brodsky                                Russia                 Linguist
1987 Economics                 Robert Solow                                  USA                    Economist
1994 Literature                Kenzaburo Oe                                  Japan                  Ling


--Creation de la table Nobel_win
CREATE TABLE Nobel_win(id int AUTO_INCREMENT, year int, subject varchar(50), winner varchar(100), country varchar(50), category varchar(50), PRIMARY KEY(id));

--Insertion des donnees
INSERT INTO Nobel_win VALUES()



INTERMEDIATE EXERCICES

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
