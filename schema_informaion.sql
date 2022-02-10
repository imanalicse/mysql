
--Find all tables containing column with specified name
SELECT TABLE_SCHEMA, TABLE_NAME, COLUMN_NAME
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'YOUR_DATABASE'
AND COLUMN_NAME LIKE '%YOUR_COLUMN%';