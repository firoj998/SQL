/* WHERE operators 
1. Comparison operators 
2. logical Operators - AND, OR, NOT
3. Range Operators - BETWEEN
4. Membership Operators - IN, NOT IN
5. search operators - LIKE    */

-- Comparison Operators ---
-- TASK 1 - Retrieve all customers from Germany

SELECT * FROM customers
Where country = 'Germany'


-- TASK 2 - Retrieve all customers who are Not from Germany

SELECT * FROM customers
Where country != 'Germany'

-- TASK 3 - Retrieve all customers with a score greater than 500
SELECT * FROM customers
WHERE score > 500

--2. Logical Operators - 

-- TASK 1 - Retrieve all customers who are from USA AND have a score greater than 500

SELECT * FROM customers
WHERE country = 'USA' AND score>500

-- TASK 2 - Retrieve all customers who are either from USA OR have a score greater than 500
SELECT * FROM customers
WHERE country = 'USA' OR score>500

-- TASK 3 - Retrieve all customers with a score NOT less than 500

SELECT * FROM customers
WHERE NOT score < 500

/*  BETWEEN Operator  => check if a value falls within a specific range */

-- TASK 1- Retrieve all customers whose score falls in the range between 100 and 500 

SELECT * FROM customers
WHERE score BETWEEN 100 AND 500
 -- OR ---
SELECT * FROM customers
WHERE score >= 100 AND score <= 500

/* Membership Operator ==> check if a value exists in a list  */

-- TASK 1- Retrieve all customers from either Germany OR USA

SELECT * FROM customers
WHERE country = 'Germany' OR country = 'USA'

SELECT * FROM customers
WHERE country IN ('Germany', 'USA')

/* SEARCH Operator --> search for a pattern in text 
% -> Anything - (0 or 1 or Many)
_(underscore) - exact 1

*/

-- Task1 - Find all customers whose first name starts with 'M'

SELECT * FROM customers
WHERE first_name LIKE 'M%'

-- Task2 - Find all customers whose first name ends with 'n'

SELECT * FROM customers
WHERE first_name LIKE '%n'

-- Task3 - Find all customers whose first name contains 'r'

SELECT * FROM customers
WHERE first_name LIKE '%r%'

-- Task3 - Find all customers whose first name has 'r' in the third position

SELECT * FROM customers
WHERE first_name LIKE '__r%'