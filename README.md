# 📊 Customer Behavior & Sales Analytics

### Turning Customer Data into Business Insights with Python, SQL & Power BI 🚀

An end-to-end **Data Analytics project** focused on understanding customer purchasing behavior, product performance, discounts, subscriptions, shipping preferences, and revenue trends.

This project demonstrates the complete analytics workflow — from **raw data and exploratory analysis to SQL business analysis, visualization, Power BI dashboards, and actionable insights.**

---

## 🚀 Project at a Glance

| 🔍 Area              | 🛠️ Technology       |
| -------------------- | -------------------- |
| Data Analysis        | Python               |
| Data Cleaning        | Pandas               |
| Statistical Analysis | NumPy                |
| Visualization        | Matplotlib & Seaborn |
| SQL Analysis         | PostgreSQL           |
| Dashboard            | Power BI             |
| Data Source          | CSV / Excel          |
| Analysis Environment | Jupyter Notebook     |


---

## 🎯 What This Project Solves

The project answers real-world business questions around **customers, products, revenue, discounts, and subscriptions**.

### Key Questions

* 💰 Which customer gender generates more revenue?
* 🏷️ Do customers using discounts still make high-value purchases?
* ⭐ Which products receive the highest average ratings?
* 🚚 Does shipping type affect average purchase value?
* 💳 Do subscribers spend more than non-subscribers?
* 🛍️ Which products have the highest discount rates?
* 👥 How can customers be segmented based on previous purchases?
* 📦 What are the top products within each category?
* 🔄 Are repeat buyers more likely to subscribe?
* 📈 Which age groups contribute the most revenue?

---

# 🔄 End-to-End Analytics Workflow

```text
                ┌─────────────────┐
                │   Raw Dataset   │
                └────────┬────────┘
                         ↓
                ┌─────────────────┐
                │ Data Cleaning   │
                └────────┬────────┘
                         ↓
                ┌─────────────────┐
                │       EDA       │
                │ Python / Pandas │
                └────────┬────────┘
                         ↓
                ┌─────────────────┐
                │  SQL Analysis   │
                │   PostgreSQL    │
                └────────┬────────┘
                         ↓
                ┌─────────────────┐
                │  Visualization  │
                └────────┬────────┘
                         ↓
                ┌─────────────────┐
                │ Power BI        │
                │    Dashboard    │
                └────────┬────────┘
                         ↓
                ┌─────────────────┐
                │ Business        │
                │ Insights        │
                └─────────────────┘
```

---

# 🗂️ Dataset

The dataset contains customer and transaction-level information used to analyze purchasing behavior and business performance.

### Key Features

* 👤 Customer ID
* 👩 Gender
* 🎂 Age / Age Group
* 🛍️ Item Purchased
* 📂 Category
* 💰 Purchase Amount
* ⭐ Review Rating
* 🚚 Shipping Type
* 🏷️ Discount Applied
* 💳 Subscription Status
* 🔄 Previous Purchases

---

# 🐍 Python — Exploratory Data Analysis

Python is used for **data inspection, cleaning, transformation, statistical analysis, and visualization**.

### Initial Data Inspection

```python
import pandas as pd

df = pd.read_csv("dataset.csv")

print(df.head())
print(df.shape)
print(df.info())
```

### Data Quality Checks

```python
df.isnull().sum()
df.duplicated().sum()
df.describe()
```

### EDA Focus

📌 Customer demographics
📌 Purchase distribution
📌 Product performance
📌 Review ratings
📌 Discount behavior
📌 Subscription behavior
📌 Shipping preferences
📌 Customer purchase frequency
📌 Revenue by age group

---

# 🗄️ SQL Analysis — PostgreSQL

The project contains **10 business-oriented SQL queries** designed to answer practical analytical questions.

### 🔥 SQL Concepts Used

```text
✓ SELECT
✓ WHERE
✓ GROUP BY
✓ ORDER BY
✓ SUM()
✓ AVG()
✓ COUNT()
✓ CASE WHEN
✓ Subqueries
✓ CTEs
✓ Window Functions
✓ ROW_NUMBER()
✓ Customer Segmentation
✓ Business Analysis
```

### Example: Customer Segmentation

Customers are classified according to their previous purchases:

```sql
WITH customer_type AS (
    SELECT
        customer_id,
        previous_purchases,
        CASE
            WHEN previous_purchases = 1
                THEN 'New'
            WHEN previous_purchases BETWEEN 2 AND 10
                THEN 'Returning'
            ELSE 'Loyal'
        END AS customer_segment
    FROM customer
)

SELECT
    customer_segment,
    COUNT(*) AS "Number of customers"
FROM customer_type
GROUP BY customer_segment;
```

### Example: Top Products by Category

The project also uses a **window function** to identify the top 3 products within each category:

```sql
ROW_NUMBER() OVER (
    PARTITION BY category
    ORDER BY COUNT(customer_id) DESC
)
```

## The complete SQL analysis covers revenue, discounts, ratings, shipping, subscriptions, customer segmentation, product popularity, repeat buyers, and age-group revenue.

# 📊 Power BI Dashboard

The analysis is transformed into an interactive **Power BI dashboard** to make business insights easier to understand and communicate.

### Dashboard Analysis

**Customer Analytics**

* Total customers
* Customer segments
* Subscription status
* Repeat purchase behavior

**Sales Analytics**

* Total revenue
* Average purchase amount
* Revenue by gender
* Revenue by age group

**Product Analytics**

* Top-selling products
* Product ratings
* Category performance
* Discount usage

**Customer Engagement**

* Subscribers vs non-subscribers
* Repeat buyers
* Discount behavior
* Shipping preferences


# 💡 Business Insights

The project is designed to turn raw customer records into **business-focused insights**.

### 👥 Customer Behavior

Customer purchase history can be used to distinguish **new, returning, and loyal customers**.

### 💰 Revenue

Revenue can be compared across **gender and age groups** to understand differences in customer contribution.

### 🏷️ Discount Strategy

Discount usage can reveal which products and customer purchases are most associated with promotional offers.

### ⭐ Product Performance

Combining purchase frequency with review ratings provides multiple perspectives on product performance.

### 💳 Subscription Analysis

Comparing subscribers with non-subscribers helps evaluate customer spending and engagement patterns.

### 🚚 Shipping Analysis

Comparing Standard and Express shipping helps identify differences in purchasing behavior.



---

# 📁 Repository Structure

```text
📦 customer-behavior-analysis
│
├── 📂 data
│   └── customer_shopping_behavior (1).csv
│
├── 📂 notebooks
│   └── /Customer_Shopping_Behavior_Analysis_. (1) (1).ipynb
│
├── 📂 sql
│   └── customer_behavior.sql
├── 📂 powerbi
│   └── customer_behaviour.pbix

├── 📂 images
│   ├── powerbi-dashboard.png
│   ├── age_group_revenue_analysis.png
    ├── top_products_by_category.png
    ├── customer_shopping_behavior_dataset.png
    └── age_group_creation.png
│
└── 📄 README.md
```

---

# 🧰 Tech Stack

<div align="center">

### Languages & Analysis

![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge\&logo=python\&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-336791?style=for-the-badge\&logo=postgresql\&logoColor=white)

### Data & Visualization

![Pandas](https://img.shields.io/badge/Pandas-150458?style=for-the-badge\&logo=pandas\&logoColor=white)
![NumPy](https://img.shields.io/badge/NumPy-013243?style=for-the-badge\&logo=numpy\&logoColor=white)
![Matplotlib](https://img.shields.io/badge/Matplotlib-11557C?style=for-the-badge)
![Seaborn](https://img.shields.io/badge/Seaborn-4C72B0?style=for-the-badge)

### Database & BI

![PostgreSQL](https://img.shields.io/badge/PostgreSQL-4169E1?style=for-the-badge\&logo=postgresql\&logoColor=white)
![Power BI](https://img.shields.io/badge/Power_BI-F2C811?style=for-the-badge\&logo=powerbi\&logoColor=black)
![Excel](https://img.shields.io/badge/Excel-217346?style=for-the-badge\&logo=microsoftexcel\&logoColor=white)

</div>

---

# 📚 Skills Demonstrated

### Data Analytics

* Data Cleaning
* Exploratory Data Analysis
* Descriptive Statistics
* Data Transformation
* Business Analysis

### SQL

* Aggregations
* Subqueries
* CTEs
* CASE statements
* Window Functions
* Customer Segmentation

### Data Visualization

* Statistical Charts
* Business Charts
* Dashboard Design
* Interactive Reporting

### Business Intelligence

* KPI Analysis
* Customer Analytics
* Sales Analytics
* Product Analytics
* Revenue Analysis

---

# 🚀 Future Improvements

The project can be extended with:

* 🤖 Customer churn prediction
* 📈 Sales forecasting
* 🎯 RFM customer segmentation
* 💰 Customer Lifetime Value analysis
* 📊 Advanced Power BI DAX measures
* 🔄 Automated data refresh
* 🧠 Machine learning models
* ☁️ Cloud-based analytics pipeline

---

# 👩‍💻 Author

## **Shakshi Pandey**

**Data Analytics | Python | SQL | Power BI**

Passionate about turning data into **clear insights and practical business decisions.**

### 🔗 Connect With Me

**GitHub:** `https://github.com/shakshipandey22`

**LinkedIn:** `www.linkedin.com/in/shakshi-pandey-697425292`


<div align="center">

### ⭐ If you found this project useful, consider giving it a star!

**Data → Analysis → Insights → Decisions 📊**

</div>
