DROP DATABASE pet;
CREATE DATABASE pet;
USE pet;

CREATE TABLE petPet (
  petname VARCHAR(20),
  owner VARCHAR(45),
  species VARCHAR(45),
  gender VARCHAR(1),
  birth DATE,
  death DATE,
  PRIMARY KEY (petname)
);

CREATE TABLE petEvent (
  petname VARCHAR(20),
  eventdate DATE,
  eventtype VARCHAR(16),
  remark VARCHAR(255),
  FOREIGN KEY (petname) REFERENCES petPet(petname)
);