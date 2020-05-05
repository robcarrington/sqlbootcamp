-- EXERCISE SET 303: Group By and Having

-----------
-- TIPS: --
-----------

-- 1) Hit CTRL-ENTER to execute all SQL.
-- 2) Highlight code before hitting CTRL-ENTER to execute ONLY THOSE LINES.
-- 3) Lines that start with a double hyphen ("--") are NOT executed.

-------------------------------------------------------------------
-- WARM UPS: Type the following commands to build muscle memory. --
-------------------------------------------------------------------

-- 1. [Group by using a HAVING filter]: SELECT state, COUNT(id) 
--                                      FROM purchases 
--                                      GROUP BY state 
--                                      HAVING COUNT(id) > 100;

--------------------------------------------------------
-- EXERCISES: Answer using the techniques from above. --
--------------------------------------------------------

-- 1. Find the combined value of all questions for each air_date.


-- 2. Add a HAVING clause to the last query to find the dates 
--    when all the questions had a combined value < 10,000


-- 3. Find the value of the highest-value question for each show_number.


-- 4. Which shows had a question worth more than $2000?


----------------------------------------
-- EXTRA CREDIT: If you finish early. --
----------------------------------------

-- 1. The LENGTH() function will return the length of character columns.
--    Use LENGTH() and a group by to display the air_date in order of longest
--    average question length to shorted average question length.