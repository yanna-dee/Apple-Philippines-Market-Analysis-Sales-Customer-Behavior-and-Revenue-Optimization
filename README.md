# Apple Philippines Market Analysis: Sales, Customer Behavior, and Revenue Optimization

## Overview
This project analyzes synthetic Apple retail sales data in the Philippines (2022–2024) to uncover insights on revenue growth, customer behavior, product performance, and return patterns.

With a background in Retail Operations at Lazada, this analysis simulates real-world decision-making in a retail environment—focusing on how data can be used to drive revenue growth, optimize pricing strategies, and improve operational efficiency.

## Business Objectives
- Evaluate revenue growth trends in the Philippine market
- Identify top-performing products and categories
- Assess discount effectiveness on revenue and volume
- Understand customer segments and purchasing behavior
- Detect return patterns and potential revenue leakage
  
## Dataset
### Contains transactional data including:
- Product details (model, storage, price)
- Customer demographics
- Sales and discount information
- Return status

### Size
- Columns: 27
- Rows: 11,500

## Tools
- BigQuery: SQL Analysis
- MS Excel: Data Visualization

## Key Analysis Insights

### Revenue Trends & Growth
<img width="536" height="353" alt="revenue" src="https://github.com/user-attachments/assets/017f5722-b076-4cad-aafe-7730d434f2f0" />

- Revenue declined significantly in 2023 (-35.06%) before recovering in 2024 with a 14.91% increase, alongside a rebound in total units sold (from 130 to 156).
- While performance has not yet returned to 2022 levels, the upward trend in 2024 signals early signs of market recovery and renewed demand.

### Product Performance
<img width="521" height="357" alt="category" src="https://github.com/user-attachments/assets/80f8abfe-c912-40c0-9c6a-f12bd4b040e3" />

- Mac, iPhone, iPad, and Apple Watch are the top-performing categories, led by the Mac Pro (M2 Ultra) generating $73,182.02 in revenue.
- These categories also command the highest average selling prices (up to $2.3K), confirming strong demand for premium Apple products.
- This reflects resilient purchasing power and a market that is less price-sensitive, particularly for high-performance and productivity-driven devices.

### Discount Effectiveness
<img width="517" height="310" alt="discount" src="https://github.com/user-attachments/assets/3c638449-d5e8-4c9b-9cd6-98a64e5c4d1e" />

- Non-discounted products generate the highest revenue ($167,243.73) and sales volume (241 units), outperforming both low and medium discount tiers.
- Demand for Apple products in the Philippine market remains strong even without heavy discounting, with minimal reliance on promotions to drive sales volume.

### Customer Behavior
<img width="513" height="365" alt="customer" src="https://github.com/user-attachments/assets/d1fbe883-e29f-4a45-bde9-d7f18da0f997" />

- Revenue is heavily concentrated in the education segment (ages 25–34), which significantly outperforms other groups, while business (45–54) and government (55+) segments also contribute high-value sales with strong customer ratings.
- These segments likely represent mid- to late-career professionals with higher disposable income and clear productivity-driven use cases.
- Preferred channels include Corporate/B2B, Official Website, and Apple Stores, with dominant payment methods being Apple Pay, Gift Cards, Cash, and Installment.

### Returns Analysis
<img width="655" height="325" alt="Screen Shot 2026-04-01 at 10 43 22 PM" src="https://github.com/user-attachments/assets/f2117b24-3af9-4b2d-ade0-26e125701205" />

- Return rates are consistently low across high order volume products (e.g., iPhone 14 Pro at 18.18%), indicating strong customer satisfaction at scale.
- Higher return rates in select products (e.g., iPhone 13 Pro at 66.67%) are driven by low order volumes and are likely not statistically significant.
<img width="606" height="405" alt="returnrate" src="https://github.com/user-attachments/assets/ab7333a0-7249-40b6-b0c2-5a9ccca2a38a" />

- The Philippines ranks as the 8th lowest in return rates across Asia, reinforcing a positive post-purchase experience and strong product-market fit.

## Business Recommendations
- **Optimize Pricing Strategy:** Maintain premium pricing across top categories while leveraging targeted, low-level discounts to optimize conversions—avoiding aggressive promotions that may hurt margins.
- **Expand Institutional Sales:** Strengthen partnerships with education, corporate, and government sectors to drive bulk and recurring revenue.
- **Target High-Value Segments:** Focus marketing on ages 25–34, 45–54, and 55+ with messaging centered on productivity and professional use cases.
- **Prioritize High-Performing Channels:** Invest in Corporate/B2B, Official Website, and Apple Stores, while optimizing preferred payment methods to reduce friction.
- **Sustain Low Return Rates:** Maintain product quality and investigate outlier returns to further improve customer satisfaction.

## References
This project uses the "Apple Global Product Sales Dataset" from Kaggle.

Singh, A. (2026). Apple Global Product Sales Dataset. Kaggle. 
Retrieved from https://www.kaggle.com/datasets/ashyou09/apple-global-product-sales-dataset

