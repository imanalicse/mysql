-- concatenates two or more strings into a single string with a specified separator
-- CONCAT_WS(separator, str1, str2, ...);
SELECT CONCAT_WS("-", "first_name", "last_lame") AS full_name;