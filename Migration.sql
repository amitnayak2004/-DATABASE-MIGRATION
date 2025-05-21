create database Users;
use Users;
CREATE TABLE users (
    id INT,
    name VARCHAR(100)
);
## Before Migration ##

INSERT INTO users VALUES(1,"Avesh"),(2,"Mayank"),(3,"Rishi");

## After migration####

ALTER TABLE users
ADD COLUMN email VARCHAR(100);
INSERT INTO users
VALUES (1, "Avesh", "avesh@example.com"),(2, "Mayank", "Mayank@example.com"),(3,"Rishi","Rishi@example.com");
select * from users;


