-- EXERCISE SET #301: Review

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

-- 5. [Using a group by]: SELECT tags, avg(price) FROM products group by tags;

--------------------------------------------------------
-- EXERCISES: Answer using the techniques from above. --
--------------------------------------------------------

-- 1. Find how many distinct sets of tags there are in the products table.

select distinct tags from products;

-- 2. Find all the rows of purchases made from either Virginia (VA) or Wisconsin (WI).

select * from purchases where state in ('VA', 'WI');

-- 3. Find all the rows of the purchases made by people with the first name of "Johnathan".

select * from purchases where name like 'Johnathan %';

-- 4. How many purchases were made by people whose last name starts with an 'A'?

select * from purchases where name like '% A%';

-- 5. Find the most recent purchase made within each state.

select state, min(created_at) from purchases group by state;

----------------------------------------
-- EXTRA CREDIT: If you finish early. --
----------------------------------------

-- 1. Use the DATE_PART() function to find the number of users created during each day of the week.
--    Hint: Use 'dow' as the first input, which stand for "day of the week"	

select date_part('dow', created_at) as "day of week", count(*) from users group by "day of week"