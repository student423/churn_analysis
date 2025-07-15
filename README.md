# 📊 Customer Churn Analysis Dashboard (SQL • Python • Power BI)

This project analyzes customer churn patterns to help businesses identify why customers are leaving and how to retain them. 
The analysis uncovers deep insights into demographics, payment behavior, contract types, and service usage that influence churn.
machine learning classification,
A clean and professional Power BI dashboard showcases these insights with clear KPIs and visual storytelling.

---

## 🧠 Project Objective

The objective of this project is to analyze telecom customer churn using a combination of **SQL**, **Power BI**, and **Python**.  
The aim is to identify key reasons for churn, build a machine learning model to predict churn behavior, and generate actionable insights to reduce future churn.

---

## 🛠️ Tools & Technologies Used

| Tool/Technology         | Purpose                                           |
|-------------------------|---------------------------------------------------|
| **MySQL (SQL)**         | Data Cleaning, Transformation, Filtering          |
| **Power BI**            | Dashboarding, Data Visualization, DAX             |
| **Python (Pandas, Sklearn)** | Machine Learning (Random Forest), Preprocessing |
| **Excel/CSV**           | File Conversion, SQL-to-Power BI Bridge           |

---

## 🔄 End-to-End Workflow

### ✅ 1. SQL Phase – Data Cleaning & Preparation

- Loaded raw churn dataset into **MySQL**
- Cleaned missing or inconsistent values:
  - Replaced nulls in categorical columns with `'No'`
  - Replaced nulls in numeric columns with `0`
- Fixed data types (e.g., `Contract`, `TotalCharges`, `SeniorCitizen`)
- Created feature columns for grouping (like tenure bins, age group)
- Exported cleaned dataset to **Excel (.xlsx)** → converted to **CSV** for Python ML
- Also connected this cleaned dataset directly to Power BI

---

### ✅ 2. Python Phase – Machine Learning

- Loaded clean CSV file for model training
- Encoded categorical variables using `LabelEncoder`
- Target Variable: `Customer_Status` → Binary classification (`Stayed` or `Churned`)
- Built & trained a **Random Forest Classifier**
- Model trained on 80/20 train-test split
- Evaluated with Confusion Matrix, Classification Report, Accuracy
- Exported prediction output to CSV (but **no forecasting or deployment**)

#### 📈 Model Performance:

| Metric         | Value         |
|----------------|---------------|
| Accuracy       | ~85%          |
| Precision      | 82% (churn class) |
| Recall         | 64% (churn class) |
| F1-Score       | 72%           |
| Model Used     | `RandomForestClassifier` |

---

### ✅ 3. Power BI Phase – Dashboard Development

- Connected **SQL-cleaned dataset** directly into Power BI
- Created an **interactive and professional dashboard**
- Implemented filters/slicers:
  - `Monthly Charges`, `Married`, `Gender`
- Designed clean layout with corporate color scheme:
  - Dark Navy `#1F2A44` + Pink `#E91E63`

#### 📊 Dashboard KPIs and Visuals:

- 🔢 **Total Customers**, **New Joiners**, **Total Churn**, **Churn Rate**
- 📍 Churn Rate by:
  - State (Top-5)
  - Contract Type
  - Payment Method
  - Internet Type
- 📈 Combined bar-line plots for:
  - Churn vs Age Group
  - Churn vs Tenure Group
- 🧠 Service Influence:
  - Who has OnlineSecurity/TechSupport vs who churned
- 📉 Churn by Category:
  - Competitor, Attitude, Dissatisfaction, Price

---

## 📌 Key Business Insights

- 🔁 **Month-to-Month contracts** show highest churn rate (46.5%)
- 📡 **Fiber Optic** internet users have highest churn (41.1%)
- 👴 Senior customers (65+) churn more (39.8%)
- 📄 Customers without OnlineSecurity, TechSupport, and DeviceProtection churn significantly
- 🧾 Most churn comes from **Competitor switching** and **Service dissatisfaction**

---

## 🖼️ Dashboard Snapshots

### 🔷 Executive Dashboard View  
![Customer Churn Dashboard](./customer%20churn-dashboard.jpg)

---

## 📣 Conclusion

This project showcases **end-to-end data analysis** — from SQL cleaning to Python-based churn analysis and finally, 
professional dashboarding in Power BI. It’s designed to support **business decision-making** by
identifying customer segments at high churn risk and areas for service improvement.

---

