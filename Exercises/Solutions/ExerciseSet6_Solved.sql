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

select * from purchase_items as i
join products as p on i.product_id = p.id

-- 2. Join the purchases and users tables, then filter to just the ZIP codes 
-- where users with AOL email addresses have made purchases.

select distinct zipcode from purchases as p
join users as u on u.id = p.user_id
where u.email like '%aol.com'

-- 3. Join the purchases and purchase_items tables, then perform a group by to find the sum of each customers' purchases.

select user_id, name, sum(price) from purchases as p 
join purchase_items as i 
on p.id = i.purchase_id
group by user_id, name

-- 4. Using the same join, find the average purchase amount from each state.

select p.state, avg(price) from purchases as p 
join purchase_items as i 
on p.id = i.purchase_id
group by p.state
