DROP TABLE IF EXISTS address CASCADE;
CREATE TABLE address (
  id SERIAL NOT NULL PRIMARY KEY,
  city TEXT NOT NULL
);

DROP TABLE IF EXISTS person;
CREATE TABLE person (
  id SERIAL NOT NULL PRIMARY KEY,
  name TEXT NOT NULL,
  addressId INT NOT NULL REFERENCES address(id)
);

INSERT INTO address(city) values ('Da Nang'); -- Id: 1
INSERT INTO address(city) values ('Ha Noi'); -- Id: 2
INSERT INTO address(city) values ('Ho Chi Minh City'); -- Id: 3

INSERT INTO person(name, addressId) values('Thuan', 1);
INSERT INTO person(name, addressId) values('The', 2);
INSERT INTO person(name, addressId) values('Than', 3);
INSERT INTO person(name, addressId) values('Khanh', 3);
INSERT INTO person(name, addressId) values('Vu', 1);
INSERT INTO person(name, addressId) values('Huy', 1);
INSERT INTO person(name, addressId) values('Thinh', 3);