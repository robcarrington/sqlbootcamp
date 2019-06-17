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

-- 1. [Using max/min]: select max(price) from products;

-- 2. [Using count]: select count(*) from users;

-- 3. [Using sum]: select sum(price) from purchase_items;

-- 4. [Using avg]: select avg(*) from products where price;

-------------------------------------------------------------------
-- EXERCISES: Answer using the techniques from above. --
-------------------------------------------------------------------

-- 1. Find the maximum price from the products that are NOT a computer.

select max(price) from products where not title like '%Computer'

-- 2. Find the number of users with Gmail email addresses.

select count(*) from users where email like '%gmail.com'

-- 3. Using the purchase_items table, find the total dollar value of all items with state "Returned".

select sum(price) from purchase_items where state = 'Returned'

-- 4. Find the average price of all products containing the word "Book" in their title.

select avg(price) from products where title like '% Book'
