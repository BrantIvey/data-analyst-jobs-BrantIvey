/* Q1: How many rows is it?

*/

SELECT COUNT (*)
FROM data_analyst_jobs;

/* 2.	Write a query to look at just the first 10 rows. What company is associated with the job posting on the 10th row? 

Answer: XTO Land Data Analyst

*/

SELECT *
FROM data_analyst_jobs
LIMIT 10;


/* 3. How many postings are in Tennessee? How many are there in either Tennessee or Kentucky?

Answer: TN - 21; KY/TN - 27

*/

SELECT COUNT (*)
FROM data_analyst_jobs
WHERE location = 'TN';

SELECT COUNT (*)
FROM data_analyst_jobs
WHERE location = 'TN' OR location = 'KY';
