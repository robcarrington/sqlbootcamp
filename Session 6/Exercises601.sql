-- EXERCISE SET 601: Transactions and Inserts

-----------
-- TIPS: --
-----------

-- 1) Hit CTRL-ENTER to execute all SQL.
-- 2) Highlight code before hitting CTRL-ENTER to execute ONLY THOSE LINES.
-- 3) Lines that start with a double hyphen ("--") are NOT executed.

-------------------------------------------------------------------
-- WARM UPS: Type the following commands to build muscle memory. --
-------------------------------------------------------------------

-- 1. [Begin Transaction]: BEGIN;

-- 2. [Insert]: INSERT INTO products VALUES (29, 'Fiction Book', 12, NOW(), null, '{Book}');           

-- 3. [Save Transaction]: COMMIT; 

-- 4. [Undo Transaction]: ROLLBACK;

--------------------------------------------------------
-- EXERCISES: Answer using the techniques from above. --
--------------------------------------------------------

-- 1. Add yourself to the users table. You can leave the password and details blank (null).

-- 2. Add a new row to the purchases table, using your user_id as a foreign key.

-- 3. You can specify a subset of columns after INSERT INTO,  e.g. INSERT INTO users (id, email) VALUES (1, 'bob@gmail.com');
--    Use this syntax to insert a new product into the products table.

-- 4. Well-designed tables will auto-increment the id column. 
--    Insert into the users table, but use the new syntax to leave off the id column

----------------------------------------
-- EXTRA CREDIT: If you finish early. --
----------------------------------------

-- 1. The CAST() function will convert values across different data types, e.g. CAST(price as int).
--    Clean up the price column of the products table by converting the values to the type money.
