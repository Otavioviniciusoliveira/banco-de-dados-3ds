CREATE TABLE Customers (
    CustomerID TEXT,
    CustomerName TEXT,
    Address TEXT,
    City TEXT,
    PostalCode TEXT,
    Country TEXT
);

CREATE TABLE Orders (
    OrderID INTEGER,
    CustomerID TEXT,
    EmployeeID INTEGER,
    OrderDate TEXT,
    ShipperID INTEGER
);

CREATE TABLE Employees (
    EmployeeID INTEGER,
    LastName TEXT,
    FirstName TEXT,
    BirthDate TEXT,
    Photo TEXT,
    Notes TEXT
);

CREATE TABLE Shippers (
    ShipperID INTEGER,
    ShipperName TEXT,
    Phone TEXT
);

CREATE TABLE OrderDetails (
    OrderDetailID INTEGER,
    OrderID INTEGER,
    ProductID INTEGER,
    Quantity INTEGER
);

CREATE TABLE Products (
    ProductID INTEGER,
    ProductName TEXT,
    SupplierID INTEGER,
    CategoryID INTEGER,
    Unit TEXT,
    Price REAL
);

CREATE TABLE Categorias (
    CategoryID INTEGER,
    CategoryName TEXT,
    Description TEXT
);

CREATE TABLE Suppliers (
    SupplierID INTEGER,
    SupplierName TEXT,
    ContactName TEXT,
    Address TEXT,
    City TEXT,
    PostalCode TEXT,
    Country TEXT,
    Phone TEXT
);
