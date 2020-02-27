-- EXERCISE SET #5: JOINS 

-----------
-- TIPS: --
-----------

-- 1) Hit CTRL-ENTER to execute all SQL.
-- 2) Highlight code before hitting CTRL-ENTER to execute ONLY THOSE LINES.
-- 3) Lines that start with a double hyphen ("--") are NOT executed.

-------------------------------------------------------------------
-- WARM UPS: Type the following commands to build muscle memory. --
-------------------------------------------------------------------

-- 1. [Inner Join]: SELECT name, email 
--                  FROM purchases INNER JOIN users 
--                  ON purchases.user_id = users.id;


-- 2. [Same join using aliases]: SELECT name, email 
--                               FROM users AS u join purchases AS p
--                               ON u.id = p.user_id;

-- 3. [Left Outer Join]: SELECT name, email 
--						 FROM users JOIN purchase_items
--                       ON users.id = purchase_items.user_id; 

--------------------------------------------------------
-- EXERCISES: Answer using the techniques from above. --
--------------------------------------------------------

-- 1. INNER JOIN the lead_user_sessions and lead_user_responses tables, 
-- on lead_user_sessions.id and lead_user_responses.session_id


-- 2. Modify the last query, aliasing lead_user_sessions as s and lead_user_responses as r.


-- 3. Using the same join, filter to just rows where 
--    utm_source is 'facebook' and questionKey is 'years_from_retirement'


-- 4. LEFT OUTER JOIN the lead_user_sessions and lead_users tables.


-- 5. Rewrite the above query using aliases.


-- 6. Filter to just the rows with crm_status of 'Valid' and funnel_completion_date of Oct 31, 2019.


----------------------------------------
-- EXTRA CREDIT: If you finish early. --
----------------------------------------

-- 1. Joins can combine more than two tables. Join the lead_users, lead_user_sessions, 
--    and lead_user_responses tables. Remember to use aliases.
