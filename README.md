# 🍕 Pizza Sales Performance & Revenue Analytics

![Excel](https://img.shields.io/badge/Microsoft_Excel-Pivot_Tables_&_Dashboard-217346?style=for-the-badge&logo=microsoft-excel&logoColor=white)
![SQL Server](https://img.shields.io/badge/SQL_Server-T--SQL_Queries-CC292B?style=for-the-badge&logo=microsoft-sql-server&logoColor=white)
![Status](https://img.shields.io/badge/Status-Completed-2ea44f?style=for-the-badge)

---

## 📌 Project Overview
This project presents an end-to-end data analytics workflow on a restaurant sales dataset containing **21,350 customer transactions**. By combining **Microsoft Excel** for data cleaning/visualization and **SQL Server** for backend querying, the goal is to evaluate operational performance, identify peak ordering patterns, and analyze menu item profitability. 

The final outcome is an interactive Excel dashboard with dynamic slicers alongside an executive report delivering actionable recommendations to optimize staffing, streamline the menu, and increase overall revenue.

---

## 📂 Dataset Overview
- **Total Records:** 48,621 rows
- **Total Fields:** 13 columns
- **Key Dimensions & Metrics:**
  - `order_id`, `pizza_id`, `pizza_name_id`, `pizza_name`
  - `order_date`, `order_day`, `order_time`
  - `quantity`, `unit_price`, `total_price`
  - `pizza_size` (`S`, `M`, `L`, `XL`, `XXL`)
  - `pizza_category` (`Classic`, `Supreme`, `Veggie`, `Chicken`)
  - `pizza_ingredients`
- **Data Quality:** 0 missing values detected across all fields (`COUNTBLANK` validation).

---

## 🛠️ Tools & Technologies
- **Microsoft Excel:** Data ingestion, exploratory data analysis (EDA), data cleaning, feature engineering, Pivot Tables, dynamic charts, timeline slicers, and interactive dashboard UI.
- **Microsoft SQL Server (T-SQL):** Relational schema setup, data modeling, aggregation queries, and KPI calculations.
- **Documentation & Reporting:** Executive analytical report compiling actionable business recommendations.

---

## 🔄 Project Steps & Execution


```

[Raw CSV Dataset]
│
▼
[Excel: EDA, Data Cleaning & Feature Engineering]
│
▼
[SQL Server: Schema Design, KPI Aggregations & Querying]
│
▼
[Excel Dashboard: Pivot Tables, Charts & Timeline Slicers]
│
▼
[Executive Report & Business Recommendations]

```

### 1. Data Ingestion & Cleaning in Excel
- Converted raw CSV data into an Excel Structured Table (`Ctrl + T`).
- Validated complete records with `=COUNTBLANK()`.
- **Feature Engineering:** Calculated non-duplicate order volume using the formula:
  ```excel
  = 1 / COUNTIF(B:B, [@[order_id]])


### 2. SQL Server Analysis & KPI Verification

Imported cleaned records into SQL Server to extract and validate business metrics:

* **Core KPIs:** Total Revenue, Total Orders, Total Pizzas Sold, Average Order Value (AOV), and Average Pizzas per Order.


* **Time Trend Analysis:** Daily and hourly transaction volume to isolate operational peaks.


* **Product & Category Performance:** Contribution share (%) by category and size, as well as Top 5 Best Sellers vs. Bottom 5 Worst Sellers.



### 3. Interactive Excel Dashboard Construction

* Configured dynamic Pivot Tables and connected Pivot Charts.


* Designed a synchronized dashboard interface featuring KPI summary cards, distribution donut/pie charts, bar rankings, and an interactive **Timeline Slicer** (`order_date`).



### 4. Reporting & Strategic Recommendations

* Compiled an analytical summary outlining 5 data-driven strategies for inventory management, staffing, and revenue growth.



---

## 📊 Dashboard Preview & Core KPIs

### Summary Scorecard:

| Metric | Value |
| --- | --- |
| **Total Revenue** | **$881,654.30**<br> |
| **Total Orders** | **21,350**<br> |
| **Total Pizzas Sold** | **49,574**<br> |
| **Average Order Value (AOV)** | **$41.30**<br> |
| **Avg Pizzas Per Order** | **2.32**<br> |
<img width="1538" height="860" alt="image" src="https://github.com/user-attachments/assets/61b11af8-5b6d-4518-ad4c-c7d1c4aeec3f" />

---

## 💡 Key Results & Insights

### 1. Peak Demand Windows

* **Peak Days:** Friday is the busiest day (**3,538 orders**), followed by Thursday (**3,239 orders**) and Saturday (**3,158 orders**).


* **Peak Hours:** Two distinct surges occur daily at lunch (**12:00 PM – 1:00 PM: ~2,500 orders/hr**) and dinner (**5:00 PM – 7:00 PM: ~2,300–2,400 orders/hr**).



### 2. Category & Size Contribution

* **Top Category:** `Classic` dominates with **32.19%** of revenue ($283,847.35) and **14,888** pizzas sold.


* **Size Distribution:** Size **L** generates the highest revenue share (**42.57%** / $375,318.70), followed by Size **M** (**28.29%**) and Size **S** (**27.43%**). Sizes **XL** and **XXL** combined contribute **< 2%**.



### 3. Best vs. Worst Sellers

* **Top 5 Best Sellers (by volume):** *The Classic Deluxe* (2,453), *The Barbecue Chicken* (2,432), *The Hawaiian* (2,422), *The Pepperoni* (2,418), and *The Thai Chicken* (2,371).


* **Bottom 5 Worst Sellers (by volume):** *The Brie Carre* (490), *The Mediterranean* (934), *The Calabrese* (937), *The Spinach Supreme* (950), and *The Soppressata* (961).



---

## 🎯 Business Recommendations

1. **Optimize Staffing for Peak Windows:** Reallocate kitchen and delivery shift schedules to cover peak lunch (12–1 PM) and dinner (5–7 PM) spikes, specifically on Thursday through Saturday.


2. **Drive Off-Peak Demand:** Launch mid-day "Happy Hour" promotions (2:00 PM – 4:00 PM) and early-week bundle offers (Monday & Sunday) to utilize idle restaurant capacity.


3. **Rationalize Size Offerings:** Focus upselling campaigns toward Size L. Consider removing XL and XXL sizes (under 2% combined sales) to decrease specialized box and inventory overhead.


4. **Revamp Low-Performing Menu Items:** Promote top-selling pizzas in high-margin combo deals. Re-evaluate or phase out underperforming recipes (e.g., *The Brie Carre*) to avoid raw ingredient spoilage.


5. **Increase Average Order Value (AOV):** Bundle pizzas with sides/drinks or introduce free delivery for orders above $45–$50 to lift the current $41.30 AOV baseline.



---

## 🚀 How to Run

### Prerequisites

* Microsoft Excel 2016 or newer (with Power Pivot / Slicer support)
* Microsoft SQL Server & SQL Server Management Studio (SSMS)

### Step-by-Step Guide

1. **Clone the Repository:**
```bash
git clone [https://github.com/](https://github.com/)<your-username>/pizza-sales-analysis.git
cd pizza-sales-analysis

```


2. **Execute SQL Scripts:**
* Open SSMS and connect to your SQL Server instance.
* Run `sql/schema_and_import.sql` to generate database tables.
* Execute `sql/kpi_queries.sql` to replicate data aggregations.




3. **Open the Excel Dashboard:**
* Launch `excel/Pizza_Sales_Dashboard.xlsx`.
* Interact with the **Timeline Slicer** and category filters to explore the data dynamically.




4. **Review the Final Report:**
* Open `docs/Pizza_Sales_Analysis_Report.pdf` for the complete analytical summary.





---

## 📁 Repository Structure

```
├── assets/
│   └── dashboard_preview.png        # Screenshot of the Excel dashboard
├── data/
│   ├── raw_pizza_sales.csv          # Original transaction dataset
│   └── cleaned_pizza_sales.xlsx     # Cleaned data with engineered features
├── sql/
│   ├── schema_and_import.sql        # Table creation & data loading scripts
│   └── kpi_queries.sql              # Analytical queries for KPIs & trends
├── excel/
│   └── Pizza_Sales_Dashboard.xlsx   # Main Excel workbook with interactive dashboard
├── docs/
│   └── Pizza_Sales_Analysis_Report.pdf # Executive summary report
└── README.md

```

---

## 👤 Author & Contact

* **Name:** Thu Phuong
* **LinkedIn:** [Phuong Vo](https://www.linkedin.com/in/phuong-vo-ba928b222/)
* **GitHub:** [TPA-Analyst](https://github.com/TPA-Analyst)
* **Email:** tphuongmwork@gmail.com
