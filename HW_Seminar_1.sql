-- 1. Создайте таблицу с мобильными телефонами. Заполните БД данными
CREATE DATABASE IF NOT EXISTS mobile;

USE mobile;

DROP TABLE IF EXISTS mobile_phone;
CREATE TABLE mobile_phone
(
id INT PRIMARY KEY AUTO_INCREMENT,
manufacturer VARCHAR(30), 
model VARCHAR(30), 
OS VARCHAR(30),
color VARCHAR(30), 
ram VARCHAR(30),
price INT,
count INT
);

DESC mobile_phone;

INSERT mobile_phone(manufacturer, model, OS, color, ram, price, count)
VALUES
('Apple', 'IPhone 13', 'Ios', 'White', '128', '150000', '123'),
('Apple', 'IPhone 11', 'Ios', 'Pink', '64', '100000', '53'),
('Samsung', 'Galaxy S23', 'Android', 'Grey', '512', '120000', '1'),
('Asus', 'ROG Phone 7 Ultimate', 'Android', 'Storm White', '512', '80000', '140'),
('Huawei', 'Honor Magic5 Lite', 'Android', 'Titanium Silver', '128', '60000', '65'),
('Xiaomi', 'Redmi 8', 'Android', 'Ruby Red', '164', '50000', '2'),
('Apple', 'IPhone 15', 'Ios', 'Blue', '512', '170000', '77'),
('Samsung', 'Galaxy S21', 'Android', 'Black', '128', '90000', '98');

SELECT *
FROM mobile_phone;

-- 2. Выведите название, производителя и цену для товаров, количество которых превышает 2
SELECT manufacturer, model, price, count
FROM mobile_phone
WHERE count > 2;

-- 3. Выведите весь ассортимент товаров марки “Samsung”
SELECT *
FROM mobile_phone
WHERE manufacturer = 'Samsung';

-- 4. Выведите информацию о телефонах, где суммарный чек больше 100 000 и меньше 145 000
SELECT *
FROM mobile_phone
WHERE price >100000 AND price <145000;

-- 5. Выведите информацию о телефонах, где товары, в которых есть упоминание "Iphone"
SELECT *
FROM mobile_phone
WHERE model LIKE 'Iphone%';

-- 6. Выведите информацию о телефонах, где товары, в которых есть упоминание "Galaxy"
SELECT *
FROM mobile_phone
WHERE model LIKE 'Galaxy%';

-- 7.  Выведите информацию о телефонах, где товары, в которых есть ЦИФРЫ
SELECT *
FROM mobile_phone
WHERE model RLIKE '[0-9]+$';

-- 8. Выведите информацию о телефонах, где товары, в которых есть ЦИФРА "8"
SELECT *
FROM mobile_phone
WHERE model RLIKE '[8]+$';
