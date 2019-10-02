/*Please add ; after each select statement*/
CREATE PROCEDURE dateFormatting()
BEGIN
    SELECT 
    IF(REGEXP_LIKE(date_str, '^[0-9]{4}(-[0-9]{2}){2}$'), date_str, REGEXP_REPLACE(date_str,'(?=[-][0-9](?![0-9]))\-','-0'))
    as date_iso 
    FROM documents;
END