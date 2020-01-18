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

/* 4. How many posting in Tennessee have a star rating above 4?

Answer: 3

*/

SELECT COUNT (*)
FROM data_analyst_jobs
WHERE location = 'TN' AND star_rating > 4;

/* 5. How many postings in the dataset have a review count between 500 and 1000? 

Answer: 151
*/

SELECT COUNT (*)
FROM data_analyst_jobs
WHERE review_count BETWEEN 500 and 1000;

/* 6. Show the average star rating for each state. The output should show the state as `state` and the average rating for the state as `avg_rating`. Which state shows the highest average rating? 

Answer: NE

*/

SELECT location AS state, AVG(star_rating) as avg_rating
FROM data_analyst_jobs
GROUP BY state
ORDER BY avg_rating DESC;

/* 7.	Select unique job titles from the data_analyst_jobs table. How many are there?

Answer: 881 

*/

SELECT COUNT (DISTINCT title)
FROM data_analyst_jobs;

/* 8.	How many unique job titles are there for California companies?

Answer: 230

*/

SELECT COUNT (DISTINCT title)
FROM data_analyst_jobs
WHERE location = 'CA';

/* 9.	Find the name of each company and its average star rating for all companies that have more than 5000 reviews across all locations. How many companies are there with more that 5000 reviews across all locations?

Answer: 40

*/

SELECT company, SUM(review_count) as review_count
FROM data_analyst_jobs
WHERE review_count > 5000 AND company IS NOT NULL
GROUP BY company
ORDER BY review_count DESC;

/* 10.	Add the code to order the query in #9 from highest to lowest average star rating. Which company with more than 5000 reviews across all locations in the dataset has the highest star rating? What is that rating?

Answer: Google, 4.3

*/

SELECT company, SUM(review_count) as review_count, AVG (star_rating) as      avg_star_rating
FROM data_analyst_jobs
WHERE review_count > 5000
GROUP BY company
ORDER BY avg_star_rating DESC;

/* 11.	Find all the job titles that contain the word ‘Analyst’. How many different job titles are there?

Answer: 774

*/

SELECT DISTINCT title
FROM data_analyst_jobs
WHERE title LIKE '%analyst%' OR
title LIKE '%Analyst%' OR
title LIKE '%ANALYST%';






