DROP DATABASE IF EXISTS travel_db;
CREATE DATABASE travel_db;

USE travel_db;

DROP TABLE IF EXISTS traveller;
CREATE TABLE traveller(

id PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(50) NOT NULL,
email VARCHAR(35) NOT NULL

);

DROP TABLE IF EXISTS location;
CREATE TABLE location(

id PRIMARY AUTO_INCREMENT,
name VARCHAR(50) NOT NULL

);

DROP TABLE IF EXISTS trips;
CREATE TABLE trips(

id PRIMARY KEY AUTO_INCREMENT,
trip_budget INT NOT NULL DEC,
traveller_amount INT NOT NULL DEC,
traveller_id 
FOREIGN KEY (traveller_id)
REFERENCES traveller(id),
location_id
FOREIGN KEY(location_id)
REFERENCES location(id)

);