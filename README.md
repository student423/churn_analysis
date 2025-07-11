# 💼 Churn Analysis Project (SQL + Power BI + Python)

## 📌 Project Overview

This is a real-world, end-to-end **Churn Analysis Project** that demonstrates strong **data analysis and prediction** 
capabilities using a combination of **SQL**, **Power BI**, **Excel**, and **Python (Random Forest)**. 
It aims to uncover patterns behind customer churn and forecast which customers are likely to churn in the future.

---

## 🧰 Tools Used

- 🗃️ **SQL (MySQL)** – Data cleaning, transformation, filtering  
- 📊 **Power BI** – Interactive dashboards and churn insight visualization  
- 📁 **Excel** – Data movement between tools  
- 🐍 **Python (scikit-learn)** – Machine learning with Random Forest  
- 📈 **DAX** – Custom calculations and KPIs for advanced visuals  

---

## 📂 Workflow Summary

### 🔹 1. Data Cleaning & Preparation (SQL)

- Imported raw churn data into **MySQL**
- Cleaned missing/blank values (e.g., replaced blank cells with `"No"`)
- Performed EDA and transformations (e.g., removed unnecessary columns)
- Exported clean SQL data to **Power BI**, then used it for Python

---

### 🔹 2. Dashboard Creation (Power BI)

- Connected Sql-cleaned data to **Power BI**
- Built a powerful **Churn Analysis Summary Dashboard**
- Added reference tables for slicers like **Tenure**, **Age**, **Gender**
- Used **DAX** to calculate churn rate, segment groups, and KPIs

#### 🧠 Key Insights:

- **Fiber Optic** internet users have a high churn rate: 41.1%
- **Month-to-Month** contracts lead to highest churn (46.5%)
- Highest churn rate is found among **Age > 65** group (39.8%)
- **Jammu & Kashmir** shows the highest churn rate by region (57.2%)
- Payment by **Mailed Check** churns more than Credit Card

---

### 🔹 3. Predictive Modeling (Python)

- Loaded clean data from Excel into **Google Colab**
- Label Encoded categorical features (like Gender, Internet Type)
- Dropped unnecessary fields (like `Customer_ID`, `Churn_Category`)
- Built a **RandomForestClassifier** model:
  - Achieved ~85% accuracy
  - Evaluated with confusion matrix and classification report
- Visualized **feature importance** using bar plot


---

## 📸 Dashboard Snapshot

<img src="churn_analysis _dashboard.jpg" alt="Churn Dashboard Snapshot" width="100%">

---

## 📁 Project Structure

```bash
Churn_Analysis_Project/
├── SQL_Cleaning/
│   └── cleaning_queries.sql
├── PowerBI_Dashboard/
│   └── churn_dashboard.pbix
├── Python_Model/
│   └── churn_random_forest.ipynb
├── Data/
│   ├── churn_cleaned.xlsx
│   ├── churn_predictions.csv
├── churn_analysis _dashboard.jpg
└── README.md
