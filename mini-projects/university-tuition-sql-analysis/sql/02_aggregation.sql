-- University distribution by region

SELECT 
  region,
  COUNT(*) AS university_count
FROM schools
WHERE degree_type LIKE '%대학%'
GROUP BY region
ORDER BY university_count DESC;
