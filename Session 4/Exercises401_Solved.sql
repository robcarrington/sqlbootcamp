-- EXERCISE SET 401: SUBQUERIES

-----------
-- TIPS: --
-----------

-- 1) Hit CTRL-ENTER to execute all SQL.
-- 2) Highlight code before hitting CTRL-ENTER to execute ONLY THOSE LINES.
-- 3) Lines that start with a double hyphen ("--") are NOT executed.

-------------------------------------------------------------------
-- WARM UPS: Type the following commands to build muscle memory. --
-------------------------------------------------------------------

-- 1. [Single-value subquery]: select * from purchase_items 
--                             where price = (select max(price) from products)
--
-- 2. [Multiple-value subquery]: select * from purchases where user_id in 
--                               (select user_id from users where email like '%@aol.com')

--------------------------------------------------------
-- EXERCISES: Answer using the techniques from above. --
--------------------------------------------------------

-- 1. Select the products that cost more than average.

select * from products where price = (select avg(price) from products);

-- 2. Find all the purchase_items that represent orders for the lowest-priced product.

select * from purchase_items where price = (select min(price) from products)

-- 3. Find the most recent purchase made by a user with Gmail email address.

select * from purchases where user_id in (select id from users where email like '%gmail.com');
