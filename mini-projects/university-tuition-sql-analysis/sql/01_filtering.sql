-- Define analysis scope: universities only

SELECT 
  id,
  name,
  region,
  degree_type,
  establishment_type,
  establishment_type_detail
FROM schools
WHERE degree_type LIKE '%대학%'
  AND name IS NOT NULL;
