/*
dim_customer
-------------
Grain       : One row per customer
Purpose     : Customer dimension for revenue, retention, and segmentation analysis
Owner       : Analytics Engineering
*/

WITH base_customer AS (
    SELECT
        customer_id,
        customer_name,
        customer_email,
        customer_country,
        customer_segment,
        signup_date
    FROM staging_customers
),

final AS (
    SELECT
        customer_id,
        customer_name,
        customer_email,
        customer_country,
        customer_segment,
        signup_date
    FROM base_customer
)

SELECT * FROM final;
