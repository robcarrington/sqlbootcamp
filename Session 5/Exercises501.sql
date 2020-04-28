-- EXERCISE SET #501: Review

-----------
-- TIPS: --
-----------

-- 1) Hit CTRL-ENTER to execute all SQL.
-- 2) Highlight code before hitting CTRL-ENTER to execute ONLY THOSE LINES.
-- 3) Lines that start with a double hyphen ("--") are NOT executed.

-------------------------------------------------------------------
-- WARM UPS: Type the following commands to build muscle memory. --
-------------------------------------------------------------------

-- 1. [Subquery]: select * from purchase_items 
--                where price = (select min(price) from products)

-- 2. [Join using aliases]: select name, email from users as u 
--                          join purchases as p on p.user_id=u.id

-- 3. [Conditional]: select title, 
--	                   case when (price < 100) 
--	                   then 'cheap'
--	                   else 'expensive'
--	                 end from products;

--------------------------------------------------------
-- EXERCISES: Answer using the techniques from above. --
--------------------------------------------------------

-- 1. Find the rows from purchase_items with an above average quantity.

-- 2. Join the purchases and purchase_items tables, using aliases.

-- 3. Using the same join, group by to find when the first recorded purchase occurred in each state.

-- 4. Find the most recent purchase made by a user with Yahoo email address.

-- 5. Write a conditional that will categorize each purchase as 'West Coast' (if it 
--    was ordered from CA, OR, or WA) or 'Other'

-- 6. Use a join between the products and purchase_items table to find 
--    all the purchase_ids involving a product tagged '{Technology}'
