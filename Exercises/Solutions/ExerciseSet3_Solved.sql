-- EXERCISE SET #3: TEXT FILTERS AND LOGICAL OPERATORS

-----------
-- TIPS: --
-----------

-- 1) Hit CTRL-ENTER to execute all SQL.
-- 2) Highlight code before hitting CTRL-ENTER to execute ONLY THOSE LINES.
-- 3) Lines that start with a double hyphen ("--") are NOT executed.

-------------------------------------------------------------------
-- WARM UPS: Type the following commands to build muscle memory. --
-------------------------------------------------------------------

-- 1. [Filter with wildcard]: select * from products where title like '%Book%;

-- 2. [Filter using AND]: select * from products where title like '% TV' and price < 500;

-- 3. [Filter using OR]: select * from purchases where state = 'FL' or zipcode=98937;

-- 4. [Filter using NOT]: select * from products where not price = 14.99;

-------------------------------------------------------------------
-- EXERCISES: Answer using the techniques from above. --
-------------------------------------------------------------------

-- 1. Find all the users whose email address is with AOL.

select * from users where email like '%@aol.com'

-- 2. Find all the purchases made in Florida or Texas.

select * from purchases where state = 'FL' or state = 'TX'

-- 3. Select all the products that include the word 'Book' and cost more than $10.

select * from products where title like '%Book%' and price > 10

-- 4. Find all the products that do NOT contain "CD" in the title.

select * from products where title not like '%CD%'
