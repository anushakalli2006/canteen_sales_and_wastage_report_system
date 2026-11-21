# Engine 1 – Data and Integrity

## Project Name
Canteen Sales and Wastage Report System

## Team Member
Pallavi

## Engine Responsibility
Data and Integrity – Database Management Systems (DBMS).

## Description
This engine manages the database of the Canteen Sales and Wastage Report System. It stores food items, daily sales and food wastage records.

## Database
MySQL

## Tables Created

### 1. food_items
Stores food item details.
- item_id – Primary Key
- item_name
- cost_price
- selling_price

### 2. sales
Stores daily sales details.
- sale_id – Primary Key
- item_id – Foreign Key
- quantity
- selling_price
- sale_date

### 3. wastage
Stores food wastage details.
- wastage_id – Primary Key
- item_id – Foreign Key
- quantity
- wastage_date
- reason

## Data Integrity Rules
- Food item names cannot be empty.
- Duplicate food item names are not allowed.
- Quantity must be greater than zero.
- Selling price and cost price must be greater than zero.
- Sales and wastage records must refer to an existing food item.
- Primary keys uniquely identify each record.

## Files
- database.sql – Database creation and sample SQL commands.
- er-diagram.png – Database relationship diagram.
- er-diagram.mwb – Editable MySQL Workbench model.
- test-cases.md – Database testing details.

## Status
Database tables created and sample records inserted. Initial data integrity tests performed.