-- Tuition analysis using CTE

WITH tuition AS (
  SELECT 
    year,
    school_id,
    AVG(tuition_grad_lecture_fee) AS avg_fee
  FROM school_tuitions
  GROUP BY year, school_id
),
tuition_with_school AS (
  SELECT 
    t.year,
    t.school_id,
    s.name,
    t.avg_fee
  FROM tuition t
  LEFT JOIN schools s
    ON t.school_id = s.id
  WHERE s.name IS NOT NULL
    AND t.avg_fee > 0
)
SELECT 
  name,
  year,
  avg_fee
FROM tuition_with_school
ORDER BY name, year;
