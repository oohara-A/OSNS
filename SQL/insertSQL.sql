
INSERT INTO user (name, email, password, user_name, adding_time, deleting_time, update_time, flag)
VALUES 
('John Doe1', 'john.doe@example.com', '123456789', 'user1', '2023-12-06', '2023-12-07', '2023-12-08', 0),
('Jane Smith2', 'jane.smith@example.com', '123456789', 'user2', '2023-12-06', '2023-12-07', '2023-12-08', 0),
('Bob Johnson3', 'bob.johnson@example.com', '123456789', 'user3', '2023-12-06', '2023-12-07', '2023-12-08', 0),
('John Doe4', 'john.doe@example.com', '123456789', 'user4', '2023-12-06', '2023-12-07', '2023-12-08', 0),
('Jane Smith5', 'jane.smith@example.com', '123456789', 'user5', '2023-12-06', '2023-12-07', '2023-12-08', 0),
('Bob Johnson6', 'bob.johnson@example.com', '123456789', 'user6', '2023-12-06', '2023-12-07', '2023-12-08', 0),
('Bob Johnson7', 'bob.johnson@example.com', '123456789', 'user7', '2023-12-06', '2023-12-07', '2023-12-08', 0),
('John Doe8', 'john.doe@example.com', '123456789', 'user8', '2023-12-06', '2023-12-07', '2023-12-08', 0),
('Jane Smith9', 'jane.smith@example.com', '123456789', 'user9', '2023-12-06', '2023-12-07', '2023-12-08', 0),
('Bob Johnson10', 'bob.johnson@example.com', '123456789', 'user10', '2023-12-06', '2023-12-07', '2023-12-08', 0),
('Bob Johnson11', 'bob.johnson@example.com', '123456789', 'user11', '2023-12-06', '2023-12-07', '2023-12-08', 0),
('Bob Johnson12', 'bob.johnson@example.com', '123456789', 'user12', '2023-12-06', '2023-12-07', '2023-12-08', 0),
('Bob Johnson13', 'bob.johnson@example.com', '123456789', 'user13', '2023-12-06', '2023-12-07', '2023-12-08', 0),
('Bob Johnson14', 'bob.johnson@example.com', '123456789', 'user14', '2023-12-06', '2023-12-07', '2023-12-08', 0);


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
    '東京都渋谷区12', -- 例: address の値
    'asdwq', -- 例: password の値
    'companyA_image.png', -- 例: company_image の値
    'a@.com', -- 例: email の値
    '担当者A', -- 例: name の値
    '123-4567-8901', -- 例: phone_number の値
    '2023-01-01', -- 例: adding_time の値
    NULL, -- 例: deleting_time の値
    NULL, -- 例: update_time の値
    0 -- 例: flag の値
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
    '大阪府大阪市12', 
    'asdwq', 
    'companyB_image.png',
    'b@.com', 
    '担当者B', 
    '987-6543-2109',
    '2023-01-02', 
    NULL, 
    NULL, 
    0
),('会社B', '大阪府大阪市1', 'asdwq', 'companyB_image.png', 'c@.com', '担当者B','987-6543-2109','2023-01-02', NULL, NULL,0 ),
('会社B', '大阪府大阪市2', 'asdwq', 'companyB_image.png', 'd@.com', '担当者B','987-6543-2109','2023-01-02', NULL, NULL, 0),
('会社B', '大阪府大阪市3', 'asdwq', 'companyB_image.png', 'e@.com', '担当者B','987-6543-2109','2023-01-02', NULL, NULL, 0),
('会社B', '大阪府大阪市4', 'asdwq', 'companyB_image.png', 'f@.com', '担当者B','987-6543-2109','2023-01-02', NULL, NULL, 0),
('会社B', '大阪府大阪市5', 'asdwq', 'companyB_image.png', 'g@.com', '担当者B','987-6543-2109','2023-01-02', NULL, NULL, 0),
('会社B', '大阪府大阪市6', 'asdwq', 'companyB_image.png', 'h@.com', '担当者B','987-6543-2109','2023-01-02', NULL, NULL, 0),
('会社B', '大阪府大阪市7', 'asdwq', 'companyB_image.png', 'i@.com', '担当者B','987-6543-2109','2023-01-02', NULL, NULL, 0),
('会社B', '大阪府大阪市8', 'asdwq', 'companyB_image.png', 'j@.com', '担当者B','987-6543-2109','2023-01-02', NULL, NULL, 0),
('会社B', '大阪府大阪市9', 'asdwq', 'companyB_image.png', 'k@.com', '担当者B','987-6543-2109','2023-01-02', NULL, NULL, 0),
('会社B', '大阪府大阪市10', 'asdwq', 'companyB_image.png', 'l@.com', '担当者B','987-6543-2109','2023-01-02', NULL, NULL, 0),
('会社B', '大阪府大阪市13', 'asdwq', 'companyB_image.png', 'm@.com', '担当者B','987-6543-2109','2023-01-02', NULL, NULL, 0),
('会社B', '大阪府大阪市14', 'asdwq', 'companyB_image.png', 'n@.com', '担当者B','987-6543-2109','2023-01-02', NULL, NULL, 0);




--商品用のinsert分
-- 食品--
-- テスト用データ1
INSERT INTO product (company_id, original_products_id, product_category_id, product_name, unit_price, adding_time, deleting_time, update_time, product_description, regiinvqua, product_overview, flag) 
VALUES (1, 101, 1, 'BASEBRED', 1000, '2023-01-01', NULL, NULL, '商品Aの説明',  50, '商品Aの概要', 0);

-- テスト用データ2
INSERT INTO product (company_id, original_products_id, product_category_id, product_name, unit_price, adding_time, deleting_time, update_time, product_description, regiinvqua, product_overview, flag) 
VALUES (2, 102, 1, 'カロリーメイト', 1500, '2023-01-02', NULL, NULL, '商品Bの説明',  30, '商品Bの概要', 0);

-- テスト用データ3
INSERT INTO product (company_id, original_products_id, product_category_id, product_name, unit_price, adding_time, deleting_time, update_time, product_description, regiinvqua, product_overview, flag) 
VALUES (1, 103, 1, 'おかし詰め合わせ', 2000, '2023-01-03', NULL, NULL, '商品Cの説明',  40, '商品Cの概要', 0);

-- テスト用データ4
INSERT INTO product (company_id, original_products_id, product_category_id, product_name, unit_price, adding_time, deleting_time, update_time, product_description, regiinvqua, product_overview, flag) 
VALUES (2, 104, 1, 'ビスケット詰め合わせ', 1200, '2023-01-04', NULL, NULL, '商品Dの説明', 25, '商品Dの概要', 0);

-- テスト用データ5
INSERT INTO product (company_id, original_products_id, product_category_id, product_name, unit_price, adding_time, deleting_time, update_time, product_description, regiinvqua, product_overview, flag) 
VALUES (1, 105, 1, 'カレー', 1800, '2023-01-05', NULL, NULL, '商品Eの説明',  60, '商品Eの概要', 0);

-- テスト用データ6
INSERT INTO product (company_id, original_products_id, product_category_id, product_name, unit_price, adding_time, deleting_time, update_time, product_description, regiinvqua, product_overview, flag) 
VALUES (2, 106, 1, 'たくさんどんぶりset', 800, '2023-01-06', NULL, NULL, '商品Fの説明',  35, '商品Fの概要', 0);

-- テスト用データ7
INSERT INTO product (company_id, original_products_id, product_category_id, product_name, unit_price, adding_time, deleting_time, update_time, product_description, regiinvqua, product_overview, flag) 
VALUES (1, 107, 1, 'きつね、たぬき、力もちなどたくさんset', 2500, '2023-01-07', NULL, NULL, '商品Gの説明',  28, '商品Gの概要', 0);

-- テスト用データ8
INSERT INTO product (company_id, original_products_id, product_category_id, product_name, unit_price, adding_time, deleting_time, update_time, product_description, regiinvqua, product_overview, flag) 
VALUES (2, 108, 1, 'インスタントラーメン詰め合わせセット', 3000, '2023-01-08', NULL, NULL, '商品Hの説明',  45, '商品Hの概要', 0);

-- テスト用データ9
INSERT INTO product (company_id, original_products_id, product_category_id, product_name, unit_price, adding_time, deleting_time, update_time, product_description, regiinvqua, product_overview, flag) 
VALUES (1, 109, 1, '魚介詰め合わせセット', 1600, '2023-01-09', NULL, NULL, '商品Iの説明', 55, '商品Iの概要', 0);

-- テスト用データ10
INSERT INTO product (company_id, original_products_id, product_category_id, product_name, unit_price, adding_time, deleting_time, update_time, product_description, regiinvqua, product_overview, flag) 
VALUES (2, 110, 2, '電子レンジ', 2200, '2023-01-10', NULL, NULL, '商品Jの説明',32, '商品Jの概要', 0);
----------------------------------

--本--
INSERT INTO product (company_id, original_products_id, product_category_id, product_name, unit_price, adding_time, deleting_time, update_time, product_description, regiinvqua, product_overview, flag) 
VALUES 
(1, 101, 4, 'Docker＆仮想サーバー', 1000, '2023-01-01', NULL, NULL, '商品Aの説明', 50, '商品Aの概要', 0),
(1, 102, 4, 'ChatGPT', 1500, '2023-01-02', NULL, NULL, '商品Bの説明', 40, '商品Bの概要', 0),
(1, 103, 4, '生成AI時代ビジネスサービス', 2000, '2023-01-03', NULL, NULL, '商品Cの説明', 30, '商品Cの概要', 0),
(1, 104, 4, '生成AIで世界は変わる', 2500, '2023-01-04', NULL, NULL, '商品Dの説明', 20, '商品Dの概要', 0),
(1, 105, 4, 'AWS認定', 3000, '2023-01-05', NULL, NULL, '商品Eの説明', 10, '商品Eの概要', 0),
(1, 106, 4, 'エンジニア思考', 3500, '2023-01-06', NULL, NULL, '商品Fの説明', 45, '商品Fの概要', 0),
(1, 107, 4, 'Python入門', 4000, '2023-01-07', NULL, NULL, '商品Gの説明', 55, '商品Gの概要', 0),
(1, 108, 4, 'JAVA入門', 4500, '2023-01-08', NULL, NULL, '商品Hの説明', 65, '商品Hの概要', 0),
(1, 109, 4, 'JAVA・SE・silver', 5000, '2023-01-09', NULL, NULL, '商品Iの説明', 75, '商品Iの概要', 0),
(1, 110, 4, 'JavaScript', 5500, '2023-01-10', NULL, NULL, '商品Jの説明', 85, '商品Jの概要', 0);
-----------------------------------------------------------

--電気用品--
INSERT INTO product (company_id, original_products_id, product_category_id, product_name, unit_price, adding_time, deleting_time, update_time, product_description, regiinvqua, product_overview, flag) 
VALUES 
(1, 101, 2, 'ヒーター', 10000, '2023-01-01', NULL, NULL, '商品Aの説明', 50, '商品Aの概要', 0),
(1, 102, 2, 'あったかウォーマー', 15000, '2023-01-02', NULL, NULL, '商品Bの説明', 40, '商品Bの概要', 0),
(1, 103, 2, '電気式毛布', 20000, '2023-01-03', NULL, NULL, '商品Cの説明', 30, '商品Cの概要', 0),
(1, 104, 2, 'ドライヤー', 25000, '2023-01-04', NULL, NULL, '商品Dの説明', 20, '商品Dの概要', 0),
(1, 105, 2, 'どこでもチキン', 30000, '2023-01-05', NULL, NULL, '商品Eの説明', 10, '商品Eの概要', 0);
-------------------------------------

--試供品----
-- テスト用のデータ挿入
INSERT INTO product (company_id, original_products_id, product_category_id, product_name, unit_price, adding_time, deleting_time, update_time, product_description, regiinvqua, product_overview, flag) 
VALUES 
(1, 101, 0, '化粧水（お試し用）', 0, '2023-01-01', NULL, NULL, 'これは試供品です', 50, 'Overview of test product 1', 0),
(1, 102, 0, '化粧水（お試し用）', 0, '2023-01-02', NULL, NULL, 'これは試供品です', 40, 'Overview of test product 1', 0),
(1, 103, 0, '特茶（お試し用）※数量限定', 0, '2023-01-03', NULL, NULL, 'これは試供品です', 30, 'Overview of test product 1', 0),
(1, 104, 0, '親子丼の具など（お試し用）', 0, '2023-01-04', NULL, NULL, 'これは試供品です', 20, 'Overview of test product 1', 0),
(1, 105, 0, 'カロリーメイト（お試し用）', 0, '2023-01-05', NULL, NULL, 'これは試供品です', 10, 'Overview of test product 1', 0);

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

-------------------------------------------------






-- adminのinsert文
INSERT INTO admin (admin_name, password, email, adding_time, deleting_time, update_time, flag)
VALUES ('Admin1', '123456789a', 'ad1@.com', '2024-01-17', NULL, NULL, 0),
        ('Admin2', '123456789a', 'ad2@.com', '2024-01-18', NULL, NULL, 0),
        ('Admin3', '123456789a', 'ad3@.com', '2024-01-19', NULL, NULL, 0),
        ('Admin3', '123456789a', 'ad4@.com', '2024-01-19', NULL, NULL, 0),
        ('Admin3', '123456789a', 'ad5@.com', '2024-01-19', NULL, NULL, 0),
        ('Admin3', '123456789a', 'ad6@.com', '2024-01-19', NULL, NULL, 0),
        ('Admin3', '123456789a', 'ad7@.com', '2024-01-19', NULL, NULL, 0),
        ('Admin3', '123456789a', 'ad8@.com', '2024-01-19', NULL, NULL, 0),
        ('Admin3', '123456789a', 'ad9@.com', '2024-01-19', NULL, NULL, 0),
        ('Admin3', '123456789a', 'ad10@.com', '2024-01-19', NULL, NULL, 0),
        ('Admin3', '123456789a', 'ad11@.com', '2024-01-19', NULL, NULL, 0),
        ('Admin3', '123456789a', 'ad12@.com', '2024-01-19', NULL, NULL, 0),
        ('Admin3', '123456789a', 'ad13@.com', '2024-01-19', NULL, NULL, 0),
        ('Admin3', '123456789a', 'ad14@.com', '2024-01-19', NULL, NULL, 0);
