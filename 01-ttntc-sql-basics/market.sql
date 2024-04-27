create table market(product char(20), qty_Purchased int(5), qty_Sold int(5), price_purchased numeric(6,2), price_sold numeric(6,2))

-- let's populate the table with some info

insert into market values('pepsi', 500, 137, 0.38, 0.65),
('Dr Pepper', 1000, 997, 0.37, 0.65),
('7Up', 400, 372, 0.48, 0.65),
('Lilt', 700, 137, 0.28, 0.65),

-- we want to see any products with less than 5 left in stock

select product, qty_Purchased-qty_Sold AS 'Stock' from market WHERE qty_Purchased-qty_Sold <5

-- now we want to find the profit for items sold
-- price sold - price purchased

select product, qty_Sold AS 'Items Sold', (price_sold-price_purchased)*qty_Sold AS 'profit' from market

-- lets order data in our reports (defaul is asscending order)

select * from market order by qty_Purchased

-- lets order data in our reports (in descending order)

select * from market order by product DESC