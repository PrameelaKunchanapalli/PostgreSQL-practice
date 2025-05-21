CREATE TABLE products1 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    description TEXT,
    price NUMERIC(10, 2),
    stock INT
	);
	CREATE TABLE abc (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    description TEXT,
    price NUMERIC(10, 2),
    stock INT
	);

	
INSERT INTO products (name, description, price, stock)
VALUES 
('Gaming Laptop', 'High-performance laptop with RTX graphics and 16GB RAM.', 1299.99, 20),
('Smartphone', '6.5-inch OLED display, 128GB storage, dual camera.', 699.99, 35),
('Noise Cancelling Headphones', 'Over-ear headphones with active noise cancellation.', 199.99, 45),
('Smartwatch', 'Fitness tracking, notifications, and heart-rate monitoring.', 149.99, 60),
('External Hard Drive', '1TB USB 3.0 external hard drive.', 59.99, 80),
('Desk Lamp', 'LED desk lamp with adjustable brightness and color modes.', 29.99, 100),
('Webcam', '1080p HD webcam with built-in microphone.', 49.99, 75),
('Graphics Tablet', 'Drawing tablet with pressure-sensitive pen input.', 89.99, 25),
('Laptop Stand', 'Aluminum stand for better airflow and ergonomics.', 34.99, 65),
('Office Chair', 'Ergonomic mesh chair with lumbar support.', 179.99, 15),
('Portable SSD', '500GB USB-C solid state drive.', 99.99, 50),
('Wireless Charger', 'Qi-enabled fast wireless charger pad.', 24.99, 90),
('Router', 'Dual-band Wi-Fi 6 router with parental controls.', 129.99, 40),
('Laser Printer', 'All-in-one monochrome laser printer with Wi-Fi.', 159.99, 20),
('Streaming Microphone', 'USB condenser mic with stand for podcasting.', 109.99, 35);

SELECT * products;

SELECT description AS about FROM products;

SELECT description ||  price AS about  FROM products;

SELECT( description  ,  price) AS about  FROM prameela_data.products;

SELECT price AS offerprice FROM products;

create table employe.company(
   ID   INT              NOT NULL,
   NAME VARCHAR (20)     NOT NULL,
   AGE  INT              NOT NULL,
   ADDRESS  CHAR (25),
   SALARY   DECIMAL (18, 2),
   PRIMARY KEY (ID)
);

ALTER TABLE products SET SCHEMA prameela_data;

INSERT INTO employee.company (ID, NAME, AGE, ADDRESS, SALARY)
VALUES
(1, 'John Smith', 32, '123 Elm Street', 55000.00),
(2, 'Alice Johnson', 29, '456 Oak Avenue', 62000.00),
(3, 'Michael Lee', 41, '789 Maple Road', 75000.00),
(4, 'Emily Davis', 36, '321 Pine Blvd', 68000.00),
(5, 'David Brown', 27, '654 Cedar Lane', 47000.00),
(6, 'Sophia Turner', 30, '987 Birch Way', 53000.00),
(7, 'James Wilson', 45, '111 Spruce Drive', 82000.00),
(8, 'Olivia Martinez', 34, '222 Poplar St', 61000.00),
(9, 'Robert Garcia', 38, '333 Aspen Ct', 70000.00),
(10, 'Lily Clark', 26, '444 Redwood Rd', 49000.00);

SELECT * FROM employee.company

INSERT INTO products1 (name, description, price, stock)
VALUES
('Bluetooth Speaker', 'Portable speaker with high-quality sound and 10-hour battery life.', 59.99, 100),
('Wireless Mouse', 'Ergonomic wireless mouse with adjustable DPI.', 24.99, 150),
('Mechanical Keyboard', 'RGB mechanical keyboard with blue switches.', 89.99, 80),
('4K Monitor', '27-inch 4K UHD monitor with HDR support.', 349.99, 30),
('USB-C Hub', 'Multiport hub with HDMI, USB 3.0, and SD card reader.', 39.99, 120),
('Fitness Tracker', 'Water-resistant fitness band with step and sleep tracking.', 49.99, 75),
('Laptop Backpack', 'Waterproof backpack with laptop compartment and USB charging port.', 44.99, 60),
('Noise-Isolating Earbuds', 'In-ear headphones with mic and extra ear tips.', 19.99, 200),
('Smart Bulb', 'Color-changing LED bulb compatible with Alexa and Google Home.', 14.99, 180),
('Streaming Stick', 'HD streaming stick with voice remote and app support.', 39.99, 95),
('Photo Printer', 'Compact wireless photo printer with mobile printing support.', 129.99, 25),
('Power Bank', '10000mAh fast-charging power bank with USB-C input/output.', 34.99, 130),
('Gaming Chair', 'Reclining gaming chair with footrest and lumbar support.', 229.99, 20),
('Electric Kettle', '1.7L stainless steel kettle with auto shut-off.', 29.99, 110),
('Webcam Cover', 'Slide cover for webcam privacy.', 5.99, 300);
 SELECT * FROM products1;
 SELECT * FROM abc
SELECT p.name, a.name, p.price, a.price
FROM products1 p
INNER JOIN abc a ON p.price = a.price;

INSERT INTO abc (name, description, price, stock)
VALUES 
('Tablet', '10-inch Android tablet with 64GB storage.', 199.99, 40),
('Gaming Mouse', 'Wired gaming mouse with customizable RGB lighting.', 49.99, 85),
('USB Flash Drive', '64GB USB 3.1 flash drive.', 14.99, 150),
('Smart Thermostat', 'Wi-Fi enabled thermostat with mobile app support.', 129.99, 30),
('Action Camera', 'Waterproof 4K action camera with wide-angle lens.', 159.99, 25),
('Bluetooth Earphones', 'In-ear wireless earphones with charging case.', 39.99, 100),
('Laptop Cooling Pad', 'Cooling pad with dual fans and adjustable height.', 24.99, 70),
('Monitor Stand', 'Wooden monitor riser with storage space.', 34.99, 60),
('VR Headset', 'Virtual reality headset compatible with smartphones.', 89.99, 20),
('Smart Lock', 'Keyless smart door lock with fingerprint access.', 119.99, 15),
('Wireless Router', 'Tri-band Wi-Fi router with parental controls.', 179.99, 45),
('Digital Photo Frame', '10-inch display with slideshow and USB/SD input.', 69.99, 55),
('Inkjet Printer', 'Color inkjet printer with wireless printing.', 99.99, 35),
('LED Light Strip', '16ft RGB LED strip with remote control.', 19.99, 120),
('Electric Toothbrush', 'Rechargeable toothbrush with timer and 3 modes.', 59.99, 90);

SELECT * FROM abc

SELECT p.name AS product_name, a.name AS abc_name
FROM products1 p
LEFT JOIN abc a ON p.price = a.price;

SELECT p.name AS product_name, a.name AS abc_name
FROM products1 p
RIGHT JOIN abc a ON p.price = a.price;

SELECT p.name AS product_name, a.name AS abc_name
FROM products1 p
FULL OUTER JOIN abc a ON p.price = a.price;

SELECT p.name AS product_name, a.name AS abc_name
FROM products1 p
CROSS JOIN abc a;

SELECT p1.name AS product1, p2.name AS product2, p1.price
FROM products1 p1
JOIN products1 p2 ON p1.price = p2.price AND p1.id <> p2.id;


