# DQL & SELECT 

This where we spend most of our time on this course.

---

- Q = Give me a list of all employees in company 
- A = SELECT * FROM 'employees';

    SELECT
    	*
    FROM "public"."employees";

Using Valentina Studio: 

- from the **Schema Editor** view
- right click on EMployees Database
- select **Open SQL Editor**
- will see a list of schemas, navigate to one you want (we only have a public schema in this instance)
- navigate to table, employees

2* options

- a. Right ckick on the table and select **generate query** chose type of query 
  - this brings up a query builder, very simple

- b. In query window just type the query directly 
  - select * from (you can then write schema.table (names) OR just drag the table from list on left to the query editor window and it will add name for you)

---

- Q = How many times has employee 10001 had a pay rise? 
- A = 

    SELECT
	*
    FROM "public"."salaries"
    WHERE 
        "emp_no" = 10001;

- This returned 17 records 

---

- Q = What title does employee 10006 have? 
- A = 

    SELECT
        "title"
    FROM "public"."titles"
    WHERE 
        "emp_no" = 10006;

- Senior Engineer 