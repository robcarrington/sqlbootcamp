-- EXERCISE SET #2: NUMERIC FILTERS

-----------
-- TIPS: --
-----------

-- 1) Hit CTRL-ENTER to execute all SQL.
-- 2) Highlight code before hitting CTRL-ENTER to execute ONLY THOSE LINES.
-- 3) Lines that start with a double hyphen ("--") are NOT executed.

-------------------------------------------------------------------
-- WARM UPS: Type the following commands to build muscle memory. --
-------------------------------------------------------------------

-- 1. [Filter by exact value]: select * from products where price = 9.99;

-- 2. [Filter using less-than]: select * from products where price < 10;

-- 3. [Filter using greater-or-equals]: select * from products where price >= 10;

-- 4. [Filter using set of values]: select * from products where price in (5.99, 9.99);

-------------------------------------------------------------------
-- EXERCISES: Answer using the techniques from above. --
-------------------------------------------------------------------

-- 1. Find all the rows from the purchases table with user_id 36.

-- 2. Select * from purchase_items where someone ordered a quantity of 3 or more.

-- 3. Select the rows from purchase_items with a price of 300 or more.

-- 4. Find the purchases that were made from zipcode 99652 or 71938.
