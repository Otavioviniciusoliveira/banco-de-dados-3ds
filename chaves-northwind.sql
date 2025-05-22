ALTER TABLE Customers
ADD CONSTRAINT PK_Customers PRIMARY KEY (CustomerID);

ALTER TABLE Orders
ADD CONSTRAINT PK_Orders PRIMARY KEY (OrderID);

ALTER TABLE Employees
ADD CONSTRAINT PK_Employees PRIMARY KEY (EmployeeID);

ALTER TABLE Shippers
ADD CONSTRAINT PK_Shippers PRIMARY KEY (ShipperID);

ALTER TABLE OrderDetails
ADD CONSTRAINT PK_OrderDetails PRIMARY KEY (OrderDetailID);

ALTER TABLE Products
ADD CONSTRAINT PK_Products PRIMARY KEY (ProductID);

ALTER TABLE Categorias
ADD CONSTRAINT PK_Categorias PRIMARY KEY (CategoryID);

ALTER TABLE Suppliers
ADD CONSTRAINT PK_Suppliers PRIMARY KEY (SupplierID);

ALTER TABLE Orders
ADD CONSTRAINT FK_Orders_Customers
FOREIGN KEY (CustomerID) REFERENCES Customers (CustomerID);

ALTER TABLE Orders
ADD CONSTRAINT FK_Orders_Employees
FOREIGN KEY (EmployeeID) REFERENCES Employees (EmployeeID);

ALTER TABLE Orders
ADD CONSTRAINT FK_Orders_Shippers
FOREIGN KEY (ShipperID) REFERENCES Shippers (ShipperID);

ALTER TABLE OrderDetails
ADD CONSTRAINT FK_OrderDetails_Orders
FOREIGN KEY (OrderID) REFERENCES Orders (OrderID);

ALTER TABLE OrderDetails
ADD CONSTRAINT FK_OrderDetails_Products
FOREIGN KEY (ProductID) REFERENCES Products (ProductID);

ALTER TABLE Products
ADD CONSTRAINT FK_Products_Suppliers
FOREIGN KEY (SupplierID) REFERENCES Suppliers (SupplierID);

ALTER TABLE Products
ADD CONSTRAINT FK_Products_Categorias
FOREIGN KEY (CategoryID) REFERENCES Categorias (CategoryID);
