CREATE TABLE Orders (
    Order_ID NUMBER PRIMARY KEY,
    Customer_ID NUMBER NOT NULL,
    Order_Date DATE NOT NULL,
    Order_Status VARCHAR2(20),
    Total_Amount NUMBER(10,2),
    CONSTRAINT fk_order_customer
        FOREIGN KEY (Customer_ID)
        REFERENCES Customer(Customer_ID),
    CONSTRAINT chk_order_status
        CHECK (Order_Status IN
        ('Pending', 'Confirmed', 'Shipped', 'Delivered', 'Cancelled'))
);
Table created .

INSERT INTO Orders
(Order_ID, Customer_ID, Order_Date, Order_Status, Total_Amount)
VALUES
(1001, 101, TO_DATE('21-09-2026', 'DD-MM-YYYY'), 'Pending', 900);
1 row created.

INSERT INTO Orders
(Order_ID, Customer_ID, Order_Date, Order_Status, Total_Amount)
VALUES
(1002, 102, TO_DATE('20-09-2026', 'DD-MM-YYYY'), 'Confirmed', 1250);
1 row created.

INSERT INTO Orders
(Order_ID, Customer_ID, Order_Date, Order_Status, Total_Amount)
VALUES
(1003, 103, TO_DATE('19-09-2026', 'DD-MM-YYYY'), 'Shipped', 1800);
1 row created.

INSERT INTO Orders
(Order_ID, Customer_ID, Order_Date, Order_Status, Total_Amount)
VALUES
(1004, 101, TO_DATE('18-09-2026', 'DD-MM-YYYY'), 'Delivered', 750);
1 row created.

INSERT INTO Orders
(Order_ID, Customer_ID, Order_Date, Order_Status, Total_Amount)
VALUES
(1005, 104, TO_DATE('17-09-2026', 'DD-MM-YYYY'), 'Cancelled', 500);
1 row created.

INSERT INTO Orders
(Order_ID, Customer_ID, Order_Date, Order_Status, Total_Amount)
VALUES
(1006,105,TO_DATE('16-09-2026','DD-MM-YYYY'),'Pending',850);
1 row created.

INSERT INTO Orders
(Order_ID, Customer_ID, Order_Date, Order_Status, Total_Amount)
VALUES
(1007, 106, TO_DATE('15-09-2026', 'DD-MM-YYYY'), 'Cancelled', 1200);
1 row created.

INSERT INTO Orders
(Order_ID, Customer_ID, Order_Date, Order_Status, Total_Amount)
VALUES
(1008, 101, TO_DATE('04-09-2026', 'DD-MM-YYYY'), 'Delivered', 1500);
1 row created.

INSERT INTO Orders
(Order_ID, Customer_ID, Order_Date, Order_Status, Total_Amount)
VALUES
(1009, 107, TO_DATE('09-09-2026', 'DD-MM-YYYY'), 'Shipped', 2500);
1 row created.

INSERT INTO Orders
(Order_ID, Customer_ID, Order_Date, Order_Status, Total_Amount)
VALUES
(1010, 109, TO_DATE('20-09-2026', 'DD-MM-YYYY'), 'Confirmed', 28000);
1 row created.

Select * From Orders;

  ORDER_ID CUSTOMER_ID ORDER_DAT ORDER_STATUS         TOTAL_AMOUNT
---------- ----------- --------- -------------------- ------------
      1001         101 21-SEP-26 Pending                       900
      1002         102 20-SEP-26 Confirmed                    1250
      1003         103 19-SEP-26 Shipped                      1800
      1004         101 18-SEP-26 Delivered                     750
      1005         104 17-SEP-26 Cancelled                     500
      1006         105 16-SEP-26 Pending                       850
      1007         106 15-SEP-26 Cancelled                    1200
      1008         101 04-SEP-26 Delivered                    1500
      1009         107 09-SEP-26 Shipped                      2500
      1010         109 20-SEP-26 Confirmed                   28000

10 rows selected.

UPDATE Orders
SET Order_Status = 'Confirmed'
WHERE Order_ID = 1001;
1 row updated.

UPDATE Orders
SET Order_Status = 'Shipped'
WHERE Order_ID = 1002;
1 row updated

UPDATE Orders
SET Order_Status='Pending'
WHERE Order_ID=1006;
Select * 
from Orders
Where Order_ID in(1001,1002,1006);

ORDER_ID CUSTOMER_ID ORDER_DAT ORDER_STATUS         TOTAL_AMOUNT
---------- ----------- --------- -------------------- ------------
      1001         101 21-SEP-26 Confirmed                     900
      1002         102 20-SEP-26 Confirmed                    1250
      1006         105 16-SEP-26 Pending                       850

SELECT 
    c.Customer_ID,
    c.Customer_Name,
    o.Order_ID,
    o.Order_Date,
    od.Product_ID,
    od.Quantity,
    od.Price,
    od.Sub_total
FROM Customer c
JOIN Orders o
    ON c.Customer_ID = o.Customer_ID
JOIN Order_Details od
    ON o.Order_ID = od.Order_ID
ORDER BY c.Customer_ID, o.Order_Date;

CUSTOMER_ID CUSTOMER_NAME                                        ORDER_ID
----------- -------------------------------------------------- ----------
ORDER_DAT PRODUCT_ID   QUANTITY      PRICE  SUB_TOTAL
--------- ---------- ---------- ---------- ----------
        101 Arun Kumar                                               1008
04-SEP-26        105          2      11000      22000

        101 Arun Kumar                                               1004
18-SEP-26        103          2       9000      18000

        101 Arun Kumar                                               1001
21-SEP-26        101          2      70000      70000


CUSTOMER_ID CUSTOMER_NAME                                        ORDER_ID
----------- -------------------------------------------------- ----------
ORDER_DAT PRODUCT_ID   QUANTITY      PRICE  SUB_TOTAL
--------- ---------- ---------- ---------- ----------
        101 Arun Kumar                                               1001
21-SEP-26        104          2       5250      10500

        102 Priya Sharma                                             1002
20-SEP-26        104          1       5000       5000

        103 Rahul Singh                                              1003
19-SEP-26        102          1      45100      45000


CUSTOMER_ID CUSTOMER_NAME                                        ORDER_ID
----------- -------------------------------------------------- ----------
ORDER_DAT PRODUCT_ID   QUANTITY      PRICE  SUB_TOTAL
--------- ---------- ---------- ---------- ----------
        104 Sneha Reddy                                              1005
17-SEP-26        106          1      12500      12500

        105 Vikram Patel                                             1006
16-SEP-26        107          2      16000      32000

        106 Anjali Das                                               1007
15-SEP-26        108          1       8500       8500


CUSTOMER_ID CUSTOMER_NAME                                        ORDER_ID
----------- -------------------------------------------------- ----------
ORDER_DAT PRODUCT_ID   QUANTITY      PRICE  SUB_TOTAL
--------- ---------- ---------- ---------- ----------
        107 Karan Mehta                                              1009
09-SEP-26        109          1      15000      15000

        109 Rohan Gupta                                              1010
20-SEP-26        110          2      14000      28000


9 rows selected.

SELECT
    c.Customer_ID,
    c.Customer_Name,
    COUNT(o.Order_ID) AS Total_Orders,
    SUM(o.Total_Amount) AS Total_Amount
FROM Customer c
JOIN Orders o
    ON c.Customer_ID = o.Customer_ID
GROUP BY
    c.Customer_ID,
    c.Customer_Name
ORDER BY
    c.Customer_ID;

CUSTOMER_ID CUSTOMER_NAME                                      TOTAL_ORDERS
----------- -------------------------------------------------- ------------
TOTAL_AMOUNT
------------
        101 Arun Kumar                                                    3
        3150

        102 Priya Sharma                                                  1
        1250

        103 Rahul Singh                                                   1
        1800


CUSTOMER_ID CUSTOMER_NAME                                      TOTAL_ORDERS
----------- -------------------------------------------------- ------------
TOTAL_AMOUNT
------------
        104 Sneha Reddy                                                   1
         500

        105 Vikram Patel                                                  1
         850

        106 Anjali Das                                                    1
        1200


CUSTOMER_ID CUSTOMER_NAME                                      TOTAL_ORDERS
----------- -------------------------------------------------- ------------
TOTAL_AMOUNT
------------
        107 Karan Mehta                                                   1
        2500

        109 Rohan Gupta                                                   1
       28000


8 rows selected.

commit;
Commit Completed.