CREATE TABLE Rating (
    Rating_ID NUMBER PRIMARY KEY,
    Customer_ID NUMBER NOT NULL,
    Product_ID NUMBER NOT NULL,
    Rating NUMBER(1) NOT NULL,
    Rating_Date DATE,
    CONSTRAINT fk_rating_customer
        FOREIGN KEY (Customer_ID)
        REFERENCES Customer(Customer_ID),
    CONSTRAINT fk_rating_product
        FOREIGN KEY (Product_ID)
        REFERENCES Product(Product_ID),
    CONSTRAINT chk_rating
        CHECK (Rating BETWEEN 1 AND 5)
);
Table created.

INSERT INTO Rating
VALUES (1, 101, 101, 5, TO_DATE('20-09-2026','DD-MM-YYYY'));
1 row created.

INSERT INTO Rating
VALUES (2, 102, 102, 4, TO_DATE('21-09-2026','DD-MM-YYYY'));
1 row created.

INSERT INTO Rating
VALUES (3, 103, 103, 5, TO_DATE('22-09-2026','DD-MM-YYYY'));
1 row created.

INSERT INTO Rating
VALUES (4, 104, 104, 3, TO_DATE('22-09-2026','DD-MM-YYYY'));
1 row created.

INSERT INTO Rating
VALUES (5, 105, 105, 4, TO_DATE('23-09-2026','DD-MM-YYYY'));
1 row created.

INSERT INTO Rating
VALUES (6, 106, 106, 5, TO_DATE('24-09-2026','DD-MM-YYYY'));
1 row created.

INSERT INTO Rating
VALUES (7, 107, 107, 2, TO_DATE('24-09-2026','DD-MM-YYYY'));
1 row created.

INSERT INTO Rating
VALUES (8, 108, 108, 4, TO_DATE('25-09-2026','DD-MM-YYYY'));
1 row created.

INSERT INTO Rating
VALUES (9, 109, 109, 5, TO_DATE('25-09-2026','DD-MM-YYYY'));
1 row created.

INSERT INTO Rating
VALUES (10, 110, 110, 3, TO_DATE('26-09-2026','DD-MM-YYYY'));
1 row created.

Select * from Rating;
RATING_ID CUSTOMER_ID PRODUCT_ID     RATING RATING_DA
---------- ----------- ---------- ---------- ---------
         1         101        101          5 20-SEP-26
         2         102        102          4 21-SEP-26
         3         103        103          5 22-SEP-26
         4         104        104          3 22-SEP-26
         5         105        105          4 23-SEP-26
         6         106        106          5 24-SEP-26
         7         107        107          2 24-SEP-26
         8         108        108          4 25-SEP-26
         9         109        109          5 25-SEP-26
        10         110        110          3 26-SEP-26

10 rows selected.

Select Product_ID,Avg(Rating) as Average_Rating
From Rating
Group by Product_ID;
PRODUCT_ID AVERAGE_RATING
---------- --------------
       101              5
       102              4
       103              5
       104              3
       105              4
       106              5
       107              2
       108              4
       109              5
       110              3

10 rows selected.

SELECT
    p.Product_ID,
    p.Product_Name,
    ROUND(AVG(r.Rating), 2) AS Average_Rating
FROM Product p
JOIN Review r
    ON p.Product_ID = r.Product_ID
GROUP BY
    p.Product_ID,
    p.Product_Name
HAVING AVG(r.Rating) >= 4
ORDER BY
    Average_Rating DESC;
PRODUCT_ID PRODUCT_NAME                                       AVERAGE_RATING
---------- -------------------------------------------------- --------------
       103 Tablet                                                          5
       101 Laptop                                                          5
       105 Mouse                                                           4
       102 Smartphone                                                      4

SELECT
    p.Product_ID,
    p.Product_Name,
    COUNT(r.Review_ID) AS Total_Reviews,
    ROUND(AVG(r.Rating), 2) AS Average_Rating,
    MAX(r.Rating) AS Highest_Rating,
    MIN(r.Rating) AS Lowest_Rating
FROM Product p
JOIN Review r
    ON p.Product_ID = r.Product_ID
GROUP BY
    p.Product_ID,
    p.Product_Name
ORDER BY
    Average_Rating DESC;

PRODUCT_ID PRODUCT_NAME                                       TOTAL_REVIEWS
---------- -------------------------------------------------- -------------
AVERAGE_RATING HIGHEST_RATING LOWEST_RATING
-------------- -------------- -------------
       101 Laptop                                                         1
             5              5             5

       103 Tablet                                                         1
             5              5             5

       105 Mouse                                                          1
             4              4             4


PRODUCT_ID PRODUCT_NAME                                       TOTAL_REVIEWS
---------- -------------------------------------------------- -------------
AVERAGE_RATING HIGHEST_RATING LOWEST_RATING
-------------- -------------- -------------
       102 Smartphone                                                     1
             4              4             4

       104 Keyboard                                                       1
             3              3             3

commit;
Commit complete