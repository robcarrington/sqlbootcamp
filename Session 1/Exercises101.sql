-- EXERCISE SET 101: BASIC SELECT STATEMENTS

-----------
-- TIPS: --
-----------

-- 1) Hit CTRL-ENTER to execute all SQL.
-- 2) Highlight code before hitting CTRL-ENTER to execute ONLY THOSE LINES.
-- 3) Lines that start with a double hyphen ("--") are NOT executed.

-------------------------------------------------------------------
-- WARM UPS: Type the following commands to build muscle memory. --
-------------------------------------------------------------------

-- 1. [View entire table]: SELECT * FROM products;

-- 2. [Only 10 rows from table]: SELECT * FROM products LIMIT 10;

-- 3. [Only 2 columns from table]: SELECT title, price FROM products;

-- 4. [Order by a column]: SELECT * FROM products ORDER BY price;

-- 5. [Order by a column descending]: SELECT * FROM products ORDER BY price DESC;

-- 6. [Distinct values in column]: SELECT DISTINCT price FROM products;

--------------------------------------------------------
-- EXERCISES: Answer using the techniques from above. --
--------------------------------------------------------

-- 1. Write a SQL query to view the entire 'users' table.

-- 2. View the first five rows of the 'users' table. 

-- 3. View the 'users' table ordered by when the users was created.

-- 4. Write a SQL query to view the entire 'purchases' table.

-- 5. View the name and state columns of the 'purchases' table.

-- 6. Use LIMIT and ORDER BY to see the ten most recent purchases. 

-- 7. Use a DISTINCT query to see which states people have made purchases from. 

----------------------------------------
-- EXTRA CREDIT: If you finish early. --
----------------------------------------

-- 1. You can use DISTINCT on multiple columns as well. Use DISTINCT on
--    the purchases table to see which states each user has made orders from.

-- 2. Modify the query above to ORDER BY user_id, so you can see the data user-by-user.

