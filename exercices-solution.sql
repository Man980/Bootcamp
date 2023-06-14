--Tester Votre Niveau SQL
-- Verifier les 

--RÉCUPÉRATION DES DONNÉES (SELECT)

Exercice 1 : Écrire une requête SQL permettant d’afficher les entrées de la table vendeurs 

Exercice 2. Ecrivez une requête SQL permettant d afficher une chaîne de caractères

Exercice 3. Écrire une requête SQL permettant d’afficher trois nombres dans trois colonnes.

Exercice 4. Écrire une requête SQL permettant d’afficher la somme de deux nombres 10 et 15 à partir du serveur SGBDR. 

Exercice 5. Écrire une requête SQL pour afficher le résultat d une expression arithmétique.

Exercice 6. Écrire une requête SQL permettant d’afficher des colonnes spécifiques telles que les noms et les commissions de tous les vendeurs. (telecharger la table vendeurs ici….. ou entrainez-vous en entrant les données manuellement)

Table : Vendeurs


7. Écrivez une requête pour afficher les colonnes dans un ordre spécifique, comme la date de la commande, l ID du vendeur, le numéro de la commande et le montant de l achat pour toutes les commandes.
  
Exemple de table : Commandes

8. À partir de la table suivante, écrivez une requête SQL pour identifier l identifiant unique des vendeurs. Retournez l identifiant du vendeur.

9. A partir du tableau suivant, écrivez une requête SQL pour localiser les vendeurs qui habitent dans la ville de 'Paris'. Retournez le nom du vendeur, la ville.

Exemple de table : Vendeur

10. A partir du tableau suivant, écrivez une requête SQL pour trouver les clients dont la note est 200. Elle renvoie l identifiant du client, le nom du client, la ville, la note, l identifiant du vendeur.

Table Clients



-- Exercices sur les opérateurs (AND, OR, >=, >, <, <=, =)

1. A partir du tableau suivant, écrivez une requête SQL pour trouver les détails des clients dont la note(grade) est supérieure à 100. Retournez l'identifiant(id) du client, le nom du client, la ville, la note(grade) et l'identifiant(id) du vendeur. 

Exemple de table : Clients

2. À partir du tableau suivant, écrivez une requête SQL pour trouver tous les clients de la ville de "New York" qui ont une note supérieure à 100. Retournez l'identifiant du client, le nom du client, la ville, la note et l'identifiant du vendeur.  

Exemple de table : Clients


3. À partir du tableau suivant, écrivez une requête SQL pour trouver les clients qui viennent de la ville de New York ou qui ont une note supérieure à 100. Retournez l'identifiant du client, le nom du client, la ville, la note et l'identifiant du vendeur.  

4. A partir du tableau suivant, écrivez une requête SQL pour trouver les clients qui sont soit de la ville 'New York' ou qui n'ont pas une note supérieure à 100. Retournez l'identifiant du client, le nom du client, la ville, la note et l identifiant du vendeur.



--LES FONCTIONS D AGRÉGATION (TOP, MIN, MAX, COUNT)

1. A partir du tableau suivant, écrivez une requête SQL pour calculer le montant total des achats de toutes les commandes. Renvoyez le montant total des achats.
Exemple de table : Commandes
réponse : 17541.18

2. A partir du tableau suivant, écrivez une requête SQL pour calculer le montant moyen des achats de toutes les commandes. Retournez le montant moyen des achats.

Exemple de table : commandes

réponse : 1461.7650000000000000

3. A partir du tableau suivant, écrivez une requête SQL qui compte le nombre de vendeurs uniques. Renvoyez le nombre de vendeurs.  

Exemple de table : Commandes

réponse : 6

5. A partir du tableau suivant, écrivez une requête SQL pour déterminer le nombre de clients qui ont reçu au moins une note pour leur activité.  

Exemple de tableau : Clients
réponse : 7


6. A partir du tableau suivant, écrivez une requête SQL pour trouver le montant maximum d achat.

réponse : 5760.00



--JOINS (INNER/OUTER)

1. A partir des tables suivantes, écrivez une requête SQL pour trouver le vendeur et le client qui résident dans la même ville. Retournez le vendeur, le nom du client et la ville.
Exemple de tableS : vendeur

--Réponse : 	

SELECT Salesman.name AS Salesman, Customer.cust_name,    Customer.city FROM Customer
INNER JOIN Salesman  ON Customer.city=Salesman.city;

--OU

SELECT Salesman.Name AS Salesman, Customer.cust_name, Customer.city 
FROM Customer, Salesman WHERE Customer.city=Salesman.city;

2. A partir des tables suivantes, écrivez une requête SQL pour trouver les commandes dont le montant est compris entre 500 et 2000. Retourne ord_no, purch_amt, cust_name, city.

	Exemple de table : commandes, Customer

--Réponse : 
SELECT  ord_no, purch_amt AS purchased_amount, cust_name, city  FROM Customer INNER JOIN  orders ON Customer.customer_id=orders.customer_id  WHERE purch_amt>500 AND purch_amt <2000;

3. A partir des tables suivantes, écrivez une requête SQL pour trouver le(s) vendeur(s) et le(s) client(s) qu il(s) représente(nt). Retourne le nom du client, la ville, le vendeur, la commission.

	Exemple de table : client

SELECT  Salesman.name AS Salesman, Customer.cust_name, Customer.city, Salesman.commission FROM Customer INNER JOIN Salesman ON Customer.salesman_id=Salesman.salesman_id;

4. À partir des tables suivantes, écrivez une requête SQL pour trouver les vendeurs qui ont reçu des commissions de plus de 12 % de la part de l entreprise. Retournez Nom du client, ville du client, Vendeur, commission.  
	
	Exemple de table : client

-- Reponse : 
SELECT Customer.cust_name, Customer.city, Salesman.city, Salesman.name AS Salesman, Salesman.commission FROM Customer  INNER JOIN Salesman ON
Salesman.salesman_id=Customer.salesman_id WHERE Salesman.commission>0.12;

5. À partir des tables suivantes, écrivez une requête SQL pour localiser les vendeurs qui ne vivent pas dans la même ville que leurs clients et qui ont reçu une commission de plus de 12 % de la part de l entreprise. Retourne Nom du client, ville du client, Vendeur, ville du vendeur, commission.  

	Exemple de table : client

--Reponse : 
SELECT  Customer.cust_name, Customer.city, Salesman,name AS Salesman, Salesman.City, Salesman.Commission FROM Customer INNER JOIN Salesman ON
Customer.salesman_id=Salesman.salesman_id WHERE Salesman.commission>0.12 AND NOT Customer.city=Salesman.city;


/*Réponses aux exercices de la clause SELECT 
RÉCUPÉRATION DES DONNÉES (SELECT)*/

--EX01: 
SELECT * FROM salesman;
--EXO2: 
SELECT "This is SQL Exercise, Practice and Solution";
--EXO3: 
SELECT 5, 10, 15;
--EXO4: 
SELECT 10 + 15;
--EXO5: 
SELECT 10 + 15 - 5 * 2;
--EXO6: 
SELECT name, commission
 FROM salesman;
--EXO7: 
SELECT ord_date, salesman_id, ord_no, purch_amt
FROM orders;

--EXO8: 
SELECT DISTINCT salesman_id
FROM orders;
--EXO9: 
SELECT name,city
FROM salesman
WHERE city='Paris';
	
--EXO10 : 
SELECT *FROM customer
WHERE grade=200;


-- Réponses aux Exercices sur les opérateurs (AND, OR, >=, >, <, <=, =)
--Exo1:  
SELECT * 
FROM customer 
WHERE grade > 100;

--Exo2:   
SELECT * 
FROM customer 
WHERE city = 'New York' AND grade>100;

--Exo3:   
SELECT * 
FROM customer 
WHERE city = 'New York' OR grade>100;

--Exo4:  
SELECT * 
FROM customer 
WHERE city = 'New York' OR NOT grade>100;


