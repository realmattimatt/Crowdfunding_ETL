# Crowdfunding ETL

## Project 2: ETL Mini Project

## About
The Crowdfunding ETL project aims to extract, transform, and load data from crowdfunding datasets into a structured database. This project will provide valuable insights into the crowdfunding landscape by analyzing various factors that influence funding success. It will be used to develop an "Entity Relationship Diagram (ERD)" chart to visualize the data structure and ultimately load it into PostgreSQL.

## Dependencies

### Python Libraries:
- pandas
- numpy
- json
- re (for regular expressions)
- datetime (for date manipulation)

### Software:
- PostgreSQL
- pgAdmin 4
- Python
- Jupyter Notebook

### Dependencies to Load:
- python
- import pandas as pd
- import numpy as np
- pd.set_option('max_colwidth', 400)  # Not necessary but suggested for ease of reading
- import re  # To use regular expressions if needed
- from datetime import datetime as dt
- import json

## How to Run
### Set Up and Run 
1. Install dependencies
2. Navigate to Crowdfunding_ETL/ETL_Mini_Project_MMatti.ipynb and open it in Jupyter Notebook or a similar resource
3. Load dependencies
4. Select "Run All" or a similar command

### Set UP pgAdmin 4 
1. Open pgAdmin 4 locally
2. Open a Server and log in
3. Under Databases, right-click on databases and select "Create" then "Database"
4. In the Create - Database window, name the database "crowdfunding_db" then save
5. Open the Query Tool and select the folder containing the schema crowdfunding_db_schema.sql
6. Execute each query in order
7. In the left explorer, open the drop-down "Schemas" under the crowdfunding_db database.
8. Expand "public"
9. Right-click on "Tables" and select refresh
10. Inside "Tables," right-click "contacts," select "Import/Export" / Under Options verify Header is ON and Delimiter is set to ",", next use the explorer to open up the "contacts.csv" file.
11. Repeat "10" for "category," "subcategory," and "campaign" in that order.


Sources
Office hours / Class time
Pandas Documentation
NumPy Quickstart
Tutors: Lucas Manning, Carlos Gattorno
Xpert Learning Assistant
Python Regular Expressions Documentation
ChatGPT
pgAdmin Documentation
