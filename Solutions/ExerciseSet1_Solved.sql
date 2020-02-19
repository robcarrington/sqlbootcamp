-- EXERCISE SET #1: BASIC SELECT STATEMENTS

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

select * from users;

-- 2. View the first five rows of the 'users' table. 

select * from users limit 5;

-- 3. View the 'users' table ordered by when the users was created.

select * from users order by created_at;

-- 4. Write a SQL query to view the entire 'purchases' table.

select * from purchases;

-- 5. View the name and state columns of the 'purchases' table.

select name, state from purchases;

-- 6. Use LIMIT and ORDER BY to see the ten most recent purchases. 

select * from purchases limit 10 order by created_at desc;

-- 7. Use a DISTINCT query to see which states people have made purchases from. 

select distinct state from purchases;

----------------------------------------
-- EXTRA CREDIT: If you finish early. --
----------------------------------------

-- 1. You can use DISTINCT on multiple columns as well. Use DISTINCT on
--    the purchases table to see which states each user has made orders from.

select distinct user_id, state from purchases;

-- 2. Modify the query above to ORDER BY user_id, so you can see the data user-by-user.

select distinct user_id, state from purchases order by user_id;