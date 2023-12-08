DROP DATABASE IF EXISTS CarDealership ;

CREATE DATABASE IF NOT EXISTS CarDealership;

USE CarDealership;
-- Creating dealerships table
CREATE TABLE dealerships (
    dealership_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    address VARCHAR(50),
    phone VARCHAR(12)
);

-- Creating vehicles table
CREATE TABLE vehicles (
    VIN VARCHAR(17) PRIMARY KEY,
    make VARCHAR(50),
    model VARCHAR(50),
    year INT,
    color VARCHAR(30),
    body_type VARCHAR(50),
    SOLD BOOLEAN
);

-- Creating inventory table
CREATE TABLE inventory (
    dealership_id INT,
    VIN VARCHAR(17),
    PRIMARY KEY (dealership_id, VIN),
    FOREIGN KEY (dealership_id) REFERENCES dealerships(dealership_id),
    FOREIGN KEY (VIN) REFERENCES vehicles(VIN)
);

-- Creating sales_contracts
CREATE TABLE sales_contracts (
    id INT AUTO_INCREMENT PRIMARY KEY,
    VIN VARCHAR(17),
    dealership_id INT,
    customer_name VARCHAR(100),
    sale_date DATE,
    sale_price DECIMAL(10, 2),
    FOREIGN KEY (VIN) REFERENCES vehicles(VIN),
    FOREIGN KEY (dealership_id) REFERENCES dealerships(dealership_id)
);


-- Creating lease_contracts table
CREATE TABLE lease_contracts (
    id INT AUTO_INCREMENT PRIMARY KEY,
    VIN VARCHAR(17),
    dealership_id INT,
    customer_name VARCHAR(100),
    lease_start_date DATE,
    lease_end_date DATE,
    monthly_payment DECIMAL(10, 2),
    FOREIGN KEY (VIN) REFERENCES vehicles(VIN),
    FOREIGN KEY (dealership_id) REFERENCES dealerships(dealership_id)
);


-- Populating dealerships table
INSERT INTO dealerships (name, address, phone)
VALUES
    ('PJ Motors', '123 Main St', '555-1234'),
    ('SmartCars Inc.', '456 Oak St', '555-5678'),
    ('City Auto Group', '789 Pine St', '555-9012');

-- Populating vehicles table
INSERT INTO vehicles (VIN, make, model, year, color, body_type, SOLD)
VALUES
    ('1HGCM82633A123456', 'Honda', 'Accord', 2022, 'Blue', 'Sedan', FALSE),
    ('5XYZU3LB9JG123456', 'Hyundai', 'Santa Fe', 2021, 'Silver', 'SUV', TRUE),
    ('JM1BK34L571123456', 'Mazda', 'Mazda3', 2023, 'Red', 'Hatchback', FALSE);

-- Populating inventory table
INSERT INTO inventory (dealership_id, VIN)
VALUES
    (1, '1HGCM82633A123456'),
    (2, '5XYZU3LB9JG123456'),
    (3, 'JM1BK34L571123456');

-- Populating sales_contracts table
INSERT INTO sales_contracts (VIN, dealership_id, customer_name, sale_date, sale_price)
VALUES
    ('1HGCM82633A123456', 1, 'Joy Mlaviwa', '2023-01-15', 25000.00),
    ('5XYZU3LB9JG123456', 2, 'Pamela Annette', '2023-02-20', 30000.00),
    ('JM1BK34L571123456', 3, 'Bob Johnson', '2023-03-10', 22000.00);

-- Populating lease_contracts table
INSERT INTO lease_contracts (VIN, dealership_id, customer_name, lease_start_date, lease_end_date, monthly_payment)
VALUES
    ('1HGCM82633A123456', 1, 'Alice Brown', '2023-04-01', '2024-03-31', 350.00),
    ('5XYZU3LB9JG123456', 2, 'Charlie Wilson', '2023-05-15', '2024-05-14', 400.00),
    ('JM1BK34L571123456', 3, 'Eva Davis', '2023-06-01', '2024-11-30', 300.00);
