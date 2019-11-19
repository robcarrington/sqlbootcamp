-- EXERCISE SET #8: Review

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

select * from purchase_items where quantity > 
(select avg(quantity) from purchase_items);

-- 2. Join the purchases and purchase_items tables, using aliases.

select * 
from purchases p join purchase_items pi
on p.id = pi.purchase_id;

-- 3. Using the same join, group by to find when the first recorded purchase occurred in each state.

select state, min(p.created_at) 
from purchases p join purchase_items pi
on p.id = pi.purchase_id
group by p.state;

-- 4. Find the most recent purchase made by a user with Yahoo email address.

select * 
from purchases join users
on purchases.user_id = users.id
where email like '%@yahoo.com'
order by p.created_at limit 1


-- 5. Write a conditional that will categorize each purchase as 'West Coast' (if it 
--    was ordered from CA, OR, or WA) or 'Other'

select state, case 
	when (state in ('CA', 'OR', 'WA')) then 'West Coast'
	else 'Other'
	end
from purchases;


-- 6. Use a join between the products and purchase_items table to find 
--    all the purchase_ids involving a product tagged '{Technology}'

select * 
from products join purchase_items
on proudcts.id = purchase_items.id
where tags @> '{Technology}';
