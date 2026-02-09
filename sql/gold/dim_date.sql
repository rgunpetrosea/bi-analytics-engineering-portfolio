/*
dim_date
---------
Grain       : One row per calendar date
Purpose     : Date dimension for time-based analysis (YoY, MoM, trends)
Owner       : Analytics Engineering
*/

WITH date_spine AS (
    SELECT
        CAST(d AS DATE) AS date_key
    FROM generate_series(
        DATE '2022-01-01',
        DATE '2025-12-31',
        INTERVAL '1 day'
    ) AS d
),

final AS (
    SELECT
        date_key,
        EXTRACT(YEAR FROM date_key)  AS year,
        EXTRACT(QUARTER FROM date_key) AS quarter,
        EXTRACT(MONTH FROM date_key) AS month,
        TO_CHAR(date_key, 'Month')   AS month_name,
        EXTRACT(WEEK FROM date_key)  AS week_of_year,
        EXTRACT(DOW FROM date_key)   AS day_of_week,
        TO_CHAR(date_key, 'Day')     AS day_name,
        CASE 
            WHEN EXTRACT(DOW FROM date_key) IN (0,6) THEN TRUE
            ELSE FALSE
        END AS is_weekend
    FROM date_spine
)

SELECT * FROM final;
