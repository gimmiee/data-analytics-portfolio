-- Combine university information with tuition data

SELECT 
  s.id,
  s.name,
  s.region,
  t.year,
  t.department_name,
  t.day_evening_type,
  t.semester,
  t.tuition_grad_lecture_fee
FROM school_tuitions t
LEFT JOIN schools s
  ON t.school_id = s.id
WHERE s.name IS NOT NULL;
