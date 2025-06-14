# Logistics Data Analysis with SQL

## Objective
This project aims to analyze shipment delivery patterns based on customer behavior, shipping methods, product characteristics, and warehouse operations. The goal is to identify key factors influencing **on-time vs. delayed deliveries** and recommend optimizations to improve supply chain efficiency.

---

## Key Insights

### 1. Late Delivery Rate
- **38.2%** of all shipments were delivered late — a major performance issue that requires deeper root cause analysis.

### 2. Shipment Mode vs. Delivery Performance
- **Ship mode** had the highest late delivery rate (~50%).
- **Flight mode** was the most reliable.
- **Action**: Use flight mode for time-sensitive products; evaluate cost trade-offs for reducing reliance on ship mode.

### 3. Warehouse Block Efficiency
- **Block B** performed best; **Block D** had the worst on-time rate.
- **Recommendation**: Audit Block D’s processes, staffing, and geographic constraints.

### 4. Customer Care Calls & Delivery Delays
- Fewer calls (0–1) correlated with better delivery.
- More calls indicated ongoing issues, reflecting service breakdowns rather than causing them.

### 5. Product Importance & Timeliness
- Surprisingly, **low-importance** products were delivered on time more often than **high-importance** items.
- **Action**: Review how priority is assigned in the dispatch process.

### 6. Cost vs. Delivery Time
- Product cost had **no major impact** on delivery timeliness.

### 7. Discounts vs. Delivery Performance
- Shipments with **>50% discount** had more delays.
- **Action**: Plan logistics buffers for high-discount sales to maintain service levels.

### 8. Weight & Timeliness
- Heavier shipments had **higher delay rates**, especially in surface transport.
- **Recommendation**: Prioritize weight-aware shipment planning.

### 9. Customer Loyalty & Delivery
- **Repeat customers** received better on-time delivery service.
- **Action**: Formalize loyalty-based priority handling.

---

## Tech Stack

- **Language**: SQL (MySQL)
- **Tools**: Google BigQuery / VS Code
- **Data Source**: [Kaggle - Supply Chain Dataset](https://www.kaggle.com/datasets/prachi13/customer-analytics)


