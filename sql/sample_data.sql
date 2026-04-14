-- Author: [your name]
-- Date: [today's date]
-- Description: Sample data for Restaurant Order Management System

-- ============================================
-- Restaurant Order Management System
-- sample_data.sql
-- INSERT in same order as CREATE TABLE
-- ============================================

-- Step 1: CATEGORIES
INSERT INTO CATEGORIES (category_id, name, description) VALUES (1, 'Appetizers', 'Small dishes served before the main course');
INSERT INTO CATEGORIES (category_id, name, description) VALUES (2, 'Main Course', 'Primary dishes of the meal');
INSERT INTO CATEGORIES (category_id, name, description) VALUES (3, 'Desserts', 'Sweet dishes served after the main course');
INSERT INTO CATEGORIES (category_id, name, description) VALUES (4, 'Drinks', 'Hot and cold beverages');
INSERT INTO CATEGORIES (category_id, name, description) VALUES (5, 'Sides', 'Side dishes to complement the main course');

-- Step 2: CUSTOMERS
INSERT INTO CUSTOMERS (customer_id, first_name, last_name, email, phone) VALUES (1, 'John', 'Smith', 'john.smith@email.com', '555-1001');
INSERT INTO CUSTOMERS (customer_id, first_name, last_name, email, phone) VALUES (2, 'Emma', 'Johnson', 'emma.j@email.com', '555-1002');
INSERT INTO CUSTOMERS (customer_id, first_name, last_name, email, phone) VALUES (3, 'Michael', 'Brown', 'michael.b@email.com', '555-1003');
INSERT INTO CUSTOMERS (customer_id, first_name, last_name, email, phone) VALUES (4, 'Sarah', 'Davis', 'sarah.d@email.com', '555-1004');
INSERT INTO CUSTOMERS (customer_id, first_name, last_name, email, phone) VALUES (5, 'James', 'Wilson', 'james.w@email.com', '555-1005');

-- Step 3: STAFF
INSERT INTO STAFF (staff_id, first_name, last_name, role, phone) VALUES (1, 'Alice', 'Martin', 'manager', '555-2001');
INSERT INTO STAFF (staff_id, first_name, last_name, role, phone) VALUES (2, 'Bob', 'Taylor', 'waiter', '555-2002');
INSERT INTO STAFF (staff_id, first_name, last_name, role, phone) VALUES (3, 'Carol', 'White', 'waiter', '555-2003');
INSERT INTO STAFF (staff_id, first_name, last_name, role, phone) VALUES (4, 'David', 'Lee', 'chef', '555-2004');
INSERT INTO STAFF (staff_id, first_name, last_name, role, phone) VALUES (5, 'Eva', 'Clark', 'chef', '555-2005');

-- Step 4: RESTAURANT_TABLES
INSERT INTO RESTAURANT_TABLES (table_id, table_number, capacity, status) VALUES (1, 1, 2, 'free');
INSERT INTO RESTAURANT_TABLES (table_id, table_number, capacity, status) VALUES (2, 2, 4, 'free');
INSERT INTO RESTAURANT_TABLES (table_id, table_number, capacity, status) VALUES (3, 3, 4, 'occupied');
INSERT INTO RESTAURANT_TABLES (table_id, table_number, capacity, status) VALUES (4, 4, 6, 'free');
INSERT INTO RESTAURANT_TABLES (table_id, table_number, capacity, status) VALUES (5, 5, 8, 'reserved');

-- Step 5: MENU_ITEMS
INSERT INTO MENU_ITEMS (item_id, category_id, name, description, price, status) VALUES (1, 1, 'Spring Rolls', 'Crispy vegetable spring rolls with dipping sauce', 6.99, 'available');
INSERT INTO MENU_ITEMS (item_id, category_id, name, description, price, status) VALUES (2, 1, 'Soup of the Day', 'Fresh homemade soup', 5.99, 'available');
INSERT INTO MENU_ITEMS (item_id, category_id, name, description, price, status) VALUES (3, 2, 'Grilled Chicken', 'Grilled chicken breast with herbs and vegetables', 15.99, 'available');
INSERT INTO MENU_ITEMS (item_id, category_id, name, description, price, status) VALUES (4, 2, 'Beef Burger', 'Beef patty with lettuce, tomato and fries', 13.99, 'available');
INSERT INTO MENU_ITEMS (item_id, category_id, name, description, price, status) VALUES (5, 2, 'Pasta Carbonara', 'Creamy pasta with bacon and parmesan', 12.99, 'available');
INSERT INTO MENU_ITEMS (item_id, category_id, name, description, price, status) VALUES (6, 3, 'Chocolate Cake', 'Rich chocolate layer cake', 7.99, 'available');
INSERT INTO MENU_ITEMS (item_id, category_id, name, description, price, status) VALUES (7, 3, 'Ice Cream', 'Three scoops of vanilla ice cream', 4.99, 'available');
INSERT INTO MENU_ITEMS (item_id, category_id, name, description, price, status) VALUES (8, 4, 'Coffee', 'Freshly brewed coffee', 3.99, 'available');
INSERT INTO MENU_ITEMS (item_id, category_id, name, description, price, status) VALUES (9, 4, 'Orange Juice', 'Freshly squeezed orange juice', 4.99, 'available');
INSERT INTO MENU_ITEMS (item_id, category_id, name, description, price, status) VALUES (10, 5, 'French Fries', 'Crispy golden fries with ketchup', 3.99, 'available');

-- Step 6: ORDERS
INSERT INTO ORDERS (order_id, customer_id, table_id, staff_id, status, total_amount) VALUES (1, 1, 1, 2, 'served', 26.97);
INSERT INTO ORDERS (order_id, customer_id, table_id, staff_id, status, total_amount) VALUES (2, 2, 2, 3, 'served', 33.97);
INSERT INTO ORDERS (order_id, customer_id, table_id, staff_id, status, total_amount) VALUES (3, 3, 3, 2, 'in_progress', 19.98);
INSERT INTO ORDERS (order_id, customer_id, table_id, staff_id, status, total_amount) VALUES (4, 4, 4, 3, 'pending', 15.99);
INSERT INTO ORDERS (order_id, customer_id, table_id, staff_id, status, total_amount) VALUES (5, 5, 2, 2, 'served', 41.96);

-- Step 7: ORDER_ITEMS
INSERT INTO ORDER_ITEMS (order_item_id, order_id, item_id, quantity, unit_price, notes) VALUES (1, 1, 3, 1, 15.99, NULL);
INSERT INTO ORDER_ITEMS (order_item_id, order_id, item_id, quantity, unit_price, notes) VALUES (2, 1, 8, 1, 3.99, NULL);
INSERT INTO ORDER_ITEMS (order_item_id, order_id, item_id, quantity, unit_price, notes) VALUES (3, 1, 10, 1, 3.99, 'extra ketchup');
INSERT INTO ORDER_ITEMS (order_item_id, order_id, item_id, quantity, unit_price, notes) VALUES (4, 2, 4, 1, 13.99, NULL);
INSERT INTO ORDER_ITEMS (order_item_id, order_id, item_id, quantity, unit_price, notes) VALUES (5, 2, 1, 1, 6.99, NULL);
INSERT INTO ORDER_ITEMS (order_item_id, order_id, item_id, quantity, unit_price, notes) VALUES (6, 2, 6, 1, 7.99, NULL);
INSERT INTO ORDER_ITEMS (order_item_id, order_id, item_id, quantity, unit_price, notes) VALUES (7, 3, 5, 1, 12.99, 'no bacon');
INSERT INTO ORDER_ITEMS (order_item_id, order_id, item_id, quantity, unit_price, notes) VALUES (8, 3, 9, 1, 4.99, NULL);
INSERT INTO ORDER_ITEMS (order_item_id, order_id, item_id, quantity, unit_price, notes) VALUES (9, 4, 3, 1, 15.99, NULL);
INSERT INTO ORDER_ITEMS (order_item_id, order_id, item_id, quantity, unit_price, notes) VALUES (10, 5, 4, 2, 13.99, NULL);
INSERT INTO ORDER_ITEMS (order_item_id, order_id, item_id, quantity, unit_price, notes) VALUES (11, 5, 7, 2, 4.99, NULL);
INSERT INTO ORDER_ITEMS (order_item_id, order_id, item_id, quantity, unit_price, notes) VALUES (12, 5, 2, 1, 5.99, NULL);

COMMIT;
