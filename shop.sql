-- create a table

create table shop2(product char(20), quantity int(5), price int(3))

-- let's populate the table with some info

insert into shop2 values('pepsi cola', 341, 55),
('coca cola', 314, 60),
('virgin cola', 134, 45),
('lidl cola', 340, 38)

-- selecting specific things

select product, quantity from shop

-- now we want to work out what the tax liability of our stock is: 
SELECT product, quantity*price as Amount, quantity*price*9/100 as Tax, quantity*price*0.91 as profit from shop2


-- and what are the potential profits? 
select product, quantity*price*0.91 as profit from shop2


