SELECT name as username, city, DATEDIFF('YEAR', dob, current_date) as age 
FROM my_details
where city is not Null;