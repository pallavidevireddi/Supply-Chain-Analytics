SELECT SUM(Revenue_generated) AS total_revenue
FROM supply_chain;

SELECT SUM(Costs) AS total_cost
FROM supply_chain;

SELECT Supplier_name,
       SUM(Revenue_generated) AS revenue
FROM supply_chain
GROUP BY Supplier_name
ORDER BY revenue DESC;

SELECT Routes,
       SUM(Shipping_costs) AS shipping_cost
FROM supply_chain
GROUP BY Routes
ORDER BY shipping_cost DESC;

SELECT product_type,
       SUM(stock_levels) AS stock
FROM supply_chain
GROUP BY Product_type
ORDER BY stock ASC;

SELECT Supplier_name,
       AVG(Defect_rates) AS defect_rate
FROM supply_chain
GROUP BY supplier_name
ORDER BY defect_rate DESC;

SELECT Transportation_modes,
       SUM(revenue_generated) AS revenue
FROM supply_chain
GROUP BY transportation_modes
ORDER BY revenue DESC;
