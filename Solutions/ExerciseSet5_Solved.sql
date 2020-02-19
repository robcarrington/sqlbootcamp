-- EXERCISE SET #5: JOINS 

-----------
-- TIPS: --
-----------

-- 1) Hit CTRL-ENTER to execute all SQL.
-- 2) Highlight code before hitting CTRL-ENTER to execute ONLY THOSE LINES.
-- 3) Lines that start with a double hyphen ("--") are NOT executed.

-------------------------------------------------------------------
-- WARM UPS: Type the following commands to build muscle memory. --
-------------------------------------------------------------------

-- 1. [Inner Join]: SELECT name, email 
--                  FROM purchases INNER JOIN users 
--                  ON purchases.user_id = users.id

-- 2. [Same join using aliases]: SELECT name, email FROM users as u 
--                               join purchases as p on p.user_id=u.id

-- 3. [Using alias in filter]: select name, email from users as u 
--                             join purchase_items as p on p.user_id=u.id 
--                             where u.email like '%aol.com'

--------------------------------------------------------
-- EXERCISES: Answer using the techniques from above. --
--------------------------------------------------------

-- 1. Join the purchases and purchase_items tables, on purchases.id and purchase_items.purchase_id

select * 
from purchases join purchase_items
on purchases.id = purchase_items.purchase_id;

-- 2. Modify the last query, aliasing purchases as p and purchase_items as pi.

select * 
from purchases p join purchase_items pi
on p.id = pi.purchase_id;

-- 3. Using the same join, perform a group by to sum the total quantity of items purchased under each user_id.

select user_id, sum(quantity)
from purchases p join purchase_items pi
on p.id = pi.purchase_id
group by user_id;

-- 4. Using the same join, find the average purchase amount from each state.

select p.state, sum(quantity)
from purchases p join purchase_items pi
on p.id = pi.purchase_id
group by p.state;

-- 5. Join the purchases and users tables, using an alias for each table.

select *
from purchases p join users u
on p.user_id = u.id;

-- 6. Using the above join, filter to just the orders with an AOL email address OR a buyer named 'Clay'

select *
from purchases p join users u
on p.user_id = u.id
where email like '%aol.com' or name like 'Clay%';

----------------------------------------
-- EXTRA CREDIT: If you finish early. --
----------------------------------------

-- 1. Joins can combine more than two tables. Join the users table, purchases table, 
--    and purchase items table. Remember to use aliases.

select * 
from users u join purchases p
on u.id = purchases.user_id
join purchase_items pi
on p.id = pi.purhcase_id;