

use DATALAKE.DBT_TEST;
create or replace table DATALAKE.DBT_TEST.USER_DETAILS as (SELECT name as username, city, DATEDIFF('YEAR', dob, current_date) as age 
FROM DATALAKE.DBT_TEST.MY_DETAILS
where city is not Null);

