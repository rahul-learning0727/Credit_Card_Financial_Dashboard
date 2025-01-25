# Credit_Card_Financial_Dashboard
**Objective**
The primary goal of the Credit Card Financial Dashboard is to monitor and analyze transactional and customer data, providing insights into revenue trends, customer segmentation, and transaction behavior. This enables organizations to understand customer usage patterns:
*Identify revenue drivers by card category, income group, and expenditure type.
*Enhance decision-making for targeted marketing and operational efficiency.

**STEPS TAKEN**
1)ETL Process
To prepare the data for visualization and analysis, the following ETL steps were used:

Extract:

Data was sourced from transactional databases, customer demographic files, and credit card usage systems.
Transform:

Data Cleaning: Removed duplicates, handled missing values (e.g., “Unknown” in education).
Standardization: Unified formats for transaction amounts, dates, and customer job categories.
Derivation of Metrics:
Calculated revenue, interest earned, and transaction counts.
Aggregated data by card category, income group, and expenditure type.
Data Enrichment: Merged customer data with geographical and demographic details.
Load:

Loaded the cleaned and processed data into Power BI for visualization.

2)DAX Implementations
Key DAX measures and columns created for the dashboard include:

Revenue Calculation:
DAX
Copy
Edit
Revenue = SUM(Transaction[Amount])  

Interest Earned:
DAX
Copy
Edit
Interest_Earned = SUM(Transaction[Interest])  

Revenue by Card Category:
DAX
Copy
Edit
Revenue_By_Card = CALCULATE(SUM(Transaction[Amount]), GroupBy(Card[Category]))  

Revenue Segmentation:
Segmented by age group, education, and income using calculated columns.

**INSIGHTS DERIVED**
Revenue Analysis:

Total revenue: $55M
Key contributors: Blue card ($46M) followed by Silver.
High usage through swipe transactions ($35M).
Customer Segmentation:

Revenue by job: Businessmen contribute the highest revenue ($17M), followed by White-collar professionals ($10M).
Graduate customers generate the most revenue ($22M), highlighting the importance of education level in customer value.
Expenditure Trends:

Categories like Bills, Entertainment, and Fuel drive significant revenue.
Grocery and food are also key segments, indicating frequent utility-based usage.
Demographic Insights:

Revenue by age group: 30-40 years contribute the highest revenue ($14M).
Gender split: Male customers contribute slightly more revenue ($30M) compared to females ($25M).
Geographical Insights:

Top states: Texas (TX), California (CA), and New York (NY) are major contributors.

Trends Over Time:

Quarterly trends show Q3 as the highest revenue quarter ($14.2M).
Seasonal changes in expenditure highlight peak periods for targeted campaigns.
