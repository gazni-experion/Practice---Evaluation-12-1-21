--create database dating_app
--use dating_app


--CREATE TABLE Occupation (
--	occupation_id INT NOT NULL PRIMARY KEY IDENTITY,
--	occupation VARCHAR(50) NOT NULL
--)


--CREATE TABLE Hobbies (
--	hobby_id INT NOT NULL PRIMARY KEY IDENTITY,
--	hobby VARCHAR(50) NOT NULL
--)


--CREATE TABLE Movie_genres (
--	genre_id INT NOT NULL PRIMARY KEY IDENTITY,
--	genres VARCHAR(50) NOT NULL
--)


--CREATE TABLE Food (
--	food_id INT NOT NULL PRIMARY KEY IDENTITY,
--	food_name VARCHAR(50) NOT NULL
--)

--CREATE TABLE Customers (
--	customer_id INT NOT NULL PRIMARY KEY IDENTITY,
--	name VARCHAR(50) NOT NULL,
--	age TINYINT NOT NULL,
--	gender VARCHAR(15) NOT NULL,
--	food_id INT FOREIGN KEY REFERENCES Food(food_id),
--	occupation_id INT FOREIGN KEY REFERENCES Occupation(occupation_id),
--	hobby_id INT FOREIGN KEY REFERENCES Hobbies(hobby_id),
--	genre_id INT FOREIGN KEY REFERENCES Movie_genres(genre_id)
--)

SELECT * FROM Customers
SELECT * FROM Food
SELECT * FROM Movie_genres
SELECT * FROM Hobbies
SELECT * FROM Occupation


--INSERT INTO Customers(name,age,gender,food_id,occupation_id,hobby_id,genre_id) VALUES
--	('Soubin',45,'Male',1,1,2,6),
--	('Jack',48,'Male',1,2,1,6),
--	('John',52,'Male',1,3,4,6),
--	('Reves',60,'Male',1,4,6,6),
--	('Jancy',30,'Female',2,4,5,1),
--	('Jennifer',33,'Female',3,2,5,2),
--	('Allison',28,'Female',4,3,5,3),
--	('Claire',25,'Female',3,5,5,4),
--	('Helen',43,'Female',1,6,5,5),
--	('Nick',26,'Male',2,7,5,1)

--INSERT INTO Occupation(occupation) VALUES
--	('Dentist'),
--	('Nurse'),
--	('Doctor'),
--	('Electrician'),
--	('Secretary'),
--	('Professor'),
--	('Engineer')


--INSERT INTO Hobbies(hobby) VALUES
--	('Hunting'),
--	('Fishing'),
--	('Running'),
--	('Bird Watching'),
--	('Antiquing'),
--	('Archery')

--INSERT INTO Movie_genres(genres) VALUES
--	('Action'),
--	('Adventure'),
--	('Comedy'),
--	('Fantasy'),
--	('Historical'),
--	('Horror')
	




--INSERT INTO Food(food_name) VALUES
--	('Pizza'),
--	('Burger'),
--	('Sandwitch'),
--	('Noodles')



--1. Show the hobby that most client prefered.
SELECT name,age,gender,hobby FROM Customers
JOIN Hobbies ON Hobbies.hobby_id = Customers.hobby_id
GROUP BY hobby,name,age,gender
ORDER BY COUNT(hobby)





--2. List of all clients who has more than one favourite food.

SELECT name,age,gender,food_name FROM Customers
JOIN Food ON Food.food_id = Customers.food_id
GROUP BY food_name,name,age,gender
HAVING COUNT(food_name)>1




--3. Identify the client who is above 40 years and loves "horror" movies and love "pizza"

SELECT name,age,gender,genres,food_name FROM Customers
JOIN Food ON Food.food_id = Customers.food_id
JOIN Movie_genres ON Movie_genres.genre_id = Customers.genre_id
WHERE food_name LIKE 'Pizza' AND genres LIKE 'Horror'
GROUP BY name,age,gender,genres,food_name
HAVING age>40



--4. Design MongoDB database schema for this app with five documents
--5. Write a MongoDB query to display the last clientid


