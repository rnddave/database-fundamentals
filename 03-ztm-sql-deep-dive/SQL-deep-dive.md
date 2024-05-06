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

SELECT CONCAT(first_name, ' ', last_name) FROM employeers;
```

**NB**: when renaming, we used the double quotes, but for a single character, this does not work, we need to use single quotes for this one

