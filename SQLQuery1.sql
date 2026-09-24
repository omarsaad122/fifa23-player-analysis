USE FIFA23_Analysis;

SELECT COUNT(*) AS Total_Players
FROM dbo.FIFA23;

SELECT TOP 10 *
FROM dbo.FIFA23;

SELECT
    COUNT(*) AS Total_Players,
    COUNT(Contract_Until) AS Contract_Until_Not_Null,
    COUNT(Club_Jersey_Number) AS Club_Jersey_Not_Null,
    COUNT(National_Team_Jersey_Number) AS National_Jersey_Not_Null
FROM dbo.FIFA23;

SELECT
    Full_Name,
    COUNT(*) AS Player_Count
FROM dbo.FIFA23
GROUP BY Full_Name
HAVING COUNT(*) > 1
ORDER BY Player_Count DESC;

SELECT TOP 10
    Full_Name,
    Overall,
    Potential,
    Best_Position,
    Club_Name,
    Nationality
FROM dbo.FIFA23
ORDER BY Overall DESC, Potential DESC;

SELECT TOP 10
    Full_Name,
    Overall,
    Potential,
    Potential - Overall AS Growth,
    Best_Position,
    Club_Name
FROM dbo.FIFA23
ORDER BY Potential DESC, Growth DESC;

SELECT TOP 10
    Full_Name,
    Overall,
    Potential,
    Value_in_Euro,
    Wage_in_Euro,
    Club_Name
FROM dbo.FIFA23
ORDER BY Value_in_Euro DESC;

SELECT TOP 10
    Full_Name,
    Overall,
    Value_in_Euro,
    Wage_in_Euro,
    Club_Name
FROM dbo.FIFA23
ORDER BY Wage_in_Euro DESC;

SELECT
    Club_Name,
    COUNT(*) AS Player_Count,
    ROUND(AVG(CAST(Overall AS FLOAT)), 2) AS Avg_Overall
FROM dbo.FIFA23
WHERE Club_Name IS NOT NULL
GROUP BY Club_Name
ORDER BY Avg_Overall DESC;

SELECT TOP 10
    Club_Name,
    COUNT(*) AS Player_Count,
    ROUND(AVG(CAST(Overall AS FLOAT)), 2) AS Avg_Overall
FROM dbo.FIFA23
WHERE Club_Name IS NOT NULL
GROUP BY Club_Name
HAVING COUNT(*) >= 15
ORDER BY Avg_Overall DESC;

SELECT TOP 10
    Nationality,
    COUNT(*) AS Player_Count
FROM dbo.FIFA23
WHERE Nationality IS NOT NULL
GROUP BY Nationality
ORDER BY Player_Count DESC;

SELECT TOP 10
    Full_Name,
    Overall,
    Potential,
    Potential - Overall AS Growth,
    Club_Name
FROM dbo.FIFA23
WHERE Potential IS NOT NULL
  AND Overall IS NOT NULL
ORDER BY Growth DESC;

SELECT
    Best_Position,
    COUNT(*) AS Player_Count,
    ROUND(AVG(CAST(Overall AS FLOAT)), 2) AS Avg_Overall
FROM dbo.FIFA23
WHERE Best_Position IS NOT NULL
GROUP BY Best_Position
ORDER BY Avg_Overall DESC;

SELECT TOP 10
    Full_Name,
    Age,
    Overall,
    Potential,
    Value_in_Euro,
    Club_Name
FROM dbo.FIFA23
WHERE Age <= 21
  AND Potential >= 85
ORDER BY Potential DESC, Overall DESC;

SELECT TOP 10
    Full_Name,
    Overall,
    Value_in_Euro,
    Wage_in_Euro,
    Club_Name
FROM dbo.FIFA23
WHERE Wage_in_Euro IS NOT NULL
ORDER BY Wage_in_Euro DESC;

SELECT
    Full_Name,
    Overall,
    CASE
        WHEN Overall >= 85 THEN 'Elite'
        WHEN Overall >= 75 THEN 'High'
        WHEN Overall >= 65 THEN 'Medium'
        ELSE 'Low'
    END AS Rating_Category,
    Club_Name
FROM dbo.FIFA23
ORDER BY Overall DESC;

SELECT
    CASE
        WHEN Overall >= 85 THEN 'Elite'
        WHEN Overall >= 75 THEN 'High'
        WHEN Overall >= 65 THEN 'Medium'
        ELSE 'Low'
    END AS Rating_Category,
    COUNT(*) AS Player_Count
FROM dbo.FIFA23
GROUP BY
    CASE
        WHEN Overall >= 85 THEN 'Elite'
        WHEN Overall >= 75 THEN 'High'
        WHEN Overall >= 65 THEN 'Medium'
        ELSE 'Low'
    END
ORDER BY Player_Count DESC;

SELECT TOP 10
    Nationality,
    COUNT(*) AS Player_Count,
    ROUND(AVG(CAST(Overall AS FLOAT)), 2) AS Avg_Overall,
    ROUND(AVG(CAST(Potential AS FLOAT)), 2) AS Avg_Potential
FROM dbo.FIFA23
WHERE Nationality IS NOT NULL
GROUP BY Nationality
HAVING COUNT(*) >= 100
ORDER BY Avg_Overall DESC;

SELECT TOP 10
    Club_Name,
    COUNT(*) AS Player_Count,
    ROUND(AVG(CAST(Value_in_Euro AS FLOAT)), 0) AS Avg_Player_Value
FROM dbo.FIFA23
WHERE Club_Name IS NOT NULL
  AND Value_in_Euro IS NOT NULL
GROUP BY Club_Name
HAVING COUNT(*) >= 15
ORDER BY Avg_Player_Value DESC;

SELECT
    Best_Position,
    COUNT(*) AS Player_Count,
    ROUND(AVG(CAST(Overall AS FLOAT)), 2) AS Avg_Overall
FROM dbo.FIFA23
WHERE Best_Position IS NOT NULL
GROUP BY Best_Position
ORDER BY Player_Count DESC;

SELECT
    Club_Name,
    COUNT(*) AS Player_Count,
    ROUND(AVG(CAST(Overall AS FLOAT)), 2) AS Avg_Overall,
    ROUND(AVG(CAST(Potential AS FLOAT)), 2) AS Avg_Potential,
    ROUND(AVG(CAST(Potential - Overall AS FLOAT)), 2) AS Avg_Growth
FROM dbo.FIFA23
WHERE Club_Name IS NOT NULL
  AND Potential IS NOT NULL
  AND Overall IS NOT NULL
GROUP BY Club_Name
HAVING COUNT(*) >= 15
ORDER BY Avg_Growth DESC;

SELECT TOP 10 Full_Name, Overall, Potential, Club_Name
FROM dbo.FIFA23
ORDER BY Potential DESC;