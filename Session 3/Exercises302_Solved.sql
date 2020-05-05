-- EXERCISE SET #302: Group By Queries

-----------
-- TIPS: --
-----------

-- 1) Hit CTRL-ENTER to execute all SQL.
-- 2) Highlight code before hitting CTRL-ENTER to execute ONLY THOSE LINES.
-- 3) Lines that start with a double hyphen ("--") are NOT executed.

-------------------------------------------------------------------
-- WARM UPS: Type the following commands to build muscle memory. --
-------------------------------------------------------------------

-- 1. [Grouping by one column]: SELECT state, COUNT(id) 
--                              FROM purchases GROUP BY state;

-- 2. [Grouping by multiple columns]: SELECT state, zipcode, COUNT(id) 
--                                    FROM purchases 
--                                    GROUP BY state, zipcode;

--------------------------------------------------------
-- EXERCISES: Answer using the techniques from above. --
--------------------------------------------------------

-- 1. Find the most recent purchase made within each state.

SELECT state, MAX(created_at) 
FROM purchases
GROUP BY state;

-- 2. Use the purchase_items table to find the total number of each product_id sold.

SELECT product_id, COUNT(*)
FROM purchase_items
GROUP BY product_id;

-- 3. Use the purchase_items table to see the dollar amount of items in each state: Delivered, Returned, Pending

SELECT state, SUM(price * quantity)
FROM purchase_items
GROUP BY state;

-- 4. In the products table, find how many products are under each set of tags.

SELECT tags, COUNT(*)
FROM products
GROUP BY tags;

-- 5. Modify the previous query to find how many products over $10 are under each set of tags.

SELECT tags, COUNT(*)
FROM products
GROUP BY tags
WHERE price < 10;

-- 6. Use the user table to find out how many purchases each user made.

SELECT user_id, COUNT(*)
FROM purchases
GROUP BY user_id;


----------------------------------------
-- EXTRA CREDIT: If you finish early. --
----------------------------------------

-- 1. The DATE_PART() function extracts whichever part of the timestamp you want. 
--    e.g. DATE_PART('year', created_at) returns the year from each timestamp in the created_at column. 
--    Use DATE_PART() to extract which calendar month each user was created in.

SELECT DATE_PART('month', created_at) 
FROM users;

-- 2. Use DATE_PART() and a group by statement to count how many users were created in each calendar month.

SELECT DATE_PART('month', created_at), COUNT(*)
FROM users
GROUP BY DATE_PART('month', created_at);

-- 3. Use the DATE_PART() function to find the number of users created during each day of the week.
--    Hint: Use 'dow' as the first input, which stand for "day of the week"	


SELECT DATE_PART('dow', created_at), COUNT(*)
FROM users
GROUP BY DATE_PART('dow', created_at);