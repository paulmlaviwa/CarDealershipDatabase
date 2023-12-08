-- 5. Find all Dealerships that have a certain car type (i.e. Red Ford Mustang)

SELECT 
    dealerships.*
FROM
    dealerships
        JOIN
    inventory ON dealerships.dealership_id = inventory.dealership_id
        JOIN
    vehicles ON inventory.VIN = vehicles.VIN
WHERE
    vehicles.color = 'blue'
        AND vehicles.make
        || 'Chevrolet '
        || vehicles.model = 'Silverado'; -- Replace 'blue' and 'Chevrolet Silverado' with the actual color and make_model you want to query
