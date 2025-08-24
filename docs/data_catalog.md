# Gold Layer Data Catalog

## Introduction

The Gold Layer presents business-oriented, analytical data structures tailored for reporting and analysis. It comprises both dimension and fact tables, each aligned with specific business KPIs.

***

## 1. `gold.dim_customers`

**Description:**  
Captures customer attributes, including demographic and location-related information.

**Field Definitions:**

| Field Name     | Data Type    | Explanation |
|----------------|-------------|-------------|
| customer_key   | INT         | Synthetic identifier for each customer entry within the dimension. |
| customer_id    | INT         | System-generated unique number for each customer. |
| customer_number| NVARCHAR(50)| An alphanumeric code used to identify and track customers in the system. |
| first_name     | NVARCHAR(50)| Given name of the customer as stored. |
| last_name      | NVARCHAR(50)| Family name or surname of the customer. |
| country        | NVARCHAR(50)| Customer’s country of residence, such as “Australia.” |
| marital_status | NVARCHAR(50)| Marital status (e.g., “Married”, “Single”). |
| gender         | NVARCHAR(50)| Indicates gender: “Male”, “Female”, or “n/a”. |
| birthdate      | DATE        | Birth date, formatted as YYYY-MM-DD. |
| create_date    | DATE        | Timestamp when the record was added to the system. |

***

## 2. `gold.dim_products`

**Description:**  
Holds product metadata and classification details.

**Field Definitions:**

| Field Name           | Data Type    | Explanation |
|----------------------|-------------|-------------|
| product_key          | INT         | Artificial key to identify products in the dimension. |
| product_id           | INT         | Internal system identifier for the product. |
| product_number       | NVARCHAR(50)| Structured code used for product referencing and organization. |
| product_name         | NVARCHAR(50)| Product’s descriptive name, with attributes like color or size. |
| category_id          | NVARCHAR(50)| ID linking the product to its category. |
| category             | NVARCHAR(50)| Higher-level grouping for products (e.g., “Bikes”, “Components”). |
| subcategory          | NVARCHAR(50)| Further breakdown within the category, specifying type or class. |
| maintenance_required | NVARCHAR(50)| States if the product needs maintenance: “Yes” or “No”. |
| cost                 | INT         | Product’s base or listed price. |
| product_line         | NVARCHAR(50)| Series or range the product belongs to (e.g., “Road”, “Mountain”). |
| start_date           | DATE        | Date the item became available or was released for sale. |

***

## 3. `gold.fact_sales`

**Description:**  
Maintains transactional sales records to support analytics and reporting.

**Field Definitions:**

| Field Name    | Data Type    | Explanation |
|---------------|-------------|-------------|
| order_number  | NVARCHAR(50)| Unique sales order code (e.g., “SO54496”). |
| product_key   | INT         | Foreign key referencing the product dimension. |
| customer_key  | INT         | Foreign key referencing the customer dimension. |
| order_date    | DATE        | When the order was made by the customer. |
| shipping_date | DATE        | Date the product shipped to the customer. |
| due_date      | DATE        | Deadline for payment completion. |
| sales_amount  | INT         | Total amount for the order, in whole currency units. |
| quantity      | INT         | Number of product units purchased per order line. |
| price         | INT         | Price per unit for the related product. |

***
