--create database
create database ccdb
--show databases
SELECT name  FROM sys.databases;
--Create cc_detail table
CREATE TABLE cc_detail (
    Client_Num INT,
    Card_Category VARCHAR(20),
    Annual_Fees INT,
    Activation_30_Days INT,
    Customer_Acq_Cost INT,
    Week_Start_Date DATE,
    Week_Num VARCHAR(20),
    Qtr VARCHAR(10),
    current_year INT,
    Credit_Limit DECIMAL(10,2),
    Total_Revolving_Bal INT,
    Total_Trans_Amt INT,
    Total_Trans_Ct INT,
    Avg_Utilization_Ratio DECIMAL(10,3),
    Use_Chip VARCHAR(10),
    Exp_Type VARCHAR(50),
    Interest_Earned DECIMAL(10,3),
    Delinquent_Acc VARCHAR(5)
);

-- Copy csv data into SQL (remember to update the file name and file location in below query)

-- copy cc_detail table

bulk insert [dbo].[cc_detail]
from 'E:\power BI\Credit card financial dashboard\credit_card2.csv'
with (Format ='csv',
	  firstrow=2,
	  fieldterminator=',',
	  rowterminator='\n'
	  )
select * from cc_detail

-----------------------------------------------------------------------------------------------------------------------------------------
--Create cust_detail table
CREATE TABLE cust_detail (
    Client_Num INT,
    Customer_Age INT,
    Gender VARCHAR(5),
    Dependent_Count INT,
    Education_Level VARCHAR(50),
    Marital_Status VARCHAR(20),
    State_cd VARCHAR(50),
    Zipcode VARCHAR(20),
    Car_Owner VARCHAR(5),
    House_Owner VARCHAR(5),
    Personal_Loan VARCHAR(5),
    Contact VARCHAR(50),
    Customer_Job VARCHAR(50),
    Income INT,
    Cust_Satisfaction_Score INT
);

-- copy cust_detail table
bulk insert [dbo].[cust_detail]
from 'E:\power BI\Credit card financial dashboard\customer.csv'
with (Format ='csv',
	  firstrow=2,
	  fieldterminator=',',
	  rowterminator='\n'
	  )
select * from cc_detail
select * from cust_detail