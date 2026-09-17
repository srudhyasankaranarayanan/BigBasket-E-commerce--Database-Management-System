CREATE TABLE Inventory (
    Inventory_ID NUMBER PRIMARY KEY,
    Seller_ID NUMBER NOT NULL,
    Product_ID NUMBER NOT NULL,
    Stock_Quantity NUMBER DEFAULT 0,
    Stock_Status VARCHAR2(20) DEFAULT 'In Stock',
    Last_Updated DATE NOT NULL,
        CONSTRAINT fk_seller FOREIGN KEY (Seller_ID) REFERENCES Seller(SellerID),
        CONSTRAINT fk_product FOREIGN KEY (Product_ID) REFERENCES Product(Product_ID)
);
Table created .

INSERT INTO Inventory
VALUES (101, 1, 101, 50, 'In Stock',
        TO_DATE('16-09-2026','DD-MM-YYYY'));
1 row created.

INSERT INTO Inventory
VALUES (102, 1, 102, 0, 'Out of Stock',
        TO_DATE('16-09-2026','DD-MM-YYYY'));
1 row created.

INSERT INTO Inventory
VALUES (103, 2, 103, 30, 'In Stock',
        TO_DATE('16-09-2026','DD-MM-YYYY'));
1 row created.

INSERT INTO Inventory
VALUES (104, 2, 104, 15, 'In Stock',
        TO_DATE('16-09-2026','DD-MM-YYYY'));
1 row created.

INSERT INTO Inventory
VALUES (105, 3, 105, 0, 'Out of Stock',
        TO_DATE('16-09-2026','DD-MM-YYYY'));
1 row created.

INSERT INTO Inventory
VALUES (106, 3, 106, 25, 'In Stock',
        TO_DATE('16-09-2026','DD-MM-YYYY'));
1 row created.

INSERT INTO Inventory
VALUES (107, 4, 107, 40, 'In Stock',
        TO_DATE('16-09-2026','DD-MM-YYYY'));
1 row created.

INSERT INTO Inventory
VALUES (108, 4, 108, 0, 'Out of Stock',
        TO_DATE('16-09-2026','DD-MM-YYYY'));
1 row created.

INSERT INTO Inventory
VALUES (109, 5, 109, 20, 'In Stock',
        TO_DATE('16-09-2026','DD-MM-YYYY'));
1 row created.

INSERT INTO Inventory
VALUES (110, 5, 110, 0, 'Out of Stock',
        TO_DATE('16-09-2026','DD-MM-YYYY'));
1 row created.

Select * from Inventory;
INVENTORY_ID  SELLER_ID PRODUCT_ID STOCK_QUANTITY STOCK_STATUS         LAST_UPDA
------------ ---------- ---------- -------------- -------------------- ---------
         101          1        101             50 In Stock             16-SEP-26
         102          1        102              0 Out of Stock         16-SEP-26
         103          2        103             30 In Stock             16-SEP-26
         104          2        104             15 In Stock             16-SEP-26
         105          3        105              0 Out of Stock         16-SEP-26
         106          3        106             25 In Stock             16-SEP-26
         107          4        107             40 In Stock             16-SEP-26
         108          4        108              0 Out of Stock         16-SEP-26
         109          5        109             20 In Stock             16-SEP-26
         110          5        110              0 Out of Stock         16-SEP-26

10 rows selected.

Select
s.SellerID,
p.Product_name,
i.Stock_Quantity,
i.Stock_Status
From Seller s
join Inventory i
ON s.SellerID=i.Seller_ID
join Product p
ON i.Product_ID=p.Product_ID
Order by s.Seller_Name;

SELLERID PRODUCT_NAME                                       STOCK_QUANTITY
---------- -------------------------------------------------- --------------
STOCK_STATUS
--------------------
         2 Tablet                                                         30
In Stock

         2 Keyboard                                                       15
In Stock

         1 Laptop                                                         50
In Stock


  SELLERID PRODUCT_NAME                                       STOCK_QUANTITY
---------- -------------------------------------------------- --------------
STOCK_STATUS
--------------------
         1 Smartphone                                                      0
Out of Stock

         3 Mouse                                                           0
Out of Stock

         3 Monitor                                                        25
In Stock


  SELLERID PRODUCT_NAME                                       STOCK_QUANTITY
---------- -------------------------------------------------- --------------
STOCK_STATUS
--------------------
         5 Webcam                                                         20
In Stock

         5 Headphones                                                      0
Out of Stock

         4 Printer                                                        40
In Stock


  SELLERID PRODUCT_NAME                                       STOCK_QUANTITY
---------- -------------------------------------------------- --------------
STOCK_STATUS
--------------------
         4 Speaker                                                         0
Out of Stock


10 rows selected.

-- Avaliable Product

Select 
p.Product_ID,
p.Product_name,
i.Stock_Quantity,
i.Stock_Status
From Product p
join Inventory i
ON p.Product_ID=i.Product_ID
where i.Stock_Status='In Stock';

PRODUCT_ID PRODUCT_NAME                                       STOCK_QUANTITY
---------- -------------------------------------------------- --------------
STOCK_STATUS
--------------------
       101 Laptop                                                         50
In Stock

       103 Tablet                                                         30
In Stock

       104 Keyboard                                                       15
In Stock


PRODUCT_ID PRODUCT_NAME                                       STOCK_QUANTITY
---------- -------------------------------------------------- --------------
STOCK_STATUS
--------------------
       106 Monitor                                                        25
In Stock

       107 Printer                                                        40
In Stock

       109 Webcam                                                         20
In Stock


6 rows selected.

-- Out of Stock

Select 
p.Product_ID,
p.Product_name,
i.Stock_Quantity,
i.Stock_Status
From Product p
join Inventory i
ON p.Product_ID=i.Product_ID
where i.Stock_Status='Out of Stock';

PRODUCT_ID PRODUCT_NAME                                       STOCK_QUANTITY
---------- -------------------------------------------------- --------------
STOCK_STATUS
--------------------
       102 Smartphone                                                      0
Out of Stock

       105 Mouse                                                           0
Out of Stock

       108 Speaker                                                         0
Out of Stock


PRODUCT_ID PRODUCT_NAME                                       STOCK_QUANTITY
---------- -------------------------------------------------- --------------
STOCK_STATUS
--------------------
       110 Headphones                                                      0
Out of Stock
4 row selected.

UPDATE Inventory
SET Stock_Quantity = 30,
    Stock_Status = 'In Stock',
    Last_Updated = TO_DATE('17-09-2026','DD-MM-YYYY')
WHERE Inventory_ID = 110;
1 row updated.

UPDATE Inventory
SET Stock_Quantity = 10,
    Stock_Status = 'In Stock',
    Last_Updated = TO_DATE('17-09-2026','DD-MM-YYYY')
WHERE Inventory_ID = 102;
1 row updated.

SELECT *
FROM Inventory
WHERE Inventory_ID in(102,110);
INVENTORY_ID  SELLER_ID PRODUCT_ID STOCK_QUANTITY STOCK_STATUS         LAST_UPDA
------------ ---------- ---------- -------------- -------------------- ---------
         102          1        102             10 In Stock             17-SEP-26
         110          5        110             30 In Stock             17-SEP-26

Select Stock_Status,Count(*)as Total_Product
From Inventory
Group By Stock_Status;

STOCK_STATUS         TOTAL_PRODUCT
-------------------- -------------
In Stock                         8
Out of Stock                     2

SELECT
    i.Inventory_ID,
    s.Seller_Name,
    p.Product_Name,
    i.Stock_Quantity,
    i.Stock_Status,
    i.Last_Updated
FROM Inventory i
JOIN Seller s
ON i.Seller_ID = s.SellerID
JOIN Product p
ON i.Product_ID = p.Product_ID
ORDER BY i.Inventory_ID;

INVENTORY_ID
------------
SELLER_NAME
--------------------------------------------------------------------------------
PRODUCT_NAME                                       STOCK_QUANTITY
-------------------------------------------------- --------------
STOCK_STATUS         LAST_UPDA
-------------------- ---------
         101
Fresh Mart
Laptop                                                         50
In Stock             16-SEP-26


INVENTORY_ID
------------
SELLER_NAME
--------------------------------------------------------------------------------
PRODUCT_NAME                                       STOCK_QUANTITY
-------------------------------------------------- --------------
STOCK_STATUS         LAST_UPDA
-------------------- ---------
         102
Fresh Mart
Smartphone                                                     10
In Stock             17-SEP-26


INVENTORY_ID
------------
SELLER_NAME
--------------------------------------------------------------------------------
PRODUCT_NAME                                       STOCK_QUANTITY
-------------------------------------------------- --------------
STOCK_STATUS         LAST_UPDA
-------------------- ---------
         103
Daily Needs
Tablet                                                         30
In Stock             16-SEP-26


INVENTORY_ID
------------
SELLER_NAME
--------------------------------------------------------------------------------
PRODUCT_NAME                                       STOCK_QUANTITY
-------------------------------------------------- --------------
STOCK_STATUS         LAST_UPDA
-------------------- ---------
         104
Daily Needs
Keyboard                                                       15
In Stock             16-SEP-26


INVENTORY_ID
------------
SELLER_NAME
--------------------------------------------------------------------------------
PRODUCT_NAME                                       STOCK_QUANTITY
-------------------------------------------------- --------------
STOCK_STATUS         LAST_UPDA
-------------------- ---------
         105
Green Basket
Mouse                                                           0
Out of Stock         16-SEP-26


INVENTORY_ID
------------
SELLER_NAME
--------------------------------------------------------------------------------
PRODUCT_NAME                                       STOCK_QUANTITY
-------------------------------------------------- --------------
STOCK_STATUS         LAST_UPDA
-------------------- ---------
         106
Green Basket
Monitor                                                        25
In Stock             16-SEP-26


INVENTORY_ID
------------
SELLER_NAME
--------------------------------------------------------------------------------
PRODUCT_NAME                                       STOCK_QUANTITY
-------------------------------------------------- --------------
STOCK_STATUS         LAST_UPDA
-------------------- ---------
         107
Smart Grocery
Printer                                                        40
In Stock             16-SEP-26


INVENTORY_ID
------------
SELLER_NAME
--------------------------------------------------------------------------------
PRODUCT_NAME                                       STOCK_QUANTITY
-------------------------------------------------- --------------
STOCK_STATUS         LAST_UPDA
-------------------- ---------
         108
Smart Grocery
Speaker                                                         0
Out of Stock         16-SEP-26


INVENTORY_ID
------------
SELLER_NAME
--------------------------------------------------------------------------------
PRODUCT_NAME                                       STOCK_QUANTITY
-------------------------------------------------- --------------
STOCK_STATUS         LAST_UPDA
-------------------- ---------
         109
Nature Foods
Webcam                                                         20
In Stock             16-SEP-26


INVENTORY_ID
------------
SELLER_NAME
--------------------------------------------------------------------------------
PRODUCT_NAME                                       STOCK_QUANTITY
-------------------------------------------------- --------------
STOCK_STATUS         LAST_UPDA
-------------------- ---------
         110
Nature Foods
Headphones                                                     30
In Stock             17-SEP-26


10 rows selected.

Select
s.Seller_name,
Sum(i.Stock_Quantity)as Total_Stock
From Seller s
join Inventory i
ON s.SellerID=i.Seller_ID
Group by s.Seller_Name
Order by s.Seller_Name;

SELLER_NAME
--------------------------------------------------------------------------------
TOTAL_STOCK
-----------
Daily Needs
         45

Fresh Mart
         60

Green Basket
         25


SELLER_NAME
--------------------------------------------------------------------------------
TOTAL_STOCK
-----------
Nature Foods
         50

Smart Grocery
         40

SELECT
    p.Product_ID,
    p.Product_Name,
    s.Seller_Name,
    i.Stock_Quantity,
    i.Stock_Status
FROM Product p
JOIN Inventory i
ON p.Product_ID = i.Product_ID
JOIN Seller s
ON i.Seller_ID = s.SellerID
WHERE i.Stock_Quantity = 0;

PRODUCT_ID PRODUCT_NAME
---------- --------------------------------------------------
SELLER_NAME
--------------------------------------------------------------------------------
STOCK_QUANTITY STOCK_STATUS
-------------- --------------------
       105 Mouse
Green Basket
             0 Out of Stock

       108 Speaker
Smart Grocery
             0 Out of Stock

PRODUCT_ID PRODUCT_NAME
---------- --------------------------------------------------
SELLER_NAME
--------------------------------------------------------------------------------
STOCK_QUANTITY STOCK_STATUS
-------------- --------------------

commit;
Commit complete.