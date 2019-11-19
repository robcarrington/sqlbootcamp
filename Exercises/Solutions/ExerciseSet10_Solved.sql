-- EXERCISE SET #10: Modifying Tables

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

-- 2. [Update]: UPDATE products SET title = 'New Book', tags = '{Technology, Book}' 
--              WHERE title='Fiction Book';

--------------------------------------------------------
-- EXERCISES: Answer using the techniques from above. --
--------------------------------------------------------

-- 1. To practice cleaning data in SQL, let's say Yahoo e-mail addresses are switching to Verizon.
--    First, SELECT all the Yahoo email addresses in the users table.

select * from users where email like '%yahoo.com';

-- 2. Using the WHERE clause from the last question, do an UPDATE setting the 'email' column 
--    to the new Verizon version using REPLACE(). Remember to use transactions when doing an UPDATE.

update users
set email to replace(email, 'yahoo', 'verizon')
where email like 'yahoo.com';

-- 3. For more practice, let's say the CDs are being replaced by playlists. First, select all the 
--    products that contain the word CD in them.

select * from products where title like '% CD';

-- 4. Using the WHERE clause from the last question, do an UPDATE setting the 'title' column 
--    to the new version substituting 'playlist' for CD. Remember to use transactions when doing an UPDATE.

update products
set title to replace(title, 'CD', 'playlist')
where title like '% CD';