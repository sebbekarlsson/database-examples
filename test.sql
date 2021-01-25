CREATE TABLE car_brands (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100)
);

CREATE TABLE car_owners (
    id INT PRIMARY KEY AUTO_INCREMENT,
    firstname VARCHAR(100),
    lastname VARCHAR(100),
    email VARCHAR(200)
);

CREATE TABLE owned_cars (
    id INT PRIMARY KEY AUTO_INCREMENT,
    owner_id INT,
    car_brand_id INT,
    FOREIGN KEY (owner_id) REFERENCES car_owners(id),
    FOREIGN KEY (car_brand_id) REFERENCES car_brands(id)
);

INSERT INTO car_brands (name) VALUES ("Volvo");
INSERT INTO car_brands (name) VALUES ("Saab");
INSERT INTO car_brands (name) VALUES ("Hondai");
INSERT INTO car_brands (name) VALUES ("Toyota");

INSERT INTO car_owners (firstname, lastname, email) VALUES (
    "John", "Doe", "john.doe@doe.com"
);

INSERT INTO car_owners (firstname, lastname, email) VALUES (
    "Sarah", "Doe", "sarah.doe@doe.com"
);

INSERT INTO car_owners (firstname, lastname, email) VALUES (
    "Anna", "Nilsen", "anna.nilsen@nilsen.com"
);