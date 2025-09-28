use blinkit_grocery;
SELECT * FROM grocery_data LIMIT 10;

-- Check data summary
SELECT 
    COUNT(*) AS total_records,
    COUNT(DISTINCT item_identifier) AS unique_items,
    COUNT(DISTINCT outlet_identifier) AS unique_outlets
FROM grocery_data;

-- Analyze sales by item type
SELECT 
    item_type,
    AVG(sales) AS avg_sales,
    SUM(sales) AS total_sales,
    COUNT(*) AS item_count
FROM grocery_data
GROUP BY item_type
ORDER BY total_sales DESC;

-- Analyze sales by outlet type
SELECT 
    outlet_type,
    AVG(sales) AS avg_sales,
    SUM(sales) AS total_sales
FROM grocery_data
GROUP BY outlet_type
ORDER BY total_sales DESC;

-- Analyze sales by outlet location type
SELECT 
    outlet_location_type,
    AVG(sales) AS avg_sales,
    SUM(sales) AS total_sales
FROM grocery_data
GROUP BY outlet_location_type
ORDER BY total_sales DESC;

-- Analyze sales by fat content
SELECT 
    item_fat_content,
    AVG(sales) AS avg_sales,
    SUM(sales) AS total_sales
FROM grocery_data
GROUP BY item_fat_content
ORDER BY total_sales DESC;