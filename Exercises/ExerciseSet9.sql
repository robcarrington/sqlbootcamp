-- EXERCISE SET #9: Modifying Tables

-----------
-- TIPS: --
-----------

-- 1) Hit CTRL-ENTER to execute all SQL.
-- 2) Highlight code before hitting CTRL-ENTER to execute ONLY THOSE LINES.
-- 3) Lines that start with a double hyphen ("--") are NOT executed.

-------------------------------------------------------------------
-- WARM UPS: Type the following commands to build muscle memory. --
-------------------------------------------------------------------

-- 1. [Replace]: SELECT REPLACE(title, 'TV', 'Television') FROM products;

-- 2. [Insert]: INSERT INTO products VALUES (21, 'Fiction Book', 12, NOW(), null, '{Book}');           

-- 3. [Update]: UPDATE products SET title = 'New Book', tags = '{Technology, Book}' 
--              WHERE title='Fiction Book';

-- 4. [Commit]: BEGIN; INSERT INTO products VALUES (22, 'Non-Fiction Book', 13, NOW(), null, '{Book}'); COMMIT; 

-- 5. [Rollback]: BEGIN; UPDATE products SET title = 'Big Mistake'; ROLLBACK;

--------------------------------------------------------
-- EXERCISES: Answer using the techniques from above. --
--------------------------------------------------------

-- 1. Add yourself to the users table. You can leave the password and details blank (null).

-- 2. To practice cleaning data in SQL, let's say Yahoo e-mail addresses are switching to Verizon.
--    First, SELECT all the Yahoo email addresses in the users table.

-- 3. Using the WHERE clause from the last question, do an UPDATE setting the 'email' column 
--    to the new Verizon version using REPLACE(). Remember to use transactions when doing an UPDATE.

-- 4. For more practice, let's say the CDs are being replaced by playlists. First, select all the 
--    products that contain the word CD in them.

-- 3. Using the WHERE clause from the last question, do an UPDATE setting the 'title' column 
--    to the new version substituting 'playlist' for CD. Remember to use transactions when doing an UPDATE.

----------------------------------------
-- EXTRA CREDIT: If you finish early. --
----------------------------------------

-- 1. The CAST() function will convert values across different data types, e.g. CAST(price as int).
--    Clean up the price column of the products table by converting the values to the type money.
