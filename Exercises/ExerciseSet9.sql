-- EXERCISE SET #6: INNER JOINS AND ALIASES

-----------
-- TIPS: --
-----------

-- 1) Hit CTRL-ENTER to execute all SQL.
-- 2) Highlight code before hitting CTRL-ENTER to execute ONLY THOSE LINES.
-- 3) Lines that start with a double hyphen ("--") are NOT executed.

-------------------------------------------------------------------
-- WARM UPS: Type the following commands to build muscle memory. --
-------------------------------------------------------------------

-- 1. [Join]: select name, email from purchases join users on purchases.user_id = users.id

-- 2. [Same join using aliases]: select name, email from users as u 
--                               join purchases as p on p.user_id=u.id

-- 3. [Using alias in filter]: select name, email from users as u 
--                             join purchase_items as p on p.user_id=u.id 
--                             where u.email like '%aol.com'

-------------------------------------------------------------------
-- EXERCISES: Answer using the techniques from above. --
-------------------------------------------------------------------

-- 1. Join the purchases and products tables.

-- 2. Join the purchases and users tables, then filter to just the ZIP codes 
-- where users with AOL email addresses have made purchases.

-- 3. Join the purchases and purchase_items tables, then perform a group by to find the sum of each customers' purchases.

-- 4. Using the same join, find the average purchase amount from each state.
