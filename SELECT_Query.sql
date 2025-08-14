-- SELECT clauses
-- Fetching all data

-- SELECT * FROM customers
-- SELECT * FROM orders

/* Fetching specific colums from a table
SELECt col1, col2 FROM TableName; */

-- Task -  Retrieve each  customer's name, country and score

--SELECT 
--	first_name,
--	country,
--	score 
--FROM customers;

-- WHERE CLAUSE-----------------------------------
-- TASK- Retrieve customers with a score not equal to 0

--SELECT *
-- FROM customers
-- WHERE score != 0


-- TASK2- Retrieve customers from Germany

--SELECT 
--	 first_name,
--	 country
-- FROM customers
-- WHERE country = 'Germany'

-- OREDER BY --------------------------------------------------
-- TASK -- Retrieve all customers and sort thr results by the highest score first

--SELECT *
-- FROM customers
-- ORDER BY score DESC

--SELECT *
-- FROM customers
-- ORDER BY score ASC

 -- TASK -- Retrieve all customers and sort the results by the country and then by the highest score.

 --SELECT *
 --FROM customers
 --ORDER BY country ASC, score DESC

 /* Group By- Combines rows with the samevalue, Aggregates a column by another column
	for eg- Total score by country
	"The Result of GROUP BY determined by the unique values of grouped columns"
 Task-  Find the total score for each country  */

 --SELECT
	-- country,
	-- SUM(score) AS total_score
 --FROM customers
 --GROUP BY country

 -- TASK-2- Find the total score and total number of customers for each country--

 --SELECT 
	--country,
	--SUM(score) AS total_score,
	--COUNT(id) AS total_customers
	--FROM customers
	--GROUP By country

	/* --- HAVING ----- Filter te data after aggregation
		can be used only with GROUP BY -
		" IF want to filter data before the aggragation ==> WHERE Clause
		if want to filter the data after aggregation ==> HAVING "

		TASK- -
		*/
--SELECT 
--	country,
--	SUM(score) AS total_score
--	FROM customers
--	WHERE score>400
--	GROUP By country
--	HAVING SUM(score)>800

/*-- TASK-2 - Find the avg score for each country
			considering only customers with score not equal to 0 
			And return only those countries with an avg score greater than 430  
*/
	
	--SELECT
	--	country,
	--	AVG(score) AS avg_score
	--FROM customers
	--WHERE score !=0
	--GROUP BY country
	--HAVING AVG(score) > 430

	/*-- DISTINCT-  Remove duplicates -> each value appears only once   
	    TASK - Return unique List of all countries	
	*/

	--SELECT DISTINCT
	--	country
	--	FROM customers

/* TOP (Limit) - also another filter --> " Restrict the Number of rows returned."
      TASK - Retrieve only 3 customers  */

	  --SELECT TOP 3 *
	  --FROM customers

/*TASK2 - Retrieve TOP 3 customers with Highest scores  */

--SELECT TOP 3 *
--FROM customers
--ORDER BY score DESC

/*TASK3 - Retrieve Lowest 2 customers based on the score  */

--SELECT TOP 2 * 
--FROM customers
--ORDER BY score ASC

/*TASK 4 - Get the Two Most Recent orders */

--SELECT TOP 2 *
--FROM orders
--ORDER BY order_date DESC

/*
SELECT *
 FROM customers;

SELECT *
	FROM orders;

	*/

-- Static data in query---

SELECT 123 as static_number;

SELECT 'Hello' as static_string

SELECT
id,
first_name,
'new_customer' AS customer_type
FROM customers