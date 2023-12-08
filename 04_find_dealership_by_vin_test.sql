-- 4. Find the dealership where a certain car is located, by VIN
SELECT 
    dealerships.*
FROM
    dealerships
        JOIN
    inventory ON dealerships.dealership_id = inventory.dealership_id
WHERE
    inventory.VIN = '1HGCM82633A123456'; -- Replace '1HGCM82633A123456' with the actual VIN you want to query

