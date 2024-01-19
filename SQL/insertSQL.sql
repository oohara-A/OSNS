
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

-- adminのinsert文
INSERT INTO admin (admin_name, password, email, adding_time, deleting_time, update_time, flag)
VALUES ('Admin1', 'password123', 'admin1@example.com', '2024-01-17', NULL, NULL, 0),
       ('Admin2', 'securepass', 'admin2@example.com', '2024-01-18', NULL, NULL, 0),
       ('Admin3', 'adminpass', 'admin3@example.com', '2024-01-19', NULL, NULL, 0);