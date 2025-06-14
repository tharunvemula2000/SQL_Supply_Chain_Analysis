SELECT count(Discount_offered) FROM `eastern-ceiling-462900-c3.supply_chain.orders`
where Discount_offered < 10

SELECT * FROM `eastern-ceiling-462900-c3.supply_chain.orders` WHERE Customer_rating IS  NULL;

SELECT Count(Reached_on_Time_Y_N), Mode_of_Shipment FROM `eastern-ceiling-462900-c3.supply_chain.orders` WHERE  Reached_on_Time_Y_N =  0
GROUP BY Mode_of_Shipment;

SELECT Count(Reached_on_Time_Y_N)FROM `eastern-ceiling-462900-c3.supply_chain.orders` WHERE  Reached_on_Time_Y_N =  0

SELECT 
  ROUND(
    100.0 * SUM(CASE WHEN Reached_on_Time_Y_N = 0 THEN 1 ELSE 0 END) / COUNT(*),
    2
  ) AS late_delivery_percentage
FROM `eastern-ceiling-462900-c3.supply_chain.orders`;

SELECT 
  Mode_of_Shipment,
  COUNT(*) AS total_orders,
  SUM(CASE WHEN Reached_on_Time_Y_N = 0 THEN 1 ELSE 0 END) AS late_orders,
  ROUND(
    100.0 * SUM(CASE WHEN Reached_on_Time_Y_N = 0 THEN 1 ELSE 0 END) / COUNT(*),
    2
  ) AS late_delivery_percentage
FROM `eastern-ceiling-462900-c3.supply_chain.orders`
GROUP BY Mode_of_Shipment
ORDER BY late_delivery_percentage DESC;

SELECT 
  Warehouse_block,
  ROUND(
    100.0 * SUM(CASE WHEN Reached_on_Time_Y_N = 1 THEN 1 ELSE 0 END) / COUNT(*),
    2
  ) AS on_time_percentage
FROM `eastern-ceiling-462900-c3.supply_chain.orders`
GROUP BY Warehouse_block
ORDER BY on_time_percentage DESC;

SELECT 
  Customer_care_calls,
  ROUND(
    100.0 * AVG(CASE WHEN Reached_on_Time_Y_N = 0 THEN 1 ELSE 0 END),
    2
  ) AS late_delivery_percentage
FROM `eastern-ceiling-462900-c3.supply_chain.orders`
GROUP BY Customer_care_calls
ORDER BY Customer_care_calls;

SELECT 
  Product_importance,
  COUNT(*) AS total,
  SUM(CASE WHEN Reached_on_Time_Y_N = 0 THEN 1 ELSE 0 END) AS late,
  ROUND(
    100.0 * SUM(CASE WHEN Reached_on_Time_Y_N = 0 THEN 1 ELSE 0 END) / COUNT(*),
    2
  ) AS late_percentage
FROM `eastern-ceiling-462900-c3.supply_chain.orders`
GROUP BY Product_importance
ORDER BY late_percentage DESC;

SELECT 
  Reached_on_Time_Y_N AS delivery_status,
  AVG(Cost_of_the_Product) AS avg_cost
FROM `eastern-ceiling-462900-c3.supply_chain.orders`
GROUP BY Reached_on_Time_Y_N;

SELECT 
  CASE 
    WHEN Discount_offered < 20 THEN 'Low'
    WHEN Discount_offered BETWEEN 20 AND 50 THEN 'Medium'
    ELSE 'High'
  END AS discount_range,
  ROUND(
    100.0 * AVG(CASE WHEN Reached_on_Time_Y_N = 0 THEN 1 ELSE 0 END),
    2
  ) AS late_delivery_percentage
FROM `eastern-ceiling-462900-c3.supply_chain.orders`
GROUP BY discount_range
ORDER BY discount_range;

SELECT 
  Reached_on_Time_Y_N,
  AVG(Weight_in_gms) AS avg_weight
FROM `eastern-ceiling-462900-c3.supply_chain.orders`
GROUP BY Reached_on_Time_Y_N;

SELECT 
  Prior_purchases,
  ROUND(
    100.0 * AVG(CASE WHEN Reached_on_Time_Y_N = 0 THEN 1 ELSE 0 END),
    2
  ) AS late_delivery_percentage
FROM `eastern-ceiling-462900-c3.supply_chain.orders`
GROUP BY Prior_purchases
ORDER BY Prior_purchases;



