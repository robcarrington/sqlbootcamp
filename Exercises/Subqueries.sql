-- EXERCISE SET: SUBQUERIES

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

-- 3. [Using EXISTS operator]: select * from users where exists 
--                             (select 1 from purchases where users.id = purchases.user_id 
--                            	and purchases.name like 'Williams%')

--------------------------------------------------------
-- EXERCISES: Answer using the techniques from above. --
--------------------------------------------------------

-- 1. Select the products that cost more than average.

-- 2. Find all the purchase_items that represent orders for the lowest-priced product.

-- 3. Find the most recent purchase made by a user with Gmail email address.

-- 4. Find all the users who made at least one purchase from the state of NY.

-- 5. Use the purchase_items table to find all the purchase_ids that involved at least
--    one product with the tags '{Books}'