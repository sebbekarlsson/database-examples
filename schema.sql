CREATE TABLE people (
    id INT PRIMARY KEY AUTO_INCREMENT,
    firstname VARCHAR(100),
    lastname VARCHAR(100),
    email VARCHAR(200)
)

CREATE TABLE friends (
    id INT PRIMARY KEY AUTO_INCREMENT,
    person1 INT,
    person2 INT,
    FOREIGN KEY (person1) REFERENCES people(id),
    FOREIGN KEY (person2) REFERENCES people(id)
)

SELECT friends.person2, firstname
FROM people
RIGHT JOIN friends
ON friends.person1 = people.id
RIGHT JOIN friends.person2 = people.id;

SELECT firstname, lastname
FROM people
RIGHT JOIN friends
ON friends.person1 = people.id;

SELECT friends.person2 people.firstname, people.lastname
FROM people, friends
RIGHT JOIN friends
ON friends.person1 = people.id;