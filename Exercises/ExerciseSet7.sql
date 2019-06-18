-- EXERCISE SET #7: INNER JOINS AND ALIASES

-----------
-- TIPS: --
-----------

-- 1) Hit CTRL-ENTER to execute all SQL.
-- 2) Highlight code before hitting CTRL-ENTER to execute ONLY THOSE LINES.
-- 3) Lines that start with a double hyphen ("--") are NOT executed.

-------------------------------------------------------------------
-- WARM UPS: Type the following commands to build muscle memory. --
-------------------------------------------------------------------

-- 1. [Join]: select name, email from purchases join users on purchases.user_id = users.id

-- 2. [Same join using aliases]: select name, email from users as u 
--                               join purchases as p on p.user_id=u.id

-- 3. [Using alias in filter]: select name, email from users as u 
--                             join purchase_items as p on p.user_id=u.id 
--                             where u.email like '%aol.com'

--------------------------------------------------------
-- EXERCISES: Answer using the techniques from above. --
--------------------------------------------------------

-- 1. Join the purchases and purchase_items tables, on purchases.id and purchase_items.purchase_id

-- 2. Modify the last query, aliasing purchases as p and purchase_items as pi.

-- 3. Using the same join, perform a group by to sum the total quantity of items purchased under each user_id.

-- 4. Using the same join, find the average purchase amount from each state.

-- 5. Join the purchases and users tables, using an alias for each table.

-- 6. Using the above join, filter to just the orders with an AOL email address OR a buyer named 'Clay'

----------------------------------------
-- EXTRA CREDIT: If you finish early. --
----------------------------------------

-- 1. Joins can combine more than two tables. Join the users table, purchases table, 
--    and purchase items table. Remember to use aliases.