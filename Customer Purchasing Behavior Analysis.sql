/*
====================================================================================
    PROJECT : Customer Purchasing Behavior Analysis 
====================================================================================
 

This project analyses customer purchasing behaviour in an e commerce store.

The goal of the project is to identify the Top customers, repeat purchase pattern and spending trends to help the maangement and sales team to improve customer engagement and revenue.

Key questions are :
  : who are top customers by total spending?
  : which customers buy repeatedly?
  : which country have the highest spending?
  : which payment method cutomers prefer?
  
*/


select * from e_commerce

select customer_id,customer_name, sum(price*quantity) as tota_spending
from e_commerce
group by customer_id,customer_name
order by sum(price*quantity) desc
limit 5

/*
 Top 5 cutomers are:
    1.John Smith
	2. Noah Becker
	3. Liam Brown
	4. Emma Rossi
	5. Alice Muller

*/

select customer_name, customer_id, count(customer_id) as number_of_purchases
from e_commerce
group by customer_id, customer_name
order by count(customer_id) desc
limit 5
     
/* 
  most repeatedly purchased customers are:
    1. David Lee
	2. Emma Rossi
	3. Alice muller
	4. Liam Brown
	5. Noah Becker
*/

select country, sum (price*quantity) as total_spending
from e_commerce
group by country
order by sum (price*quantity) desc
limit 5

 
/* countries have more spending are 
  1. Germany
  2. USA
  3.Canada
  4.Italy
  5.Uk

*/

select payment_method, count(payment_method) as no_of_times_used
from e_commerce
group by payment_method
order by count(payment_method) desc
limit 5


/*most prefferd payment method is Debit Card */

/*
=================================================================
         Project Conclusion
==================================================================

Top Customers

John Smith, Noah Becker, Liam Brown, Emma Rossi, and Alice Müller are the top 5 customers by spending.

::Insight: Focus marketing campaigns or loyalty programs on these high-value customers to retain them and increase revenue.

Most Repeated Customers

David Lee, Emma Rossi, Alice Müller, Liam Brown, and Noah Becker place the most orders.

::Insight: Repeat purchases indicate customer loyalty. Consider personalized offers or subscription services to encourage repeat buying.

Most Spending Countries

Germany, USA, Canada, Italy, and UK are the countries with highest total spending.

::Insight: Target these regions with promotions, new product launches, or localized marketing strategies for better ROI.

Most Preferred Payment Method

Debit Card is the most frequently used payment method.

::Insight: Ensure smooth Debit Card transactions, offer discounts or cashback for this method, and consider adding promotions for other methods to balance payment distribution.

::Overall Business Takeaways

High-value and repeat customers contribute significantly to revenue.

Understanding country-wise and payment preferences can help optimize marketing, inventory, and sales strategies.

Data-driven decisions can improve customer retention and maximize profitability.

*/
