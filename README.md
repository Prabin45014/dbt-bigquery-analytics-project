Welcome to your new dbt project!

##### \# **dbt + BigQuery Analytics Project**



**## Project Overview**

This project demonstrates an end-to-end analytics engineering workflow using "dbt" and "Google BigQuery".  

Raw CSV data is loaded into BigQuery, transformed using dbt into staging and analytics layers, and validated with data quality tests.



**## 📌 Tech Stack**

\- dbt Core

\- Google BigQuery (Serverless Data Warehouse)

\- SQL

\- Git \& GitHub

\- Windows local system



**## Project Architecture**



The project follows a standard ELT (Extract, Load, Transform) approach:



1\. Raw CSV data is loaded into BigQuery

2\. dbt reads raw tables from BigQuery

3\. dbt creates staging models to clean and standardize data

4\. dbt creates analytics (fact) tables using joins

5\. dbt tests ensure data quality

6\. dbt docs generate lineage and documentation



**## Dataset Structure in BigQuery**



\### Raw Layer (Source Data)

These tables contain raw, uncleaned data loaded from CSV files:



\- raw.customers

\- raw.orders

\- raw.products

\- raw.order\_items



No transformations are applied at this layer.



**### Staging Layer (Cleaned Data)**

Staging models clean and standardize raw data:



\- stg\_customers

\- stg\_orders

\- stg\_products

\- stg\_order\_items



Actions performed here:

\- Column selection

\- Data type consistency

\- Lowercasing text fields

\- Removing unnecessary columns



Staging models are reusable and easy to maintain.



**### Analytics Layer (Business-Ready Data)**

Analytics models combine staging tables to answer business questions.



\- fact\_orders



This table joins customers, orders, products, and order items to calculate:

\- Revenue

\- Order-level metrics

\- Product performance



This layer is used for reporting and dashboards.



**## 🗂 Data Architecture**



Raw Layer:

\- raw.customers

\- raw.orders

\- raw.products

\- raw.order\_items



Staging Layer:

\- stg\_customers

\- stg\_orders

\- stg\_products

\- stg\_order\_items



Analytics Layer:

\- fact\_orders



**## 🔄 ELT Workflow**

1\. CSV files loaded into BigQuery (raw layer)

2\. dbt staging models clean and standardize data

3\. dbt marts layer creates business-ready fact table

4\. dbt tests validate data quality

5\. dbt docs generate lineage and metadata



**## ✅ Data Quality Checks**

\- not\_null tests

\- unique tests

\- Referential integrity checks



**## 📊 Key Analytics Use Cases**

\- Revenue analysis

\- Customer purchase behavior

\- Product performance

\- Order-level metrics



**## 📘 dbt Documentation**

Lineage and model documentation generated using:

Command 

dbt docs generate

dbt docs serve



**Try running the following commands:**

* dbt run
* dbt test
* dbt debug
* dbt clean
* dbt docs generate
* dbt docs serve



### Resources:

* Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
* Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
* Join the [chat](https://community.getdbt.com/) on Slack for live discussions and support
* Find [dbt events](https://events.getdbt.com) near you
* Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices
