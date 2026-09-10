CREATE TABLE Product (
    Product_ID INT PRIMARY KEY,
    Product_Name VARCHAR2(50),
    Category_ID INT REFERENCES Category(Category_ID),
    Supplier_ID INT,
    Brand VARCHAR2(30),
    Price NUMBER(10,2) CHECK (Price > 0),
    Stock INT CHECK (Stock >= 0),
    Expiry_Date DATE
);
Table created.

-- =========================================
-- CATEGORY 1 : ELECTRONICS
-- Category_ID = 1
-- =========================================

INSERT INTO Product VALUES (101, 'Laptop', 1, 1001, 'Dell', 55000, 10, NULL);
1 row created.

INSERT INTO Product VALUES (102, 'Smartphone', 1, 1002, 'Samsung', 25000, 20, NULL);
1 row created.

INSERT INTO Product VALUES (103, 'Tablet', 1, 1003, 'Lenovo', 18000, 15, NULL);
1 row created.

INSERT INTO Product VALUES (104, 'Keyboard', 1, 1004, 'HP', 1200, 25, NULL);
1 row created.

INSERT INTO Product VALUES (105, 'Mouse', 1, 1005, 'Logitech', 800, 30, NULL);
1 row created.

INSERT INTO Product VALUES (106, 'Monitor', 1, 1006, 'LG', 15000, 12, NULL);
1 row created.

INSERT INTO Product VALUES (107, 'Printer', 1, 1007, 'Canon', 12000, 8, NULL);
1 row created.

INSERT INTO Product VALUES (108, 'Speaker', 1, 1008, 'JBL', 3500, 18, NULL);
1 row created.

INSERT INTO Product VALUES (109, 'Webcam', 1, 1009, 'Logitech', 2500, 20, NULL);
1 row created.

INSERT INTO Product VALUES (110, 'Headphones', 1, 1010, 'Sony', 4500, 22, NULL);
1 row created.

-- =========================================
-- CATEGORY 2 : CLOTHING
-- Category_ID = 2
-- =========================================

INSERT INTO Product VALUES (111, 'T-Shirt', 2, 1011, 'Puma', 1200, 30, NULL);
1 row created.

INSERT INTO Product VALUES (112, 'Jeans', 2, 1012, 'Levis', 2500, 25, NULL);
1 row created.

INSERT INTO Product VALUES (113, 'Formal Shirt', 2, 1013, 'Peter England', 1800, 20, NULL);
1 row created.

INSERT INTO Product VALUES (114, 'Kurti', 2, 1014, 'Biba', 2200, 18, NULL);
1 row created.

INSERT INTO Product VALUES (115, 'Saree', 2, 1015, 'Silk India', 4500, 12, NULL);
1 row created.

INSERT INTO Product VALUES (116, 'Hoodie', 2, 1016, 'Adidas', 2800, 15, NULL);
1 row created.

INSERT INTO Product VALUES (117, 'Jacket', 2, 1017, 'Allen Solly', 3500, 10, NULL);
1 row created.

INSERT INTO Product VALUES (118, 'Shorts', 2, 1018, 'Nike', 1500, 22, NULL);
1 row created.

INSERT INTO Product VALUES (119, 'Skirt', 2, 1019, 'Zara', 2000, 14, NULL);
1 row created.

INSERT INTO Product VALUES (120, 'Sweater', 2, 1020, 'Van Heusen', 2400, 16, NULL);
1 row created.

-- =========================================
-- CATEGORY 3 : BOOKS
-- Category_ID = 3
-- =========================================

INSERT INTO Product VALUES (121, 'DBMS Book', 3, 1021, 'McGraw', 650, 15, NULL);
1 row created.

INSERT INTO Product VALUES (122, 'Python Programming', 3, 1022, 'OReilly', 850, 12, NULL);
1 row created.

INSERT INTO Product VALUES (123, 'Java Programming', 3, 1023, 'Pearson', 900, 10, NULL);
1 row created.

INSERT INTO Product VALUES (124, 'Data Structures', 3, 1024, 'McGraw', 750, 14, NULL);
1 row created.

INSERT INTO Product VALUES (125, 'Machine Learning', 3, 1025, 'Wiley', 1100, 8, NULL);
1 row created.

INSERT INTO Product VALUES (126, 'Artificial Intelligence', 3, 1026, 'Pearson', 1250, 9, NULL);
1 row created.

INSERT INTO Product VALUES (127, 'Web Development', 3, 1027, 'Packt', 950, 11, NULL);
1 row created.

INSERT INTO Product VALUES (128, 'Computer Networks', 3, 1028, 'McGraw', 800, 13, NULL);
1 row created.

INSERT INTO Product VALUES (129, 'Operating Systems', 3, 1029, 'Pearson', 700, 16, NULL);
1 row created.

INSERT INTO Product VALUES (130, 'Software Engineering', 3, 1030, 'Wiley', 850, 10, NULL);
1 row created.

-- =========================================
-- CATEGORY 4 : FURNITURE
-- Category_ID = 4
-- =========================================

INSERT INTO Product VALUES (131, 'Computer Table', 4, 1031, 'WoodCraft', 4500, 8, NULL);
1 row created.

INSERT INTO Product VALUES (132, 'Office Chair', 4, 1032, 'FeatherLite', 6500, 10, NULL);
1 row created.

INSERT INTO Product VALUES (133, 'Dining Table', 4, 1033, 'UrbanWood', 12000, 5, NULL);
1 row created.

INSERT INTO Product VALUES (134, 'Sofa', 4, 1034, 'IKEA', 25000, 4, NULL);
1 row created.

INSERT INTO Product VALUES (135, 'Bookshelf', 4, 1035, 'HomeTown', 7000, 7, NULL);
1 row created.

INSERT INTO Product VALUES (136, 'Bed', 4, 1036, 'Wakefit', 30000, 3, NULL);
1 row created.

INSERT INTO Product VALUES (137, 'Wardrobe', 4, 1037, 'Godrej', 22000, 6, NULL);
1 row created.

INSERT INTO Product VALUES (138, 'Study Table', 4, 1038, 'Nilkamal', 5500, 9, NULL);
1 row created.

INSERT INTO Product VALUES (139, 'Coffee Table', 4, 1039, 'UrbanLadder', 6500, 8, NULL);
1 row created.

INSERT INTO Product VALUES (140, 'TV Stand', 4, 1040, 'HomeTown', 8000, 5, NULL);
1 row created.


-- =========================================
-- CATEGORY 5 : GROCERIES
-- Category_ID = 5
-- =========================================

INSERT INTO Product VALUES (141, 'Rice', 5, 1041, 'India Gate', 800, 30, TO_DATE('30-06-2027','DD-MM-YYYY'));
1 row created.

INSERT INTO Product VALUES (142, 'Wheat Flour', 5, 1042, 'Aashirvaad', 450, 25, TO_DATE('15-07-2027','DD-MM-YYYY'));
1 row created.

INSERT INTO Product VALUES (143, 'Cooking Oil', 5, 1043, 'Fortune', 180, 40, TO_DATE('30-06-2027','DD-MM-YYYY'));
1 row created.

INSERT INTO Product VALUES (144, 'Sugar', 5, 1044, 'Madhur', 55, 50, TO_DATE('31-12-2027','DD-MM-YYYY'));
1 row created.

INSERT INTO Product VALUES (145, 'Salt', 5, 1045, 'Tata', 30, 45, TO_DATE('31-12-2028','DD-MM-YYYY'));
1 row created.

INSERT INTO Product VALUES (146, 'Toor Dal', 5, 1046, 'Tata Sampann', 160, 35, TO_DATE('30-09-2027','DD-MM-YYYY'));
1 row created.

INSERT INTO Product VALUES (147, 'Biscuits', 5, 1047, 'Parle', 40, 60, TO_DATE('15-05-2027','DD-MM-YYYY'));
1 row created.

INSERT INTO Product VALUES (148, 'Tea', 5, 1048, 'Tata Tea', 250, 30, TO_DATE('31-08-2027','DD-MM-YYYY'));
1 row created.

INSERT INTO Product VALUES (149, 'Coffee', 5, 1049, 'Bru', 300, 25, TO_DATE('30-11-2027','DD-MM-YYYY'));
1 row created.

INSERT INTO Product VALUES (150, 'Noodles', 5, 1050, 'Maggi', 60, 50, TO_DATE('31-10-2027','DD-MM-YYYY'));
1 row created.


-- =========================================
-- CATEGORY 6 : FOOTWEAR
-- Category_ID = 6
-- =========================================

INSERT INTO Product VALUES (151, 'Running Shoes', 6, 1051, 'Nike', 3500, 18, NULL);
1 row created.

INSERT INTO Product VALUES (152, 'Sports Sandals', 6, 1052, 'Adidas', 2200, 15, NULL);
1 row created.

INSERT INTO Product VALUES (153, 'Formal Shoes', 6, 1053, 'Bata', 2800, 12, NULL);
1 row created.

INSERT INTO Product VALUES (154, 'Sneakers', 6, 1054, 'Puma', 3200, 20, NULL);
1 row created.

INSERT INTO Product VALUES (155, 'Slippers', 6, 1055, 'Sparx', 600, 35, NULL);
1 row created.

INSERT INTO Product VALUES (156, 'Heels', 6, 1056, 'Metro', 2500, 14, NULL);
1 row created.

INSERT INTO Product VALUES (157, 'Flip Flops', 6, 1057, 'Hawaii', 400, 40, NULL);
1 row created.

INSERT INTO Product VALUES (158, 'Loafers', 6, 1058, 'Clarks', 4500, 10, NULL);
1 row created.

INSERT INTO Product VALUES (159, 'School Shoes', 6, 1059, 'Bata', 1200, 25, NULL);
1 row created.

INSERT INTO Product VALUES (160, 'Walking Shoes', 6, 1060, 'Reebok', 2800, 18, NULL);
1 row created.


-- =========================================
-- CATEGORY 7 : SPORTS
-- Category_ID = 7
-- =========================================

INSERT INTO Product VALUES (161, 'Football', 7, 1061, 'Nivia', 900, 25, NULL);
1 row created.

INSERT INTO Product VALUES (162, 'Cricket Bat', 7, 1062, 'SS', 2800, 12, NULL);
1 row created.

INSERT INTO Product VALUES (163, 'Cricket Ball', 7, 1063, 'SG', 450, 30, NULL);
1 row created.

INSERT INTO Product VALUES (164, 'Tennis Racket', 7, 1064, 'Yonex', 3500, 10, NULL);
1 row created.

INSERT INTO Product VALUES (165, 'Badminton Racket', 7, 1065, 'Li-Ning', 2500, 15, NULL);
1 row created.

INSERT INTO Product VALUES (166, 'Basketball', 7, 1066, 'Spalding', 1800, 14, NULL);
1 row created.

INSERT INTO Product VALUES (167, 'Volleyball', 7, 1067, 'Cosco', 1200, 18, NULL);
1 row created.

INSERT INTO Product VALUES (168, 'Skipping Rope', 7, 1068, 'Nivia', 300, 35, NULL);
1 row created.

INSERT INTO Product VALUES (169, 'Yoga Mat', 7, 1069, 'Boldfit', 800, 25, NULL);
1 row created.

INSERT INTO Product VALUES (170, 'Dumbbells', 7, 1070, 'Kobo', 1500, 12, NULL);
1 row created.


-- =========================================
-- CATEGORY 8 : BEAUTY
-- Category_ID = 8
-- =========================================

INSERT INTO Product VALUES (171, 'Face Cream', 8, 1071, 'Nivea', 450, 25, TO_DATE('31-12-2027','DD-MM-YYYY'));
1 row created.

INSERT INTO Product VALUES (172, 'Shampoo', 8, 1072, 'Dove', 350, 30, TO_DATE('31-12-2027','DD-MM-YYYY'));
1 row created.

INSERT INTO Product VALUES (173, 'Lipstick', 8, 1073, 'Lakme', 599, 20, TO_DATE('30-06-2028','DD-MM-YYYY'));
1 row created.

INSERT INTO Product VALUES (174, 'Face Wash', 8, 1074, 'Himalaya', 250, 35, TO_DATE('31-12-2027','DD-MM-YYYY'));
1 row created.

INSERT INTO Product VALUES (175, 'Moisturizer', 8, 1075, 'Ponds', 400, 28, TO_DATE('30-09-2027','DD-MM-YYYY'));
1 row created.

INSERT INTO Product VALUES (176, 'Sunscreen', 8, 1076, 'Neutrogena', 650, 22, TO_DATE('31-12-2027','DD-MM-YYYY'));
1 row created.

INSERT INTO Product VALUES (177, 'Kajal', 8, 1077, 'Maybelline', 300, 25, TO_DATE('30-06-2028','DD-MM-YYYY'));
1 row created.

INSERT INTO Product VALUES (178, 'Perfume', 8, 1078, 'Fogg', 750, 18, TO_DATE('31-12-2028','DD-MM-YYYY'));
1 row created.

INSERT INTO Product VALUES (179, 'Body Lotion', 8, 1079, 'Vaseline', 320, 30, TO_DATE('31-08-2027','DD-MM-YYYY'));
1 row created.

INSERT INTO Product VALUES (180, 'Compact Powder', 8, 1080, 'Lakme', 550, 20, TO_DATE('30-06-2028','DD-MM-YYYY'));
1 row created.


-- =========================================
-- CATEGORY 9 : TOYS
-- Category_ID = 9
-- =========================================

INSERT INTO Product VALUES (181, 'Toy Car', 9, 1081, 'Hot Wheels', 600, 20, NULL);
1 row created.

INSERT INTO Product VALUES (182, 'Teddy Bear', 9, 1082, 'Funskool', 1200, 15, NULL);
1 row created.

INSERT INTO Product VALUES (183, 'Building Blocks', 9, 1083, 'Lego', 2500, 10, NULL);
1 row created.

INSERT INTO Product VALUES (184, 'Doll', 9, 1084, 'Barbie', 1500, 18, NULL);
1 row created.

INSERT INTO Product VALUES (185, 'Remote Car', 9, 1085, 'Maisto', 1800, 12, NULL);
1 row created.

INSERT INTO Product VALUES (186, 'Puzzle Game', 9, 1086, 'Funskool', 450, 25, NULL);
1 row created.

INSERT INTO Product VALUES (187, 'Board Game', 9, 1087, 'Hasbro', 1200, 15, NULL);
1 row created.

INSERT INTO Product VALUES (188, 'Toy Train', 9, 1088, 'Fisher Price', 2000, 8, NULL);
1 row created.

INSERT INTO Product VALUES (189, 'Rubik Cube', 9, 1089, 'Rubik', 500, 30, NULL);
1 row created.

INSERT INTO Product VALUES (190, 'Water Gun', 9, 1090, 'Nerf', 800, 20, NULL);
1 row created.


-- =========================================
-- CATEGORY 10 : STATIONERY
-- Category_ID = 10
-- =========================================

INSERT INTO Product VALUES (191, 'Notebook', 10, 1091, 'Classmate', 60, 100, NULL);
1 row created.

INSERT INTO Product VALUES (192, 'Pen Set', 10, 1092, 'Cello', 120, 50, NULL);
1 row created.

INSERT INTO Product VALUES (193, 'Pencil Box', 10, 1093, 'Camlin', 150, 40, NULL);
1 row created.

INSERT INTO Product VALUES (194, 'Eraser', 10, 1094, 'Apsara', 10, 100, NULL);
1 row created.

INSERT INTO Product VALUES (195, 'Sharpener', 10, 1095, 'Nataraj', 15, 80, NULL);
1 row created.

INSERT INTO Product VALUES (196, 'Marker Set', 10, 1096, 'Camlin', 180, 45, NULL);
1 row created.

INSERT INTO Product VALUES (197, 'Geometry Box', 10, 1097, 'Camlin', 250, 35, NULL);
1 row created.

INSERT INTO Product VALUES (198, 'File Folder', 10, 1098, 'Solo', 100, 60, NULL);
1 row created.

INSERT INTO Product VALUES (199, 'Sticky Notes', 10, 1099, 'Post-it', 80, 50, NULL);
1 row created.

INSERT INTO Product VALUES (200, 'A4 Paper', 10, 1100, 'JK Copier', 350, 30, NULL);
1 row created.

Select * From Product;

PRODUCT_ID PRODUCT_NAME                                       CATEGORY_ID
---------- -------------------------------------------------- -----------
SUPPLIER_ID BRAND                               PRICE      STOCK EXPIRY_DA
----------- ------------------------------ ---------- ---------- ---------
       101 Laptop                                                       1
       1001 Dell                                55000         10

       102 Smartphone                                                   1
       1002 Samsung                             25000         20

       103 Tablet                                                       1
       1003 Lenovo                              18000         15


PRODUCT_ID PRODUCT_NAME                                       CATEGORY_ID
---------- -------------------------------------------------- -----------
SUPPLIER_ID BRAND                               PRICE      STOCK EXPIRY_DA
----------- ------------------------------ ---------- ---------- ---------
       104 Keyboard                                                     1
       1004 HP                                   1200         25

       105 Mouse                                                        1
       1005 Logitech                              800         30

       106 Monitor                                                      1
       1006 LG                                  15000         12


PRODUCT_ID PRODUCT_NAME                                       CATEGORY_ID
---------- -------------------------------------------------- -----------
SUPPLIER_ID BRAND                               PRICE      STOCK EXPIRY_DA
----------- ------------------------------ ---------- ---------- ---------
       107 Printer                                                      1
       1007 Canon                               12000          8

       108 Speaker                                                      1
       1008 JBL                                  3500         18

       109 Webcam                                                       1
       1009 Logitech                             2500         20


PRODUCT_ID PRODUCT_NAME                                       CATEGORY_ID
---------- -------------------------------------------------- -----------
SUPPLIER_ID BRAND                               PRICE      STOCK EXPIRY_DA
----------- ------------------------------ ---------- ---------- ---------
       110 Headphones                                                   1
       1010 Sony                                 4500         22

       111 T-Shirt                                                      2
       1011 Puma                                 1200         30

       112 Jeans                                                        2
       1012 Levis                                2500         25


PRODUCT_ID PRODUCT_NAME                                       CATEGORY_ID
---------- -------------------------------------------------- -----------
SUPPLIER_ID BRAND                               PRICE      STOCK EXPIRY_DA
----------- ------------------------------ ---------- ---------- ---------
       113 Formal Shirt                                                 2
       1013 Peter England                        1800         20

       114 Kurti                                                        2
       1014 Biba                                 2200         18

       115 Saree                                                        2
       1015 Silk India                           4500         12


PRODUCT_ID PRODUCT_NAME                                       CATEGORY_ID
---------- -------------------------------------------------- -----------
SUPPLIER_ID BRAND                               PRICE      STOCK EXPIRY_DA
----------- ------------------------------ ---------- ---------- ---------
       116 Hoodie                                                       2
       1016 Adidas                               2800         15

       117 Jacket                                                       2
       1017 Allen Solly                          3500         10

       118 Shorts                                                       2
       1018 Nike                                 1500         22


PRODUCT_ID PRODUCT_NAME                                       CATEGORY_ID
---------- -------------------------------------------------- -----------
SUPPLIER_ID BRAND                               PRICE      STOCK EXPIRY_DA
----------- ------------------------------ ---------- ---------- ---------
       119 Skirt                                                        2
       1019 Zara                                 2000         14

       120 Sweater                                                      2
       1020 Van Heusen                           2400         16

       121 DBMS Book                                                    3
       1021 McGraw                                650         15


PRODUCT_ID PRODUCT_NAME                                       CATEGORY_ID
---------- -------------------------------------------------- -----------
SUPPLIER_ID BRAND                               PRICE      STOCK EXPIRY_DA
----------- ------------------------------ ---------- ---------- ---------
       122 Python Programming                                           3
       1022 OReilly                               850         12

       123 Java Programming                                             3
       1023 Pearson                               900         10

       124 Data Structures                                              3
       1024 McGraw                                750         14


PRODUCT_ID PRODUCT_NAME                                       CATEGORY_ID
---------- -------------------------------------------------- -----------
SUPPLIER_ID BRAND                               PRICE      STOCK EXPIRY_DA
----------- ------------------------------ ---------- ---------- ---------
       125 Machine Learning                                             3
       1025 Wiley                                1100          8

       126 Artificial Intelligence                                      3
       1026 Pearson                              1250          9

       127 Web Development                                              3
       1027 Packt                                 950         11


PRODUCT_ID PRODUCT_NAME                                       CATEGORY_ID
---------- -------------------------------------------------- -----------
SUPPLIER_ID BRAND                               PRICE      STOCK EXPIRY_DA
----------- ------------------------------ ---------- ---------- ---------
       128 Computer Networks                                            3
       1028 McGraw                                800         13

       129 Operating Systems                                            3
       1029 Pearson                               700         16

       130 Software Engineering                                         3
       1030 Wiley                                 850         10


PRODUCT_ID PRODUCT_NAME                                       CATEGORY_ID
---------- -------------------------------------------------- -----------
SUPPLIER_ID BRAND                               PRICE      STOCK EXPIRY_DA
----------- ------------------------------ ---------- ---------- ---------
       131 Computer Table                                               4
       1031 WoodCraft                            4500          8

       132 Office Chair                                                 4
       1032 FeatherLite                          6500         10

       133 Dining Table                                                 4
       1033 UrbanWood                           12000          5


PRODUCT_ID PRODUCT_NAME                                       CATEGORY_ID
---------- -------------------------------------------------- -----------
SUPPLIER_ID BRAND                               PRICE      STOCK EXPIRY_DA
----------- ------------------------------ ---------- ---------- ---------
       134 Sofa                                                         4
       1034 IKEA                                25000          4

       135 Bookshelf                                                    4
       1035 HomeTown                             7000          7

       136 Bed                                                          4
       1036 Wakefit                             30000          3


PRODUCT_ID PRODUCT_NAME                                       CATEGORY_ID
---------- -------------------------------------------------- -----------
SUPPLIER_ID BRAND                               PRICE      STOCK EXPIRY_DA
----------- ------------------------------ ---------- ---------- ---------
       137 Wardrobe                                                     4
       1037 Godrej                              22000          6

       138 Study Table                                                  4
       1038 Nilkamal                             5500          9

       139 Coffee Table                                                 4
       1039 UrbanLadder                          6500          8


PRODUCT_ID PRODUCT_NAME                                       CATEGORY_ID
---------- -------------------------------------------------- -----------
SUPPLIER_ID BRAND                               PRICE      STOCK EXPIRY_DA
----------- ------------------------------ ---------- ---------- ---------
       140 TV Stand                                                     4
       1040 HomeTown                             8000          5

       141 Rice                                                         5
       1041 India Gate                            800         30 30-JUN-27

       142 Wheat Flour                                                  5
       1042 Aashirvaad                            450         25 15-JUL-27


PRODUCT_ID PRODUCT_NAME                                       CATEGORY_ID
---------- -------------------------------------------------- -----------
SUPPLIER_ID BRAND                               PRICE      STOCK EXPIRY_DA
----------- ------------------------------ ---------- ---------- ---------
       143 Cooking Oil                                                  5
       1043 Fortune                               180         40 30-JUN-27

       144 Sugar                                                        5
       1044 Madhur                                 55         50 31-DEC-27

       145 Salt                                                         5
       1045 Tata                                   30         45 31-DEC-28


PRODUCT_ID PRODUCT_NAME                                       CATEGORY_ID
---------- -------------------------------------------------- -----------
SUPPLIER_ID BRAND                               PRICE      STOCK EXPIRY_DA
----------- ------------------------------ ---------- ---------- ---------
       146 Toor Dal                                                     5
       1046 Tata Sampann                          160         35 30-SEP-27

       147 Biscuits                                                     5
       1047 Parle                                  40         60 15-MAY-27

       148 Tea                                                          5
       1048 Tata Tea                              250         30 31-AUG-27


PRODUCT_ID PRODUCT_NAME                                       CATEGORY_ID
---------- -------------------------------------------------- -----------
SUPPLIER_ID BRAND                               PRICE      STOCK EXPIRY_DA
----------- ------------------------------ ---------- ---------- ---------
       149 Coffee                                                       5
       1049 Bru                                   300         25 30-NOV-27

       150 Noodles                                                      5
       1050 Maggi                                  60         50 31-OCT-27

       151 Running Shoes                                                6
       1051 Nike                                 3500         18


PRODUCT_ID PRODUCT_NAME                                       CATEGORY_ID
---------- -------------------------------------------------- -----------
SUPPLIER_ID BRAND                               PRICE      STOCK EXPIRY_DA
----------- ------------------------------ ---------- ---------- ---------
       152 Sports Sandals                                               6
       1052 Adidas                               2200         15

       153 Formal Shoes                                                 6
       1053 Bata                                 2800         12

       154 Sneakers                                                     6
       1054 Puma                                 3200         20


PRODUCT_ID PRODUCT_NAME                                       CATEGORY_ID
---------- -------------------------------------------------- -----------
SUPPLIER_ID BRAND                               PRICE      STOCK EXPIRY_DA
----------- ------------------------------ ---------- ---------- ---------
       155 Slippers                                                     6
       1055 Sparx                                 600         35

       156 Heels                                                        6
       1056 Metro                                2500         14

       157 Flip Flops                                                   6
       1057 Hawaii                                400         40


PRODUCT_ID PRODUCT_NAME                                       CATEGORY_ID
---------- -------------------------------------------------- -----------
SUPPLIER_ID BRAND                               PRICE      STOCK EXPIRY_DA
----------- ------------------------------ ---------- ---------- ---------
       158 Loafers                                                      6
       1058 Clarks                               4500         10

       159 School Shoes                                                 6
       1059 Bata                                 1200         25

       160 Walking Shoes                                                6
       1060 Reebok                               2800         18


PRODUCT_ID PRODUCT_NAME                                       CATEGORY_ID
---------- -------------------------------------------------- -----------
SUPPLIER_ID BRAND                               PRICE      STOCK EXPIRY_DA
----------- ------------------------------ ---------- ---------- ---------
       161 Football                                                     7
       1061 Nivia                                 900         25

       162 Cricket Bat                                                  7
       1062 SS                                   2800         12

       163 Cricket Ball                                                 7
       1063 SG                                    450         30


PRODUCT_ID PRODUCT_NAME                                       CATEGORY_ID
---------- -------------------------------------------------- -----------
SUPPLIER_ID BRAND                               PRICE      STOCK EXPIRY_DA
----------- ------------------------------ ---------- ---------- ---------
       164 Tennis Racket                                                7
       1064 Yonex                                3500         10

       165 Badminton Racket                                             7
       1065 Li-Ning                              2500         15

       166 Basketball                                                   7
       1066 Spalding                             1800         14


PRODUCT_ID PRODUCT_NAME                                       CATEGORY_ID
---------- -------------------------------------------------- -----------
SUPPLIER_ID BRAND                               PRICE      STOCK EXPIRY_DA
----------- ------------------------------ ---------- ---------- ---------
       167 Volleyball                                                   7
       1067 Cosco                                1200         18

       168 Skipping Rope                                                7
       1068 Nivia                                 300         35

       169 Yoga Mat                                                     7
       1069 Boldfit                               800         25


PRODUCT_ID PRODUCT_NAME                                       CATEGORY_ID
---------- -------------------------------------------------- -----------
SUPPLIER_ID BRAND                               PRICE      STOCK EXPIRY_DA
----------- ------------------------------ ---------- ---------- ---------
       170 Dumbbells                                                    7
       1070 Kobo                                 1500         12

       171 Face Cream                                                   8
       1071 Nivea                                 450         25 31-DEC-27

       172 Shampoo                                                      8
       1072 Dove                                  350         30 31-DEC-27


PRODUCT_ID PRODUCT_NAME                                       CATEGORY_ID
---------- -------------------------------------------------- -----------
SUPPLIER_ID BRAND                               PRICE      STOCK EXPIRY_DA
----------- ------------------------------ ---------- ---------- ---------
       173 Lipstick                                                     8
       1073 Lakme                                 599         20 30-JUN-28

       174 Face Wash                                                    8
       1074 Himalaya                              250         35 31-DEC-27

       175 Moisturizer                                                  8
       1075 Ponds                                 400         28 30-SEP-27


PRODUCT_ID PRODUCT_NAME                                       CATEGORY_ID
---------- -------------------------------------------------- -----------
SUPPLIER_ID BRAND                               PRICE      STOCK EXPIRY_DA
----------- ------------------------------ ---------- ---------- ---------
       176 Sunscreen                                                    8
       1076 Neutrogena                            650         22 31-DEC-27

       177 Kajal                                                        8
       1077 Maybelline                            300         25 30-JUN-28

       178 Perfume                                                      8
       1078 Fogg                                  750         18 31-DEC-28


PRODUCT_ID PRODUCT_NAME                                       CATEGORY_ID
---------- -------------------------------------------------- -----------
SUPPLIER_ID BRAND                               PRICE      STOCK EXPIRY_DA
----------- ------------------------------ ---------- ---------- ---------
       179 Body Lotion                                                  8
       1079 Vaseline                              320         30 31-AUG-27

       180 Compact Powder                                               8
       1080 Lakme                                 550         20 30-JUN-28

       181 Toy Car                                                      9
       1081 Hot Wheels                            600         20


PRODUCT_ID PRODUCT_NAME                                       CATEGORY_ID
---------- -------------------------------------------------- -----------
SUPPLIER_ID BRAND                               PRICE      STOCK EXPIRY_DA
----------- ------------------------------ ---------- ---------- ---------
       182 Teddy Bear                                                   9
       1082 Funskool                             1200         15

       183 Building Blocks                                              9
       1083 Lego                                 2500         10

       184 Doll                                                         9
       1084 Barbie                               1500         18


PRODUCT_ID PRODUCT_NAME                                       CATEGORY_ID
---------- -------------------------------------------------- -----------
SUPPLIER_ID BRAND                               PRICE      STOCK EXPIRY_DA
----------- ------------------------------ ---------- ---------- ---------
       185 Remote Car                                                   9
       1085 Maisto                               1800         12

       186 Puzzle Game                                                  9
       1086 Funskool                              450         25

       187 Board Game                                                   9
       1087 Hasbro                               1200         15


PRODUCT_ID PRODUCT_NAME                                       CATEGORY_ID
---------- -------------------------------------------------- -----------
SUPPLIER_ID BRAND                               PRICE      STOCK EXPIRY_DA
----------- ------------------------------ ---------- ---------- ---------
       188 Toy Train                                                    9
       1088 Fisher Price                         2000          8

       189 Rubik Cube                                                   9
       1089 Rubik                                 500         30

       190 Water Gun                                                    9
       1090 Nerf                                  800         20


PRODUCT_ID PRODUCT_NAME                                       CATEGORY_ID
---------- -------------------------------------------------- -----------
SUPPLIER_ID BRAND                               PRICE      STOCK EXPIRY_DA
----------- ------------------------------ ---------- ---------- ---------
       191 Notebook                                                    10
       1091 Classmate                              60        100

       192 Pen Set                                                     10
       1092 Cello                                 120         50

       193 Pencil Box                                                  10
       1093 Camlin                                150         40


PRODUCT_ID PRODUCT_NAME                                       CATEGORY_ID
---------- -------------------------------------------------- -----------
SUPPLIER_ID BRAND                               PRICE      STOCK EXPIRY_DA
----------- ------------------------------ ---------- ---------- ---------
       194 Eraser                                                      10
       1094 Apsara                                 10        100

       195 Sharpener                                                   10
       1095 Nataraj                                15         80

       196 Marker Set                                                  10
       1096 Camlin                                180         45


PRODUCT_ID PRODUCT_NAME                                       CATEGORY_ID
---------- -------------------------------------------------- -----------
SUPPLIER_ID BRAND                               PRICE      STOCK EXPIRY_DA
----------- ------------------------------ ---------- ---------- ---------
       197 Geometry Box                                                10
       1097 Camlin                                250         35

       198 File Folder                                                 10
       1098 Solo                                  100         60

       199 Sticky Notes                                                10
       1099 Post-it                                80         50


PRODUCT_ID PRODUCT_NAME                                       CATEGORY_ID
---------- -------------------------------------------------- -----------
SUPPLIER_ID BRAND                               PRICE      STOCK EXPIRY_DA
----------- ------------------------------ ---------- ---------- ---------
       200 A4 Paper                                                    10
       1100 JK Copier                             350         30


100 rows selected.

Update Product
Set Price=700, Stock=30
Where Product_ID=121;
1 row updated.

UPDATE Product
SET Price = 7000,
    Stock = 12
WHERE Product_ID = 132;
1 row updated.

UPDATE Product
SET Price = 3000,
    Stock = 25
WHERE Product_ID = 160;
1 row updated.

SELECT *
FROM Product
WHERE Product_ID IN (121, 150, 132);

PRODUCT_ID PRODUCT_NAME                                       CATEGORY_ID
---------- -------------------------------------------------- -----------
SUPPLIER_ID BRAND                               PRICE      STOCK EXPIRY_DA
----------- ------------------------------ ---------- ---------- ---------
       121 DBMS Book                                                    3
       1021 McGraw                                700         30

       132 Office Chair                                                 4
       1032 FeatherLite                          7000         12

       160 Walking Shoes                                                6
       1060 Reebok                               3000         25

DELETE FROM Product
WHERE Product_ID = 118;
1 row deleted.

DELETE FROM Product
WHERE Product_ID = 172;
1 row deleted.

DELETE FROM Product
WHERE Product_ID = 192;
1 row deleted.

Select * From Product;

PRODUCT_ID PRODUCT_NAME                                       CATEGORY_ID
---------- -------------------------------------------------- -----------
SUPPLIER_ID BRAND                               PRICE      STOCK EXPIRY_DA
----------- ------------------------------ ---------- ---------- ---------
       101 Laptop                                                       1
       1001 Dell                                55000         10

       102 Smartphone                                                   1
       1002 Samsung                             25000         20

       103 Tablet                                                       1
       1003 Lenovo                              18000         15


PRODUCT_ID PRODUCT_NAME                                       CATEGORY_ID
---------- -------------------------------------------------- -----------
SUPPLIER_ID BRAND                               PRICE      STOCK EXPIRY_DA
----------- ------------------------------ ---------- ---------- ---------
       104 Keyboard                                                     1
       1004 HP                                   1200         25

       105 Mouse                                                        1
       1005 Logitech                              800         30

       106 Monitor                                                      1
       1006 LG                                  15000         12


PRODUCT_ID PRODUCT_NAME                                       CATEGORY_ID
---------- -------------------------------------------------- -----------
SUPPLIER_ID BRAND                               PRICE      STOCK EXPIRY_DA
----------- ------------------------------ ---------- ---------- ---------
       107 Printer                                                      1
       1007 Canon                               12000          8

       108 Speaker                                                      1
       1008 JBL                                  3500         18

       109 Webcam                                                       1
       1009 Logitech                             2500         20


PRODUCT_ID PRODUCT_NAME                                       CATEGORY_ID
---------- -------------------------------------------------- -----------
SUPPLIER_ID BRAND                               PRICE      STOCK EXPIRY_DA
----------- ------------------------------ ---------- ---------- ---------
       110 Headphones                                                   1
       1010 Sony                                 4500         22

       111 T-Shirt                                                      2
       1011 Puma                                 1200         30

       112 Jeans                                                        2
       1012 Levis                                2500         25


PRODUCT_ID PRODUCT_NAME                                       CATEGORY_ID
---------- -------------------------------------------------- -----------
SUPPLIER_ID BRAND                               PRICE      STOCK EXPIRY_DA
----------- ------------------------------ ---------- ---------- ---------
       113 Formal Shirt                                                 2
       1013 Peter England                        1800         20

       114 Kurti                                                        2
       1014 Biba                                 2200         18

       115 Saree                                                        2
       1015 Silk India                           4500         12


PRODUCT_ID PRODUCT_NAME                                       CATEGORY_ID
---------- -------------------------------------------------- -----------
SUPPLIER_ID BRAND                               PRICE      STOCK EXPIRY_DA
----------- ------------------------------ ---------- ---------- ---------
       116 Hoodie                                                       2
       1016 Adidas                               2800         15

       117 Jacket                                                       2
       1017 Allen Solly                          3500         10

       119 Skirt                                                        2
       1019 Zara                                 2000         14


PRODUCT_ID PRODUCT_NAME                                       CATEGORY_ID
---------- -------------------------------------------------- -----------
SUPPLIER_ID BRAND                               PRICE      STOCK EXPIRY_DA
----------- ------------------------------ ---------- ---------- ---------
       120 Sweater                                                      2
       1020 Van Heusen                           2400         16

       121 DBMS Book                                                    3
       1021 McGraw                                700         30

       122 Python Programming                                           3
       1022 OReilly                               850         12


PRODUCT_ID PRODUCT_NAME                                       CATEGORY_ID
---------- -------------------------------------------------- -----------
SUPPLIER_ID BRAND                               PRICE      STOCK EXPIRY_DA
----------- ------------------------------ ---------- ---------- ---------
       123 Java Programming                                             3
       1023 Pearson                               900         10

       124 Data Structures                                              3
       1024 McGraw                                750         14

       125 Machine Learning                                             3
       1025 Wiley                                1100          8


PRODUCT_ID PRODUCT_NAME                                       CATEGORY_ID
---------- -------------------------------------------------- -----------
SUPPLIER_ID BRAND                               PRICE      STOCK EXPIRY_DA
----------- ------------------------------ ---------- ---------- ---------
       126 Artificial Intelligence                                      3
       1026 Pearson                              1250          9

       127 Web Development                                              3
       1027 Packt                                 950         11

       128 Computer Networks                                            3
       1028 McGraw                                800         13


PRODUCT_ID PRODUCT_NAME                                       CATEGORY_ID
---------- -------------------------------------------------- -----------
SUPPLIER_ID BRAND                               PRICE      STOCK EXPIRY_DA
----------- ------------------------------ ---------- ---------- ---------
       129 Operating Systems                                            3
       1029 Pearson                               700         16

       130 Software Engineering                                         3
       1030 Wiley                                 850         10

       131 Computer Table                                               4
       1031 WoodCraft                            4500          8


PRODUCT_ID PRODUCT_NAME                                       CATEGORY_ID
---------- -------------------------------------------------- -----------
SUPPLIER_ID BRAND                               PRICE      STOCK EXPIRY_DA
----------- ------------------------------ ---------- ---------- ---------
       132 Office Chair                                                 4
       1032 FeatherLite                          7000         12

       133 Dining Table                                                 4
       1033 UrbanWood                           12000          5

       134 Sofa                                                         4
       1034 IKEA                                25000          4


PRODUCT_ID PRODUCT_NAME                                       CATEGORY_ID
---------- -------------------------------------------------- -----------
SUPPLIER_ID BRAND                               PRICE      STOCK EXPIRY_DA
----------- ------------------------------ ---------- ---------- ---------
       135 Bookshelf                                                    4
       1035 HomeTown                             7000          7

       136 Bed                                                          4
       1036 Wakefit                             30000          3

       137 Wardrobe                                                     4
       1037 Godrej                              22000          6


PRODUCT_ID PRODUCT_NAME                                       CATEGORY_ID
---------- -------------------------------------------------- -----------
SUPPLIER_ID BRAND                               PRICE      STOCK EXPIRY_DA
----------- ------------------------------ ---------- ---------- ---------
       138 Study Table                                                  4
       1038 Nilkamal                             5500          9

       139 Coffee Table                                                 4
       1039 UrbanLadder                          6500          8

       140 TV Stand                                                     4
       1040 HomeTown                             8000          5


PRODUCT_ID PRODUCT_NAME                                       CATEGORY_ID
---------- -------------------------------------------------- -----------
SUPPLIER_ID BRAND                               PRICE      STOCK EXPIRY_DA
----------- ------------------------------ ---------- ---------- ---------
       141 Rice                                                         5
       1041 India Gate                            800         30 30-JUN-27

       142 Wheat Flour                                                  5
       1042 Aashirvaad                            450         25 15-JUL-27

       143 Cooking Oil                                                  5
       1043 Fortune                               180         40 30-JUN-27


PRODUCT_ID PRODUCT_NAME                                       CATEGORY_ID
---------- -------------------------------------------------- -----------
SUPPLIER_ID BRAND                               PRICE      STOCK EXPIRY_DA
----------- ------------------------------ ---------- ---------- ---------
       144 Sugar                                                        5
       1044 Madhur                                 55         50 31-DEC-27

       145 Salt                                                         5
       1045 Tata                                   30         45 31-DEC-28

       146 Toor Dal                                                     5
       1046 Tata Sampann                          160         35 30-SEP-27


PRODUCT_ID PRODUCT_NAME                                       CATEGORY_ID
---------- -------------------------------------------------- -----------
SUPPLIER_ID BRAND                               PRICE      STOCK EXPIRY_DA
----------- ------------------------------ ---------- ---------- ---------
       147 Biscuits                                                     5
       1047 Parle                                  40         60 15-MAY-27

       148 Tea                                                          5
       1048 Tata Tea                              250         30 31-AUG-27

       149 Coffee                                                       5
       1049 Bru                                   300         25 30-NOV-27


PRODUCT_ID PRODUCT_NAME                                       CATEGORY_ID
---------- -------------------------------------------------- -----------
SUPPLIER_ID BRAND                               PRICE      STOCK EXPIRY_DA
----------- ------------------------------ ---------- ---------- ---------
       150 Noodles                                                      5
       1050 Maggi                                  60         50 31-OCT-27

       151 Running Shoes                                                6
       1051 Nike                                 3500         18

       152 Sports Sandals                                               6
       1052 Adidas                               2200         15


PRODUCT_ID PRODUCT_NAME                                       CATEGORY_ID
---------- -------------------------------------------------- -----------
SUPPLIER_ID BRAND                               PRICE      STOCK EXPIRY_DA
----------- ------------------------------ ---------- ---------- ---------
       153 Formal Shoes                                                 6
       1053 Bata                                 2800         12

       154 Sneakers                                                     6
       1054 Puma                                 3200         20

       155 Slippers                                                     6
       1055 Sparx                                 600         35


PRODUCT_ID PRODUCT_NAME                                       CATEGORY_ID
---------- -------------------------------------------------- -----------
SUPPLIER_ID BRAND                               PRICE      STOCK EXPIRY_DA
----------- ------------------------------ ---------- ---------- ---------
       156 Heels                                                        6
       1056 Metro                                2500         14

       157 Flip Flops                                                   6
       1057 Hawaii                                400         40

       158 Loafers                                                      6
       1058 Clarks                               4500         10


PRODUCT_ID PRODUCT_NAME                                       CATEGORY_ID
---------- -------------------------------------------------- -----------
SUPPLIER_ID BRAND                               PRICE      STOCK EXPIRY_DA
----------- ------------------------------ ---------- ---------- ---------
       159 School Shoes                                                 6
       1059 Bata                                 1200         25

       160 Walking Shoes                                                6
       1060 Reebok                               3000         25

       161 Football                                                     7
       1061 Nivia                                 900         25


PRODUCT_ID PRODUCT_NAME                                       CATEGORY_ID
---------- -------------------------------------------------- -----------
SUPPLIER_ID BRAND                               PRICE      STOCK EXPIRY_DA
----------- ------------------------------ ---------- ---------- ---------
       162 Cricket Bat                                                  7
       1062 SS                                   2800         12

       163 Cricket Ball                                                 7
       1063 SG                                    450         30

       164 Tennis Racket                                                7
       1064 Yonex                                3500         10


PRODUCT_ID PRODUCT_NAME                                       CATEGORY_ID
---------- -------------------------------------------------- -----------
SUPPLIER_ID BRAND                               PRICE      STOCK EXPIRY_DA
----------- ------------------------------ ---------- ---------- ---------
       165 Badminton Racket                                             7
       1065 Li-Ning                              2500         15

       166 Basketball                                                   7
       1066 Spalding                             1800         14

       167 Volleyball                                                   7
       1067 Cosco                                1200         18


PRODUCT_ID PRODUCT_NAME                                       CATEGORY_ID
---------- -------------------------------------------------- -----------
SUPPLIER_ID BRAND                               PRICE      STOCK EXPIRY_DA
----------- ------------------------------ ---------- ---------- ---------
       168 Skipping Rope                                                7
       1068 Nivia                                 300         35

       169 Yoga Mat                                                     7
       1069 Boldfit                               800         25

       170 Dumbbells                                                    7
       1070 Kobo                                 1500         12


PRODUCT_ID PRODUCT_NAME                                       CATEGORY_ID
---------- -------------------------------------------------- -----------
SUPPLIER_ID BRAND                               PRICE      STOCK EXPIRY_DA
----------- ------------------------------ ---------- ---------- ---------
       171 Face Cream                                                   8
       1071 Nivea                                 450         25 31-DEC-27

       173 Lipstick                                                     8
       1073 Lakme                                 599         20 30-JUN-28

       174 Face Wash                                                    8
       1074 Himalaya                              250         35 31-DEC-27


PRODUCT_ID PRODUCT_NAME                                       CATEGORY_ID
---------- -------------------------------------------------- -----------
SUPPLIER_ID BRAND                               PRICE      STOCK EXPIRY_DA
----------- ------------------------------ ---------- ---------- ---------
       175 Moisturizer                                                  8
       1075 Ponds                                 400         28 30-SEP-27

       176 Sunscreen                                                    8
       1076 Neutrogena                            650         22 31-DEC-27

       177 Kajal                                                        8
       1077 Maybelline                            300         25 30-JUN-28


PRODUCT_ID PRODUCT_NAME                                       CATEGORY_ID
---------- -------------------------------------------------- -----------
SUPPLIER_ID BRAND                               PRICE      STOCK EXPIRY_DA
----------- ------------------------------ ---------- ---------- ---------
       178 Perfume                                                      8
       1078 Fogg                                  750         18 31-DEC-28

       179 Body Lotion                                                  8
       1079 Vaseline                              320         30 31-AUG-27

       180 Compact Powder                                               8
       1080 Lakme                                 550         20 30-JUN-28


PRODUCT_ID PRODUCT_NAME                                       CATEGORY_ID
---------- -------------------------------------------------- -----------
SUPPLIER_ID BRAND                               PRICE      STOCK EXPIRY_DA
----------- ------------------------------ ---------- ---------- ---------
       181 Toy Car                                                      9
       1081 Hot Wheels                            600         20

       182 Teddy Bear                                                   9
       1082 Funskool                             1200         15

       183 Building Blocks                                              9
       1083 Lego                                 2500         10


PRODUCT_ID PRODUCT_NAME                                       CATEGORY_ID
---------- -------------------------------------------------- -----------
SUPPLIER_ID BRAND                               PRICE      STOCK EXPIRY_DA
----------- ------------------------------ ---------- ---------- ---------
       184 Doll                                                         9
       1084 Barbie                               1500         18

       185 Remote Car                                                   9
       1085 Maisto                               1800         12

       186 Puzzle Game                                                  9
       1086 Funskool                              450         25


PRODUCT_ID PRODUCT_NAME                                       CATEGORY_ID
---------- -------------------------------------------------- -----------
SUPPLIER_ID BRAND                               PRICE      STOCK EXPIRY_DA
----------- ------------------------------ ---------- ---------- ---------
       187 Board Game                                                   9
       1087 Hasbro                               1200         15

       188 Toy Train                                                    9
       1088 Fisher Price                         2000          8

       189 Rubik Cube                                                   9
       1089 Rubik                                 500         30


PRODUCT_ID PRODUCT_NAME                                       CATEGORY_ID
---------- -------------------------------------------------- -----------
SUPPLIER_ID BRAND                               PRICE      STOCK EXPIRY_DA
----------- ------------------------------ ---------- ---------- ---------
       190 Water Gun                                                    9
       1090 Nerf                                  800         20

       191 Notebook                                                    10
       1091 Classmate                              60        100

       193 Pencil Box                                                  10
       1093 Camlin                                150         40


PRODUCT_ID PRODUCT_NAME                                       CATEGORY_ID
---------- -------------------------------------------------- -----------
SUPPLIER_ID BRAND                               PRICE      STOCK EXPIRY_DA
----------- ------------------------------ ---------- ---------- ---------
       194 Eraser                                                      10
       1094 Apsara                                 10        100

       195 Sharpener                                                   10
       1095 Nataraj                                15         80

       196 Marker Set                                                  10
       1096 Camlin                                180         45


PRODUCT_ID PRODUCT_NAME                                       CATEGORY_ID
---------- -------------------------------------------------- -----------
SUPPLIER_ID BRAND                               PRICE      STOCK EXPIRY_DA
----------- ------------------------------ ---------- ---------- ---------
       197 Geometry Box                                                10
       1097 Camlin                                250         35

       198 File Folder                                                 10
       1098 Solo                                  100         60

       199 Sticky Notes                                                10
       1099 Post-it                                80         50


PRODUCT_ID PRODUCT_NAME                                       CATEGORY_ID
---------- -------------------------------------------------- -----------
SUPPLIER_ID BRAND                               PRICE      STOCK EXPIRY_DA
----------- ------------------------------ ---------- ---------- ---------
       200 A4 Paper                                                    10
       1100 JK Copier                             350         30


97 rows selected.

Select c.Category_ID,c.Category_Name,p.Product_ID,p.Product_Name,p.Price,p.Stock
from Category c join Product p
on c.Category_ID=p.Category_ID
Order By c.Category_ID,p.Category_ID;

CATEGORY_ID CATEGORY_NAME                  PRODUCT_ID
----------- ------------------------------ ----------
PRODUCT_NAME                                            PRICE      STOCK
-------------------------------------------------- ---------- ----------
          1 Electronics                           101
Laptop                                                  55000         10

          1 Electronics                           102
Smartphone                                              25000         20

          1 Electronics                           110
Headphones                                               4500         22


CATEGORY_ID CATEGORY_NAME                  PRODUCT_ID
----------- ------------------------------ ----------
PRODUCT_NAME                                            PRICE      STOCK
-------------------------------------------------- ---------- ----------
          1 Electronics                           109
Webcam                                                   2500         20

          1 Electronics                           108
Speaker                                                  3500         18

          1 Electronics                           107
Printer                                                 12000          8


CATEGORY_ID CATEGORY_NAME                  PRODUCT_ID
----------- ------------------------------ ----------
PRODUCT_NAME                                            PRICE      STOCK
-------------------------------------------------- ---------- ----------
          1 Electronics                           106
Monitor                                                 15000         12

          1 Electronics                           105
Mouse                                                     800         30

          1 Electronics                           104
Keyboard                                                 1200         25


CATEGORY_ID CATEGORY_NAME                  PRODUCT_ID
----------- ------------------------------ ----------
PRODUCT_NAME                                            PRICE      STOCK
-------------------------------------------------- ---------- ----------
          1 Electronics                           103
Tablet                                                  18000         15

          2 Clothing                              119
Skirt                                                    2000         14

          2 Clothing                              117
Jacket                                                   3500         10


CATEGORY_ID CATEGORY_NAME                  PRODUCT_ID
----------- ------------------------------ ----------
PRODUCT_NAME                                            PRICE      STOCK
-------------------------------------------------- ---------- ----------
          2 Clothing                              116
Hoodie                                                   2800         15

          2 Clothing                              115
Saree                                                    4500         12

          2 Clothing                              120
Sweater                                                  2400         16


CATEGORY_ID CATEGORY_NAME                  PRODUCT_ID
----------- ------------------------------ ----------
PRODUCT_NAME                                            PRICE      STOCK
-------------------------------------------------- ---------- ----------
          2 Clothing                              113
Formal Shirt                                             1800         20

          2 Clothing                              112
Jeans                                                    2500         25

          2 Clothing                              111
T-Shirt                                                  1200         30


CATEGORY_ID CATEGORY_NAME                  PRODUCT_ID
----------- ------------------------------ ----------
PRODUCT_NAME                                            PRICE      STOCK
-------------------------------------------------- ---------- ----------
          2 Clothing                              114
Kurti                                                    2200         18

          3 Books                                 121
DBMS Book                                                 700         30

          3 Books                                 130
Software Engineering                                      850         10


CATEGORY_ID CATEGORY_NAME                  PRODUCT_ID
----------- ------------------------------ ----------
PRODUCT_NAME                                            PRICE      STOCK
-------------------------------------------------- ---------- ----------
          3 Books                                 129
Operating Systems                                         700         16

          3 Books                                 128
Computer Networks                                         800         13

          3 Books                                 127
Web Development                                           950         11


CATEGORY_ID CATEGORY_NAME                  PRODUCT_ID
----------- ------------------------------ ----------
PRODUCT_NAME                                            PRICE      STOCK
-------------------------------------------------- ---------- ----------
          3 Books                                 126
Artificial Intelligence                                  1250          9

          3 Books                                 125
Machine Learning                                         1100          8

          3 Books                                 124
Data Structures                                           750         14


CATEGORY_ID CATEGORY_NAME                  PRODUCT_ID
----------- ------------------------------ ----------
PRODUCT_NAME                                            PRICE      STOCK
-------------------------------------------------- ---------- ----------
          3 Books                                 123
Java Programming                                          900         10

          3 Books                                 122
Python Programming                                        850         12

          4 Furniture                             139
Coffee Table                                             6500          8


CATEGORY_ID CATEGORY_NAME                  PRODUCT_ID
----------- ------------------------------ ----------
PRODUCT_NAME                                            PRICE      STOCK
-------------------------------------------------- ---------- ----------
          4 Furniture                             138
Study Table                                              5500          9

          4 Furniture                             137
Wardrobe                                                22000          6

          4 Furniture                             136
Bed                                                     30000          3


CATEGORY_ID CATEGORY_NAME                  PRODUCT_ID
----------- ------------------------------ ----------
PRODUCT_NAME                                            PRICE      STOCK
-------------------------------------------------- ---------- ----------
          4 Furniture                             140
TV Stand                                                 8000          5

          4 Furniture                             134
Sofa                                                    25000          4

          4 Furniture                             133
Dining Table                                            12000          5


CATEGORY_ID CATEGORY_NAME                  PRODUCT_ID
----------- ------------------------------ ----------
PRODUCT_NAME                                            PRICE      STOCK
-------------------------------------------------- ---------- ----------
          4 Furniture                             132
Office Chair                                             7000         12

          4 Furniture                             131
Computer Table                                           4500          8

          4 Furniture                             135
Bookshelf                                                7000          7


CATEGORY_ID CATEGORY_NAME                  PRODUCT_ID
----------- ------------------------------ ----------
PRODUCT_NAME                                            PRICE      STOCK
-------------------------------------------------- ---------- ----------
          5 Groceries                             141
Rice                                                      800         30

          5 Groceries                             142
Wheat Flour                                               450         25

          5 Groceries                             143
Cooking Oil                                               180         40


CATEGORY_ID CATEGORY_NAME                  PRODUCT_ID
----------- ------------------------------ ----------
PRODUCT_NAME                                            PRICE      STOCK
-------------------------------------------------- ---------- ----------
          5 Groceries                             144
Sugar                                                      55         50

          5 Groceries                             145
Salt                                                       30         45

          5 Groceries                             146
Toor Dal                                                  160         35


CATEGORY_ID CATEGORY_NAME                  PRODUCT_ID
----------- ------------------------------ ----------
PRODUCT_NAME                                            PRICE      STOCK
-------------------------------------------------- ---------- ----------
          5 Groceries                             147
Biscuits                                                   40         60

          5 Groceries                             148
Tea                                                       250         30

          5 Groceries                             149
Coffee                                                    300         25


CATEGORY_ID CATEGORY_NAME                  PRODUCT_ID
----------- ------------------------------ ----------
PRODUCT_NAME                                            PRICE      STOCK
-------------------------------------------------- ---------- ----------
          5 Groceries                             150
Noodles                                                    60         50

          6 Footwear                              153
Formal Shoes                                             2800         12

          6 Footwear                              152
Sports Sandals                                           2200         15


CATEGORY_ID CATEGORY_NAME                  PRODUCT_ID
----------- ------------------------------ ----------
PRODUCT_NAME                                            PRICE      STOCK
-------------------------------------------------- ---------- ----------
          6 Footwear                              160
Walking Shoes                                            3000         25

          6 Footwear                              159
School Shoes                                             1200         25

          6 Footwear                              158
Loafers                                                  4500         10


CATEGORY_ID CATEGORY_NAME                  PRODUCT_ID
----------- ------------------------------ ----------
PRODUCT_NAME                                            PRICE      STOCK
-------------------------------------------------- ---------- ----------
          6 Footwear                              157
Flip Flops                                                400         40

          6 Footwear                              156
Heels                                                    2500         14

          6 Footwear                              155
Slippers                                                  600         35


CATEGORY_ID CATEGORY_NAME                  PRODUCT_ID
----------- ------------------------------ ----------
PRODUCT_NAME                                            PRICE      STOCK
-------------------------------------------------- ---------- ----------
          6 Footwear                              154
Sneakers                                                 3200         20

          6 Footwear                              151
Running Shoes                                            3500         18

          7 Sports                                161
Football                                                  900         25


CATEGORY_ID CATEGORY_NAME                  PRODUCT_ID
----------- ------------------------------ ----------
PRODUCT_NAME                                            PRICE      STOCK
-------------------------------------------------- ---------- ----------
          7 Sports                                169
Yoga Mat                                                  800         25

          7 Sports                                168
Skipping Rope                                             300         35

          7 Sports                                167
Volleyball                                               1200         18


CATEGORY_ID CATEGORY_NAME                  PRODUCT_ID
----------- ------------------------------ ----------
PRODUCT_NAME                                            PRICE      STOCK
-------------------------------------------------- ---------- ----------
          7 Sports                                170
Dumbbells                                                1500         12

          7 Sports                                165
Badminton Racket                                         2500         15

          7 Sports                                164
Tennis Racket                                            3500         10


CATEGORY_ID CATEGORY_NAME                  PRODUCT_ID
----------- ------------------------------ ----------
PRODUCT_NAME                                            PRICE      STOCK
-------------------------------------------------- ---------- ----------
          7 Sports                                163
Cricket Ball                                              450         30

          7 Sports                                162
Cricket Bat                                              2800         12

          7 Sports                                166
Basketball                                               1800         14


CATEGORY_ID CATEGORY_NAME                  PRODUCT_ID
----------- ------------------------------ ----------
PRODUCT_NAME                                            PRICE      STOCK
-------------------------------------------------- ---------- ----------
          8 Beauty                                174
Face Wash                                                 250         35

          8 Beauty                                173
Lipstick                                                  599         20

          8 Beauty                                171
Face Cream                                                450         25


CATEGORY_ID CATEGORY_NAME                  PRODUCT_ID
----------- ------------------------------ ----------
PRODUCT_NAME                                            PRICE      STOCK
-------------------------------------------------- ---------- ----------
          8 Beauty                                175
Moisturizer                                               400         28

          8 Beauty                                180
Compact Powder                                            550         20

          8 Beauty                                179
Body Lotion                                               320         30


CATEGORY_ID CATEGORY_NAME                  PRODUCT_ID
----------- ------------------------------ ----------
PRODUCT_NAME                                            PRICE      STOCK
-------------------------------------------------- ---------- ----------
          8 Beauty                                178
Perfume                                                   750         18

          8 Beauty                                177
Kajal                                                     300         25

          8 Beauty                                176
Sunscreen                                                 650         22


CATEGORY_ID CATEGORY_NAME                  PRODUCT_ID
----------- ------------------------------ ----------
PRODUCT_NAME                                            PRICE      STOCK
-------------------------------------------------- ---------- ----------
          9 Toys                                  181
Toy Car                                                   600         20

          9 Toys                                  182
Teddy Bear                                               1200         15

          9 Toys                                  190
Water Gun                                                 800         20


CATEGORY_ID CATEGORY_NAME                  PRODUCT_ID
----------- ------------------------------ ----------
PRODUCT_NAME                                            PRICE      STOCK
-------------------------------------------------- ---------- ----------
          9 Toys                                  189
Rubik Cube                                                500         30

          9 Toys                                  188
Toy Train                                                2000          8

          9 Toys                                  187
Board Game                                               1200         15


CATEGORY_ID CATEGORY_NAME                  PRODUCT_ID
----------- ------------------------------ ----------
PRODUCT_NAME                                            PRICE      STOCK
-------------------------------------------------- ---------- ----------
          9 Toys                                  186
Puzzle Game                                               450         25

          9 Toys                                  185
Remote Car                                               1800         12

          9 Toys                                  184
Doll                                                     1500         18


CATEGORY_ID CATEGORY_NAME                  PRODUCT_ID
----------- ------------------------------ ----------
PRODUCT_NAME                                            PRICE      STOCK
-------------------------------------------------- ---------- ----------
          9 Toys                                  183
Building Blocks                                          2500         10

         10 Stationery                            195
Sharpener                                                  15         80

         10 Stationery                            196
Marker Set                                                180         45


CATEGORY_ID CATEGORY_NAME                  PRODUCT_ID
----------- ------------------------------ ----------
PRODUCT_NAME                                            PRICE      STOCK
-------------------------------------------------- ---------- ----------
         10 Stationery                            197
Geometry Box                                              250         35

         10 Stationery                            198
File Folder                                               100         60

         10 Stationery                            200
A4 Paper                                                  350         30


CATEGORY_ID CATEGORY_NAME                  PRODUCT_ID
----------- ------------------------------ ----------
PRODUCT_NAME                                            PRICE      STOCK
-------------------------------------------------- ---------- ----------
         10 Stationery                            194
Eraser                                                     10        100

         10 Stationery                            193
Pencil Box                                                150         40

         10 Stationery                            191
Notebook                                                   60        100


CATEGORY_ID CATEGORY_NAME                  PRODUCT_ID
----------- ------------------------------ ----------
PRODUCT_NAME                                            PRICE      STOCK
-------------------------------------------------- ---------- ----------
         10 Stationery                            199
Sticky Notes                                               80         50


97 rows selected.
