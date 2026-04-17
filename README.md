# Sales Performance & Revenue Growth Dashboard

## Objective

The objective of this project is to develop an interactive Sales Performance Dashboard using Power BI to analyze revenue trends, track business performance, evaluate growth, and support data-driven decision-making.

---

## Tools & Technologies Used

* Power BI (Data Visualization & Dashboarding)
* SQL (Data Modeling & Schema Design)
* Python (Pandas) (Data Cleaning & Preparation)
* Microsoft Excel (Data Handling)

---

## Dataset Description

The dataset consists of sales transaction data along with product and customer information.

### Key Tables:

* **Sales**: Order ID, Product ID, Customer ID, Date, Quantity, Price, Sales Amount
* **Products**: Product ID, Category, Sub-category, Product Name
* **Customers**: Customer ID, Region, Country, Segment

---

## Data Preparation (Python)

* Removed missing values
* Standardized column names
* Converted date column to datetime format
* Created Sales Amount column (Quantity × Price)
* Exported cleaned dataset for analysis

---

## Data Modeling (SQL)

A **star schema** was designed to structure the data efficiently:

* Fact Table: Sales
* Dimension Tables: Products, Customers, Calendar

Relationships:

* Sales → Products (Product ID)
* Sales → Customers (Customer ID)
* Sales → Calendar (Date)

---

## Power BI Implementation

### Power Query Transformations

* Removed null values
* Corrected data types
* Created date hierarchy (Year, Month, Quarter)
* Cleaned and structured dataset for reporting

---

## Key DAX Measures

* Total Sales
* Total Quantity
* Average Order Value (AOV)
* YoY Growth %
* Sales Contribution %
* Target Sales
* Achievement %
* Running Total Sales

---

## Dashboard Features

### KPI Section

* Total Sales
* YoY Growth %
* Total Quantity
* Average Order Value

### Visualizations

* Line Chart: Sales Trend with Forecast
* Column Chart: Region-wise Sales
* Bar Chart: Product Category Performance
* Donut Chart: Customer Segment Distribution
* Clustered Column Chart: Target vs Actual Sales
* Matrix Table: Region and Category-level Performance

### Interactivity

* Slicers for Date, Region, Category, and Segment
* Dynamic filtering across all visuals

---

## Key Business Insights

* North region is the highest revenue contributor and shows the strongest growth trend.
* East region underperforms in both revenue and growth, indicating potential improvement areas.
* Furniture category dominates overall revenue, while Electronics shows strong growth potential.
* Corporate customers contribute the largest share of revenue, highlighting a strong B2B focus.
* Actual sales consistently fall short of target sales across regions.
* Sales trends show volatility, indicating fluctuating demand patterns.
* Forecast suggests moderate growth with uncertainty, highlighting the need for better demand planning.

---

## Forecasting

Implemented Power BI’s built-in forecasting model to predict future sales trends based on historical data. The model indicates expected growth with variability in future performance.

---

## Conclusion

This dashboard provides a comprehensive view of sales performance, enabling stakeholders to monitor KPIs, identify growth opportunities, and make informed strategic decisions. It demonstrates how data analytics can transform raw data into actionable business insights.

---

## Files Included

* Dashboard.pbix
* Dashboard.pdf
* Sales_cleaned.csv
* Customers.csv
* Products.csv
* Python File (.ipynb)
* SQL File (.sql)
* Dashboard Screenshots
* README.md

---

## How to Use

1. Download the .pbix file
2. Open in Power BI Desktop
3. Interact using slicers and filters
4. Explore insights across regions, categories, and customer segments

---

## Author

Debarati Pal

