-- ============================================
-- Useful queries for Restaurant Order Management
-- ============================================

-- View all menu items with their category name
SELECT m.name, m.price, c.name AS category
FROM MENU_ITEMS m
JOIN CATEGORIES c ON m.category_id = c.category_id;

-- View all orders with customer name and table number
SELECT o.order_id, c.first_name, c.last_name,
       t.table_number, o.status, o.total_amount
FROM ORDERS o
JOIN CUSTOMERS c ON o.customer_id = c.customer_id
JOIN RESTAURANT_TABLES t ON o.table_id = t.table_id;

-- View full order details
SELECT o.order_id, m.name, oi.quantity,
       oi.unit_price, oi.notes
FROM ORDER_ITEMS oi
JOIN ORDERS o ON oi.order_id = o.order_id
JOIN MENU_ITEMS m ON oi.item_id = m.item_id;
