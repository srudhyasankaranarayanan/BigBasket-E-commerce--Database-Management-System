CREATE TABLE Review (
    Review_ID NUMBER PRIMARY KEY,
    Customer_ID NUMBER NOT NULL,
    Product_ID NUMBER NOT NULL,
    Rating NUMBER(1),
    Review_text VARCHAR2(500),
    Review_date DATE,
    CONSTRAINT fk_review_customer
        FOREIGN KEY (Customer_ID)
        REFERENCES Customer(Customer_ID),
    CONSTRAINT fk_review_product
        FOREIGN KEY (Product_ID)
        REFERENCES Product(Product_ID)
);
Table created.

INSERT INTO Review
VALUES (1, 101, 101, 5, 'Excellent product and good quality', TO_DATE('20-09-2026','DD-MM-YYYY'));
1 row created.

INSERT INTO Review
VALUES (2, 102, 102, 4, 'Good product and worth the price', TO_DATE('21-09-2026','DD-MM-YYYY'));
1 row created.

INSERT INTO Review
VALUES (3, 103, 103, 5, 'Very useful and good quality', TO_DATE('22-09-2026','DD-MM-YYYY'));
1 row created.

INSERT INTO Review
VALUES (4, 104, 104, 3, 'Average product', TO_DATE('22-09-2026','DD-MM-YYYY'));
1 row created.

INSERT INTO Review
VALUES (5, 105, 105, 4, 'Good product and fast delivery', TO_DATE('23-09-2026','DD-MM-YYYY'));
1 row created.

Select * from Review;
REVIEW_ID CUSTOMER_ID PRODUCT_ID     RATING
---------- ----------- ---------- ----------
REVIEW_TEXT
--------------------------------------------------------------------------------
REVIEW_DA
---------
         1         101        101          5
Excellent product and good quality
20-SEP-26

         2         102        102          4
Good product and worth the price
21-SEP-26

 REVIEW_ID CUSTOMER_ID PRODUCT_ID     RATING
---------- ----------- ---------- ----------
REVIEW_TEXT
--------------------------------------------------------------------------------
REVIEW_DA
---------

         3         103        103          5
Very useful and good quality
22-SEP-26

         4         104        104          3
Average product

 REVIEW_ID CUSTOMER_ID PRODUCT_ID     RATING
---------- ----------- ---------- ----------
REVIEW_TEXT
--------------------------------------------------------------------------------
REVIEW_DA
---------
22-SEP-26

         5         105        105          4
Good product and fast delivery
23-SEP-26
5 rows selected.

SELECT
    r.Review_ID,
    c.Customer_Name,
    p.Product_Name,
    r.Rating,
    r.Review_text,
    r.Review_date
FROM Review r
JOIN Customer c
    ON r.Customer_ID = c.Customer_ID
JOIN Product p
    ON r.Product_ID = p.Product_ID
ORDER BY r.Review_date DESC;
REVIEW_ID CUSTOMER_NAME
---------- --------------------------------------------------
PRODUCT_NAME                                           RATING
-------------------------------------------------- ----------
REVIEW_TEXT
--------------------------------------------------------------------------------
REVIEW_DA
---------
         5 Vikram Patel
Mouse                                                       4
Good product and fast delivery
23-SEP-26


 REVIEW_ID CUSTOMER_NAME
---------- --------------------------------------------------
PRODUCT_NAME                                           RATING
-------------------------------------------------- ----------
REVIEW_TEXT
--------------------------------------------------------------------------------
REVIEW_DA
---------
         3 Rahul Singh
Tablet                                                      5
Very useful and good quality
22-SEP-26


 REVIEW_ID CUSTOMER_NAME
---------- --------------------------------------------------
PRODUCT_NAME                                           RATING
-------------------------------------------------- ----------
REVIEW_TEXT
--------------------------------------------------------------------------------
REVIEW_DA
---------
         4 Sneha Reddy
Keyboard                                                    3
Average product
22-SEP-26


 REVIEW_ID CUSTOMER_NAME
---------- --------------------------------------------------
PRODUCT_NAME                                           RATING
-------------------------------------------------- ----------
REVIEW_TEXT
--------------------------------------------------------------------------------
REVIEW_DA
---------
         2 Priya Sharma
Smartphone                                                  4
Good product and worth the price
21-SEP-26


 REVIEW_ID CUSTOMER_NAME
---------- --------------------------------------------------
PRODUCT_NAME                                           RATING
-------------------------------------------------- ----------
REVIEW_TEXT
--------------------------------------------------------------------------------
REVIEW_DA
---------
         1 Arun Kumar
Laptop                                                      5
Excellent product and good quality
20-SEP-26

commit;
Commit complete