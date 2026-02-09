# bi-analytics-engineering-portfolio
End-to-end BI &amp; analytics engineering projects demonstrating SQL-based data modeling, Power BI dashboards, and business-driven insights.

## Data Model Overview

This project follows a star schema design to support scalable and high-performance BI use cases.

### Fact Table
- **fact_sales**  
  Grain: one row per order per day  
  Contains revenue, quantity, and transactional metrics used for performance analysis.

### Dimension Tables
- **dim_date**  
  Enables time-based analysis such as MoM, YoY, and trend reporting.
- **dim_customer**  
  Supports customer segmentation, retention, and revenue contribution analysis.

The model is designed with a clear separation between staging and gold layers to simplify maintenance and downstream analytics.

## Data Flow

Raw data is standardized in the staging layer before being modeled into analytics-ready fact and dimension tables
to support scalable BI and decision-making use cases.
