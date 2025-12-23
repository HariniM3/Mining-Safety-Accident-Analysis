CREATE DATABASE mining_safety;
USE mining_safety;
CREATE TABLE accidents (
    accident_id INT AUTO_INCREMENT PRIMARY KEY,
    mine_id INT,
    operator_name VARCHAR(150),
    state_code VARCHAR(10),
    coal_metal_ind VARCHAR(10),
    accident_dt VARCHAR(20),   -- 👈 THIS FIXES EVERYTHING
    cal_yr INT,
    cal_qtr INT,
    degree_injury VARCHAR(50),
    no_injuries INT,
    days_lost INT,
    days_restrict INT,
    accident_type VARCHAR(100),
    classification VARCHAR(100),
    activity VARCHAR(100),
    ug_location VARCHAR(100),
    ug_mining_method VARCHAR(100),
    mining_equip VARCHAR(100),
    occupation VARCHAR(100),
    tot_exper INT
);

SHOW TABLES;
SELECT COUNT(*) FROM accidents;

USE mining_safety;

--  1. Total accidents by year (Trend analysis)
SELECT
    cal_yr,
    COUNT(*) AS total_accidents
FROM accidents
GROUP BY cal_yr
ORDER BY cal_yr ASC;

-- 2. Accident severity distribution
SELECT
    degree_injury,
    COUNT(*) AS count
FROM accidents
GROUP BY degree_injury
ORDER BY count DESC;

-- 3. Most Common Accident Types

SELECT
    accident_type,
    COUNT(*) AS total_accidents
FROM accidents
GROUP BY accident_type
ORDER BY total_accidents DESC
LIMIT 10;

-- 4. Underground vs Surface
SELECT
    ug_location,
    COUNT(*) AS accident_count
FROM accidents
GROUP BY ug_location
ORDER BY accident_count DESC;


-- 5. Average number of injuries per accident
  
SELECT
    AVG(no_injuries) AS avg_injuries_per_accident
FROM accidents;

-- 6. Accidents by worker activity
  
SELECT
    activity,
    COUNT(*) AS accident_count
FROM accidents
GROUP BY activity
ORDER BY accident_count DESC
LIMIT 5;

-- 7. Experience vs accidents
SELECT
    CASE
        WHEN tot_exper < 1 THEN 'Less than 1 year'
        WHEN tot_exper BETWEEN 1 AND 5 THEN '1–5 years'
        WHEN tot_exper BETWEEN 6 AND 10 THEN '6–10 years'
        ELSE '10+ years'
    END AS experience_group,
    COUNT(*) AS accident_count
FROM accidents
GROUP BY experience_group
ORDER BY accident_count DESC;

-- 8. Mines with most accidents
SELECT
    mine_id,
    operator_name,
    COUNT(*) AS accident_count
FROM accidents
GROUP BY mine_id, operator_name
ORDER BY accident_count DESC
LIMIT 10;












