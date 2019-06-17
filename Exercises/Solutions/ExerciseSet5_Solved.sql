-- EXERCISE SET #5: GROUP BY STATEMENTS

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

-------------------------------------------------------------------
-- EXERCISES: Answer using the techniques from above. --
-------------------------------------------------------------------

-- 1. Use the purchase_items table to see the dollar amount of items in each state: Delivered, Returned, Pending

select state, sum(price) from purchase_items group by state

-- 2. Find how many products are under each set of tags

select tags, count(price) from products group by tags

-- 3. Use the user table to find out how many purchases each user made.

select user_id, count(id) from purchases group by user_id

-- 4. Find all the users that made over 25 purchases

select user_id, count(id) from purchases group by user_id having count(id) > 25
