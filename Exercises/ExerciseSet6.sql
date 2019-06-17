-- EXERCISE SET #6: GROUP BY STATEMENTS

-----------
-- TIPS: --
-----------

-- 1) Hit CTRL-ENTER to execute all SQL.
-- 2) Highlight code before hitting CTRL-ENTER to execute ONLY THOSE LINES.
-- 3) Lines that start with a double hyphen ("--") are NOT executed.

-------------------------------------------------------------------
-- WARM UPS: Type the following commands to build muscle memory. --
-------------------------------------------------------------------

-- 1. [Grouping by one column]: select state, count(id) from purchases group by state;

-- 2. [Grouping by multiple columns]: select state, zipcode, count(id) from purchases group by state, zipcode;

-- 3. [Group by using a HAVING filter]: select state, count(id) from purchases group by state having count(id) > 100;

--------------------------------------------------------
-- EXERCISES: Answer using the techniques from above. --
--------------------------------------------------------

-- 1. Use the purchase_items table to find the total number of each product_id sold.

-- 2. Use the purchase_items table to see the dollar amount of items in each state: Delivered, Returned, Pending

-- 3. In the products table, find how many products are under each set of tags.

-- 4. Modify the previous query to find how many products over $10 are under each set of tags.

-- 5. Use the user table to find out how many purchases each user made.

-- 6. Find all the users that made over 25 purchases

----------------------------------------
-- EXTRA CREDIT: If you finish early. --
----------------------------------------

-- 1. The DATE_PART() function extracts whichever part of the timestamp you want. E.g. DATE_PART("year", '2001-02-16 20:38:40') 
--    returns 2001. Use DATE_PART() to extract which calendar month each user was created in.

-- 2. Use DATE_PART() and a group by statement to count how many users were created in each calendar month.