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

-- 1. Write a conditional that will categorize each purchase as 'West Coast' (if it 
--    was ordered from CA, OR, or WA) or 'Other'

-- 2. Modify the last query with a group by statement, to find
--    the number of purchases among West Coast states vs Others.

-- 3. Write a conditional to divide users into three groups, based on their created_at: 
--    early for before 2009-06-01, 
--    majority for between 2009-06-01 and 2010-01-01
--    late for after 2010-01-01

-- 4. Modify the last query by adding a join against the purchases table.
--    Note: Since created_at exists in both tables, you'll need to prefix 
--    with the table name (e.g users.created_at)

-- 5. Add a groupby statement to find which group of customers makes 
--    more purchases on average: early, majority, or late.

----------------------------------------
-- EXTRA CREDIT: If you finish early. --
----------------------------------------

-- 1. Use DATE_PART() and a conditional to categorize purchases as 'weekday' and 'weekend'.
--    Hint: DATE_PART('dow', column) outputs day of week as a number with Sunday as 0, Saturday as 6.

-- 2. Group by state and weekday/weekend to see the number of weekday/weekend purchases per state.
