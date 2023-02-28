# ADS507-Final

# Hello! Welcome to the MSADS 507 Final Project page for Team 4.

The research is analyzing book store data from February 2020 to February 2023. 

For your convenience, we have combined all 13 original code files to access the gravity_books database into two sql files. If you would like to access the original 13 code files you may do so here: https://github.com/bbrumm/databasestar/tree/main/sample_databases/sample_db_gravity 

The contributors to the project are: 

Claire Phibbs : https://github.com/cphibbs \
Halle Davis: https://github.com/hdavis-sandiego \
UE Wang: https://github.com/UE-Wang 

# Table of Contents:
### Step 1: Get the Data:

1. Population of each countries: Download the population.csv file. The original file can be found here: https://data.worldbank.org/indicator/SP.POP.TOTL

2. Income of each countries: Download the income.csv file. The original file can be found here: https://data.worldbank.org/indicator/SP.POP.TOTL

### Step 2: Generate the Database:

1. Use the gravity_books_db_pt1.sql and run the whole script.\
Using SQL, a total of 15 tables are added for the book store. Name the database as 'gravity books'. 
2. Using "Table Data Import Wizard" in the MySQL Workbench to import the population.csv file. 
3. Using "Table Data Import Wizard" in the MySQL Workbench to import the income.csv file. 
4. By this time, your gravity_books database should have a total of 17 tables.

### Step 3: Creating VIEWs:
To improve readability and security, use the gravity_books_db_pt2.sql to insert the remaining data into the gravity_books database and generate the VIEWs for this database.

1. transaction_period VIEW: book store's entire transaction period
2. books_sold_per_year VIEW: the annual number of books sold (from years 2020–2023)
3. whole_period_stats VIEW: the total number of customers, orders, and books sold within the transaction time.
4. value_customer VIEW: top 10 customers that bought most books at the book store
5. ship_meth VIEW: shipping preferences of customers and percentage of total
6. author_books_rank VIEW: authors whose books are most prevalent in book stores
7. best_selling_books VIEW: top 10 best-selling books
8. books_profit VIEW: top ten books for the bookstore in terms of revenue
9. books_language VIEW: counts of books published in each langugae sold at the book store and the percentage of the total 
10. cust_profit VIEW: top 5 customers at this bookstore who spent the most money
11. cust_city VIEW: top 5 cities where this book store received the most orders from
12. books_sold_month VIEW: number of books sold per month
13. order_ym VIEW: another way to view number of books sold per month
14. order_date_sale VIEW: books sold per day and profit per day
15. join20 VIEW: 2020 numbers of books sold to each country
16. join21 VIEW: 2021 numbers of books sold to each country
17. pop_income_books VIEW: information on population, income, and book sales
18. Country_YM_Books VIEW: quantity of books sold, as well as the monthly revenue for each country
19. profit_pop_in VIEW: revenue from all books sold, broken down by country, population, and income level

### Step 4: Data connection to Jupyter Notebook:

First, we will need to import the necessary packages:

```
import numpy as np
import pandas as pd
import pymysql as mysql
import seaborn as sns
import matplotlib.pyplot as plt 
import plotly.express as px
```

connecting to the MySQL gravity books database as instructed.
```
conn=mysql.connect( host='localhost',
                    port=int(3306),
                    user='root',
                    passwd='****',
                    db='gravity_books')
```

Print the tables and VIEWs we built in MySQL to make sure the data is clear and readable.
```
tableNames = pd.read_sql("""SHOW TABLES""", conn) 
tableNames
```

### Step 5: Transforming data types:

1. We have combined the first and last names of valued customers to better view the table.
2. To simplify the view for the books store, the order date is changed from the order data time to a short date.

### Step 6: Load data to csv:

Load the two transformed tables mentioned above to CSV files to assist a book store in better estimating its daily profit and checking out valued customers.

### Step 7: Visualized the Output:

**Note: Steps 4-7 can also be completed by downloading the running the MS ADS 507 Python Code.ipynb code file in Python.






























Thank you! 
