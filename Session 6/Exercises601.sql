-- EXERCISE SET #11: CREATE TABLES AND VIEWS 

-----------
-- TIPS: --
-----------

-- 1) Hit CTRL-ENTER to execute all SQL.
-- 2) Highlight code before hitting CTRL-ENTER to execute ONLY THOSE LINES.
-- 3) Lines that start with a double hyphen ("--") are NOT executed.

-------------------------------------------------------------------
-- WARM UPS: Type the following commands to build muscle memory. --
-------------------------------------------------------------------

-- 1. [View]: CREATE VIEW gmailView AS
--            SELECT * FROM users WHERE email like '%gmail.com';

-- 2. [Table]: CREATE TABLE vendor (
			--    id SERIAL PRIMARY KEY,
			--    name VARCHAR (MAX) NOT NULL,
			-- );


--------------------------------------------------------
-- EXERCISES: Answer using the techniques from above. --
--------------------------------------------------------

-- 1. Join the purchases and purchase_items tables. Do a group by to
--    find out how much money each user has spent in total.

-- 2. Store the joined table as a view.

-- 3. Rewrite the groupby query using the view instead.

-- 4. Create a new table 'coupons' with the follwing columns:
--    * id (serial, primary key)
--    * name (varchar (200))
--    * code (varchar (10), not null)
--    * percent (float32, not null)




