# Business Intelligence & Sales Dashboard Project

## Overview
An end-to-end Business Intelligence project built to monitor and evaluate company-wide sales and shipping performance for executive decision-making. The workflow covers the full BI pipeline: extracting and querying data with **SQL**, validating and structuring data in **Excel**, and visualizing key business metrics through an interactive **dashboard**.

This project goes beyond chart-building — it translates raw transactional data into actionable business insight, covering sales performance, product contribution, employee productivity, and logistics efficiency.

## Business Objective
Management needs a single, reliable view to answer:
- How is overall sales performance trending throughout the year?
- Which products and employees are driving the most revenue?
- Which shipping partner offers the best balance of cost, speed, and reliability?
- Which markets contribute the most to company growth?

## Tools & Workflow
- Microsoft PowerBI

## Folder Contents
- `dataset.xlsx` — raw dataset (Excel)
- `queries` — SQL scripts used for data extraction & transformation
- `dashboard.pdf` — final dashboard

## Key Insights

**Overall Performance**
The dashboard summarizes overall sales performance, with **Total Net Sales reaching $1.27 Million** from a total of **2,155K orders**.

**Performance Trend**
Sales show a clear seasonal pattern, peaking in **September and October** — a key signal for planning inventory and marketing campaigns ahead of the high season.

**Key Drivers**
- **Beverages** is the largest contributing product category to overall sales.
- **Margaret Peacock** is the top-performing employee, leading in both order volume and total sales.

**Logistics (Shipper) Performance**
| Shipper | Order Volume | Avg. Delivery Time | Shipping Cost | Notes |
|---|---|---|---|---|
| United Package | Highest | 9 days (longest) | ≈ $28K (highest) | High volume, but least efficient |
| Federal Shipping | Moderate | 7.5 days (fastest) | ≈ $21K | Best balance of speed & cost |
| Speedy Express | — | Highest delay rate | ≈ $16K (lowest) | Most cost-efficient, but least reliable |

**Country Performance**
The **USA and Germany** dominate both in total sales and order count, making them the company's primary revenue markets.

## 💡 Business Recommendations
- Leverage the September–October seasonal peak for proactive stock and campaign planning.
- Continue prioritizing Beverages as a core revenue driver while assessing growth potential in other categories.
- Recognize and replicate Margaret Peacock's performance drivers across the sales team.
- Re-evaluate shipper allocation strategy: use **Federal Shipping** for time-sensitive orders, and **Speedy Express** for cost-sensitive, non-urgent shipments, while reviewing **United Package**'s cost-to-performance ratio.
