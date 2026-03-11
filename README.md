# E-commerce Sales Analysis by Product Category (SQL Project)
## I. Project Overview
This project analyzes e-commerce sales data using SQL to evaluate product category performance, regional sales trends, and profitability.

### Business Questions:
The goal of the analysis is to identify:
1. Top-performing product categories
2. The most profitable categories
3. Regional sales trends
4. Key drivers of revenue and profit

## II. Dataset Description
The dataset contains transactional sales data with the following columns:
| Column       | Description                 |
| ------------ | --------------------------- |
| Order Date   | Date the order was placed   |
| Product Name | Name of the product         |
| Category     | Product category            |
| Region       | Sales region                |
| Quantity     | Number of units sold        |
| Sales        | Total revenue generated     |
| Profit       | Profit earned from the sale |

## III. Data Preparation

Before performing analysis, the following checks were performed:
1. Standardized column names
2. Verified column data types
3. Checked for missing values
4. Confirmed date formatting

### Sample Queries

Fixing column names:
```sql
CREATE OR REPLACE TABLE `titanium-scope-381208.ecommerce_dataset.cleaned_ecommerce_data` AS
SELECT
  `Order Date` AS order_date,
  `Product Name` AS product_name,
  `Category` AS category,
  `Region` AS region,
  `Quantity` AS quantity,
  `Sales` AS sales,
  `Profit` AS profit
FROM `titanium-scope-381208.ecommerce_dataset.ecommerce_data`;
```
Checking null values:
```sql
SELECT
  *
FROM
  `titanium-scope-381208.ecommerce_dataset.cleaned_ecommerce_data` E
WHERE
  E.sales IS NULL
  OR E.profit IS NULL;
```

## IV. Kay SQL Analysis

### 1. Sales by Category
### 2. Profit by Category
### 3. Sales by Region
### 4. Top Performing Products
### 5. Profit Margin by Category

## V. Key Insights

## VI. Business Recommendations

## VII. Tools Used

## References
This project uses the "E-Commerce Sales Performance Analysis" from Kaggle.

Source: https://www.kaggle.com/datasets/sidramazam/e-commerce-sales-performance-analysis

Author: Sidra M.Azam

Citation:
Sidra M.Azam. (2026). E-Commerce Sales Performance Analysis. Kaggle. 
Retrieved from https://www.kaggle.com/datasets/sidramazam/e-commerce-sales-performance-analysis

