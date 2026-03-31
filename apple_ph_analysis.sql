-- Revenue Trends and Growth --
WITH yearly_data AS (
    SELECT
        A.year,
        SUM(A.revenue_usd) AS total_revenue,
        SUM(A.units_sold) AS total_units
    FROM `deductive-cider-489904-f6.global_apple_retail_sales.apple_sales` A
    WHERE 
        A.country = 'Philippines'
    GROUP BY
      1
)

SELECT
    Y.year,
    Y.total_revenue,

-- YoY % growth
    ROUND(
        (Y.total_revenue - LAG(Y.total_revenue) OVER (ORDER BY Y.year)) 
        / LAG(Y.total_revenue) OVER (ORDER BY Y.year) * 100,
        2
    ) AS revenue_growth_pct,
    Y.total_units,

FROM 
    `yearly_data` Y
ORDER BY
    1;

-- Revenue of PH vs Asian Countries --
SELECT
    A.country,
    A.region,
    SUM(A.revenue_usd) AS total_revenue
FROM
    `deductive-cider-489904-f6.global_apple_retail_sales.apple_sales` A
WHERE
    A.region = 'Asia'
GROUP BY
    1,2
ORDER BY
    3
LIMIT
    10;

-- Product Performance --
SELECT
    A.product_name,
    A.category,
    SUM(A.revenue_usd) AS total_revenue,
    SUM(A.units_sold) AS total_units,
    RANK() OVER (ORDER BY SUM(A.revenue_usd) DESC) AS revenue_rank
FROM
    `deductive-cider-489904-f6.global_apple_retail_sales.apple_sales` A
WHERE
    A.country = 'Philippines'
    AND A.region = 'Asia'
GROUP BY
    1,2
LIMIT
    10;

-- Pricing Analysis --
SELECT
    A.category,
    AVG (A.unit_price_usd) AS avg_price
FROM
    `deductive-cider-489904-f6.global_apple_retail_sales.apple_sales` A
GROUP BY
    1
ORDER BY
    2 DESC;

-- Discount Effectiveness --
SELECT
    CASE
        WHEN A.discount_pct = 0 THEN 'No Discount'
        WHEN A.discount_pct BETWEEN 1 AND 10 THEN 'Low Discount'
        WHEN A.discount_pct BETWEEN 11 AND 20 THEN 'Medium Discount'
        ELSE 'High Discount'
    END AS discount_bucket,
    AVG(A.discount_pct) AS avg_discount,
    SUM(A.revenue_usd) AS total_revenue,
    SUM(A.units_sold) AS total_units
FROM
    `deductive-cider-489904-f6.global_apple_retail_sales.apple_sales` A
WHERE
    A.country = 'Philippines'
    AND A.region = 'Asia'
GROUP BY 
    discount_bucket
ORDER BY 
    total_revenue DESC;

-- Customer Behavior --
SELECT
    A.customer_segment,
    A.customer_age_group,
    SUM(A.revenue_usd) AS revenue,
    AVG(A.customer_rating) AS avg_rating
FROM
  `deductive-cider-489904-f6.global_apple_retail_sales.apple_sales` A
WHERE
    A.country = 'Philippines'
    AND A.region = 'Asia'
GROUP BY
    1,2
ORDER BY
    3 DESC
LIMIT
    10;

-- Return Rate --
SELECT
    A.product_name,
    COUNT(*) AS total_orders,
    SUM(CASE WHEN A.return_status = 'Returned' THEN 1 ELSE 0 END) AS total_returns,
    ROUND(
        SUM(CASE WHEN A.return_status = 'Returned' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS return_rate_pct
FROM
    `deductive-cider-489904-f6.global_apple_retail_sales.apple_sales` A
WHERE
    A.country = 'Philippines'
    AND A.region = 'Asia'
GROUP BY 
    1
ORDER BY 
    return_rate_pct DESC
LIMIT
    10;

-- Return Rate by Country --
SELECT
    A.country,
    COUNT(*) AS total_orders,
    
    SUM(CASE 
        WHEN A.return_status = 'Returned' THEN 1 
        ELSE 0 
    END) AS total_returns,

    ROUND(
        SAFE_DIVIDE(
            SUM(CASE 
                WHEN A.return_status = 'Returned' THEN 1 
                ELSE 0 
            END),
            COUNT(*)
        ) * 100,
        2
    ) AS return_rate_pct

FROM `deductive-cider-489904-f6.global_apple_retail_sales.apple_sales` A
WHERE
    A.region = 'Asia'
GROUP BY
    A.country
ORDER BY 
    return_rate_pct DESC;

-- Sales Channel & Payment Behavior --
SELECT
    A.sales_channel,
    A.payment_method,
    COUNT(*) AS total_orders,
    SUM(A.revenue_usd) AS revenue
FROM 
    `deductive-cider-489904-f6.global_apple_retail_sales.apple_sales` A
WHERE
    A.country = 'Philippines'
    AND A.region = 'Asia'
GROUP BY
    1,2
ORDER BY
    4 DESC
LIMIT
    10;