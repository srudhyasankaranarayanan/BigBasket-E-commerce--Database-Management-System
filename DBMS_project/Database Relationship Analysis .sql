SELECT
    c.Customer_ID,
    c.Customer_Name,
    o.Order_ID,
    o.Order_Date,
    o.Total_Amount
FROM Customer c
INNER JOIN Orders o
    ON c.Customer_ID = o.Customer_ID;

CUSTOMER_ID CUSTOMER_NAME                                        ORDER_ID
----------- -------------------------------------------------- ----------
ORDER_DAT TOTAL_AMOUNT
--------- ------------
        101 Arun Kumar                                               1001
21-SEP-26          900

        102 Priya Sharma                                             1002
20-SEP-26         1250

        103 Rahul Singh                                              1003
19-SEP-26         1800


CUSTOMER_ID CUSTOMER_NAME                                        ORDER_ID
----------- -------------------------------------------------- ----------
ORDER_DAT TOTAL_AMOUNT
--------- ------------
        101 Arun Kumar                                               1004
18-SEP-26          750

        104 Sneha Reddy                                              1005
17-SEP-26          500

        105 Vikram Patel                                             1006
16-SEP-26          850


CUSTOMER_ID CUSTOMER_NAME                                        ORDER_ID
----------- -------------------------------------------------- ----------
ORDER_DAT TOTAL_AMOUNT
--------- ------------
        106 Anjali Das                                               1007
15-SEP-26         1200

        101 Arun Kumar                                               1008
04-SEP-26         1500

        107 Karan Mehta                                              1009
09-SEP-26         2500


CUSTOMER_ID CUSTOMER_NAME                                        ORDER_ID
----------- -------------------------------------------------- ----------
ORDER_DAT TOTAL_AMOUNT
--------- ------------
        109 Rohan Gupta                                              1010
20-SEP-26        28000


10 rows selected.

SELECT
    c.Customer_ID,
    c.Customer_Name,
    o.Order_ID,
    o.Order_Date,
    o.Total_Amount
FROM Customer c
INNER JOIN Orders o
    ON c.Customer_ID = o.Customer_ID;
CUSTOMER_ID CUSTOMER_NAME                                        ORDER_ID
----------- -------------------------------------------------- ----------
ORDER_DAT TOTAL_AMOUNT
--------- ------------
        101 Arun Kumar                                               1001
21-SEP-26          900

        102 Priya Sharma                                             1002
20-SEP-26         1250

        103 Rahul Singh                                              1003
19-SEP-26         1800


CUSTOMER_ID CUSTOMER_NAME                                        ORDER_ID
----------- -------------------------------------------------- ----------
ORDER_DAT TOTAL_AMOUNT
--------- ------------
        101 Arun Kumar                                               1004
18-SEP-26          750

        104 Sneha Reddy                                              1005
17-SEP-26          500

        105 Vikram Patel                                             1006
16-SEP-26          850


CUSTOMER_ID CUSTOMER_NAME                                        ORDER_ID
----------- -------------------------------------------------- ----------
ORDER_DAT TOTAL_AMOUNT
--------- ------------
        106 Anjali Das                                               1007
15-SEP-26         1200

        101 Arun Kumar                                               1008
04-SEP-26         1500

        107 Karan Mehta                                              1009
09-SEP-26         2500


CUSTOMER_ID CUSTOMER_NAME                                        ORDER_ID
----------- -------------------------------------------------- ----------
ORDER_DAT TOTAL_AMOUNT
--------- ------------
        109 Rohan Gupta                                              1010
20-SEP-26        28000


10 rows selected.
SELECT
    o.Order_ID,
    o.Order_Date,
    o.Total_Amount,
    py.Payment_ID,
    py.Payment_method,
    py.Payment_status,
    py.Amount
FROM Orders o
INNER JOIN Payment py
    ON o.Order_ID = py.Order_ID;

 ORDER_ID ORDER_DAT TOTAL_AMOUNT PAYMENT_ID
---------- --------- ------------ ----------
PAYMENT_METHOD                                     PAYMENT_STATUS
-------------------------------------------------- --------------------
    AMOUNT
----------
      1001 21-SEP-26          900          1
UPI                                                Paid
       900

      1002 20-SEP-26         1250          2
Credit Card                                        Paid
      1250

  ORDER_ID ORDER_DAT TOTAL_AMOUNT PAYMENT_ID
---------- --------- ------------ ----------
PAYMENT_METHOD                                     PAYMENT_STATUS
-------------------------------------------------- --------------------
    AMOUNT
----------

      1003 19-SEP-26         1800          3
Debit Card                                         Paid
      1800

      1004 18-SEP-26          750          4
UPI                                                Paid

  ORDER_ID ORDER_DAT TOTAL_AMOUNT PAYMENT_ID
---------- --------- ------------ ----------
PAYMENT_METHOD                                     PAYMENT_STATUS
-------------------------------------------------- --------------------
    AMOUNT
----------
       750

      1005 17-SEP-26          500          5
Cash                                               Paid
       500

      1006 16-SEP-26          850          6

  ORDER_ID ORDER_DAT TOTAL_AMOUNT PAYMENT_ID
---------- --------- ------------ ----------
PAYMENT_METHOD                                     PAYMENT_STATUS
-------------------------------------------------- --------------------
    AMOUNT
----------
UPI                                                Pending
       850

      1007 15-SEP-26         1200          7
Credit Card                                        Refunded
      1200


  ORDER_ID ORDER_DAT TOTAL_AMOUNT PAYMENT_ID
---------- --------- ------------ ----------
PAYMENT_METHOD                                     PAYMENT_STATUS
-------------------------------------------------- --------------------
    AMOUNT
----------
      1008 04-SEP-26         1500          8
Debit Card                                         Paid
      1500

      1009 09-SEP-26         2500          9
Net Banking                                        Paid
      2500

  ORDER_ID ORDER_DAT TOTAL_AMOUNT PAYMENT_ID
---------- --------- ------------ ----------
PAYMENT_METHOD                                     PAYMENT_STATUS
-------------------------------------------------- --------------------
    AMOUNT
----------

      1010 20-SEP-26        28000         10
Credit Card                                        Paid
     28000

      1006 16-SEP-26          850         11
Credit Card                                        Failed

  ORDER_ID ORDER_DAT TOTAL_AMOUNT PAYMENT_ID
---------- --------- ------------ ----------
PAYMENT_METHOD                                     PAYMENT_STATUS
-------------------------------------------------- --------------------
    AMOUNT
----------
       850


11 rows selected.

SELECT
    p.Product_ID,
    p.Product_Name,
    od.Order_ID,
    od.Quantity,
    od.Price,
    od.Sub_total
FROM Product p
INNER JOIN Order_Details od
    ON p.Product_ID = od.Product_ID;

PRODUCT_ID PRODUCT_NAME                                         ORDER_ID
---------- -------------------------------------------------- ----------
  QUANTITY      PRICE  SUB_TOTAL
---------- ---------- ----------
       101 Laptop                                                   1001
         2      70000      70000

       102 Smartphone                                               1003
         1      45100      45000

       103 Tablet                                                   1004
         2       9000      18000


PRODUCT_ID PRODUCT_NAME                                         ORDER_ID
---------- -------------------------------------------------- ----------
  QUANTITY      PRICE  SUB_TOTAL
---------- ---------- ----------
       104 Keyboard                                                 1002
         1       5000       5000

       104 Keyboard                                                 1001
         2       5250      10500

       105 Mouse                                                    1008
         2      11000      22000


PRODUCT_ID PRODUCT_NAME                                         ORDER_ID
---------- -------------------------------------------------- ----------
  QUANTITY      PRICE  SUB_TOTAL
---------- ---------- ----------
       106 Monitor                                                  1005
         1      12500      12500

       107 Printer                                                  1006
         2      16000      32000

       108 Speaker                                                  1007
         1       8500       8500


PRODUCT_ID PRODUCT_NAME                                         ORDER_ID
---------- -------------------------------------------------- ----------
  QUANTITY      PRICE  SUB_TOTAL
---------- ---------- ----------
       109 Webcam                                                   1009
         1      15000      15000

       110 Headphones                                               1010
         2      14000      28000


11 rows selected.

SELECT
    c.Customer_ID,
    c.Customer_Name,
    o.Order_ID,
    o.Order_Date,
    o.Total_Amount
FROM Customer c
LEFT JOIN Orders o
    ON c.Customer_ID = o.Customer_ID;
CUSTOMER_ID CUSTOMER_NAME                                        ORDER_ID
----------- -------------------------------------------------- ----------
ORDER_DAT TOTAL_AMOUNT
--------- ------------
        101 Arun Kumar                                               1001
21-SEP-26          900

        102 Priya Sharma                                             1002
20-SEP-26         1250

        103 Rahul Singh                                              1003
19-SEP-26         1800


CUSTOMER_ID CUSTOMER_NAME                                        ORDER_ID
----------- -------------------------------------------------- ----------
ORDER_DAT TOTAL_AMOUNT
--------- ------------
        101 Arun Kumar                                               1004
18-SEP-26          750

        104 Sneha Reddy                                              1005
17-SEP-26          500

        105 Vikram Patel                                             1006
16-SEP-26          850


CUSTOMER_ID CUSTOMER_NAME                                        ORDER_ID
----------- -------------------------------------------------- ----------
ORDER_DAT TOTAL_AMOUNT
--------- ------------
        106 Anjali Das                                               1007
15-SEP-26         1200

        101 Arun Kumar                                               1008
04-SEP-26         1500

        107 Karan Mehta                                              1009
09-SEP-26         2500


CUSTOMER_ID CUSTOMER_NAME                                        ORDER_ID
----------- -------------------------------------------------- ----------
ORDER_DAT TOTAL_AMOUNT
--------- ------------
        109 Rohan Gupta                                              1010
20-SEP-26        28000

        108 Meera Nair


        110 Divya Iyer



12 rows selected.

SELECT
    c.Customer_ID,
    c.Customer_Name,
    o.Order_ID,
    o.Order_Date,
    o.Total_Amount
FROM Customer c
RIGHT JOIN Orders o
    ON c.Customer_ID = o.Customer_ID;

CUSTOMER_ID CUSTOMER_NAME                                        ORDER_ID
----------- -------------------------------------------------- ----------
ORDER_DAT TOTAL_AMOUNT
--------- ------------
        101 Arun Kumar                                               1001
21-SEP-26          900

        101 Arun Kumar                                               1004
18-SEP-26          750

        101 Arun Kumar                                               1008
04-SEP-26         1500


CUSTOMER_ID CUSTOMER_NAME                                        ORDER_ID
----------- -------------------------------------------------- ----------
ORDER_DAT TOTAL_AMOUNT
--------- ------------
        102 Priya Sharma                                             1002
20-SEP-26         1250

        103 Rahul Singh                                              1003
19-SEP-26         1800

        104 Sneha Reddy                                              1005
17-SEP-26          500


CUSTOMER_ID CUSTOMER_NAME                                        ORDER_ID
----------- -------------------------------------------------- ----------
ORDER_DAT TOTAL_AMOUNT
--------- ------------
        105 Vikram Patel                                             1006
16-SEP-26          850

        106 Anjali Das                                               1007
15-SEP-26         1200

        107 Karan Mehta                                              1009
09-SEP-26         2500


CUSTOMER_ID CUSTOMER_NAME                                        ORDER_ID
----------- -------------------------------------------------- ----------
ORDER_DAT TOTAL_AMOUNT
--------- ------------
        109 Rohan Gupta                                              1010
20-SEP-26        28000


10 rows selected.

SELECT
    c.Customer_ID,
    c.Customer_Name,
    o.Order_ID,
    o.Order_Date,
    p.Product_ID,
    p.Product_Name,
    od.Quantity,
    od.Price,
    od.Sub_total,
    py.Payment_method,
    py.Payment_status,
    py.Amount AS Payment_Amount
FROM Customer c
JOIN Orders o
    ON c.Customer_ID = o.Customer_ID
JOIN Order_Details od
    ON o.Order_ID = od.Order_ID
JOIN Product p
    ON od.Product_ID = p.Product_ID
LEFT JOIN Payment py
    ON o.Order_ID = py.Order_ID
ORDER BY o.Order_ID;

CUSTOMER_ID CUSTOMER_NAME                                        ORDER_ID
----------- -------------------------------------------------- ----------
ORDER_DAT PRODUCT_ID PRODUCT_NAME
--------- ---------- --------------------------------------------------
  QUANTITY      PRICE  SUB_TOTAL
---------- ---------- ----------
PAYMENT_METHOD                                     PAYMENT_STATUS
-------------------------------------------------- --------------------
PAYMENT_AMOUNT
--------------
        101 Arun Kumar                                               1001
21-SEP-26        101 Laptop
         2      70000      70000

CUSTOMER_ID CUSTOMER_NAME                                        ORDER_ID
----------- -------------------------------------------------- ----------
ORDER_DAT PRODUCT_ID PRODUCT_NAME
--------- ---------- --------------------------------------------------
  QUANTITY      PRICE  SUB_TOTAL
---------- ---------- ----------
PAYMENT_METHOD                                     PAYMENT_STATUS
-------------------------------------------------- --------------------
PAYMENT_AMOUNT
--------------
UPI                                                Paid
           900


CUSTOMER_ID CUSTOMER_NAME                                        ORDER_ID
----------- -------------------------------------------------- ----------
ORDER_DAT PRODUCT_ID PRODUCT_NAME
--------- ---------- --------------------------------------------------
  QUANTITY      PRICE  SUB_TOTAL
---------- ---------- ----------
PAYMENT_METHOD                                     PAYMENT_STATUS
-------------------------------------------------- --------------------
PAYMENT_AMOUNT
--------------
        101 Arun Kumar                                               1001
21-SEP-26        104 Keyboard
         2       5250      10500

CUSTOMER_ID CUSTOMER_NAME                                        ORDER_ID
----------- -------------------------------------------------- ----------
ORDER_DAT PRODUCT_ID PRODUCT_NAME
--------- ---------- --------------------------------------------------
  QUANTITY      PRICE  SUB_TOTAL
---------- ---------- ----------
PAYMENT_METHOD                                     PAYMENT_STATUS
-------------------------------------------------- --------------------
PAYMENT_AMOUNT
--------------
UPI                                                Paid
           900


CUSTOMER_ID CUSTOMER_NAME                                        ORDER_ID
----------- -------------------------------------------------- ----------
ORDER_DAT PRODUCT_ID PRODUCT_NAME
--------- ---------- --------------------------------------------------
  QUANTITY      PRICE  SUB_TOTAL
---------- ---------- ----------
PAYMENT_METHOD                                     PAYMENT_STATUS
-------------------------------------------------- --------------------
PAYMENT_AMOUNT
--------------
        102 Priya Sharma                                             1002
20-SEP-26        104 Keyboard
         1       5000       5000

CUSTOMER_ID CUSTOMER_NAME                                        ORDER_ID
----------- -------------------------------------------------- ----------
ORDER_DAT PRODUCT_ID PRODUCT_NAME
--------- ---------- --------------------------------------------------
  QUANTITY      PRICE  SUB_TOTAL
---------- ---------- ----------
PAYMENT_METHOD                                     PAYMENT_STATUS
-------------------------------------------------- --------------------
PAYMENT_AMOUNT
--------------
Credit Card                                        Paid
          1250


CUSTOMER_ID CUSTOMER_NAME                                        ORDER_ID
----------- -------------------------------------------------- ----------
ORDER_DAT PRODUCT_ID PRODUCT_NAME
--------- ---------- --------------------------------------------------
  QUANTITY      PRICE  SUB_TOTAL
---------- ---------- ----------
PAYMENT_METHOD                                     PAYMENT_STATUS
-------------------------------------------------- --------------------
PAYMENT_AMOUNT
--------------
        103 Rahul Singh                                              1003
19-SEP-26        102 Smartphone
         1      45100      45000

CUSTOMER_ID CUSTOMER_NAME                                        ORDER_ID
----------- -------------------------------------------------- ----------
ORDER_DAT PRODUCT_ID PRODUCT_NAME
--------- ---------- --------------------------------------------------
  QUANTITY      PRICE  SUB_TOTAL
---------- ---------- ----------
PAYMENT_METHOD                                     PAYMENT_STATUS
-------------------------------------------------- --------------------
PAYMENT_AMOUNT
--------------
Debit Card                                         Paid
          1800


CUSTOMER_ID CUSTOMER_NAME                                        ORDER_ID
----------- -------------------------------------------------- ----------
ORDER_DAT PRODUCT_ID PRODUCT_NAME
--------- ---------- --------------------------------------------------
  QUANTITY      PRICE  SUB_TOTAL
---------- ---------- ----------
PAYMENT_METHOD                                     PAYMENT_STATUS
-------------------------------------------------- --------------------
PAYMENT_AMOUNT
--------------
        101 Arun Kumar                                               1004
18-SEP-26        103 Tablet
         2       9000      18000

CUSTOMER_ID CUSTOMER_NAME                                        ORDER_ID
----------- -------------------------------------------------- ----------
ORDER_DAT PRODUCT_ID PRODUCT_NAME
--------- ---------- --------------------------------------------------
  QUANTITY      PRICE  SUB_TOTAL
---------- ---------- ----------
PAYMENT_METHOD                                     PAYMENT_STATUS
-------------------------------------------------- --------------------
PAYMENT_AMOUNT
--------------
UPI                                                Paid
           750


CUSTOMER_ID CUSTOMER_NAME                                        ORDER_ID
----------- -------------------------------------------------- ----------
ORDER_DAT PRODUCT_ID PRODUCT_NAME
--------- ---------- --------------------------------------------------
  QUANTITY      PRICE  SUB_TOTAL
---------- ---------- ----------
PAYMENT_METHOD                                     PAYMENT_STATUS
-------------------------------------------------- --------------------
PAYMENT_AMOUNT
--------------
        104 Sneha Reddy                                              1005
17-SEP-26        106 Monitor
         1      12500      12500

CUSTOMER_ID CUSTOMER_NAME                                        ORDER_ID
----------- -------------------------------------------------- ----------
ORDER_DAT PRODUCT_ID PRODUCT_NAME
--------- ---------- --------------------------------------------------
  QUANTITY      PRICE  SUB_TOTAL
---------- ---------- ----------
PAYMENT_METHOD                                     PAYMENT_STATUS
-------------------------------------------------- --------------------
PAYMENT_AMOUNT
--------------
Cash                                               Paid
           500


CUSTOMER_ID CUSTOMER_NAME                                        ORDER_ID
----------- -------------------------------------------------- ----------
ORDER_DAT PRODUCT_ID PRODUCT_NAME
--------- ---------- --------------------------------------------------
  QUANTITY      PRICE  SUB_TOTAL
---------- ---------- ----------
PAYMENT_METHOD                                     PAYMENT_STATUS
-------------------------------------------------- --------------------
PAYMENT_AMOUNT
--------------
        105 Vikram Patel                                             1006
16-SEP-26        107 Printer
         2      16000      32000

CUSTOMER_ID CUSTOMER_NAME                                        ORDER_ID
----------- -------------------------------------------------- ----------
ORDER_DAT PRODUCT_ID PRODUCT_NAME
--------- ---------- --------------------------------------------------
  QUANTITY      PRICE  SUB_TOTAL
---------- ---------- ----------
PAYMENT_METHOD                                     PAYMENT_STATUS
-------------------------------------------------- --------------------
PAYMENT_AMOUNT
--------------
UPI                                                Pending
           850


CUSTOMER_ID CUSTOMER_NAME                                        ORDER_ID
----------- -------------------------------------------------- ----------
ORDER_DAT PRODUCT_ID PRODUCT_NAME
--------- ---------- --------------------------------------------------
  QUANTITY      PRICE  SUB_TOTAL
---------- ---------- ----------
PAYMENT_METHOD                                     PAYMENT_STATUS
-------------------------------------------------- --------------------
PAYMENT_AMOUNT
--------------
        105 Vikram Patel                                             1006
16-SEP-26        107 Printer
         2      16000      32000

CUSTOMER_ID CUSTOMER_NAME                                        ORDER_ID
----------- -------------------------------------------------- ----------
ORDER_DAT PRODUCT_ID PRODUCT_NAME
--------- ---------- --------------------------------------------------
  QUANTITY      PRICE  SUB_TOTAL
---------- ---------- ----------
PAYMENT_METHOD                                     PAYMENT_STATUS
-------------------------------------------------- --------------------
PAYMENT_AMOUNT
--------------
Credit Card                                        Failed
           850


CUSTOMER_ID CUSTOMER_NAME                                        ORDER_ID
----------- -------------------------------------------------- ----------
ORDER_DAT PRODUCT_ID PRODUCT_NAME
--------- ---------- --------------------------------------------------
  QUANTITY      PRICE  SUB_TOTAL
---------- ---------- ----------
PAYMENT_METHOD                                     PAYMENT_STATUS
-------------------------------------------------- --------------------
PAYMENT_AMOUNT
--------------
        106 Anjali Das                                               1007
15-SEP-26        108 Speaker
         1       8500       8500

CUSTOMER_ID CUSTOMER_NAME                                        ORDER_ID
----------- -------------------------------------------------- ----------
ORDER_DAT PRODUCT_ID PRODUCT_NAME
--------- ---------- --------------------------------------------------
  QUANTITY      PRICE  SUB_TOTAL
---------- ---------- ----------
PAYMENT_METHOD                                     PAYMENT_STATUS
-------------------------------------------------- --------------------
PAYMENT_AMOUNT
--------------
Credit Card                                        Refunded
          1200


CUSTOMER_ID CUSTOMER_NAME                                        ORDER_ID
----------- -------------------------------------------------- ----------
ORDER_DAT PRODUCT_ID PRODUCT_NAME
--------- ---------- --------------------------------------------------
  QUANTITY      PRICE  SUB_TOTAL
---------- ---------- ----------
PAYMENT_METHOD                                     PAYMENT_STATUS
-------------------------------------------------- --------------------
PAYMENT_AMOUNT
--------------
        101 Arun Kumar                                               1008
04-SEP-26        105 Mouse
         2      11000      22000

CUSTOMER_ID CUSTOMER_NAME                                        ORDER_ID
----------- -------------------------------------------------- ----------
ORDER_DAT PRODUCT_ID PRODUCT_NAME
--------- ---------- --------------------------------------------------
  QUANTITY      PRICE  SUB_TOTAL
---------- ---------- ----------
PAYMENT_METHOD                                     PAYMENT_STATUS
-------------------------------------------------- --------------------
PAYMENT_AMOUNT
--------------
Debit Card                                         Paid
          1500


CUSTOMER_ID CUSTOMER_NAME                                        ORDER_ID
----------- -------------------------------------------------- ----------
ORDER_DAT PRODUCT_ID PRODUCT_NAME
--------- ---------- --------------------------------------------------
  QUANTITY      PRICE  SUB_TOTAL
---------- ---------- ----------
PAYMENT_METHOD                                     PAYMENT_STATUS
-------------------------------------------------- --------------------
PAYMENT_AMOUNT
--------------
        107 Karan Mehta                                              1009
09-SEP-26        109 Webcam
         1      15000      15000

CUSTOMER_ID CUSTOMER_NAME                                        ORDER_ID
----------- -------------------------------------------------- ----------
ORDER_DAT PRODUCT_ID PRODUCT_NAME
--------- ---------- --------------------------------------------------
  QUANTITY      PRICE  SUB_TOTAL
---------- ---------- ----------
PAYMENT_METHOD                                     PAYMENT_STATUS
-------------------------------------------------- --------------------
PAYMENT_AMOUNT
--------------
Net Banking                                        Paid
          2500


CUSTOMER_ID CUSTOMER_NAME                                        ORDER_ID
----------- -------------------------------------------------- ----------
ORDER_DAT PRODUCT_ID PRODUCT_NAME
--------- ---------- --------------------------------------------------
  QUANTITY      PRICE  SUB_TOTAL
---------- ---------- ----------
PAYMENT_METHOD                                     PAYMENT_STATUS
-------------------------------------------------- --------------------
PAYMENT_AMOUNT
--------------
        109 Rohan Gupta                                              1010
20-SEP-26        110 Headphones
         2      14000      28000

CUSTOMER_ID CUSTOMER_NAME                                        ORDER_ID
----------- -------------------------------------------------- ----------
ORDER_DAT PRODUCT_ID PRODUCT_NAME
--------- ---------- --------------------------------------------------
  QUANTITY      PRICE  SUB_TOTAL
---------- ---------- ----------
PAYMENT_METHOD                                     PAYMENT_STATUS
-------------------------------------------------- --------------------
PAYMENT_AMOUNT
--------------
Credit Card                                        Paid
         28000


12 rows selected.

SELECT
    c.Customer_ID,
    c.Customer_Name,
    o.Order_ID,
    o.Order_Date,
    p.Product_Name,
    od.Quantity,
    od.Price,
    od.Sub_total
FROM Customer c
JOIN Orders o
    ON c.Customer_ID = o.Customer_ID
JOIN Order_Details od
    ON o.Order_ID = od.Order_ID
JOIN Product p
    ON od.Product_ID = p.Product_ID
ORDER BY c.Customer_ID, o.Order_Date;

CUSTOMER_ID CUSTOMER_NAME                                        ORDER_ID
----------- -------------------------------------------------- ----------
ORDER_DAT PRODUCT_NAME                                         QUANTITY
--------- -------------------------------------------------- ----------
     PRICE  SUB_TOTAL
---------- ----------
        101 Arun Kumar                                               1008
04-SEP-26 Mouse                                                       2
     11000      22000

        101 Arun Kumar                                               1004
18-SEP-26 Tablet                                                      2
      9000      18000

CUSTOMER_ID CUSTOMER_NAME                                        ORDER_ID
----------- -------------------------------------------------- ----------
ORDER_DAT PRODUCT_NAME                                         QUANTITY
--------- -------------------------------------------------- ----------
     PRICE  SUB_TOTAL
---------- ----------

        101 Arun Kumar                                               1001
21-SEP-26 Laptop                                                      2
     70000      70000

        101 Arun Kumar                                               1001
21-SEP-26 Keyboard                                                    2

CUSTOMER_ID CUSTOMER_NAME                                        ORDER_ID
----------- -------------------------------------------------- ----------
ORDER_DAT PRODUCT_NAME                                         QUANTITY
--------- -------------------------------------------------- ----------
     PRICE  SUB_TOTAL
---------- ----------
      5250      10500

        102 Priya Sharma                                             1002
20-SEP-26 Keyboard                                                    1
      5000       5000

        103 Rahul Singh                                              1003

CUSTOMER_ID CUSTOMER_NAME                                        ORDER_ID
----------- -------------------------------------------------- ----------
ORDER_DAT PRODUCT_NAME                                         QUANTITY
--------- -------------------------------------------------- ----------
     PRICE  SUB_TOTAL
---------- ----------
19-SEP-26 Smartphone                                                  1
     45100      45000

        104 Sneha Reddy                                              1005
17-SEP-26 Monitor                                                     1
     12500      12500


CUSTOMER_ID CUSTOMER_NAME                                        ORDER_ID
----------- -------------------------------------------------- ----------
ORDER_DAT PRODUCT_NAME                                         QUANTITY
--------- -------------------------------------------------- ----------
     PRICE  SUB_TOTAL
---------- ----------
        105 Vikram Patel                                             1006
16-SEP-26 Printer                                                     2
     16000      32000

        106 Anjali Das                                               1007
15-SEP-26 Speaker                                                     1
      8500       8500

CUSTOMER_ID CUSTOMER_NAME                                        ORDER_ID
----------- -------------------------------------------------- ----------
ORDER_DAT PRODUCT_NAME                                         QUANTITY
--------- -------------------------------------------------- ----------
     PRICE  SUB_TOTAL
---------- ----------

        107 Karan Mehta                                              1009
09-SEP-26 Webcam                                                      1
     15000      15000

        109 Rohan Gupta                                              1010
20-SEP-26 Headphones                                                  2

CUSTOMER_ID CUSTOMER_NAME                                        ORDER_ID
----------- -------------------------------------------------- ----------
ORDER_DAT PRODUCT_NAME                                         QUANTITY
--------- -------------------------------------------------- ----------
     PRICE  SUB_TOTAL
---------- ----------
     14000      28000


11 rows selected.

SELECT
    c.Customer_ID,
    c.Customer_Name,
    COUNT(DISTINCT o.Order_ID) AS Total_Orders,
    SUM(od.Sub_total) AS Total_Purchase,
    SUM(od.Quantity) AS Total_Products
FROM Customer c
JOIN Orders o
    ON c.Customer_ID = o.Customer_ID
JOIN Order_Details od
    ON o.Order_ID = od.Order_ID
GROUP BY
    c.Customer_ID,
    c.Customer_Name
ORDER BY Total_Purchase DESC;

CUSTOMER_ID CUSTOMER_NAME                                      TOTAL_ORDERS
----------- -------------------------------------------------- ------------
TOTAL_PURCHASE TOTAL_PRODUCTS
-------------- --------------
        101 Arun Kumar                                                    3
        120500              8

        103 Rahul Singh                                                   1
         45000              1

        105 Vikram Patel                                                  1
         32000              2


CUSTOMER_ID CUSTOMER_NAME                                      TOTAL_ORDERS
----------- -------------------------------------------------- ------------
TOTAL_PURCHASE TOTAL_PRODUCTS
-------------- --------------
        109 Rohan Gupta                                                   1
         28000              2

        107 Karan Mehta                                                   1
         15000              1

        104 Sneha Reddy                                                   1
         12500              1


CUSTOMER_ID CUSTOMER_NAME                                      TOTAL_ORDERS
----------- -------------------------------------------------- ------------
TOTAL_PURCHASE TOTAL_PRODUCTS
-------------- --------------
        106 Anjali Das                                                    1
          8500              1

        102 Priya Sharma                                                  1
          5000              1


8 rows selected.

SELECT
    py.Payment_ID,
    c.Customer_ID,
    c.Customer_Name,
    o.Order_ID,
    o.Order_Date,
    py.Payment_method,
    py.Payment_status,
    py.Payment_date,
    py.Amount
FROM Payment py
JOIN Orders o
    ON py.Order_ID = o.Order_ID
JOIN Customer c
    ON o.Customer_ID = c.Customer_ID
ORDER BY py.Payment_date;

PAYMENT_ID CUSTOMER_ID CUSTOMER_NAME
---------- ----------- --------------------------------------------------
  ORDER_ID ORDER_DAT PAYMENT_METHOD
---------- --------- --------------------------------------------------
PAYMENT_STATUS       PAYMENT_D     AMOUNT
-------------------- --------- ----------
         8         101 Arun Kumar
      1008 04-SEP-26 Debit Card
Paid                 04-SEP-26       1500

         9         107 Karan Mehta
      1009 09-SEP-26 Net Banking
Paid                 09-SEP-26       2500

PAYMENT_ID CUSTOMER_ID CUSTOMER_NAME
---------- ----------- --------------------------------------------------
  ORDER_ID ORDER_DAT PAYMENT_METHOD
---------- --------- --------------------------------------------------
PAYMENT_STATUS       PAYMENT_D     AMOUNT
-------------------- --------- ----------

         7         106 Anjali Das
      1007 15-SEP-26 Credit Card
Refunded             15-SEP-26       1200

         6         105 Vikram Patel
      1006 16-SEP-26 UPI

PAYMENT_ID CUSTOMER_ID CUSTOMER_NAME
---------- ----------- --------------------------------------------------
  ORDER_ID ORDER_DAT PAYMENT_METHOD
---------- --------- --------------------------------------------------
PAYMENT_STATUS       PAYMENT_D     AMOUNT
-------------------- --------- ----------
Pending              16-SEP-26        850

        11         105 Vikram Patel
      1006 16-SEP-26 Credit Card
Failed               16-SEP-26        850

         5         104 Sneha Reddy

PAYMENT_ID CUSTOMER_ID CUSTOMER_NAME
---------- ----------- --------------------------------------------------
  ORDER_ID ORDER_DAT PAYMENT_METHOD
---------- --------- --------------------------------------------------
PAYMENT_STATUS       PAYMENT_D     AMOUNT
-------------------- --------- ----------
      1005 17-SEP-26 Cash
Paid                 17-SEP-26        500

         4         101 Arun Kumar
      1004 18-SEP-26 UPI
Paid                 18-SEP-26        750


PAYMENT_ID CUSTOMER_ID CUSTOMER_NAME
---------- ----------- --------------------------------------------------
  ORDER_ID ORDER_DAT PAYMENT_METHOD
---------- --------- --------------------------------------------------
PAYMENT_STATUS       PAYMENT_D     AMOUNT
-------------------- --------- ----------
         3         103 Rahul Singh
      1003 19-SEP-26 Debit Card
Paid                 19-SEP-26       1800

        10         109 Rohan Gupta
      1010 20-SEP-26 Credit Card
Paid                 20-SEP-26      28000

PAYMENT_ID CUSTOMER_ID CUSTOMER_NAME
---------- ----------- --------------------------------------------------
  ORDER_ID ORDER_DAT PAYMENT_METHOD
---------- --------- --------------------------------------------------
PAYMENT_STATUS       PAYMENT_D     AMOUNT
-------------------- --------- ----------

         2         102 Priya Sharma
      1002 20-SEP-26 Credit Card
Paid                 20-SEP-26       1250

         1         101 Arun Kumar
      1001 21-SEP-26 UPI

PAYMENT_ID CUSTOMER_ID CUSTOMER_NAME
---------- ----------- --------------------------------------------------
  ORDER_ID ORDER_DAT PAYMENT_METHOD
---------- --------- --------------------------------------------------
PAYMENT_STATUS       PAYMENT_D     AMOUNT
-------------------- --------- ----------
Paid                 21-SEP-26        900


11 rows selected.

commit;
Commit complete.