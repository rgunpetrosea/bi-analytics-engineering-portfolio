/*
dim_date
---------
Grain       : One row per calendar date
Purpose     : Date dimension for time-based analysis
Owner       : Analytics Engineering
*/

CREATE OR REPLACE TABLE dim_date AS
SELECT
    d::DATE                         AS date_key,
    EXTRACT(YEAR FROM d)            AS year,
    EXTRACT(QUARTER FROM d)         AS quarter,
    EXTRACT(MONTH FROM d)           AS month,
    strftime(d, '%B')               AS month_name,
    EXTRACT(WEEK FROM d)            AS week_of_year,
    EXTRACT(DOW FROM d)             AS day_of_week,
    strftime(d, '%A')               AS day_name,
    CASE 
        WHEN EXTRACT(DOW FROM d) IN (0,6) THEN TRUE
        ELSE FALSE
    END                             AS is_weekend
FROM generate_series(
    DATE '2022-01-01',
    DATE '2025-12-31',
    INTERVAL '1 day'
) t(d);
