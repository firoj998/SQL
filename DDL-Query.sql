/* DDL - data definition Language command ==> the structure of database */

use MyDatabase;

--1. CREATE --
-- TASK- Create a new table called persons with columns:id, person_name, birth_date, and phone
CREATE TABLE persons ( 
id INT NOT NULL, 
person_name VARCHAR(50) NOT NULL,
birth_date DATE , 
phone VARCHAR(15) NOT NULL,
CONSTRAINT pk_persons PRIMARY KEY (id)
)

SELECT * FROM persons

--2. ALTER --> In order to change the definition of a Table (Adding new row, changing data type etc)
-- TASK - Add a new column called email to the persons table
/*NOTE--> " the new columns are appended at the end of table by Default" */

ALTER TABLE persons
ADD email VARCHAR (50) NOT NULL

-- TASK 2 - Remove the column phone from the persons table

ALTER TABLE persons
DROP COLUMN phone

--3. DROP --> Remove the table from DB
-- TASK- Delete the table persons from the DB

DROP TABLE persons
