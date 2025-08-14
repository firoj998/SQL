-- =====================================================
-- Database Creation and Table Setup Script
-- =====================================================

-- Purpose:
-- Creates a new SQL Server database named 'MyDatabase'.
-- Drops it first if it already exists (WARNING: data loss).
-- Then creates the tables: customers, orders (employees table not included).
-- Populates tables with sample data.

USE master;
GO

-- Drop and recreate the 'MyDatabase' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'MyDatabase')
BEGIN
    ALTER DATABASE MyDatabase SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE MyDatabase;
END;
GO

-- Create the 'MyDatabase' database
CREATE DATABASE MyDatabase;
GO

USE MyDatabase;
GO

-- =====================================================
-- Table: customers
-- =====================================================
DROP TABLE IF EXISTS customers;
GO

CREATE TABLE customers (
    id          INT NOT NULL,
    first_name  VARCHAR(50) NOT NULL,
    country     VARCHAR(50),
    score       INT,
    CONSTRAINT PK_customers PRIMARY KEY (id)
);
GO

-- Insert customers data
INSERT INTO customers (id, first_name, country, score) VALUES
(1, 'Maria', 'Germany', 350),
(2, 'John', 'USA', 900),
(3, 'Georg', 'UK', 750),
(4, 'Martin', 'Germany', 500),
(5, 'Peter', 'USA', 0);
GO

-- =====================================================
-- Table: orders
-- =====================================================
DROP TABLE IF EXISTS orders;
GO

CREATE TABLE orders (
    order_id    INT NOT NULL,
    customer_id INT NOT NULL,
    order_date  DATE,
    sales       INT,
    CONSTRAINT PK_orders PRIMARY KEY (order_id)
);
GO

-- Insert orders data
INSERT INTO orders (order_id, customer_id, order_date, sales) VALUES
(1001, 1, '2021-01-11', 35),
(1002, 2, '2021-04-05', 15),
(1003, 3, '2021-06-18', 20),
(1004, 6, '2021-08-31', 10); -- NOTE: customer_id 6 does NOT exist in customers table and will cause FK error
GO
