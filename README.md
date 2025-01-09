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
1. Open pgAdmin 4 locally and connect to your server.
2. Create a new database
     -  Right-click on Databases and select Create > Database.
     - Name the database crowdfunding_db and save.
3. Open the Query Tool and select the folder containing the schema crowdfunding_db_schema.sql
4. Execute the SQL queries in the schema file sequentially.
5. In the left explorer, open the drop-down "Schemas" under the crowdfunding_db database.
6. Expand "public"
7.  Right-click on "Tables" and select refresh

### Import Data into Tables
1.  For each table (contacts, category, subcategory, campaign):
    - Right-click the table and select Import/Export.
    - Set the following options:
        - Header: On
        - Delimiter: ,
    - Browse to select the appropriate CSV file.
2.  Import the files in this order:
       - contacts
       - category
       - subcategory
       - campaign


## Sources
- Office hours / Class time
- Pandas Documentation
- NumPy Quickstart
- Tutors: Lucas Manning, Carlos Gattorno
- Xpert Learning Assistant
- Python Regular Expressions Documentation
- ChatGPT
- pgAdmin Documentation

## Other notes:
1. During the merge process about midway in the ETL_Mini_Project_MMatti.ipynb. I also included some verification code to confirm nothing was lost in the merge process like this.
    - Pre-merge validation to ensure our category and subcategory mappings are complete.
    The validate='m:1' parameter ensures each campaign maps to exactly one category/subcategory.
    Using how='left' preserves all campaign records.
    - Post-merge validation to confirm no data was lost