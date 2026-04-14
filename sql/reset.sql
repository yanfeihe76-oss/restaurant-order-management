-- Author: [your name]
-- Date: [today's date]
-- Description: Reset script - drops all tables in reverse order

-- ============================================
-- Restaurant Order Management System
-- reset.sql
-- DROP in reverse order (children first, parents last)
-- ============================================

-- Step 7 dropped first (most dependent)
DROP TABLE ORDER_ITEMS;

-- Step 6
DROP TABLE ORDERS;

-- Step 5
DROP TABLE MENU_ITEMS;

-- Step 4
DROP TABLE RESTAURANT_TABLES;

-- Step 3
DROP TABLE STAFF;

-- Step 2
DROP TABLE CUSTOMERS;

-- Step 1 dropped last (no dependencies)
DROP TABLE CATEGORIES;
