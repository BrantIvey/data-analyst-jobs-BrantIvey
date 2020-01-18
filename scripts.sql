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
