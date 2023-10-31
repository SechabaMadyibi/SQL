--exercise 1
ALTER TABLE meat_poultry_egg_inspect_backup ADD COLUMN  meat_processing boolean  
ALTER TABLE meat_poultry_egg_inspect_backup ADD COLUMN  poultry_processing boolean

--exercise 2

UPDATE meat_poultry_egg_inspect_backup 
SET meat_processing = TRUE
WHERE activities  ILIKE 'Meat Processing%'

UPDATE meat_poultry_egg_inspect_backup 
SET poultry_processing = TRUE
WHERE activities ILIKE '%Meat Poultry Processing%'

--exercise 3

SELECT count( meat_processing)meatProcessing , count(poultry_processing) poultryProcessing
FROM meat_poultry_egg_inspect_backup


SELECT count(meat_processing ) , count(poultry_processing)
FROM meat_poultry_egg_inspect_backup
WHERE meat_processing = TRUE  AND poultry_processing = TRUE