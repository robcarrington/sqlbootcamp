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

-- 1. [View entire table]: select * from products;

-- 2. [Only 10 rows from table]: select * from products limit 10;

-- 3. [Only 2 columns from table]: select title, price from products;

-- 4. [Distinct values in column]: select distinct price from products;

-------------------------------------------------------------------
-- EXERCISES: Answer using the techniques from above. --
-------------------------------------------------------------------

-- 1. Write a SQL query to view the entire 'users' table.

select * from users;

-- 2. View the first ten rows of the purchases table. 

select * from users limit 10;

-- 3. View the name and state columns of the purchases table.

select name, state from purchases;

-- 4. Use a DISTINCT query to see which states people have made purchases from. 

select distinct state from purchases;
