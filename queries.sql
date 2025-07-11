-- 1. List all customers
SELECT * FROM restaurant.Customer;

-- 2. Show all orders along with customer and waiter names
SELECT OrderId, C_Name, W_Name, OrderTime, OrderStatus, OrderTotal
FROM restaurant.Orders
JOIN restaurant.Customer ON Orders.CustomerId = Customer.Customer_Id
JOIN restaurant.Waiter ON Orders.Waiter_Id = Waiter.Waiter_Id;

-- 3. Show total sales made on a specific date
SELECT PDate, SUM(Amount) AS Total_Sales
FROM restaurant.Payment_Processor
GROUP BY PDate;

-- 4. Find orders that are still pending
SELECT OrderId, OrderTime, TableNo, OrderStatus
FROM restaurant.Orders
WHERE OrderStatus = 'Pending';

-- 5. Get all kitchen staff earning more than 30,000
SELECT * 
FROM restaurant.KitchenStaff 
WHERE KS_Salary > 30000;

-- 6. Show total number of orders handled by each waiter
SELECT Waiter.W_Name, COUNT(Orders.OrderId) AS Total_Orders
FROM restaurant.Waiter
JOIN restaurant.Orders ON Waiter.Waiter_Id = Orders.Waiter_Id
GROUP BY Waiter.W_Name;

-- 7. Show customers who placed an order above 900 BDT
SELECT C_Name, OrderId, OrderTotal
FROM restaurant.Orders
JOIN restaurant.Customer ON Orders.CustomerId = Customer.Customer_Id
WHERE Orders.OrderTotal > 900;

-- 8. List all suppliers located in 'Dhaka'
SELECT * 
FROM restaurant.Supplier
WHERE S_Address LIKE '%Dhaka%';

-- 9. Find total payment collected by each payment method
SELECT PType AS Payment_Method, SUM(Amount) AS Total_Collected
FROM restaurant.Payment_Processor
GROUP BY PType;
