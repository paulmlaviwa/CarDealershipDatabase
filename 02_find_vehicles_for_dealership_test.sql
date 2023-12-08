-- 2. Find all vehicles for a specific dealership
-- Replace 1 with the actual dealership_id you want to query
SELECT 
    *
FROM
    inventory
        JOIN
    vehicles ON inventory.VIN = vehicles.VIN
WHERE
    inventory.dealership_id = 1;
