

use DATALAKE.DBT_TEST;
create or replace table DATALAKE.DBT_TEST.MY_DETAILS as (SELECT 'Nikhil' as name, 'Pune' as city, '1993-01-01' as dob FROM DATALAKE.DBT_TEST.MY_FIRST_DBT_MODEL);

