# 📊 Superstore Sales Analysis (SQL • Python • Power BI)

An end-to-end business intelligence and data analysis project using **Power BI**, **SQL (SSMS)**, and **Python (Pandas & Matplotlib)** on the popular *Superstore* dataset.

The project uncovers insights related to **sales, profit, discounts, customer behavior**, and **product performance**, and presents them through interactive dashboards and analytical visuals.


---

## 🔧 Tools Used

| Tool      | Purpose                                 |
|-----------|------------------------------------------|
| **SQL**   | Querying, aggregations, filtering, views |
| **Python**| EDA, time series, correlation analysis   |
| **Power BI** | Dashboards, DAX, drilldowns, KPIs    |

---

## 🎯 Objectives

- Analyze sales and profit across region, category, and time
- Identify loss-making products and discount impact
- Segment customers by revenue ranges
- Visualize performance trends through BI dashboards

---

##  SQL Analysis

Used Microsoft SQL Server Management Studio (SSMS) to:
- Clean & alter data types for currency fields
- Write aggregations and conditional queries
- Create **views** for reusability (e.g., `Profitability_by_Cities`)
- Calculate profit margins and delay in shipments

---

## Python Analysis (Jupyter Notebook)
Used Pandas and Matplotlib to:

Plot monthly sales trend by year using time series

Analyze correlation between Sales, Profit, Quantity, Discount

Key Visuals:

Line plot showing monthly sales over multiple years

---

##  Power BI Dashboard
An interactive, 3-page Power BI report with:

Drill-down matrix: Region → Category → Product

Revenue segmentation (DAX-based)

Top loss-making products

KPIs, filters, slicers, map visualizations

Dashboard Screenshots:

Page 1: Sales Overview

Page 2: Profit vs Discount + Customer Segmentation

Created a custom DAX table to group each customer by their total expenditure

Segmented customers into: "Low Revenue", "Medium Revenue", "High Revenue"

Page 3: Region-wise Drilldown + Loss Drivers

---

## Key Insights
High discounts reduce profits in several categories

Technology brings highest sales but not highest profit

Certain products consistently incur losses

Customer base is dominated by medium revenue clients

---

## Skills Demonstrated
SQL joins, grouping, filtering, CASE, HAVING, window functions

Python time series plotting and correlation

Power BI dashboarding, DAX formulas, slicers, bookmarks, drill-downs
