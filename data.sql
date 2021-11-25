/* Examining table contents*/
SELECT
    *
FROM
    trips;

SELECT
    *
FROM
    riders;

SELECT
    *
FROM
    cars;

/*Cross Join riders and cars*/
SELECT
    *
FROM
    riders
    CROSS JOIN cars;

/*Left Join riders and cars*/
SELECT
    *
FROM
    trips
    LEFT JOIN riders ON trips.rider_id = riders.id;

/*INNER JOIN trips and cars*/
SELECT
    trips.id,
    cars.model
FROM
    trips
    JOIN cars ON trips.car_id = cars.id;

/*UNION riders and riders2 tables*/
SELECT
    *
FROM
    riders
UNION
SELECT
    *
FROM
    riders2;

/*Average cost of a trip*/
SELECT
    AVG(cost)
FROM
    trips;

/*SELECT riders who have used Lyft less tha 500 times*/
SELECT
    *
FROM
    riders
WHERE
    total_trips < 500;

/*Calculate the total number of active cars*/
SELECT
    COUNT(*)
FROM
    cars
WHERE
    status = 'active';

/*Find the two cars with highest trips completed*/
SELECT
    model,
    trips_completed
FROM
    CARS
ORDER BY
    trips_completed DESC
LIMIT
    2;