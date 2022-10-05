-- we need to find the names of people that came 1st, 2nd, 3rd position

select max(marks) from schools

select max(marks) from schools where marks < (select max(marks) from schools)