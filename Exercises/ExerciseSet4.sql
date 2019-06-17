-- EXERCISE SET #4: AGGREGATION FUNCTIONS

-----------
-- TIPS: --
-----------

-- 1) Hit CTRL-ENTER to execute all SQL.
-- 2) Highlight code before hitting CTRL-ENTER to execute ONLY THOSE LINES.
-- 3) Lines that start with a double hyphen ("--") are NOT executed.

-------------------------------------------------------------------
-- WARM UPS: Type the following commands to build muscle memory. --
-------------------------------------------------------------------

-- 1. [Using max/min]: SELECT max(price) FROM products;

-- 2. [Using count]: SELECT count(*) FROM users;

-- 3. [Using sum]: SELECT sum(price) FROM purchase_items;

-- 4. [Using avg]: SELECT avg(*) FROM products;

--------------------------------------------------------
-- EXERCISES: Answer using the techniques from above. --
--------------------------------------------------------

-- 1. Find the total number of purchases.

-- 2. Find the average price of the items in the products table.

-- 3. Find the maximum price from the products that are NOT a computer.

-- 4. Find the number of users with Gmail email addresses.

-- 5. Using the purchase_items table, find the total dollar value of all items with state "Returned".

-- 6. Find the average price of all products containing the word "Book" in their title.

----------------------------------------
-- EXTRA CREDIT: If you finish early. --
----------------------------------------

-- 1. You use multiple aggregation functions in one SELECT. Using only one query,
--    find the min(), max() and avg() of the prices in the product table.

-- 2. In one query, find the difference between the price of the most expensive
--    and least expensive product. 