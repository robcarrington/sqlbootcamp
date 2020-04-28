-- EXERCISE SET 203: Jeopardy!

-----------
-- TIPS: --
-----------

-- 1) Hit CTRL-ENTER to execute all SQL.
-- 2) Highlight code before hitting CTRL-ENTER to execute ONLY THOSE LINES.
-- 3) Lines that start with a double hyphen ("--") are NOT executed.

-------------------------------------------------------------------
-- WARM UPS: Type the following commands to build muscle memory. --
-------------------------------------------------------------------

-- 1. [Count distinct]: SELECT COUNT(DISTINCT value) FROM jeopardy;

-- 2. [Case-insensitive pattern match]: SELECT * FROM jeopardy WHERE ILIKE '';

--------------------------------------------------------
-- EXERCISES: Answer using the techniques from above. --
--------------------------------------------------------

-- 1. When is the earliest episode from the data set?

SELECT MIN(air_date) FROM jeopardy;

-- 2. How many episodes of Jeopardy are in this data set?

SELECT COUNT(DISTINCT show_number) FROM jeopardy;

-- 3. Select all the answers that mention Nixon.

SELECT answer FROM jeopardy WHERE answer ILIKE '% nixon %';

-- 4. What's the value of the average 'Double Jeopardy!' question?

SELECT AVG(value) FROM jeopardy WHERE round = 'Double Jeopardy!';

-- 5. Select the Jeopardy answers begin with “a” or “the”?

SELECT answer FROM jeopardy WHERE answer ILIKE 'a %' OR answer ILIKE 'the %';

-- 6. How many questions with value > 400 involved the word China?

SELECT question FROM jeopardy WHERE question ILIKE '% china %';

----------------------------------------
-- EXTRA CREDIT: If you finish early. --
----------------------------------------

-- 1. Select rows from shows that took place in December.

SELECT * FROM jeopardy WHERE air_date LIKE '____-12-__';
