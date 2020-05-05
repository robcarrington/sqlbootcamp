-- EXERCISE SET 402: Inner Joins and Aliases

-----------
-- TIPS: --
-----------

-- 1) Hit CTRL-ENTER to execute all SQL.
-- 2) Highlight code before hitting CTRL-ENTER to execute ONLY THOSE LINES.
-- 3) Lines that start with a double hyphen ("--") are NOT executed.

-------------------------------------------------------------------
-- WARM UPS: Type the following commands to build muscle memory. --
-------------------------------------------------------------------

-- 1. [Join]: SELECT name, email FROM purchases
--            JOIN users ON purchases.user_id = users.id;

-- 2. [Same join using aliases]: SELECT name, email 
--                               FROM users AS u 
--                               JOIN purchases AS p 
--                               ON p.user_id=u.id;

-- 3. [Using alias in filter]: SELECT name, email FROM users AS u 
--                             JOIN purchase_items AS p ON p.user_id=u.id 
--                             WHERE u.email LIKE '%aol.com';

--------------------------------------------------------
-- EXERCISES: Answer using the techniques from above. --
--------------------------------------------------------

-- 1. Join the purchases and purchase_items tables, on purchases.id and purchase_items.purchase_id

SELECT * 
FROM purchases JOIN purchase_items
ON purchases.id = purchase_items.purchase_id;

-- 2. Modify the last query, aliasing purchases as p and purchase_items as pi.

SELECT * 
FROM purchases p JOIN purchase_items pi
ON p.id = pi.purchase_id;

-- 3. Using the same join, perform a group by to sum the total quantity of items purchased under each user_id.

SELECT user_id, SUM(quantity)
FROM purchases p JOIN purchase_items pi
ON p.id = pi.purchase_id
group by user_id;

-- 4. Using the same join, find the average purchase amount from each state.

SELECT p.state, SUM(quantity)
FROM purchases p JOIN purchase_items pi
ON p.id = pi.purchase_id
GROUP BY p.state;

-- 5. Join the purchases and users tables, using an alias for each table.

SELECT *
FROM purchases p JOIN users u
ON p.user_id = u.id;

-- 6. Using the above join, filter to just the orders with an AOL email address OR a buyer named 'Clay'

SELECT *
FROM purchases p JOIN users u
ON p.user_id = u.id
WHERE email LIKE '%aol.com' or name LIKE 'Clay%';

----------------------------------------
-- EXTRA CREDIT: If you finish early. --
----------------------------------------

-- 1. Joins can combine more than two tables. Join the users table, purchases table, 
--    and purchase items table. Remember to use aliases.

SELECT * 
FROM users u JOIN purchases p
ON u.id = purchases.user_id
JOIN purchase_items pi
ON p.id = pi.purchase_id;