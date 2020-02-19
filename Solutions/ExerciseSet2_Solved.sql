-- EXERCISE SET #2: USING NUMERIC AND TIMESTAMP COLUMNS


-----------
-- TIPS: --
-----------

-- 1) Hit CTRL-ENTER to execute all SQL.
-- 2) Highlight code before hitting CTRL-ENTER to execute ONLY THOSE LINES.
-- 3) Lines that start with a double hyphen ("--") are NOT executed.

-------------------------------------------------------------------
-- WARM UPS: Type the following commands to build muscle memory. --
-------------------------------------------------------------------

-- 1. [Filter by exact value]: SELECT * FROM products WHERE price = 9.99;

-- 2. [Filter using less-than]: SELECT * FROM products WHERE price < 10;

-- 3. [Filter using greater-or-equals]: SELECT * FROM products WHERE price >= 10;

-- 4. [Filter using set of values]: SELECT * FROM products WHERE price IN (5.99, 9.99);

-- 5. [Filter using a timestamp column]: SELECT * FROM products WHERE date(created_at) > '2020-01-01';

-- 6. [Filter using range of times]: SELECT * FROM products WHERE date(created_at) BETWEEN '2019-01-01' and '2020-01-01';

--------------------------------------------------------
-- EXERCISES: Answer using the techniques from above. --
--------------------------------------------------------

-- 1. Find all the rows from the purchases table with user_id 36.

select * from purchases where user_id = 36;

-- 2. Select * from purchase_items where someone ordered a quantity of 3 or more.

select * from purchase_items where quantity >= 3;

-- 3. Select the rows from purchase_items with a price less than $300.

select * from purchase_items where price < 300;

-- 4. Select the rows from purchase_items with a price of 300 or more,
--    ordered by most expensive first.

select * from purchase_items where price > 300 order by price desc;

-- 5. Add a LIMIT clause to just see the top 3 most expensive purchase_items.

select * from purchase_items order by price desc;

-- 6. Find the purchases that were made from zipcode 99652 or 71938.

select * from purchases where zipcode in (99652, 71938);

-- 7. Modify the last query to find the DISTINCT names of the people who made the purchases.

select distinct name from purchases;

-- 8. Find all the purchases made on March 22, 2011

select * from purchases where date(created_at) = '2011-03-22';

-- 9. Find all the purchases made during either May or June of 2011

select * from purchases where date(created_at) between '2011-05-01' and '2011-06-01';

----------------------------------------
-- EXTRA CREDIT: If you finish early. --
----------------------------------------


-- 1. Find the DISTINCT states that user_id 24 has made purchases from.

select distinct state from purchases where user_id = 24;