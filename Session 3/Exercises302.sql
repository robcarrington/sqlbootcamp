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

-- 1. [Grouping by one column]: select state, count(id) from purchases group by state;

-- 2. [Grouping by multiple columns]: select state, zipcode, count(id) from purchases group by state, zipcode;

--------------------------------------------------------
-- EXERCISES: Answer using the techniques from above. --
--------------------------------------------------------

-- 1. Find the most recent purchase made within each state.

-- 2. Use the purchase_items table to find the total number of each product_id sold.

-- 3. Use the purchase_items table to see the dollar amount of items in each state: Delivered, Returned, Pending

-- 4. In the products table, find how many products are under each set of tags.

-- 5. Modify the previous query to find how many products over $10 are under each set of tags.

-- 6. Use the user table to find out how many purchases each user made.

----------------------------------------
-- EXTRA CREDIT: If you finish early. --
----------------------------------------

-- 1. The DATE_PART() function extracts whichever part of the timestamp you want. E.g. DATE_PART('year', '2001-02-16 20:38:40') 
--    returns 2001. Use DATE_PART() to extract which calendar month each user was created in.

-- 2. Use DATE_PART() and a group by statement to count how many users were created in each calendar month.

-- 3. Use the DATE_PART() function to find the number of users created during each day of the week.
--    Hint: Use 'dow' as the first input, which stand for "day of the week"	