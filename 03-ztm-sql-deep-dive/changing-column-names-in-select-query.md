### Naming a column

You can change the name used in the output of a query 

    SELECT column as 'new name';

---

So you want to get a list of all the department titles in your company: 

But you want it too look nicer than the column name in the table: **dept_name**

    SELECT dept_name as "Department Name" FROM "public"."departments";

### Naming several columns: 

We want to rename several columns 

    SELECT emp_no as "Employee Number", birth_date AS "Date of Birth", first_name as "First Name", last_name AS "Last Name" from "public"."employees";

