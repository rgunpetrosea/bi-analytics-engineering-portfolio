/*
staging_customers
------------------
Purpose : Cleaned and standardized customer data from raw source
Layer   : Staging
Owner   : Analytics Engineering
*/

SELECT
    customer_id,
    customer_name,
    customer_email,
    customer_country,
    customer_segment,
    CAST(signup_date AS DATE) AS signup_date
FROM raw_customers;
