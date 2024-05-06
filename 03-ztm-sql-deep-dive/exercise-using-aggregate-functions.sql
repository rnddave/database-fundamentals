-- Get the highest salary available: 

SELECT
    max(salary)
FROM "public"."salaries";

-- 158220

-- I did wonder if this might catch legacy salaries so also ran using this: 

SELECT
	max(salary)
FROM "public"."salaries"
WHERE 
	"to_date" > '9998-01-01';

-- which produced the same answer

----------------------------------------
-- Get the total amount of salaries paid

SELECT
	sum(salary)
FROM "public"."salaries"
WHERE 
	"to_date" > '9998-01-01';

-- 17291866123
-- I added comma to make easier to read for me :
-- 17,291,866,123

