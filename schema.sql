CREATE Database Restaurant;
CREATE TABLE restaurant.Customer (
    Customer_Id INT (34),
    C_Name VARCHAR(24),
    C_Email VARCHAR(100),
    C_Phone VARCHAR(15),
    primary key (Customer_Id)
);

CREATE TABLE restaurant.KitchenStaff (
	KStaffId INT (23),
    KS_Name VARCHAR(100),
    KS_Role VARCHAR(50),
    KS_Salary DECIMAL(10, 2),
    KS_Phone VARCHAR(20),
    primary key (KStaffId)
);

CREATE TABLE restaurant.Payment_Processor (
    PaymentId INT (45),
    OrderId INT (45),
    Amount DECIMAL(10, 2),
    PType VARCHAR(50),
    PDate DATE,
	primary key (PaymentId)
);

CREATE TABLE restaurant.Waiter (
    Waiter_Id INT (34),
    W_Name VARCHAR(43),
    W_Salary DECIMAL(10, 2),
    W_Phone VARCHAR(20),
    WHiringDate DATE,
    PRIMARY KEY ( Waiter_Id )
);

CREATE TABLE restaurant.Orders (
    OrderId INT (34),
    CustomerId INT (34),
    Waiter_Id INT (34),
    OrderTime DATETIME,
    TableNo INT (2),
    OrderStatus VARCHAR(50),
    OrderTotal INT (10),
    PRIMARY KEY ( OrderId) 
);

CREATE TABLE restaurant.Supplier (
    SupplierId INT (45),
    S_Name VARCHAR(56),
    S_Phone VARCHAR(20),
    S_Address VARCHAR(25),
    S_Email VARCHAR(10),
     PRIMARY KEY (SupplierId)
);
