CREATE OR REPLACE TABLE raw_sales AS
SELECT * FROM read_csv_auto('data/raw_sales.csv');
