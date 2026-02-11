/*
fact_sales
-----------
Grain       : One row per order per day
Purpose     : Core fact table for revenue and sales performance analysis
Owner       : Analytics Engineering
*/

CREATE OR REPLACE TABLE fact_sales AS
SELECT
    order_id,
    order_date,
    customer_id,
    product_id,
    channel,
    quantity,
    gross_revenue,
    discount_amount,
    net_revenue
FROM staging_sales;
