-- EXERCISE SET #3: TEXT FILTERS AND LOGICAL OPERATORS

-----------
-- TIPS: --
-----------

-- 1) Hit CTRL-ENTER to execute all SQL.
-- 2) Highlight code before hitting CTRL-ENTER to execute ONLY THOSE LINES.
-- 3) Lines that start with a double hyphen ("--") are NOT executed.

-------------------------------------------------------------------
-- WARM UPS: Type the following commands to build muscle memory. --
-------------------------------------------------------------------

-- 1. [Filter with wildcard]: SELECT * FROM products WHERE title LIKE '%Book%;

-- 2. [Filter using AND]: SELECT * FROM products WHERE title LIKE '% TV' AND price < 500;

-- 3. [Filter using OR]: SELECT * FROM purchases WHERE state = 'FL' OR zipcode=98937;

-- 4. [Filter using NOT]: SELECT * FROM products WHERE NOT price = 14.99;

--------------------------------------------------------
-- EXERCISES: Answer using the techniques from above. --
--------------------------------------------------------

-- 1. Find all the users whose email address is hosted by GMail.

-- 2. Find all the purchases made in Florida or Texas.

-- 3. Find the five most recent purchases made in New York.

-- 4. Select all the products that include the word "Book" and cost more than $10.

-- 5. Find all the products that do NOT contain "CD" in the title.

-- 6. Find all the products that either contain "Computer" in the title 
--    OR cost less than $10.

----------------------------------------
-- EXTRA CREDIT: If you finish early. --
----------------------------------------

-- 1. Find the most expensive items from purchase_items whose state is 'Returned' 

-- 2. You can ORDER BY a mathmatical combination of two columns as well.
--    ORDER BY price multiplied by quantity to find the most expensive overall returns.