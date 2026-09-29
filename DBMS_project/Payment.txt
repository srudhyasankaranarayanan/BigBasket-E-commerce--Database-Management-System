CREATE TABLE Payment (
    Payment_ID INT PRIMARY KEY,
    Order_ID INT,
    Payment_method VARCHAR(50),
    Payment_status VARCHAR(20) CHECK (Payment_status IN ('Pending', 'Paid', 'Failed', 'Refunded')),
    Payment_date DATE,
    Amount DECIMAL(10,2),
    FOREIGN KEY (Order_ID) REFERENCES Orders(Order_ID)
);
Table created .

INSERT INTO Payment
(Payment_ID, Order_ID, Payment_method, Payment_status, Payment_date, Amount)
VALUES
(1, 1001, 'UPI', 'Paid', TO_DATE('21-09-2026','DD-MM-YYYY'), 900);
1 row created.

INSERT INTO Payment
(Payment_ID, Order_ID, Payment_method, Payment_status, Payment_date, Amount)
VALUES
(2, 1002, 'Credit Card', 'Paid', TO_DATE('20-09-2026','DD-MM-YYYY'), 1250);
1 row created.

INSERT INTO Payment
(Payment_ID, Order_ID, Payment_method, Payment_status, Payment_date, Amount)
VALUES
(3, 1003, 'Debit Card', 'Paid', TO_DATE('19-09-2026','DD-MM-YYYY'), 1800);
1 row created.

INSERT INTO Payment
(Payment_ID, Order_ID, Payment_method, Payment_status, Payment_date, Amount)
VALUES
(4, 1004, 'UPI', 'Paid', TO_DATE('18-09-2026','DD-MM-YYYY'), 750);
1 row created.

INSERT INTO Payment
(Payment_ID, Order_ID, Payment_method, Payment_status, Payment_date, Amount)
VALUES
(5, 1005, 'Cash', 'Refunded', TO_DATE('17-09-2026','DD-MM-YYYY'), 500);
1 row created.

INSERT INTO Payment
(Payment_ID, Order_ID, Payment_method, Payment_status, Payment_date, Amount)
VALUES
(6, 1006, 'UPI', 'Pending', TO_DATE('16-09-2026','DD-MM-YYYY'), 850);
1 row created.

INSERT INTO Payment
(Payment_ID, Order_ID, Payment_method, Payment_status, Payment_date, Amount)
VALUES
(7, 1007, 'Credit Card', 'Refunded', TO_DATE('15-09-2026','DD-MM-YYYY'), 1200);
1 row created.

INSERT INTO Payment
(Payment_ID, Order_ID, Payment_method, Payment_status, Payment_date, Amount)
VALUES
(8, 1008, 'Debit Card', 'Paid', TO_DATE('04-09-2026','DD-MM-YYYY'), 1500);
1 row created.

INSERT INTO Payment
(Payment_ID, Order_ID, Payment_method, Payment_status, Payment_date, Amount)
VALUES
(9, 1009, 'Net Banking', 'Paid', TO_DATE('09-09-2026','DD-MM-YYYY'), 2500);
1 row created.

INSERT INTO Payment
(Payment_ID, Order_ID, Payment_method, Payment_status, Payment_date, Amount)
VALUES
(10, 1010, 'Credit Card', 'Paid', TO_DATE('20-09-2026','DD-MM-YYYY'), 28000);
1 row created.

INSERT INTO Payment
(Payment_ID, Order_ID, Payment_method, Payment_status, Payment_date, Amount)
VALUES
(11, 1006, 'Credit Card', 'Failed',
 TO_DATE('16-09-2026','DD-MM-YYYY'), 850);


Select *  from Payment;
PAYMENT_ID   ORDER_ID PAYMENT_METHOD
---------- ---------- --------------------------------------------------
PAYMENT_STATUS       PAYMENT_D     AMOUNT
-------------------- --------- ----------
         1       1001 UPI
Paid                 21-SEP-26        900

         2       1002 Credit Card
Paid                 20-SEP-26       1250

         3       1003 Debit Card
Paid                 19-SEP-26       1800


PAYMENT_ID   ORDER_ID PAYMENT_METHOD
---------- ---------- --------------------------------------------------
PAYMENT_STATUS       PAYMENT_D     AMOUNT
-------------------- --------- ----------
         4       1004 UPI
Paid                 18-SEP-26        750

         5       1005 Cash
Refunded             17-SEP-26        500

         6       1006 UPI
Pending              16-SEP-26        850


PAYMENT_ID   ORDER_ID PAYMENT_METHOD
---------- ---------- --------------------------------------------------
PAYMENT_STATUS       PAYMENT_D     AMOUNT
-------------------- --------- ----------
         7       1007 Credit Card
Refunded             15-SEP-26       1200

         8       1008 Debit Card
Paid                 04-SEP-26       1500

         9       1009 Net Banking
Paid                 09-SEP-26       2500


PAYMENT_ID   ORDER_ID PAYMENT_METHOD
---------- ---------- --------------------------------------------------
PAYMENT_STATUS       PAYMENT_D     AMOUNT
-------------------- --------- ----------
        10       1010 Credit Card
Paid                 20-SEP-26      28000
        11       1006 Credit Card
Failed               16-SEP-26        850

11 rows selected.

Select *
from Payment
Where Payment_Status='Paid';
PAYMENT_ID   ORDER_ID PAYMENT_METHOD
---------- ---------- --------------------------------------------------
PAYMENT_STATUS       PAYMENT_D     AMOUNT
-------------------- --------- ----------
         1       1001 UPI
Paid                 21-SEP-26        900

         2       1002 Credit Card
Paid                 20-SEP-26       1250

         3       1003 Debit Card
Paid                 19-SEP-26       1800


PAYMENT_ID   ORDER_ID PAYMENT_METHOD
---------- ---------- --------------------------------------------------
PAYMENT_STATUS       PAYMENT_D     AMOUNT
-------------------- --------- ----------
         4       1004 UPI
Paid                 18-SEP-26        750

         8       1008 Debit Card
Paid                 04-SEP-26       1500

         9       1009 Net Banking
Paid                 09-SEP-26       2500


PAYMENT_ID   ORDER_ID PAYMENT_METHOD
---------- ---------- --------------------------------------------------
PAYMENT_STATUS       PAYMENT_D     AMOUNT
-------------------- --------- ----------
        10       1010 Credit Card
Paid                 20-SEP-26      28000


7 rows selected.

Select *
from Payment
Where Payment_Status='Failed';
PAYMENT_ID   ORDER_ID PAYMENT_METHOD
---------- ---------- --------------------------------------------------
PAYMENT_STATUS       PAYMENT_D     AMOUNT
-------------------- --------- ----------
        11       1006 Credit Card
Failed               16-SEP-26        850

Select *
from Payment
Where Payment_Status='Pending';
PAYMENT_ID   ORDER_ID PAYMENT_METHOD
---------- ---------- --------------------------------------------------
PAYMENT_STATUS       PAYMENT_D     AMOUNT
-------------------- --------- ----------
         6       1006 UPI
Pending              16-SEP-26        850

Select *
from Payment
Where Payment_Status='Refunded';
PAYMENT_ID   ORDER_ID PAYMENT_METHOD
---------- ---------- --------------------------------------------------
PAYMENT_STATUS       PAYMENT_D     AMOUNT
-------------------- --------- ----------
         5       1005 Cash
Refunded             17-SEP-26        500

         7       1007 Credit Card
Refunded             15-SEP-26       1200

Update Payment
SET Payment_Status='Paid'
Where Order_ID=1005;
1 row updated.

Select * 
From Payment
Where Order_ID=1005;
PAYMENT_ID   ORDER_ID PAYMENT_METHOD
---------- ---------- --------------------------------------------------
PAYMENT_STATUS       PAYMENT_D     AMOUNT
-------------------- --------- ----------
         5       1005 Cash
Paid                 17-SEP-26        500


SELECT
    Payment_method,
    COUNT(*) AS Total_Payments,
    SUM(Amount) AS Total_Amount
FROM Payment
GROUP BY Payment_method
ORDER BY Total_Payments DESC;
PAYMENT_METHOD                                     TOTAL_PAYMENTS TOTAL_AMOUNT
-------------------------------------------------- -------------- ------------
Credit Card                                                     4        31300
UPI                                                             3         2500
Debit Card                                                      2         3300
Cash                                                            1          500
Net Banking                                                     1         2500

SELECT
    p.Payment_ID,
    o.Order_ID,
    c.Customer_ID,
    c.Customer_Name,
    p.Payment_method,
    p.Payment_status,
    p.Payment_date,
    p.Amount
FROM Payment p
JOIN Orders o
    ON p.Order_ID = o.Order_ID
JOIN Customer c
    ON o.Customer_ID = c.Customer_ID
ORDER BY p.Payment_date;

PAYMENT_ID   ORDER_ID CUSTOMER_ID
---------- ---------- -----------
CUSTOMER_NAME
--------------------------------------------------
PAYMENT_METHOD                                     PAYMENT_STATUS
-------------------------------------------------- --------------------
PAYMENT_D     AMOUNT
--------- ----------
         8       1008         101
Arun Kumar
Debit Card                                         Paid
04-SEP-26       1500


PAYMENT_ID   ORDER_ID CUSTOMER_ID
---------- ---------- -----------
CUSTOMER_NAME
--------------------------------------------------
PAYMENT_METHOD                                     PAYMENT_STATUS
-------------------------------------------------- --------------------
PAYMENT_D     AMOUNT
--------- ----------
         9       1009         107
Karan Mehta
Net Banking                                        Paid
09-SEP-26       2500


PAYMENT_ID   ORDER_ID CUSTOMER_ID
---------- ---------- -----------
CUSTOMER_NAME
--------------------------------------------------
PAYMENT_METHOD                                     PAYMENT_STATUS
-------------------------------------------------- --------------------
PAYMENT_D     AMOUNT
--------- ----------
         7       1007         106
Anjali Das
Credit Card                                        Refunded
15-SEP-26       1200


PAYMENT_ID   ORDER_ID CUSTOMER_ID
---------- ---------- -----------
CUSTOMER_NAME
--------------------------------------------------
PAYMENT_METHOD                                     PAYMENT_STATUS
-------------------------------------------------- --------------------
PAYMENT_D     AMOUNT
--------- ----------
         6       1006         105
Vikram Patel
UPI                                                Pending
16-SEP-26        850


PAYMENT_ID   ORDER_ID CUSTOMER_ID
---------- ---------- -----------
CUSTOMER_NAME
--------------------------------------------------
PAYMENT_METHOD                                     PAYMENT_STATUS
-------------------------------------------------- --------------------
PAYMENT_D     AMOUNT
--------- ----------
        11       1006         105
Vikram Patel
Credit Card                                        Failed
16-SEP-26        850


PAYMENT_ID   ORDER_ID CUSTOMER_ID
---------- ---------- -----------
CUSTOMER_NAME
--------------------------------------------------
PAYMENT_METHOD                                     PAYMENT_STATUS
-------------------------------------------------- --------------------
PAYMENT_D     AMOUNT
--------- ----------
         5       1005         104
Sneha Reddy
Cash                                               Paid
17-SEP-26        500


PAYMENT_ID   ORDER_ID CUSTOMER_ID
---------- ---------- -----------
CUSTOMER_NAME
--------------------------------------------------
PAYMENT_METHOD                                     PAYMENT_STATUS
-------------------------------------------------- --------------------
PAYMENT_D     AMOUNT
--------- ----------
         4       1004         101
Arun Kumar
UPI                                                Paid
18-SEP-26        750


PAYMENT_ID   ORDER_ID CUSTOMER_ID
---------- ---------- -----------
CUSTOMER_NAME
--------------------------------------------------
PAYMENT_METHOD                                     PAYMENT_STATUS
-------------------------------------------------- --------------------
PAYMENT_D     AMOUNT
--------- ----------
         3       1003         103
Rahul Singh
Debit Card                                         Paid
19-SEP-26       1800


PAYMENT_ID   ORDER_ID CUSTOMER_ID
---------- ---------- -----------
CUSTOMER_NAME
--------------------------------------------------
PAYMENT_METHOD                                     PAYMENT_STATUS
-------------------------------------------------- --------------------
PAYMENT_D     AMOUNT
--------- ----------
        10       1010         109
Rohan Gupta
Credit Card                                        Paid
20-SEP-26      28000


PAYMENT_ID   ORDER_ID CUSTOMER_ID
---------- ---------- -----------
CUSTOMER_NAME
--------------------------------------------------
PAYMENT_METHOD                                     PAYMENT_STATUS
-------------------------------------------------- --------------------
PAYMENT_D     AMOUNT
--------- ----------
         2       1002         102
Priya Sharma
Credit Card                                        Paid
20-SEP-26       1250


PAYMENT_ID   ORDER_ID CUSTOMER_ID
---------- ---------- -----------
CUSTOMER_NAME
--------------------------------------------------
PAYMENT_METHOD                                     PAYMENT_STATUS
-------------------------------------------------- --------------------
PAYMENT_D     AMOUNT
--------- ----------
         1       1001         101
Arun Kumar
UPI                                                Paid
21-SEP-26        900


11 rows selected.

commit;
Commit complete.