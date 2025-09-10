/*
Question: What are the top-paying data analyst jobs?
- Identify the top 10 highest-paying Data Analyst roles that are available remotely.
- Focuses on job postings with specified salaries (remove nulls).
- Why? Highlight the top-paying opportunities for Data Analysts, offering insights into employer and salary data.
*/


    SELECT
        jpf.job_id,
        jpf.job_title,
        jpf.job_location,
        jpf.job_schedule_type,
        jpf. salary_year_avg,
        jpf. job_posted_date,
        cd.name AS company_name

        FROM
        job_postings_fact AS jpf

        LEFT JOIN company_dim AS cd ON
        cd.company_id = jpf.company_id

        WHERE job_title_short = 'Data Analyst' AND 
        job_location = 'Anywhere' AND
        salary_year_avg IS NOT NULL

        ORDER BY salary_year_avg DESC
        LIMIT 10


 