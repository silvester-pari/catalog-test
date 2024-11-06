SELECT f.animal_id AS animal_id, 
       f.animal_type AS animal_type, 
       d.animal_description AS animal_description, 
       f.animal_name AS animal_name, 
       'Farm' AS domain, 
       att.animal_type_description AS description 
  
FROM tutorial.farm f 
  
LEFT OUTER JOIN tutorial.animal_types att 
ON f.animal_type = att.animal_type_id 
  
LEFT OUTER JOIN tutorial.animal_descriptions d 
ON f.animal_description = d.animal_description_id 
  
UNION ALL 
  
SELECT w.animal_id AS animal_id, 
       w.animal_type AS animal_type, 
       d.animal_description AS animal_description, 
       w.animal_name AS animal_name, 
       'Wild' AS domain, 
       att.animal_type_description AS description 
  
FROM tutorial.wild w 
  
LEFT OUTER JOIN tutorial.animal_types att 
ON w.animal_type = att.animal_type_id 
  
LEFT OUTER JOIN tutorial.animal_descriptions d 
ON w.animal_description = d.animal_description_id 
  
WHERE w.animal_id IN (SELECT animal_id FROM wild WHERE animal_id <= 3)