Create table Category(
    Category_ID int primary key,
    Category_Name varchar2(30) unique,
    Description varchar2(30)
);
Table created.


INSERT INTO Category VALUES (1, 'Electronics', 'Electronic products');
1 row created.

INSERT INTO Category VALUES (2, 'Clothing', 'Clothing products');
1 row created.

INSERT INTO Category VALUES (3, 'Books', 'Educational books');
1 row created.

INSERT INTO Category VALUES (4, 'Furniture', 'Home furniture');
1 row created.

INSERT INTO Category VALUES (5, 'Groceries', 'Daily grocery items');
1 row created.

INSERT INTO Category VALUES (6, 'Footwear', 'Shoes and sandals');
1 row created.

INSERT INTO Category VALUES (7, 'Sports', 'Sports equipment');
1 row created.

INSERT INTO Category VALUES (8, 'Beauty', 'Beauty products');
1 row created.

INSERT INTO Category VALUES (9, 'Toys', 'Toys and games');
1 row created.

INSERT INTO Category VALUES (10, 'Stationery', 'Stationery items');
1 row created.

SELECT * FROM Category;

CATEGORY_ID CATEGORY_NAME                  DESCRIPTION
----------- ------------------------------ ------------------------------
          1 Electronics                    Electronic products
          2 Clothing                       Clothing products
          3 Books                          Educational books
          4 Furniture                      Home furniture
          5 Groceries                      Daily grocery items
          6 Footwear                       Shoes and sandals
          7 Sports                         Sports equipment
          8 Beauty                         Beauty products
          9 Toys                           Toys and games
         10 Stationery                     Stationery items

10 rows selected.

Commit;

Commit complete.