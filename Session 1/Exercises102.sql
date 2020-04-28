-- EXERCISE SET #102: NUMERIC FILTERS

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

--------------------------------------------------------
-- EXERCISES: Answer using the techniques from above. --
--------------------------------------------------------

-- 1. Find all the rows from the purchases table with user_id 36.

-- 2. Select * from purchase_items where someone ordered a quantity of 3 or more.

-- 3. Select the rows from purchase_items with a price less than $300.

-- 4. Select the rows from purchase_items with a price of 300 or more,
--    ordered by most expensive first.

-- 5. Add a LIMIT clause to just see the top 3 most expensive purchase_items.

-- 6. Find the purchases that were made from zipcode 99652 or 71938.

-- 7. Modify the last query to find the DISTINCT names of the people who made the purchases.

----------------------------------------
-- EXTRA CREDIT: If you finish early. --
----------------------------------------

-- 1. View the five most recent purchases made by user_id 24.

-- 2. Use DISTINCT to find out which states user_id 24 has made purchases from.