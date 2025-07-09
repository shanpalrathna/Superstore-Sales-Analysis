create database Sales_Project
use Sales_Project

select * from Superstore

select COLUMN_NAME, data_type, CHARACTER_MAXIMUM_LENGTH from INFORMATION_SCHEMA.COLUMNS
where TABLE_NAME = 'Superstore'

alter table superstore
alter column sales decimal(18,3)

alter table superstore
alter column Profit decimal(18,3)

alter table superstore
alter column discount decimal(18,3)

--Sales Insights:
--Total Sales & Profit by Region
        select Region, sum(Sales) as sum_of_sales, sum(Profit) as sum_of_profit from Superstore
        group by Region 

--Top 5 Customers by Profit
		select top 5 (Customer_Name), sum(Profit) as sum_of_profit from Superstore
		group by Customer_Name
		order by sum(Profit) desc
		
--Yearly/Monthly Sales Trend
		select year(Order_Date) Year, month(order_date) Month, sum(Sales) SumOfSales from Superstore
		group by YEAR(Order_date), month(order_date)
		order by Year(Order_date) desc ,month(order_date) desc

		--Order by sales

			select year(Order_Date) Year, month(order_date) Month, sum(Sales) SumOfSales from Superstore
			group by YEAR(Order_date), month(order_date)
			order by Sum(Sales) desc

--Categories/Sub-Categories with highest/lowest profit

	--Highest Profit
		select top 1 Category,sub_category, sum(Profit) from superstore
		group by Category, Sub_category
		order by Sum(Profit) desc

	--Lowest Profit
		select top 1 Category,sub_category, sum(Profit) from superstore
		group by Category, Sub_category
		order by Sum(Profit) asc


--Optimization Checks:

--Products with high discount but low profit
		select Product_name, Category, Sub_Category, avg(Sales) Avg_Sales, 
		avg(Profit) Avg_Profit, Avg(Discount) Avg_Discount from Superstore
		group by Category, Sub_Category, Product_Name
		having 
		avg(discount) > (select AVG(Discount) from Superstore) and
		avg(profit) < (select AVG(profit) from Superstore)
		order by Avg_Discount desc

--Region-wise profit margins
		
		select Region, sum(Sales) Total_sales, sum(Profit) as Total_profit,
		sum(Profit)*100/ Nullif(sum(Sales),0) as Profit_Margin from Superstore
		group by Region
		order by Profit_Margin desc

--Days taken between order and shipment
		
		select order_id,avg(datediff(day,order_date,ship_date)) 
		as No_of_days from Superstore
	    group by Order_id
		order by No_of_days desc

-- Creating views for easy surfing
	--Profitability_By_Category
		CREATE VIEW Profitability_By_Category AS
		SELECT Category, SUM(Sales) AS TotalSales, SUM(Profit) AS TotalProfit
		FROM Superstore
		GROUP BY Category

		select * from Profitability_By_Category

	--Profitability_by_Cities
		create view Profitability_by_Cities as
		select Country, Region, State, City, sum(Sales) TotalSales, 
		sum(Profit) Totalprofit from Superstore
		group by Country, Region, State, City

		select * from Profitability_by_Cities