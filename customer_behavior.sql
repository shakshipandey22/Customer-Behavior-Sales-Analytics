--Q1. What is the total revenue genrated by male vs. female customers.
select gender , sum(purchase_amount ) as revenue
from customer
group by gender

--Q2. Which customers used a discount but still spent more than average purchase amount?
select customer_id, purchase_amount
from customer
where discount_applied='Yes'and purchase_amount>=(select AVG(purchase_amount) from customer)

--Q3.Which are the top 5 product with the highest average review rating ?
select item_purchased, Round(AVG(review_rating::numeric),2) as "Average product rating"
from customer
group by item_purchased
order by avg(review_rating) desc
limit 5;

--Q4. Compare the average Purchase Amounts between Standard and express Shipping.
select shipping_type,
ROUND (AVG(purchase_amount),2)
from customer
where shipping_type in ('Standard','Express')
GROUP BY shipping_type

--Q5.Do subscribed customer spend more? Compare average spend and total revenue 
--betweeen subscribers and non subscribers.
select subscription_status,
COUNT(customer_id) as total_customers,
ROUND(AVG(purchase_amount),2) as avg_spend,
ROUND(sum(purchase_amount),2) as total_revenue
from customer
GROUP BY subscription_status
order by total_revenue, avg_spend desc;

--Q6. Which 5 product have the highest percentage of purchases with discount applied?
select item_purchased,
ROUND(100*sum(CASE WHEN discount_applied='Yes' THEN 1 ELSE 0 END)/COUNT(*),2) AS discount_rate
from customer 
group by item_purchased
order by discount_rate desc
limit 5;

--Q7. Segment customers into New, Returning, and Loyal based on their total
--number of previous purchases, and show the count of each segment.
with customer_type as (
select customer_id, previous_purchases,
case
when previous_purchases = 1 THEN 'New'
when previous_purchases Between 2 AND 10 THEN 'Returning'
else 'Loyal'
end as customer_segment
from customer
)
select customer_segment, count(*) as "Number of customers"
from customer_type
group by customer_segment

--Q8. What are the top 3 most purchased products within each category?
with item_counts as (
select category,
item_purchased,
count(customer_id) as total_orders,
row_number() over(partition by category order by count(customer_id) desc) as item_rank
from customer
group by category ,item_purchased
)
select item_rank, category, item_purchased, total_orders
from item_counts
where item_rank <=3;

--Q9. Are customers who are repeat buyers (more than 5 previous purchases) also likely to subscribe?
select subscription_status,
count(customer_id) as repeat_buyers
from customer
where previous_purchases >5
group by subscription_status

--Q10.What is the revenue contribution of each age group?
select age_group,
sum(purchase_amount) as total_revenue
from customer
group by age_group
order by total_revenue desc;