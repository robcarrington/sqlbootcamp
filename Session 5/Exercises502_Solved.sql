-- EXERCISE SET 502: Unions and Conditionals

-----------
-- TIPS: --
-----------

-- 1) Hit CTRL-ENTER to execute all SQL.
-- 2) Highlight code before hitting CTRL-ENTER to execute ONLY THOSE LINES.
-- 3) Lines that start with a double hyphen ("--") are NOT executed.

-------------------------------------------------------------------
-- WARM UPS: Type the following commands to build muscle memory. --
-------------------------------------------------------------------

-- 1. [Union Join]: SELECT name, email FROM users
--				    UNION
--                  SELECT title, price FROM products;

-- 2. [Conditional]: SELECT title, 
--	                   CASE WHEN (price < 100) 
--	                   THEN 'cheap'
--	                   ELSE 'expensive'
--	                 END FROM products;

--------------------------------------------------------
-- EXERCISES: Answer using the techniques from above. --
--------------------------------------------------------

-- 0. Select all the names associated with purchases made after 2010-01-01,
--    and all the emails associated with users made after 2010-01-01.

SELECT created_at, email FROM users
WHERE created_at > '2010-01-01'
UNION 
SELECT created_at, name FROM purchases
WHERE created_at > '2010-01-01';

-- 1. Write a conditional that will categorize each purchase as 'West Coast' (if it 
--    was ordered from CA, OR, or WA) or 'Other'

SELECT state, CASE 
	WHERE (state IN ('CA', 'OR', 'WA')) THEN 'West Coast'
	ELSE 'Other'
	END
FROM purchases;

-- 2. Modify the last query with a group by statement, to find
--    the number of purchases among West Coast states vs Others.

SELECT CASE 
	WHERE (state IN ('CA', 'OR', 'WA')) THEN 'West Coast'
	ELSE 'Other'
	END AS coast, COUNT(*)
FROM purchases
GROUP BY coast;

-- 3. Write a conditional to divide users into three groups, based on their created_at: 
--    early for before 2009-06-01, 
--    majority for between 2009-06-01 and 2010-01-01
--    late for after 2010-01-01

SELECT CASE 
	WHEN (created_at < '2009-06-01') THEN 'early'
	WHEN (created_at < '2010-01-01') THEN 'majority'
	ELSE 'late'
	END AS user_type
FROM users;

-- 4. Modify the last query by adding a join against the purchases table.
--    Note: Since created_at exists in both tables, you'll need to prefix 
--    with the table name (e.g users.created_at)

SELECT CASE 
	WHEN (u.created_at < '2009-06-01') THEN 'early'
	WHEN (u.created_at < '2010-01-01') THEN 'majority'
	ELSE 'late'
	END AS user_type
FROM users AS u
JOIN purchases AS p
ON u.id = p.user_id;

-- 5. Add a groupby statement to find which group of customers makes 
--    more purchases on average: early, majority, or late.

SELECT CASE WHEN (u.created_at < '2009-06-01') THEN 'early'
	        WHEN (u.created_at < '2010-01-01') THEN 'majority'
		    ELSE 'late'
	   END AS user_type,
	   COUNT(*)
FROM users AS u
JOIN purchases AS p
ON u.id = p.user_id
GROUP BY user_type;

----------------------------------------
-- EXTRA CREDIT: If you finish early. --
----------------------------------------

-- 1. Use DATE_PART() and a conditional to categorize purchases as 'weekday' and 'weekend'.
--    Hint: DATE_PART('dow', column) outputs day of week as a number with Sunday as 0, Saturday as 6.

SELECT CASE 
	WHEN DATE_PART('dow', created_at) IN (0, 6) THEN 'weekend'
	ELSE 'weekday'
	END AS day_type
FROM purchases;

-- 2. Group by state and weekday/weekend to see the number of weekday/weekend purchases per state.

SELECT state,
    CASE WHEN DATE_PART('dow', created_at) IN (0, 6) THEN 'weekend'
	ELSE 'weekday'
	END AS day_type,
	COUNT(*) 
FROM purchases
GROUP BY state, day_type;