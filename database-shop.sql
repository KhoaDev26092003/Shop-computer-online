-- Tạo bảng Account
CREATE TABLE Account (
    ID SERIAL PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL CHECK (LENGTH(username) > 5),
    password VARCHAR(100) NOT NULL CHECK (LENGTH(password) > 5 ),
    role VARCHAR(10) DEFAULT 'user' CHECK (role IN ('user', 'admin' , 'guest'))
);

-- Tạo bảng Products
CREATE TABLE Products (
    ID SERIAL PRIMARY KEY,
    Name VARCHAR(200) UNIQUE NOT NULL,
    BrandName VARCHAR(50),
    Price INT NOT NULL CHECK (Price >= 0),
    Category VARCHAR(50) DEFAULT 'Màn hình' CHECK (Category IN ('Màn hình', 'VGA', 'Laptop')),
    Quantity INT NOT NULL CHECK (Quantity >= 0) DEFAULT 0,
	slug_url TEXT
);

-- Tạo bảng ListImage
CREATE TABLE ListImage (
    ID SERIAL PRIMARY KEY,
    IDProduct INT NOT NULL REFERENCES Products(ID) ON DELETE CASCADE,
    Description VARCHAR(50) CHECK (Description IN ('ProductTitle' , 'ProductDetail')) DEFAULT 'ProductDetail',
    URL TEXT NOT NULL
);
DROP TABLE ListImage
-- Tạo bảng Bill
CREATE TABLE Bill (
    ID SERIAL PRIMARY KEY,
    Time TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    IDAccount INT NOT NULL REFERENCES Account(ID) ON DELETE CASCADE,
    TotalMoney INT DEFAULT 0
);
SELECT * FROM LISTIMAGE

-- Tạo bảng BillDetail
CREATE TABLE BillDetail (
    ID SERIAL PRIMARY KEY,
    IDBill INT NOT NULL REFERENCES Bill(ID) ON DELETE CASCADE,
    IDProduct INT NOT NULL REFERENCES Products(ID) ON DELETE CASCADE,
    Price INT NOT NULL,
    Quantity INT NOT NULL CHECK (Quantity > 0)
);
