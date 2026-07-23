USE transport_company;
-- Question 1: Total number of passengers who survived

SELECT COUNT(*) AS total_survived
FROM trips
WHERE survived = TRUE;

-- Question 2: Total number of passengers who did not survive

SELECT COUNT(*) AS total_not_survived
FROM trips
WHERE survived = FALSE;

-- Question 3: Name and sex of passengers under age 27
-- who embarked at Queenstown and Cherbourg

SELECT 
    passengers.full_name,
    passengers.sex
FROM passengers
JOIN trips
ON passengers.id = trips.passenger_id
WHERE passengers.age < 27
AND trips.embarkation IN ('Q', 'C');

-- Question 4: How many passengers embarked at Southampton survived?

SELECT COUNT(*) AS southampton_survivors
FROM trips
WHERE embarkation = 'S'
AND survived = TRUE;

-- Question 5: Get id, name and total number of passengers
-- who paid fare greater than $100, were above age 35,
-- and had siblings/spouses onboard

SELECT
    passengers.id,
    passengers.full_name
FROM passengers
JOIN trips
ON passengers.id = trips.passenger_id
WHERE trips.fare > 100
AND passengers.age > 35
AND trips.siblings_spouses > 0;

SELECT COUNT(*) as total_passengers
FROM passengers
JOIN trips
ON passengers.id = trips.passenger_id
WHERE trips.fare > 100
AND passengers.age > 35
AND trips.siblings_spouses > 0;