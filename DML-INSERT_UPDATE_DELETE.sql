/* DML- Data Manipulation Language --
  INSERT 
  UPDATE
  DELETE
  */
-- INSERT commmand - 1. Manual Entry (values) -------

  INSERT INTO customers (id, first_name, country, score )
  VALUES 
  (6, 'Anna', 'USA', NULL),
  (7, 'Sam', NULL, 100)

  SELECT * FROM customers

  INSERT INTO customers 
  VALUES 
  (8, 'Andreas', 'Germany', NULL)

-- columns not included in INSERT becomes NULL (unless a default or constraint exists), can skip only NULLable columns
  
  INSERT INTO customers (id, first_name)
  VALUES 
  (9, 'Sahra')
  
  SELECT * FROM customers

  /* 2. way of INSERTING data using another Table -
 Inserting data from a Source Table (filled with data) to ==> target Table (Empty Table) 
 without manually writting the script
 STEPS - 1. write a SELECT Query to get result for Source Table.
 STEPS 2. Now we take this result and use INSERT command to insert data into Target table

 */

 -- TASK - Copy data from 'customers' table into 'persons'
 INSERT INTO persons (id, person_name, birth_date, phone)
 SELECT
 id,
 first_name,
 NULL,
 'Unknown'
 FROM customers

 SELECT * FROM persons

 -- 2. UPDATE- Madify (Manipulate ) your Data
 -- NOTE- Always use WHERE to avoid UPDATING all rows unintentionally

-- TASK- Change the score of customer with id 6 to 0

SELECT * FROM customers

UPDATE customers
SET score =0
WHERE id=6

-- TASK-2 - Change the score of customer with ID 9 to 0 and update the country to 'UK'

UPDATE customers
SET score = 0,
	country='UK'
WHERE id=9

-- TASK-3- Update all customers with a NULL score by setting their score to 0

UPDATE customers
SET score = 0
WHERE score IS NULL

SELECT * FROM customers
WHERE score IS NULL

/* DELETE -> use to delete a row in a table
NOTE- Always use WHERE to avoid UPDATING all rows unintentionally
*/

-- TASK - Delete all customers with an ID greater than 5
DELETE FROM customers
Where id>5

SELECT * FROM customers
WHERE id>5

-- TASK-2 DELETE all data from table persons
/*  TRUNCATE ==> Clears the whole table at once without checking (protocol) or logging  
IT is similar like Delete command,and it is very Fast
*/
--DELETE FROM persons
TRUNCATE TABLE persons