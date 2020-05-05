-- EXERCISE SET 301: Review

-----------
-- TIPS: --
-----------

-- 1) Hit CTRL-ENTER to execute all SQL.
-- 2) Highlight code before hitting CTRL-ENTER to execute ONLY THOSE LINES.
-- 3) Lines that start with a double hyphen ("--") are NOT executed.

-------------------------------------------------------------------
-- WARM UPS: Type the following commands to build muscle memory. --
-------------------------------------------------------------------

-- 1. [Distinct values in column]: SELECT DISTINCT price FROM products;

-- 2. [Filter using set of values]: SELECT * FROM products WHERE price IN (5.99, 9.99);

-- 3. [Filter with wildcard]: SELECT * FROM products WHERE title LIKE '%Book%;

-- 4. [Less-than filter and order by]: SELECT * FROM products WHERE price < 10 ORDER BY price DESC;

--------------------------------------------------------
-- EXERCISES: Answer using the techniques from above. --
--------------------------------------------------------

-- 1. Find how many distinct sets of tags there are in the products table.

-- 2. Find all the rows of purchases made from either Virginia (VA) or Wisconsin (WI).

-- 3. Find all the rows of the purchases made by people with the first name of "Johnathan".

-- 4. How many purchases were made by people whose last name starts with an 'A'?

-- 5. How many products cost between $10 and 30?

-- 6. What is the average price among Returned items, from the purchase_items table?

----------------------------------------
-- EXTRA CREDIT: If you finish early. --
----------------------------------------

-- 1. You can use the numeric comparison operators (eg. =, >, <) between timestamp columns 
--    and strings in ISO format (eg. '2009-10-02'). Find all the users created since new years 2009.

-- 2. You can use the DATE() function to convert a timestamp column to a date. 
--    Find all the users created on 2019-10-12.
