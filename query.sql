CREATE DATABASE QuanLyBanHang;
USE QuanLyBanHang;
CREATE TABLE customers(
cID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
cName VARCHAR(50),
cAge INT CHECK(cAge >= 0)
);
CREATE TABLE orders(
oID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
cID INT,
oDate DATETIME,
oTotalPrice FLOAT,
FOREIGN KEY (cID) REFERENCES customers(cID)
);
CREATE TABLE products(
pID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
pName VARCHAR(50),
pPrice FLOAT CHECK (pPrice > 0)
);
CREATE TABLE orderDetails(
pID INT, oID INT,
FOREIGN KEY(pID) REFERENCES products(pID),
FOREIGN KEY(oID) REFERENCES orders(oID),
PRIMARY KEY(pID, oID),
oQuantity FLOAT CHECK (oQuantity > 0)
);