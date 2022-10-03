create table shop2(product char(20), quantity int(5), price int(3))

insert into shop2 values('pepsi cola', 341, 55),
('coca cola', 314, 60),
('virgin cola', 134, 45),
('lidl cola', 340, 38)

select product, quantity from shop

SELECT product, quantity*price as Amount, quantity*price*9/100 as Tax from shop2