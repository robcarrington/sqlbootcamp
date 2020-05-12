-- EXERCISE SET 501: Inner and Outer Joins

-----------
-- TIPS: --
-----------

-- 1) Hit CTRL-ENTER to execute all SQL.
-- 2) Highlight code before hitting CTRL-ENTER to execute ONLY THOSE LINES.
-- 3) Lines that start with a double hyphen ("--") are NOT executed.

-------------------------------------------------------------------
-- WARM UPS: Type the following commands to build muscle memory. --
-------------------------------------------------------------------

-- 1. [Inner Join]: SELECT *
--                  FROM users AS u 
--                  JOIN purchases AS p 
--                  ON p.user_id=u.id;

-- 2. [Left Join]: SELECT *
--                 FROM users AS u 
--                 LEFT JOIN purchases AS p 
--                 ON p.user_id=u.id;

-- 3. [Finding NULLS]: SELECT *
--                     FROM users AS u 
--                     WHERE details IS NULL;

--------------------------------------------------------
-- EXERCISES: Answer using the techniques from above. --
--------------------------------------------------------

-- 1. First, join the products table to the purchase_items 
--    table. Choose a join that will KEEP products even
--    if they don't have any associated purchase_items.

-- 2. Were there any products with no purchase? 
--    Query the joined table for rows with NULL quantity. 

-- 3. Now add a groupby to find the average quantity that
--    each product was purchased in.

-- 4. Let's find the total number of items associated with each purchase 
---   First, join the purchases and purchase_items table, so we have both purchase_id and quantity.
--    Which kind of join is appropriate here?

-- 5. Now use a group by to find the total quantity for each purchase_id.

----------------------------------------
-- EXTRA CREDIT: If you finish early. --
----------------------------------------

-- 1. Use a join between the products and purchase_items table to find 
--    all the purchase_ids involving a product tagged '{Technology}'
