-------------------------------VIEW ALL CONNECTIONS FOR A JOB SEEKER----------------------------------

SELECT des_js_user_id as conn_id FROM js_connection WHERE src_js_user_id =: js_id
UNION
SELECT src_js_user_id as conn_id FROM js_connection WHERE des_js_user_id =: js_id;

---------------------------------------------SEARCH JOBS-----------------------------------------------

SELECT designation, profile_photo_url, company_name, industry, city, due_date, vacancy 
FROM jp_master NATURAL JOIN jp_job WHERE 
designation =: search_string OR company_name =: search_string OR industry =: search_string OR city =: search_string
ORDER BY designation,industry,company_name,city,due_date;

-----------------------------------------SEARCH JOB SEEKERS--------------------------------------------

SELECT company_name,profile_photo_url,industry,city FROM jp_master 
WHERE company_name =: search_string OR industry =: search_string OR city =: search_string
ORDER BY company_name,industry,city;

------------------------------------------SEARCH JOB PROVIDERS-----------------------------------------
SELECT fname,lname,profile_photo_url,city FROM js_master
WHERE fname =: search_string OR lname =: search_strig OR mname =: search_string OR city =: search_string
ORDER BY fname,lname,city;

--------------------------------------RECOMMENDED JOBS FOR A JOB SEEKER------------------------------

SELECT designation, profile_photo_url, company_name, industry, city, due_date, vacancy, salary_avg as conn_id 
FROM (SELECT * FROM js_preferences where js_user_id =: js_id) as JS,
(SELECT * FROM jp_master NATURAL JOIN jp_job) as JOB 
WHERE JOB.industry = JS.idustry1 OR JOB.industry = JS.idustry2 OR JOB.industry = JS.idustry3 OR
JOB.city = JS.location1 OR JOB.city = JS.location2 OR JOB.city = JS.location3 OR JOB.city = JS.city OR
JOB.designation = JS.designation1 OR JOB.designation = JS.designation2 OR JOB.designation = JS.designation3 OR
(JOB.min_salary <= JS.salary_avg AND JOB.max_salary >= JS.salary_avg) OR JOB.size_in_emp >= JS.min_size_in_emp OR 
(JOB.min_age <= JS.age AND JOB.max_age <= JS.age) OR JOB.exp_year <= JS.total_exp_year
ORDER BY JOB.designation,JOB.industry,JOB.company_name,JOB.city,JOB.due_date;
