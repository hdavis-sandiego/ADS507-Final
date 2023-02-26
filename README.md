# ADS507-Final

# Hello! Welcome to the MSADS 507 Final Project page for Team 4.

The research is analyzing data from February 2020 to February 2023 from the book store. 

For your convenience, we have combined all 13 original code files into a single sql file. 

The contributors to the project are: 

Claire Phibbs : https://github.com/cphibbs \
Halle Davis: https://github.com/hdavis-sandiego \
UE Wang: https://github.com/UE-Wang 

# Table of Contents:
### Step 1: Get the Data:

1. The initial SQL file that generated the data is located at:

https://github.com/bbrumm/databasestar/tree/main/sample_databases/sample_db_gravity 

2. Population of each countries:

https://data.worldbank.org/indicator/SP.POP.TOTL

3. Income of each countries:

# ? Data Source Link

SQL scripts:

# ? file link

Python ipybn file:

# ? ipybn file

### Step 2: Generate the Database:

1. Use the #(Link to the sql data file) to run the whole script.\
Using SQL, a total of 15 tables are added for the book store. Name the database as 'gravity books'. 
2. Using "Table Data Import Wizard" in the MySQL Workbench to import the population.csv file. 
3. Using "Table Data Import Wizard" in the MySQL Workbench to import the income.csv file. 
4. By this time, your gravity_books database should have a total of 17 tables.

### Step 3: Creating VIEWs:
To improve readability and security, run the *Final.sql file to generate the VIEWs for this database.

1. transaction_period VIEW: Let the book store to display the entire transaction period.
2. books_sold_per_year VIEWL: allow the bookstore to determine the annual number of books sold. (in the years 2020–2023)
3. whole_period_stats VIEW: the total number of customers, orders, and books sold within the transaction time.
4. value_customer VIEW: Top 10 customers that bought most books at this book store.
5. ship_meth VIEW: Shipping preferences of the customer and their percentage.
6. author_books_rank VIEW: authors whose books are most prevalent in book stores.
7. best_selling_books VIEW: 10 best-selling books.
8. books_profit VIEW: The top ten books for this bookstore in terms of revenue.
9. books_language VIEW: provides information about the book numbers and percentage of each language in this bookstore.
10. cust_profit VIEW: Top 5 customers at this bookstore who spent the most money.
11. cust_city VIEW: The top 5 cities where this book retailer received the most orders.
12. books_sold_month VIEW: The annual number of books sold per month.
13. order_ym VIEW: Simple table of each month's orders.
14. order_date_sale VIEW: Allow books tore to check how many book they sold per day. 
15. join20 VIEW: 2020 Numbers of Books sold to each country.
16. join21 VIEW: 2021 numbers of Books sold to each country.
17. pop_income_books VIEW: tables combining information on population, income, and book sales.
18. Country_YM_Books VIEW: The quantity of books sold, as well as the monthly revenue, for each nation.
19. profit_pop_in VIEW: Revenue from all books sold, broken down by country, population, and income level.

### Step 4: Data connection to Jupyter Notebook:

First, we will need to import the needed packages:

```
import numpy as no
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

1. combining the first and last names of valued customers to better view the table.
2. To simplify the view for the books store, the order date is changed from the order data time to a short date.

### Step 6:Load data to csv:
Load the two transformed tables mentioned above to CSV files to assist a book store in better estimating its daily profit and checking out valued customers.

### Step 7: Visualized the Output:
































Thank you! 
