
INSERT INTO user (name, email, password, user_name, adding_time, deleting_time, update_time, flag)
VALUES 
('John Doe', 'john.doe@example.com', 'password123', 'john_doe', '2023-12-06', '2023-12-07', '2023-12-08', 0),
('Jane Smith', 'jane.smith@example.com', 'securepass', 'jane_smith', '2023-12-06', '2023-12-07', '2023-12-08', 1),
('Bob Johnson', 'bob.johnson@example.com', 'pass123', 'bob_johnson', '2023-12-06', '2023-12-07', '2023-12-08', 0);

INSERT INTO login_history (user_id, login_date)
VALUES 
(1, '2023-12-06'),
(2, '2023-12-07'),
(3, '2023-12-08');

INSERT INTO company (
    company_name,
    address,
    password,
    company_image,
    email,
    name,
    phone_number,
    adding_time,
    deleting_time,
    update_time,
    flag
) VALUES (
    '会社A', -- 例: company_name の値
    '東京都渋谷区', -- 例: address の値
    'password123', -- 例: password の値
    'companyA_image.png', -- 例: company_image の値
    'info@companyA.com', -- 例: email の値
    '担当者A', -- 例: name の値
    '123-4567-8901', -- 例: phone_number の値
    '2023-01-01', -- 例: adding_time の値
    NULL, -- 例: deleting_time の値
    NULL, -- 例: update_time の値
    1 -- 例: flag の値
);

INSERT INTO company (
    company_name,
    address,
    password,
    company_image,
    email,
    name,
    phone_number,
    adding_time,
    deleting_time,
    update_time,
    flag
) VALUES (
    '会社B', 
    '大阪府大阪市', 
    'password456', 
    'companyB_image.png',
    'info@companyB.com', 
    '担当者B', 
    '987-6543-2109',
    '2023-01-02', 
    NULL, 
    NULL, 
    0
);


--商品用のinsert分
-- 食品--
-- テスト用データ1
INSERT INTO product (company_id, original_products_id, product_category_id, product_name, unit_price, adding_time, deleting_time, update_time, product_description, regiinvqua, product_overview, flag) 
VALUES (1, 101, 1, '商品A', 1000, '2023-01-01', NULL, NULL, '商品Aの説明',  50, '商品Aの概要', 0);

-- テスト用データ2
INSERT INTO product (company_id, original_products_id, product_category_id, product_name, unit_price, adding_time, deleting_time, update_time, product_description, regiinvqua, product_overview, flag) 
VALUES (2, 102, 1, '商品B', 1500, '2023-01-02', NULL, NULL, '商品Bの説明',  30, '商品Bの概要', 0);

-- テスト用データ3
INSERT INTO product (company_id, original_products_id, product_category_id, product_name, unit_price, adding_time, deleting_time, update_time, product_description, regiinvqua, product_overview, flag) 
VALUES (1, 103, 1, '商品C', 2000, '2023-01-03', NULL, NULL, '商品Cの説明',  40, '商品Cの概要', 0);

-- テスト用データ4
INSERT INTO product (company_id, original_products_id, product_category_id, product_name, unit_price, adding_time, deleting_time, update_time, product_description, regiinvqua, product_overview, flag) 
VALUES (2, 104, 1, '商品D', 1200, '2023-01-04', NULL, NULL, '商品Dの説明', 25, '商品Dの概要', 0);

-- テスト用データ5
INSERT INTO product (company_id, original_products_id, product_category_id, product_name, unit_price, adding_time, deleting_time, update_time, product_description, regiinvqua, product_overview, flag) 
VALUES (1, 105, 1, '商品E', 1800, '2023-01-05', NULL, NULL, '商品Eの説明',  60, '商品Eの概要', 0);

-- テスト用データ6
INSERT INTO product (company_id, original_products_id, product_category_id, product_name, unit_price, adding_time, deleting_time, update_time, product_description, regiinvqua, product_overview, flag) 
VALUES (2, 106, 1, '商品F', 800, '2023-01-06', NULL, NULL, '商品Fの説明',  35, '商品Fの概要', 0);

-- テスト用データ7
INSERT INTO product (company_id, original_products_id, product_category_id, product_name, unit_price, adding_time, deleting_time, update_time, product_description, regiinvqua, product_overview, flag) 
VALUES (1, 107, 1, '商品G', 2500, '2023-01-07', NULL, NULL, '商品Gの説明',  28, '商品Gの概要', 0);

-- テスト用データ8
INSERT INTO product (company_id, original_products_id, product_category_id, product_name, unit_price, adding_time, deleting_time, update_time, product_description, regiinvqua, product_overview, flag) 
VALUES (2, 108, 1, '商品H', 3000, '2023-01-08', NULL, NULL, '商品Hの説明',  45, '商品Hの概要', 0);

-- テスト用データ9
INSERT INTO product (company_id, original_products_id, product_category_id, product_name, unit_price, adding_time, deleting_time, update_time, product_description, regiinvqua, product_overview, flag) 
VALUES (1, 109, 1, '商品I', 1600, '2023-01-09', NULL, NULL, '商品Iの説明', 55, '商品Iの概要', 0);

-- テスト用データ10
INSERT INTO product (company_id, original_products_id, product_category_id, product_name, unit_price, adding_time, deleting_time, update_time, product_description, regiinvqua, product_overview, flag) 
VALUES (2, 110, 2, '商品J', 2200, '2023-01-10', NULL, NULL, '商品Jの説明',32, '商品Jの概要', 0);
----------------------------------
--本--
INSERT INTO product (company_id, original_products_id, product_category_id, product_name, unit_price, adding_time, deleting_time, update_time, product_description, regiinvqua, product_overview, flag) 
VALUES 
(1, 101, 4, '商品A', 1000, '2023-01-01', NULL, NULL, '商品Aの説明', 50, '商品Aの概要', 0),
(1, 102, 4, '商品B', 1500, '2023-01-02', NULL, NULL, '商品Bの説明', 40, '商品Bの概要', 0),
(1, 103, 4, '商品C', 2000, '2023-01-03', NULL, NULL, '商品Cの説明', 30, '商品Cの概要', 0),
(1, 104, 4, '商品D', 2500, '2023-01-04', NULL, NULL, '商品Dの説明', 20, '商品Dの概要', 0),
(1, 105, 4, '商品E', 3000, '2023-01-05', NULL, NULL, '商品Eの説明', 10, '商品Eの概要', 0),
(1, 106, 4, '商品F', 3500, '2023-01-06', NULL, NULL, '商品Fの説明', 45, '商品Fの概要', 0),
(1, 107, 4, '商品G', 4000, '2023-01-07', NULL, NULL, '商品Gの説明', 55, '商品Gの概要', 0),
(1, 108, 4, '商品H', 4500, '2023-01-08', NULL, NULL, '商品Hの説明', 65, '商品Hの概要', 0),
(1, 109, 4, '商品I', 5000, '2023-01-09', NULL, NULL, '商品Iの説明', 75, '商品Iの概要', 0),
(1, 110, 4, '商品J', 5500, '2023-01-10', NULL, NULL, '商品Jの説明', 85, '商品Jの概要', 0);
-----------------------------------------------------------

--電気用品--
INSERT INTO product (company_id, original_products_id, product_category_id, product_name, unit_price, adding_time, deleting_time, update_time, product_description, regiinvqua, product_overview, flag) 
VALUES 
(1, 101, 2, '商品A', 10000, '2023-01-01', NULL, NULL, '商品Aの説明', 50, '商品Aの概要', 0),
(1, 102, 2, '商品B', 15000, '2023-01-02', NULL, NULL, '商品Bの説明', 40, '商品Bの概要', 0),
(1, 103, 2, '商品C', 20000, '2023-01-03', NULL, NULL, '商品Cの説明', 30, '商品Cの概要', 0),
(1, 104, 2, '商品D', 25000, '2023-01-04', NULL, NULL, '商品Dの説明', 20, '商品Dの概要', 0),
(1, 105, 2, '商品E', 30000, '2023-01-05', NULL, NULL, '商品Eの説明', 10, '商品Eの概要', 0);
-------------------------------------

--試供品----
-- テスト用のデータ挿入
INSERT INTO product (company_id, original_products_id, product_category_id, product_name, unit_price, adding_time, deleting_time, update_time, product_description, regiinvqua, product_overview, flag) 
VALUES 
(1, 101, 0, '試供品', 0, '2023-01-01', NULL, NULL, 'これは試供品です', 50, 'Overview of test product 1', 0),
(1, 102, 0, '試供品', 0, '2023-01-02', NULL, NULL, 'これは試供品です', 40, 'Overview of test product 1', 0),
(1, 103, 0, '試供品', 0, '2023-01-03', NULL, NULL, 'これは試供品です', 30, 'Overview of test product 1', 0),
(1, 104, 0, '試供品', 0, '2023-01-04', NULL, NULL, 'これは試供品です', 20, 'Overview of test product 1', 0),
(1, 105, 0, '試供品', 0, '2023-01-05', NULL, NULL, 'これは試供品です', 10, 'Overview of test product 1', 0);

-- INSERT INTO product (pro_id, product_category_id, testpro_name, test_price, adding_time, deleting_time, update_time, product_description, regiinvqua, product_overview, flag) 
-- VALUES 
-- (1, 1, '試供品', 0, '2024-02-08', NULL, NULL, 'これは試供品です', 10, 'Overview of test product 1', 0),
-- (2, 2, '試供品', 0, '2024-02-08', NULL, NULL, 'これは試供品です', 20, 'Overview of test product 2', 0),
-- (3, 3, '試供品', 0, '2024-02-08', NULL, NULL, 'これは試供品です', 15, 'Overview of test product 3', 0),
-- (4, 4, '試供品', 0, '2024-02-08', NULL, NULL, 'これは試供品です', 5, 'Overview of test product 4', 0),
-- (5, 5, '試供品', 0, '2024-02-08', NULL, NULL, 'これは試供品です', 25, 'Overview of test product 5', 0);
------------------------------------------------------------




-- 商品画像用のインサート
-- テスト用データ1
INSERT INTO pro_image (product_id, image_filename, flag) VALUES (1, 'pro1.jpg', 0);

-- テスト用データ2
INSERT INTO pro_image (product_id, image_filename, flag) VALUES (2, 'pro2.jpg', 0);

-- テスト用データ3
INSERT INTO pro_image (product_id, image_filename, flag) VALUES (3, 'pro3.jpg', 0);

-- テスト用データ4
INSERT INTO pro_image (product_id, image_filename, flag) VALUES (4, 'pro4.jpg', 0);

-- テスト用データ5
INSERT INTO pro_image (product_id, image_filename, flag) VALUES (5, 'pro5.jpg', 0);

-- テスト用データ6
INSERT INTO pro_image (product_id, image_filename, flag) VALUES (6, 'pro6.jpg', 0);

-- テスト用データ7
INSERT INTO pro_image (product_id, image_filename, flag) VALUES (7, 'pro7.jpg', 0);

-- テスト用データ8
INSERT INTO pro_image (product_id, image_filename, flag) VALUES (8, 'pro8.jpg', 0);

-- テスト用データ9
INSERT INTO pro_image (product_id, image_filename, flag) VALUES (9, 'pro9.jpg', 0);

-- テスト用データ10
INSERT INTO pro_image (product_id, image_filename, flag) VALUES (10, 'pro10.jpg', 0);

--本--
INSERT INTO pro_image (product_id, image_filename, flag) VALUES (11, 'pro11.jpg', 0);
INSERT INTO pro_image (product_id, image_filename, flag) VALUES (12, 'pro12.jpg', 0);
INSERT INTO pro_image (product_id, image_filename, flag) VALUES (13, 'pro13.jpg', 0);
INSERT INTO pro_image (product_id, image_filename, flag) VALUES (14, 'pro14.jpg', 0);
INSERT INTO pro_image (product_id, image_filename, flag) VALUES (15, 'pro15.jpg', 0);
INSERT INTO pro_image (product_id, image_filename, flag) VALUES (16, 'pro16.jpg', 0);
INSERT INTO pro_image (product_id, image_filename, flag) VALUES (17, 'pro17.jpg', 0);
INSERT INTO pro_image (product_id, image_filename, flag) VALUES (18, 'pro18.jpg', 0);
INSERT INTO pro_image (product_id, image_filename, flag) VALUES (19, 'pro19.jpg', 0);
INSERT INTO pro_image (product_id, image_filename, flag) VALUES (20, 'pro20.jpg', 0);
------------------
--電気用品--
INSERT INTO pro_image (product_id, image_filename, flag) VALUES (21, 'pro21.jpg', 0);
INSERT INTO pro_image (product_id, image_filename, flag) VALUES (22, 'pro22.jpg', 0);
INSERT INTO pro_image (product_id, image_filename, flag) VALUES (23, 'pro23.jpg', 0);
INSERT INTO pro_image (product_id, image_filename, flag) VALUES (24, 'pro24.jpg', 0);
INSERT INTO pro_image (product_id, image_filename, flag) VALUES (25, 'pro25.jpg', 0);
------------

---試供品----
-- テスト用のデータ挿入
INSERT INTO pro_image (product_id, image_filename, flag) VALUES (26, 'test_image_1.jpg', 0);
INSERT INTO pro_image (product_id, image_filename, flag) VALUES (27, 'test_image_2.jpg', 0);
INSERT INTO pro_image (product_id, image_filename, flag) VALUES (28, 'test_image_3.jpg', 0);
INSERT INTO pro_image (product_id, image_filename, flag) VALUES (29, 'test_image_4.jpg', 0);
INSERT INTO pro_image (product_id, image_filename, flag) VALUES (30, 'test_image_5.jpg', 0);

-- INSERT INTO testpro_image (product_id, image_filename, flag) 
-- VALUES 
-- (1, 'test_image_1.jpg', 0),
-- (2, 'test_image_2.jpg', 0),
-- (3, 'test_image_3.jpg', 0),
-- (4, 'test_image_4.jpg', 0),
-- (5, 'test_image_5.jpg', 0);
-------------------------------------------

-- 商品カテゴリ用のテストデータ
-- テスト用データ1
INSERT INTO product_category (product_category_id, product_id, category_name, icon_image) VALUES (1, 1, '食品', 'food_icon.png');

-- テスト用データ2
INSERT INTO product_category (product_category_id, product_id, category_name, icon_image) VALUES (1, 2, '食品', 'clothing_icon.png');

-- テスト用データ3
INSERT INTO product_category (product_category_id, product_id, category_name, icon_image) VALUES (1, 3, '食品', 'electronics_icon.png');

-- テスト用データ4
INSERT INTO product_category (product_category_id, product_id, category_name, icon_image) VALUES (1, 4, '食品', 'book_icon.png');

-- テスト用データ5
INSERT INTO product_category (product_category_id, product_id, category_name, icon_image) VALUES (1, 5, '食品', 'food_icon.png');

-- テスト用データ6
INSERT INTO product_category (product_category_id, product_id, category_name, icon_image) VALUES (1, 6, '食品', 'electronics_icon.png');

-- テスト用データ7
INSERT INTO product_category (product_category_id, product_id, category_name, icon_image) VALUES (1, 7, '食品', 'book_icon.png');

-- テスト用データ8
INSERT INTO product_category (product_category_id, product_id, category_name, icon_image) VALUES (1, 8, '食品', 'clothing_icon.png');

-- テスト用データ9
INSERT INTO product_category (product_category_id, product_id, category_name, icon_image) VALUES (1, 9, '食品', 'electronics_icon.png');

-- テスト用データ10
INSERT INTO product_category (product_category_id, product_id, category_name, icon_image) VALUES (2, 10, '電気用品', 'book_icon.png');

---本用-----
INSERT INTO product_category (product_category_id, product_id, category_name, icon_image) 
VALUES 
(4, 11, '本', 'book_icon.png'),
(4, 12, '本', 'book_icon.png'),
(4, 13, '本', 'book_icon.png'),
(4, 14, '本', 'book_icon.png'),
(4, 15, '本', 'book_icon.png'),
(4, 16, '本', 'book_icon.png'),
(4, 17, '本', 'book_icon.png'),
(4, 18, '本', 'book_icon.png'),
(4, 19, '本', 'book_icon.png'),
(4, 20, '本', 'book_icon.png');
-----------------------------
---電気用品----
INSERT INTO product_category (product_category_id, product_id, category_name, icon_image) 
VALUES 
(2, 21, '電気用品', 'book_icon.png'),
(2, 22, '電気用品', 'book_icon.png'),
(2, 23, '電気用品', 'book_icon.png'),
(2, 24, '電気用品', 'book_icon.png'),
(2, 25, '電気用品', 'book_icon.png');
-----------------------------------------

--試供品----
-- テスト用のデータ挿入
INSERT INTO product_category (product_category_id, product_id, category_name, icon_image) 
VALUES 
(0, 26, '試供品', 'icon_category_1.png'),
(0, 27, '試供品', 'icon_category_1.png'),
(0, 28, '試供品', 'icon_category_1.png'),
(0, 29, '試供品', 'icon_category_1.png'),
(0, 30, '試供品', 'icon_category_1.png');

-- INSERT INTO testpro_category (product_category_id, product_id, name, icon_image) 
-- VALUES 
-- (1, 1, 'Category 1', 'icon_category_1.png'),
-- (2, 2, 'Category 2', 'icon_category_2.png'),
-- (3, 3, 'Category 3', 'icon_category_3.png'),
-- (4, 4, 'Category 4', 'icon_category_4.png'),
-- (5, 5, 'Category 5', 'icon_category_5.png');
-------------------------------------------------






-- adminのinsert文
INSERT INTO admin (admin_name, password, email, adding_time, deleting_time, update_time, flag)
VALUES ('Admin1', 'password123', 'admin1@example.com', '2024-01-17', NULL, NULL, 0),
       ('Admin2', 'securepass', 'admin2@example.com', '2024-01-18', NULL, NULL, 0),
       ('Admin3', 'adminpass', 'admin3@example.com', '2024-01-19', NULL, NULL, 0);