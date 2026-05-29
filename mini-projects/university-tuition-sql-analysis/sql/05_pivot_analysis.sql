-- Tuition trend analysis by university

SELECT 
  s.id,
  s.name,
  AVG(CASE WHEN year = 2021 THEN avg_fee END) AS y2021,
  AVG(CASE WHEN year = 2022 THEN avg_fee END) AS y2022,
  AVG(CASE WHEN year = 2023 THEN avg_fee END) AS y2023
FROM (
  SELECT 
    year,
    school_id,
    AVG(tuition_grad_lecture_fee) AS avg_fee
  FROM school_tuitions
  GROUP BY year, school_id
) t
JOIN schools s
  ON t.school_id = s.id
GROUP BY s.id, s.name;
