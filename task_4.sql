SELECT (
	COLUMN_NAME AS "Column Name",
	COLUMN_TYPE AS "Column Type",
	IS_NULLABLE AS "Is Nullabe",
        COLUMN_DEFAULT AS "Default Value",
     	EXTRA AS "Extra Information"
       )
FROM (
	INFORMATION_SCHEMA.COLUMNS
     )
WHERE (
	TABLE_SCHEMA = DATABASE()
        AND TABLE_NAME = 'books';
      )

