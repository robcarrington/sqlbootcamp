-- EXERCISE SET #10: VIEWS and FUNCTIONS

-----------
-- TIPS: --
-----------

-- 1) Hit CTRL-ENTER to execute all SQL.
-- 2) Highlight code before hitting CTRL-ENTER to execute ONLY THOSE LINES.
-- 3) Lines that start with a double hyphen ("--") are NOT executed.

-------------------------------------------------------------------
-- WARM UPS: Type the following commands to build muscle memory. --
-------------------------------------------------------------------

-- 1. [View]: CREATE VIEW aolUsers AS
--            SELECT * FROM users WHERE email like '%aol.com';

-- 2. [Function]: CREATE OR REPLACE FUNCTION userEmail (user_id numeric)
--                RETURNS text AS $result$
--                DECLARE
--             	  result text;
--                BEGIN
--                SELECT email into result FROM users;
--                RETURN result;
--                END;
--                $result$ LANGUAGE plpgsql;

--------------------------------------------------------
-- EXERCISES: Answer using the techniques from above. --
--------------------------------------------------------

-- 1. Join the purchases and purchase_items tables. Do a group by to
--    find out how much money each user has spent in total.

-- 2. Store the previous query as a view.

-- 3. Using your new view, write a function that takes a user_id and returns 
--    how much money that user has spent.

-- 4. Join the purchase_items and purchases tables. Do a group by to find the 
--    total amount of money spent on each product.

-- 5. Store the previous query as a view.

-- 6. Write a function, using the new view, which will take a product_id and 
---   return the total amount of money spend on that product.

----------------------------------------
-- EXTRA CREDIT: If you finish early. --
----------------------------------------

-- 1. Write a function that will, given a product_id, return the email address of
--    the user who purchased it most recently.
