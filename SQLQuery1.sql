SELECT * FROM pizza_sales;




SELECT SUM(total_price) as Total_Revenue from pizza_sales ;



select SUM(total_price)/count(distinct order_id) as Average_Order_Value from pizza_sales;



 SELECT SUM(QUANTITY) AS Total_Pizza_Sales
 FROM pizza_sales;


 select count(distinct order_id) as Total_orders
 from pizza_sales;



 select cast(cast(sum(quantity) as decimal(10,2))/cast(count(distinct order_id) as decimal(10,2)) as decimal(10,2)) as Avg_Pizzas_Per_Order
 from pizza_sales;


 select datename(dw,order_date) as order_day, count(distinct order_id) as Total_Orders
 from pizza_sales
 group by datename(dw,order_date);


 select datename(month,order_date) as Month_name,count(distinct order_id) as Total_Orders
 from pizza_sales
 group by datename(month,order_date)
 order by Total_Orders desc;


 select pizza_category,sum(total_price) as Total_sales, sum(total_price)*100/(select sum(total_price) from pizza_sales where month(order_date) = 1) as Percentage_Total_Sales
 from pizza_sales
 where month(order_date) = 1
 group by pizza_category;



 select pizza_size,cast(sum(total_price) as decimal(10,2)) as Total_sales, cast(sum(total_price)*100/(select sum(total_price) from pizza_sales  where datepart(quarter,order_date) = 1) as decimal(10,2)) as Percentage_Total_Sales
 from pizza_sales
 where datepart(quarter,order_date) = 1
 group by pizza_size
 order by Percentage_Total_Sales desc;



 select top 5 pizza_name, sum(total_price) as Total_Revenue
 from pizza_sales
 group by pizza_name
 order by Total_Revenue desc;


 select top 5 pizza_name, sum(total_price) as Total_Revenue
 from pizza_sales
 group by pizza_name
 order by Total_Revenue;


 select top 5 pizza_name, sum(quantity) as Total_Quantity
 from pizza_sales
 group by pizza_name
 order by Total_Quantity desc;


 select top 5 pizza_name, sum(quantity) as Total_Quantity
 from pizza_sales
 group by pizza_name
 order by Total_Quantity;


  select top 5 pizza_name, count(distinct order_id) as Total_Order
 from pizza_sales
 group by pizza_name
 order by Total_Order desc;


   select top 5 pizza_name, count(distinct order_id) as Total_Order
 from pizza_sales
 group by pizza_name
 order by Total_Order;














