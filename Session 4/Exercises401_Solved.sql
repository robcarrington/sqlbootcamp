-- EXERCISE SET 401: Subqueries

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

SELECT * FROM products 
WHERE price = (SELECT AVG(price) FROM products);

-- 2. Find all the purchase_items that represent orders for the lowest-priced product.

SELECT * FROM purchase_items 
WHERE price = (SELECT MIN(price) FROM products)

-- 3. Find the most recent purchase made by a user with Gmail email address.

SELECT * FROM purchases 
WHERE user_id IN (SELECT id FROM users WHERE email ILIKE '%gmail.com');

-- 4. List the titles of the products that were ever returned in quantities greater than 4.

SELECT * FROM products WHERE id IN 
(SELECT product_id FROM purchase_items WHERE quantity > 5 AND state = 'Returned');
