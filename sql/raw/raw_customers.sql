CREATE OR REPLACE TABLE raw_customers AS
SELECT * FROM read_csv_auto('data/raw_customers.csv');
