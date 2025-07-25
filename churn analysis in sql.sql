-- create database 
CREATE DATABASE db_churn;
USE db_churn;

-- create table
CREATE TABLE customer_churn(
Customer_ID	VARCHAR(50),
Gender VARCHAR(20),
Age	INT,
Married	VARCHAR(10),
State VARCHAR(50),	
Number_of_Referrals	INT,
Tenure_in_Months INT,	
Value_Deal	VARCHAR(25),
Phone_Service VARCHAR(25),	
Multiple_Lines	VARCHAR(25),
Internet_Service VARCHAR(25),
Internet_Type	VARCHAR(50),
Online_Security	VARCHAR(25),
Online_Backup	VARCHAR(25),
Device_Protection_Plan	VARCHAR(25),
Premium_Support	VARCHAR(25),
Streaming_TV	VARCHAR(25),
Streaming_Movies	VARCHAR(25),
Streaming_Music	VARCHAR(25),
Unlimited_Data	VARCHAR(25),
Contract	VARCHAR(50),
Paperless_Billing	VARCHAR(25),
Payment_Method	VARCHAR(100),
Monthly_Charge	FLOAT,
Total_Charges	FLOAT,
Total_Refunds	FLOAT,
Total_Extra_Data_Charges	FLOAT,
Total_Long_Distance_Charges	FLOAT,
Total_Revenue	FLOAT,
Customer_Status	VARCHAR(50),
Churn_Category	VARCHAR(100),
Churn_Reason VARCHAR(200)
);

-- check data 
SELECT * FROM customer_churn;

-- Percentage of each gender in the total customer base
SELECT Gender, 
COUNT(Gender) AS total_count,
CONCAT(ROUND(COUNT(Gender)*100 / (SELECT COUNT(*) FROM customer_churn),2),'%') AS percentage
FROM customer_churn
GROUP BY Gender;

-- Percentage of each contract in the total customer base
SELECT Contract,
COUNT(Contract) AS total_count,
CONCAT(ROUND(COUNT(Contract)*100 / (SELECT COUNT(*) FROM customer_churn),2),'%') AS percentage
FROM customer_churn
GROUP BY Contract;

-- Count the number of customers in each Customer_Status group (total_count), Calculate the total revenue generated by each group (total_revenue)

-- Compute the percentage share of each group's revenue out of the overall revenue (revenue_percentage)

-- Sort the output in descending order based on total revenue
SELECT Customer_Status,
COUNT(Customer_Status) AS total_count,
ROUND(SUM(Total_Revenue),2) AS total_revenue,
CONCAT(ROUND(SUM(Total_Revenue)*100 / (SELECT SUM(Total_Revenue) FROM customer_churn),2),'%') AS revenue_percentage
FROM customer_churn
GROUP BY Customer_Status
ORDER BY total_revenue DESC;

-- This query analyzes the distribution of customers across different states.
-- 1. Total number of customers in each state
-- 2. Percentage share of each state's customer count out of the total
-- Results are sorted in descending order of percentage
SELECT State,
COUNT(State) AS total_count,
CONCAT(ROUND(COUNT(State)*100 / (SELECT COUNT(*) FROM customer_churn),2),'%') AS percentage
FROM customer_churn
GROUP BY State
ORDER BY percentage DESC;

-- internet types
SELECT DISTINCT Internet_Type
FROM customer_churn
WHERE Internet_Type IS NOT NULL;

-- explore and clean data 

-- check empty and put null values
SELECT COUNT(*)
FROM customer_churn
WHERE Customer_ID = '';

SELECT COUNT(*)
FROM customer_churn
WHERE Gender = '';

SELECT COUNT(*)
FROM customer_churn
WHERE Age = '';

SELECT COUNT(*)
FROM customer_churn
WHERE Married = '';

SELECT COUNT(*)
FROM customer_churn
WHERE State = '';

SELECT COUNT(*)
FROM customer_churn
WHERE Number_of_Referrals = '';

-- before update any thing so you need to safe mode on/off
SET SQL_SAFE_UPDATES=0;

UPDATE customer_churn
SET Number_of_Referrals=NULL
WHERE Number_of_Referrals = ''; 


SELECT COUNT(*)
FROM customer_churn
WHERE Tenure_in_Months = '';

SELECT COUNT(*)
FROM customer_churn
WHERE Value_Deal = '';

UPDATE customer_churn
SET Value_Deal = NULL
WHERE Value_Deal = '';


SELECT COUNT(*)
FROM customer_churn
WHERE Phone_Service = '';

SELECT COUNT(*)
FROM customer_churn
WHERE Multiple_Lines = '';

UPDATE customer_churn
SET Multiple_Lines = NULL
WHERE Multiple_Lines = '';

SELECT COUNT(*)
FROM customer_churn
WHERE Internet_Service = '';

SELECT COUNT(*)
FROM customer_churn
WHERE Internet_Type = '';

UPDATE customer_churn
SET Internet_Type = NULL
WHERE Internet_Type = '';

SELECT COUNT(*)
FROM customer_churn
WHERE Online_Security = '';

UPDATE customer_churn
SET Online_Security = NULL
WHERE Online_Security = '';

SELECT COUNT(*)
FROM customer_churn
WHERE Online_Backup = '';

UPDATE customer_churn
SET Online_Backup = NULL
WHERE Online_Backup = '';

SELECT COUNT(*)
FROM customer_churn
WHERE Device_Protection_Plan = '';

UPDATE customer_churn
SET Device_Protection_Plan = NULL
WHERE Device_Protection_Plan = '';

SELECT COUNT(*)
FROM customer_churn
WHERE Premium_Support = '';

UPDATE customer_churn
SET Premium_Support = NULL
WHERE Premium_Support = '';

SELECT COUNT(*)
FROM customer_churn
WHERE Streaming_TV= '';

UPDATE customer_churn
SET Streaming_TV = NULL
WHERE Streaming_TV= '';

SELECT COUNT(*)
FROM customer_churn
WHERE Streaming_Movies = '';

UPDATE customer_churn
SET Streaming_Movies = NULL
WHERE Streaming_Movies = '';

SELECT COUNT(*)
FROM customer_churn
WHERE Streaming_Music = '';

UPDATE customer_churn
SET Streaming_Music = NULL
WHERE Streaming_Music = '';

SELECT COUNT(*)
FROM customer_churn
WHERE Unlimited_Data = '';

UPDATE customer_churn
SET Unlimited_Data  = NULL
WHERE Unlimited_Data = '';

SELECT COUNT(*)
FROM customer_churn
WHERE Contract = '';

SELECT COUNT(*)
FROM customer_churn
WHERE Paperless_Billing = '';

SELECT COUNT(*)
FROM customer_churn
WHERE Payment_Method = '';

SELECT COUNT(*)
FROM customer_churn
WHERE Monthly_Charge = '';

SELECT COUNT(*)
FROM customer_churn
WHERE Total_Charges = '';

SELECT COUNT(*)
FROM customer_churn
WHERE Total_Refunds = '';

UPDATE customer_churn
SET Total_Refunds = NULL
WHERE Total_Refunds = '';


SELECT COUNT(*)
FROM customer_churn
WHERE Total_Extra_Data_Charges = '';

UPDATE customer_churn
SET Total_Extra_Data_Charges = NULL
WHERE Total_Extra_Data_Charges = '';

SELECT COUNT(*)
FROM customer_churn
WHERE Total_Long_Distance_Charges = '';

UPDATE customer_churn
SET Total_Long_Distance_Charges = NULL
WHERE Total_Long_Distance_Charges = '';


SELECT COUNT(*)
FROM customer_churn
WHERE Total_Revenue = '';

SELECT COUNT(*)
FROM customer_churn
WHERE Customer_Status = '';

SELECT COUNT(*)
FROM customer_churn
WHERE Churn_Category = '';

UPDATE customer_churn
SET Churn_Category = NULL
WHERE Churn_Category = '';

SELECT COUNT(*)
FROM customer_churn
WHERE Churn_Reason = '';

UPDATE customer_churn
SET Churn_Reason = NULL
WHERE Churn_Reason = '';

-- checking null values in dataset
SELECT
SUM(CASE WHEN Customer_ID IS NULL THEN 1 ELSE 0 END) AS customer_null_count,
SUM(CASE WHEN Gender IS NULL THEN 1 ELSE 0 END) AS gender_null_count,
SUM(CASE WHEN Age IS NULL THEN 1 ELSE 0 END) AS age_null_count,
SUM(CASE WHEN Married IS NULL THEN 1 ELSE 0 END) AS married_null_count,
SUM(CASE WHEN State IS NULL THEN 1 ELSE 0 END) AS married_null_count,
SUM(CASE WHEN Number_of_Referrals IS NULL THEN 1 ELSE 0 END) AS referrals_null_count,
SUM(CASE WHEN Tenure_in_Months IS NULL THEN 1 ELSE 0 END) AS tenure_null_count,
SUM(CASE WHEN Value_Deal IS NULL THEN 1 ELSE 0 END) AS deal_null_count,
SUM(CASE WHEN Phone_Service IS NULL THEN 1 ELSE 0 END) AS phone_null_count,
SUM(CASE WHEN Multiple_Lines IS NULL THEN 1 ELSE 0 END) AS lines_null_count,
SUM(CASE WHEN Internet_Service IS NULL THEN 1 ELSE 0 END) AS internet_null_count,
SUM(CASE WHEN Internet_Type IS NULL THEN 1 ELSE 0 END) AS internet_type_null_count,
SUM(CASE WHEN Online_Security IS NULL THEN 1 ELSE 0 END) AS online_null_count,
SUM(CASE WHEN Online_Backup IS NULL THEN 1 ELSE 0 END) AS backup_null_count,
SUM(CASE WHEN Device_Protection_Plan IS NULL THEN 1 ELSE 0 END) AS device_null_count,
SUM(CASE WHEN Premium_Support IS NULL THEN 1 ELSE 0 END) AS support_null_count,
SUM(CASE WHEN Streaming_Movies IS NULL THEN 1 ELSE 0 END) AS movies_null_count,
SUM(CASE WHEN Streaming_Music IS NULL THEN 1 ELSE 0 END) AS music_null_count,
SUM(CASE WHEN Unlimited_Data IS NULL THEN 1 ELSE 0 END) AS data_null_count,
SUM(CASE WHEN Contract IS NULL THEN 1 ELSE 0 END) AS contract_null_count,
SUM(CASE WHEN Paperless_Billing IS NULL THEN 1 ELSE 0 END) AS paper_null_count,
SUM(CASE WHEN Payment_Method IS NULL THEN 1 ELSE 0 END) AS method_null_count,
SUM(CASE WHEN Monthly_Charge IS NULL THEN 1 ELSE 0 END) AS monthly_null_count,
SUM(CASE WHEN Total_Charges IS NULL THEN 1 ELSE 0 END) AS charge_null_count,
SUM(CASE WHEN Total_Refunds IS NULL THEN 1 ELSE 0 END) AS refunds_null_count,
SUM(CASE WHEN Total_Extra_Data_Charges IS NULL THEN 1 ELSE 0 END) AS data_charge_null_count,
SUM(CASE WHEN Total_Long_Distance_Charges IS NULL THEN 1 ELSE 0 END) AS distance_charge_null_count,
SUM(CASE WHEN Total_Revenue IS NULL THEN 1 ELSE 0 END) AS revenue_null_count,
SUM(CASE WHEN Customer_Status IS NULL THEN 1 ELSE 0 END) AS status_null_count,
SUM(CASE WHEN Churn_Category IS NULL THEN 1 ELSE 0 END) AS category_null_count,
SUM(CASE WHEN Churn_Reason IS NULL THEN 1 ELSE 0 END) AS reason_null_count
FROM customer_churn;

-- replace null into no values
-- only for variables column
UPDATE customer_churn SET 
  Gender = IFNULL(Gender, 'No'),
  Married = IFNULL(Married, 'No'),
  State = IFNULL(State, 'No'),
  Value_Deal = IFNULL(Value_Deal, 'No'),
  Phone_Service = IFNULL(Phone_Service, 'No'),
  Multiple_Lines = IFNULL(Multiple_Lines, 'No'),
  Internet_Service = IFNULL(Internet_Service, 'No'),
  Internet_Type = IFNULL(Internet_Type, 'No'),
  Online_Security = IFNULL(Online_Security, 'No'),
  Online_Backup = IFNULL(Online_Backup, 'No'),
  Device_Protection_Plan = IFNULL(Device_Protection_Plan, 'No'),
  Premium_Support = IFNULL(Premium_Support, 'No'),
  Streaming_TV = IFNULL(Streaming_TV, 'No'),
  Streaming_Movies = IFNULL(Streaming_Movies, 'No'),
  Streaming_Music = IFNULL(Streaming_Music, 'No'),
  Unlimited_Data = IFNULL(Unlimited_Data, 'No'),
  Contract = IFNULL(Contract, 'No'),
  Paperless_Billing = IFNULL(Paperless_Billing, 'No'),
  Payment_Method = IFNULL(Payment_Method, 'No'),
  Customer_Status = IFNULL(Customer_Status, 'No'),
  Churn_Category = IFNULL(Churn_Category, 'No'),
  Churn_Reason = IFNULL(Churn_Reason, 'No');
  
  -- for int
     
UPDATE customer_churn SET 
  Age = IFNULL(Age, 0),
  Number_of_Referrals = IFNULL(Number_of_Referrals, 0),
  Tenure_in_Months = IFNULL(Tenure_in_Months, 0),
  Monthly_Charge = IFNULL(Monthly_Charge, 0),
  Total_Charges = IFNULL(Total_Charges, 0),
  Total_Refunds = IFNULL(Total_Refunds, 0),
  Total_Extra_Data_Charges = IFNULL(Total_Extra_Data_Charges, 0),
  Total_Long_Distance_Charges = IFNULL(Total_Long_Distance_Charges, 0),
  Total_Revenue = IFNULL(Total_Revenue, 0);

-- EDA and ETL boths are done in sql