# Branch Performance Analytics (SQL Project)

## Overview
This project analyzes branch-level performance using SQL by comparing actual revenue against targets.

It is inspired by my experience working with branch-level tracking and trying to understand which branches are performing well and which need attention.

---

## What I wanted to understand
- Which branches are consistently underperforming?
- Which ones are strong but not stable?
- Are any branches getting worse over time?

---

## Dataset
I created a simple dataset with:
- 6 branches
- 3 months of revenue data
- actual vs target values

Tables used:
- branches
- monthly_revenue

---

## What I did

- Calculated variance (actual - target)
- Joined tables to get branch-level insights
- Aggregated data to evaluate total performance
- Ranked branches based on performance
- Added flags to classify branches
- Identified patterns like consistent underperformance and instability

---

## Key Observations

- Bangalore South is the worst-performing branch with consistent negative variance
- Hyderabad shows a declining trend over time
- Mumbai Central and Bangalore North are strong overall but not consistent
- Some branches are unstable and need monitoring

---

## Tools Used
- PostgreSQL
- SQL (Joins, Aggregations, Window Functions)

---

## Project Structure

- schema.sql → table creation  
- data.sql → data insertion  
- analysis.sql → queries used  

---

## Final Thought
This project helped me understand how SQL can be used not just for querying data, but for analyzing performance and identifying business patterns.