-- Author: [your name]
-- Date: [today's date]
-- Description: Restaurant Order Management System Schema
-- ============================================
-- Restaurant Order Management System
-- schema.sql
-- ============================================

-- Step 1: CATEGORIES (no dependencies)
CREATE TABLE CATEGORIES (
    category_id   NUMBER          PRIMARY KEY,
    name          VARCHAR2(50)    NOT NULL,
    description   VARCHAR2(200)
);

-- Step 2: CUSTOMERS (no dependencies)
CREATE TABLE CUSTOMERS (
    customer_id   NUMBER          PRIMARY KEY,
    first_name    VARCHAR2(50)    NOT NULL,
    last_name     VARCHAR2(50)    NOT NULL,
    email         VARCHAR2(100)   UNIQUE,
    phone         VARCHAR2(20),
    created_at    DATE            DEFAULT SYSDATE
);

-- Step 3: STAFF (no dependencies)
CREATE TABLE STAFF (
    staff_id      NUMBER          PRIMARY KEY,
    first_name    VARCHAR2(50)    NOT NULL,
    last_name     VARCHAR2(50)    NOT NULL,
    role          VARCHAR2(20)    NOT NULL
                                  CHECK (role IN ('waiter','manager','chef')),
    phone         VARCHAR2(20)
);

-- Step 4: RESTAURANT_TABLES (no dependencies)
CREATE TABLE RESTAURANT_TABLES (
    table_id      NUMBER          PRIMARY KEY,
    table_number  NUMBER          NOT NULL UNIQUE,
    capacity      NUMBER          NOT NULL CHECK (capacity > 0),
    status        VARCHAR2(20)    DEFAULT 'free'
                                  CHECK (status IN ('free','occupied','reserved'))
);

-- Step 5: MENU_ITEMS (depends on CATEGORIES)
CREATE TABLE MENU_ITEMS (
    item_id       NUMBER          PRIMARY KEY,
    category_id   NUMBER          NOT NULL,
    name          VARCHAR2(100)   NOT NULL,
    description   VARCHAR2(300),
    price         NUMBER(8,2)     NOT NULL CHECK (price > 0),
    status        VARCHAR2(20)    DEFAULT 'available'
                                  CHECK (status IN ('available','unavailable')),
    CONSTRAINT fk_item_category FOREIGN KEY (category_id)
        REFERENCES CATEGORIES(category_id)
);

-- Step 6: ORDERS (depends on CUSTOMERS, RESTAURANT_TABLES, STAFF)
CREATE TABLE ORDERS (
    order_id      NUMBER          PRIMARY KEY,
    customer_id   NUMBER          NOT NULL,
    table_id      NUMBER          NOT NULL,
    staff_id      NUMBER          NOT NULL,
    status        VARCHAR2(20)    DEFAULT 'pending'
                                  CHECK (status IN ('pending','in_progress','served','cancelled')),
    total_amount  NUMBER(10,2)    DEFAULT 0,
    order_date    DATE            DEFAULT SYSDATE,
    CONSTRAINT fk_order_customer FOREIGN KEY (customer_id)
        REFERENCES CUSTOMERS(customer_id),
    CONSTRAINT fk_order_table    FOREIGN KEY (table_id)
        REFERENCES RESTAURANT_TABLES(table_id),
    CONSTRAINT fk_order_staff    FOREIGN KEY (staff_id)
        REFERENCES STAFF(staff_id)
);

-- Step 7: ORDER_ITEMS (depends on ORDERS and MENU_ITEMS — always last)
CREATE TABLE ORDER_ITEMS (
    order_item_id NUMBER          PRIMARY KEY,
    order_id      NUMBER          NOT NULL,
    item_id       NUMBER          NOT NULL,
    quantity      NUMBER          NOT NULL CHECK (quantity > 0),
    unit_price    NUMBER(8,2)     NOT NULL,
    notes         VARCHAR2(200),
    CONSTRAINT fk_oi_order FOREIGN KEY (order_id)
        REFERENCES ORDERS(order_id),
    CONSTRAINT fk_oi_item  FOREIGN KEY (item_id)
        REFERENCES MENU_ITEMS(item_id)
);
