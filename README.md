# Restaurant Order Management System

A database-backed application for managing restaurant orders,
menu items, staff, and customers. Built with Oracle SQL.

## Project Structure
- `sql/schema.sql` — creates all 7 tables
- `sql/sample_data.sql` — inserts sample data
- `sql/reset.sql` — drops all tables in reverse order

## Tables
- CATEGORIES — food categories (Appetizers, Main Course, etc.)
- MENU_ITEMS — food and drink items with prices
- CUSTOMERS — customer information
- STAFF — waiters, chefs, and managers
- RESTAURANT_TABLES — physical tables in the restaurant
- ORDERS — customer orders
- ORDER_ITEMS — individual items within each order

## How to Use
1. Run schema.sql to create all tables
2. Run sample_data.sql to insert sample data
3. Run reset.sql to drop all tables and start fresh

## Database
- Platform: Oracle
- Tables: 7
- Sample records: 5 customers, 10 menu items, 5 orders, 12 order items
