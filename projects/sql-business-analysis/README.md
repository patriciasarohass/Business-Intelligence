# SQL Advanced Optimization Project

## Overview
An advanced SQL project focused on solving real business problems through structured query design and performance-driven analysis. The project simulates an executive year-to-date (YTD) business review for **PT X**, covering monthly sales momentum, shipping quality, product contribution, sales rep performance, and customer segmentation — all derived directly from relational data using optimized SQL queries.

## Business Context
Management at PT X needs an executive YTD brief to close the quarter with the right strategy. This requires visibility into monthly sales momentum, shipping/SLA quality, top revenue-contributing products, sales rep performance, and the balance between new and loyal customers — insights that directly inform marketing and retention decisions.

## Database Structure
An **Entity-Relationship Diagram (ERD)** was built to map the relationships between core tables (`orders`, `order_details`, `products`, `categories`, `employees`, `shippers`) before query development — ensuring accurate joins and reliable aggregation logic.

## Analysis Breakdown (T1–T5)

| Task | Business Question | Tables Used |
|---|---|---|
| **T1 — Monthly Performance** | Track monthly order count, total revenue, and average order value (2025) | `orders`, `order_details` |
| **T2 — Shipper SLA (YTD)** | Evaluate courier reliability via shipped orders, late orders, and late rate % | `orders`, `shippers` |
| **T3 — Top 10 Products by Revenue (YTD)** | Identify top revenue-contributing products by category and price range | `orders`, `order_details`, `products`, `categories` |
| **T4 — Sales Rep Scorecard (YTD)** | Summarize order count, average order value, and % of large orders per employee | `orders`, `order_details`, `employees` |
| **T5 — New vs Loyal Customers (YTD)** | Segment orders into New vs Loyal customers to assess acquisition vs retention | `orders`, `order_details` |

Each task was solved using optimized SQL queries (joins, aggregations, conditional logic, and window functions where applicable), validated, and exported as query results for executive reporting.

## Tools & Skills
- SQL (joins, aggregation, CASE logic, performance-aware query design)
- ER Diagram design for relational data mapping

## Folder Contents
- `ER Diagram.png` — Entity-Relationship Diagram
- `queries` — all T1–T5 SQL queries (.sql)
- `results/` — query outputs (T1_monthly.csv, T2_sla.csv, T3_top_products.csv, T4_sales_rep.csv, T5_segments.csv)
- `executive_brief.pptx` — presentation slide containing query result visuals and business insights per task

## Key Takeaway
This project demonstrates the ability to translate a business problem into structured SQL logic — not just writing queries, but designing them around a clear business narrative, validating relationships through an ERD, and communicating results in an executive-ready format.
