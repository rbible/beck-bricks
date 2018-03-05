/*all db tablenames in dbname */
select table_name from information_schema.tables where table_schema = 'dbname';