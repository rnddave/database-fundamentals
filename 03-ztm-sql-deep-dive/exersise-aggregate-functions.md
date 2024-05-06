# Exercise: Aggregate Functions

Time to sharpen those skills!

The following exercises are there to help you flex those SQL muscles you've just built!

[Questions](https://academy.zerotomastery.io/courses/complete-sql-database-bootcamp-zero-to-mastery/lectures/23658992)

```sql
-- BEFORE YOU START
/*
 * What database should I use for these exercises?
 * Name: Employees
 */
-- 
----------------------------------------------------------------
-- Question 1: What is the average salary for the company?
-- Table: Salaries

SELECT
	avg(salary)
FROM "public"."salaries"
WHERE 
	"to_date" > '9998-01-01';

-- 72,012.235857307058

----------------------------------------------------------------

-- Question 2: What year was the youngest person born in the company?
-- Table: employees

SELECT
	max(birth_date)
FROM "public"."employees"

----------------------------------------------------------------
-- 1965-02-01

----------------------------------------------------------------
-- BEFORE YOU START
/*
 * What database should I use for these exercises?
 * Name: France
 */
-- 
----------------------------------------------------------------
-- Question 1: How many towns are there in france?
-- Table: Towns

SELECT
    count(towns)
FROM "public"."towns";

-- 36684

----------------------------------------------------------------
-- BEFORE YOU START
/*
 * What database should I use for these exercises?
 * Name: World
 */
-- 
----------------------------------------------------------------
-- Question 1: How many official languages are there?
-- Table: countrylanguage

SELECT
	count(isofficial)
FROM "public"."countrylanguage"
    where isofficial = TRUE;

-- 238 (I did not consider if unique in this query)

----------------------------------------------------------------
-- Question 2: What is the average life expectancy in the world?
-- Table: country

SELECT
	avg(lifeexpectancy)
FROM "public"."country";

-- 66.486

----------------------------------------------------------------
-- Question 3: What is the average population for cities in the netherlands?
-- Table: city

SELECT
	avg(population)
FROM "public"."city"
    where countrycode = 'NLD';

-- 185001.75
```

