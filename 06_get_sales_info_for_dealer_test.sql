-- 6. Get all sales information for a specific dealer for a specific date range
-- Replace 1, start_date, and end_date with the actual values you want to query
SELECT 
    sales_contracts.*
FROM
    sales_contracts
        JOIN
    dealerships ON sales_contracts.dealership_id = dealerships.dealership_id
WHERE
    sales_contracts.dealership_id = 1
        AND sales_contracts.sale_date BETWEEN start_date AND end_date;
