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

-- 1. Find all the users whose email address is hosted by AOL.

select * from users where email like '%aol.com';

-- 2. Find all the purchases made in Florida or Texas.

select * from purchases where state in ('FL', 'TX');

-- 3. Find the five most recent purchases made in New York.

select * from purchases where state = 'NY' order by created_at limit 5;

-- 4. Select all the products that include the word "Book" and cost more than $10.

select * from products where title like '%Book%' and price > 10;

-- 5. Find all the products that do NOT contain "CD" in the title.

select * from products where title not like '%CD%';

-- 6. Find all the products that either contain "Computer" in the title 
--    OR cost less than $10.

select * from products where title like '%Computer%' or price < 10;

----------------------------------------
-- EXTRA CREDIT: If you finish early. --
----------------------------------------

-- 1. Find the most expensive items from purchase_items whose state is 'Returned' 

select * from purchase_items where state = 'Returned' order by price desc;

-- 2. You can ORDER BY a mathmatical combination of two columns as well.
--    ORDER BY price multiplied by quantity to find the most expensive overall returns.

select * from purchase_items where state = 'Returned' order by price * quantity desc;