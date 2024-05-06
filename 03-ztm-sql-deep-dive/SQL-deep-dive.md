# Changing Column Names

## Naming a column

You can change the name used in the output of a query 

```sql
SELECT column as 'new name';
```

---

So you want to get a list of all the department titles in your company: 

But you want it too look nicer than the column name in the table: **dept_name**

```sql
SELECT dept_name as "Department Name" FROM "public"."departments";
```

## Naming several columns: 

We want to rename several columns 

```sql
SELECT emp_no as "Employee Number", birth_date AS "Date of Birth", first_name as "First Name", last_name AS "Last Name" from "public"."employees";
```

---

# Concat Function 

We want to pull two columns (first / last name) and concat into a single column

```sql

SELECT CONCAT(first_name, ' ', last_name) FROM employees;
```
**NB**: when renaming, we used the double quotes, but for a single character, this does not work, we need to use single quotes for this one

With above, we notice that the new colum (of concattinated names) is called 'concat' so also need **AS**:

```sql

SELECT CONCAT(first_name, ' ', last_name) AS "Name" FROM employees;
```

# What is a function in SQL? 

- something that takes an Input and generates an Output
- set of steps that creates a single value 

## two types of functions

- **Aggregate** 
  - aggregate many data and provide a single value
  - like the sum of a column
  - e.g. one per column
  - Or One per table
  - etc
  - the output is basically the summary of the paremeters provided 

- **Scalar**
  - run against each individual row
  - multiple outputs returned 
  - e.g. one per row
  - operate on each record, one at a time

# Aggregate Functions

Some examples;

- AVG()
- COUNT()
- MIN()
- MAX()
- SUM()
  
More [Aggregate Functions](https://www.postgresql.org/docs/12/functions-aggregate.html)

```sql
select count(emp_no)FROM employees;
--3000024
```