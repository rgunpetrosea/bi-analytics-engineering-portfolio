/*
staging_sales
--------------
Purpose : Cleaned and standardized sales data from raw source
Layer   : Staging
Owner   : Analytics Engineering
*/

SELECT
    order_id,
    CAST(order_date AS DATE)        AS order_date,
    customer_id,
    product_id,
    channel,
    quantity,
    gross_revenue,
    discount_amount,
    (gross_revenue - discount_amount) AS net_revenue
FROM raw_sales;
