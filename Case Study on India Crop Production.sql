-- 1. Count Total Records in the Agricultural Data
SELECT COUNT(*) AS total_records
FROM agri;

-- 2. Calculate Total Area Planted
SELECT SUM(Area) AS total_area
FROM agri;

-- 3. Count Unique Crop Types
SELECT COUNT(DISTINCT Crop) AS unique_crop_types
FROM agri;

-- 4. Total Area Planted per Crop
SELECT Crop, 
       SUM(Area) AS total_area
FROM agri
GROUP BY Crop
ORDER BY total_area DESC;

-- 5. Total Production by Crop
SELECT Crop, 
       SUM(Production) AS total_production
FROM agri
GROUP BY Crop
ORDER BY total_production DESC;

-- 6. Monthly Production (assuming Year is formatted as YYYY-MM)
SELECT Year, 
       SUM(Production) AS total_production
FROM agri
GROUP BY Year
ORDER BY Year ASC;

-- 7. Top 5 States by Total Production
SELECT State, 
       SUM(Production) AS total_production
FROM agri
GROUP BY State
ORDER BY total_production DESC
LIMIT 5;

-- 8. Average Yield per Crop
SELECT Crop,
       AVG(Yield) AS average_yield
FROM agri
GROUP BY Crop
ORDER BY average_yield DESC;

-- 9. Production Information for Each Crop in Each State
SELECT State, 
       Crop, 
       SUM(Production) AS total_production,
       SUM(Area) AS total_area
FROM agri
GROUP BY State, Crop
ORDER BY State, total_production DESC;

-- 10. Total Area by Season
SELECT Season, 
       SUM(Area) AS total_area
FROM agri
GROUP BY Season
ORDER BY total_area DESC;

-- 11. Yearly Production by Crop
SELECT Year,
       Crop,
       SUM(Production) AS total_production
FROM agri
GROUP BY Year, Crop
ORDER BY Year, total_production DESC;

-- 12. Crop Yield Analysis by State
SELECT State,
       Crop,
       AVG(Yield) AS average_yield
FROM agri
GROUP BY State, Crop
ORDER BY State, average_yield DESC;

-- 13. Total Production and Area for Each State
SELECT State, 
       SUM(Production) AS total_production,
       SUM(Area) AS total_area
FROM agri
GROUP BY State
ORDER BY total_production DESC;

-- 14. Seasonal Trends in Crop Production
SELECT Season, 
       SUM(Production) AS total_production
FROM agri
GROUP BY Season
ORDER BY Season;

-- 15. Yield Comparison Between States for Each Crop
SELECT Crop,
       State, 
       AVG(Yield) AS average_yield
FROM agri
GROUP BY Crop, State
ORDER BY Crop, average_yield DESC;