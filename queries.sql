-- 1. List all customers
SELECT * FROM restaurant.Customer;

-- 2. Show all orders along with customer and waiter names
SELECT 
    o.OrderId, 
    c.C_Name AS Customer, 
    w.W_Name AS Waiter, 
    o.OrderTime, 
    o.OrderStatus, 
    o.OrderTotal
FROM restaurant.Orders o
JOIN restaurant.Customer c ON o.CustomerId = c.Customer_Id
JOIN restaurant.Waiter w ON o.Waiter_Id = w.Waiter_Id;

-- 3. Show total sales made on a specific date
SELECT 
    PDate, 
    SUM(Amount) AS Total_Sales
FROM restaurant.Payment_Processor
GROUP BY PDate;

-- 4. Find orders that are still pending
SELECT 
    OrderId, 
    OrderTime, 
    TableNo, 
    OrderStatus
FROM restaurant.Orders
WHERE OrderStatus = 'Pending';

-- 5. Get all kitchen staff earning more than 30,000
SELECT * 
FROM restaurant.KitchenStaff 
WHERE KS_Salary > 30000;

-- 6. Show total number of orders handled by each waiter
SELECT 
    w.W_Name, 
    COUNT(o.OrderId) AS Total_Orders
FROM restaurant.Waiter w
JOIN restaurant.Orders o ON w.Waiter_Id = o.Waiter_Id
GROUP BY w.W_Name;

-- 7. Show customers who placed an order above 900 BDT
SELECT 
    c.C_Name, 
    o.OrderId, 
    o.OrderTotal
FROM restaurant.Orders o
JOIN restaurant.Customer c ON o.CustomerId = c.Customer_Id
WHERE o.OrderTotal > 900;

-- 8. List all suppliers located in 'Dhaka'
SELECT * 
FROM restaurant.Supplier
WHERE S_Address LIKE '%Dhaka%';

-- 9. Find total payment collected by each payment method
SELECT 
    PType AS Payment_Method, 
    SUM(Amount) AS Total_Collected
FROM restaurant.Payment_Processor
GROUP BY PType;

