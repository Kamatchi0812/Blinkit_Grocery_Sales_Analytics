use blinkit_grocery;
SELECT 
    outlet_identifier,
    outlet_type,
    outlet_location_type,
    SUM(sales) AS total_sales,
    AVG(rating) AS avg_rating
FROM grocery_data
GROUP BY outlet_identifier, outlet_type, outlet_location_type
ORDER BY total_sales DESC
LIMIT 10;

-- Analyze sales trends over years
SELECT 
    outlet_establishment_year,
    AVG(sales) AS avg_sales,
    COUNT(DISTINCT outlet_identifier) AS outlet_count
FROM grocery_data
GROUP BY outlet_establishment_year
ORDER BY outlet_establishment_year;

-- Find correlation between item weight and sales
SELECT 
    CASE 
        WHEN item_weight < 10 THEN 'Light'
        WHEN item_weight BETWEEN 10 AND 15 THEN 'Medium'
        ELSE 'Heavy'
    END AS weight_category,
    AVG(sales) AS avg_sales,
    COUNT(*) AS item_count
FROM grocery_data
GROUP BY weight_category
ORDER BY avg_sales DESC;