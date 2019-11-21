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

-- 2. [Update]: UPDATE products 
--              SET title = 'New Book'
--              WHERE title = 'Fiction Book';

--------------------------------------------------------
-- EXERCISES: Answer using the techniques from above. --
--------------------------------------------------------

-- 1. To practice cleaning data in SQL, let's say AOL e-mail addresses are switching to Verizon.
--    First, SELECT all the AOL email addresses in the users table.

select * from users where email like '%aol.com';

-- 2. Using the WHERE clause from the last question, do an UPDATE setting the 'email' column 
--    to the new Verizon version using REPLACE(). Remember to use transactions when doing an UPDATE.

begin;
update users
set email = replace(email, 'aol', 'verizon')
where email like '%aol.com';
commit;

-- 3. For more practice, let's say the CDs are being replaced by playlists. First, select all the 
--    products that contain the word CD in them.

select * from products where title like '% CD';

-- 4. Using the WHERE clause from the last question, do an UPDATE setting the 'title' column 
--    to the new version substituting 'playlist' for CD. Remember to use transactions when doing an UPDATE.

begin;
update products
set title = replace(title, ' CD', ' playlist')
where title like '% CD';
commit;