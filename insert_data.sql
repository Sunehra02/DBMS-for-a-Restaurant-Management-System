-- Insert customer records
INSERT INTO restaurant.Customer (Customer_Id, C_Name, C_Email, C_Phone)
VALUES 
(c1, 'Tanvir Ahmed', 'tanvir@example.com', '01711122334'),
(c2, 'Maria Hossain', 'maria@example.com', '01812345678'),
(c3, 'Rafiul Islam', 'rafiul@example.com', '01987654321');S


-- Insert kitchen staff records
INSERT INTO restaurant.KitchenStaff (KStaffId, KS_Name, KS_Role, KS_Salary, KS_Phone)
VALUES
(104, 'Shahin Khan', 'Head Chef', 45000.00, '01700123456'),
(105, 'Nusrat Jahan', 'Grill Chef', 35000.00, '01822334455'),
(106, 'Masud Rana', 'Line Cook', 25000.00, '01999887766');


-- Insert payment processor records
INSERT INTO restaurant.Payment_Processor (PaymentId, OrderId, Amount, PType, PDate)
VALUES
(201, 301, 1200.50, 'Credit Card', '2025-07-05'),
(202, 302, 750.00, 'Cash', '2025-07-06'),
(203, 303, 985.75, 'Mobile Payment', '2025-07-06');


-- Insert waiter records
INSERT INTO restaurant.Waiter (Waiter_Id, W_Name, W_Salary, W_Phone, WHiringDate)
VALUES
(401, 'Junaisha', 18000.00, '01711998877', '2023-01-15'),
(402, 'Azyman', 20000.00, '01833445566', '2024-03-10'),
(403, 'Rauf', 19500.00, '01677889900', '2022-11-05');


-- Insert orders records
INSERT INTO restaurant.Orders (OrderId, CustomerId, Waiter_Id, OrderTime, TableNo, OrderStatus, OrderTotal)
VALUES
(301, 1, 401, '2025-07-05 12:15:00', 5, 'Served', 1200),
(302, 2, 402, '2025-07-06 13:45:00', 3, 'Pending', 750),
(303, 3, 403, '2025-07-06 14:20:00', 1, 'Served', 986);


-- Insert supplier records
INSERT INTO restaurant.Supplier (SupplierId, S_Name, S_Phone, S_Address, S_Email)
VALUES
(501, 'FreshMart Ltd.', '01811223344', 'Banani, Dhaka', 'fresh@fm.com'),
(502, 'AgroSource BD', '01755667788', 'Uttara, Dhaka', 'agro@bd.com'),
(503, 'Ocean Foods', '01933445566', 'Mohakhali, Dhaka', 'ocean@sea.com');
