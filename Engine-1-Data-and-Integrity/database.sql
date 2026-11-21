CREATE DATABASE canteen_databs;

USE canteen_databs;

CREATE TABLE food_items (
    item_id INT AUTO_INCREMENT PRIMARY KEY,
    item_name VARCHAR(100) NOT NULL UNIQUE,
    cost_price DECIMAL(10,2) NOT NULL,
    selling_price DECIMAL(10,2) NOT NULL,
    CHECK (cost_price > 0),
    CHECK (selling_price > 0)
);
CREATE TABLE sales (
    sale_id INT AUTO_INCREMENT PRIMARY KEY,
    item_id INT NOT NULL,
    quantity INT NOT NULL,
    selling_price DECIMAL(10,2) NOT NULL,
    sale_date DATE NOT NULL,

    CHECK (quantity > 0),
    CHECK (selling_price > 0),

    FOREIGN KEY (item_id)
    REFERENCES food_items(item_id)
);

CREATE TABLE wastage (
    wastage_id INT AUTO_INCREMENT PRIMARY KEY,
    item_id INT NOT NULL,
    quantity INT NOT NULL,
    wastage_date DATE NOT NULL,
    reason VARCHAR(255),

    CHECK (quantity > 0),

    FOREIGN KEY (item_id)
    REFERENCES food_items(item_id)
);

SHOW TABLES;

INSERT INTO food_items
(item_name, cost_price, selling_price)
VALUES
('Idli', 8.00, 15.00),
('Dosa', 15.00, 30.00),
('Tea', 5.00, 10.00),
('Coffee', 8.00, 15.00),
('Poori', 12.00, 25.00);


SELECT * FROM food_items;

INSERT INTO sales
(item_id, quantity, selling_price, sale_date)
VALUES
(1, 20, 15.00, '2026-11-21'),
(2, 10, 30.00, '2026-11-21'),
(3, 15, 10.00, '2026-11-21');

INSERT INTO wastage
(item_id, quantity, wastage_date, reason)
VALUES
(1, 2, '2026-11-21', 'Extra preparation'),
(2, 1, '2026-11-21', 'Food left unused');

SELECT * FROM food_items;

SELECT * FROM sales;

SELECT * FROM wastage;

INSERT INTO sales
(item_id, quantity, selling_price, sale_date)
VALUES
(1, -5, 15.00, '2026-11-21');

INSERT INTO sales
(item_id, quantity, selling_price, sale_date)
VALUES
(999, 5, 15.00, '2026-11-21');

INSERT INTO food_items
(item_name, cost_price, selling_price)
VALUES
('Idli', 8.00, 15.00);

DESCRIBE food_items;

DESCRIBE sales;

DESCRIBE wastage;



