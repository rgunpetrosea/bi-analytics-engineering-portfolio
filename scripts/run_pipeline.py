import duckdb
from pathlib import Path

con = duckdb.connect("analytics.duckdb")

def run_sql(path):
    sql = Path(path).read_text()
    con.execute(sql)

# RAW
run_sql("sql/raw/raw_sales.sql")
run_sql("sql/raw/raw_customers.sql")

# STAGING
run_sql("sql/staging/staging_sales.sql")
run_sql("sql/staging/staging_customers.sql")

# GOLD
run_sql("sql/gold/fact_sales.sql")
run_sql("sql/gold/dim_customer.sql")
run_sql("sql/gold/dim_date.sql")

print("Pipeline executed from SQL files successfully.")
