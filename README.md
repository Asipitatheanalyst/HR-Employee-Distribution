# Human Resources Analysis

## Table of Contents
1. [Project Overview](#project-overview)
2. [Data Source](#data-source)
3. [Tools Used](#tools-used)
4. [Data Cleaning and Preparation](#data-cleaning-and-preparation)
5. [Exploratory Data Analysis (EDA)](#exploratory-data-analysis-eda)
6. [Data Analysis](#data-analysis)
7. [Results](#results)
8. [Recommendations](#recommendations)
9. [References](#references)

## Project Overview
This project analyzes HR data to explore various aspects of the workforce, such as gender distribution, department turnover rates, employee location demographics, and employee count changes over time. The objective is to clean, analyze, and visualize the dataset for actionable insights that can be used to inform HR decisions. This project utilizes SQL for data cleaning and analysis, and Power BI for visualization to explore a comprehensive HR dataset.

## Data Source
- The dataset used for this project was obtained from *Kaggle*. It contains anonymized HR data, including employee demographics, job roles, and termination records.
- *Data* - HR Data with over 22000 rows from the year 2000 to 2020.

## Tools Used
1. *SQL*: For data cleaning, formatting, and exploratory data analysis.
2. *Power BI*: For creating visualizations and dashboards.
3. *Database Management Tool*: MySQL Workbench.

## Data Cleaning and Preparation
- Inspected the dataset for missing values, duplicates, and anomalies.
- Transformed birthdate and hire_date columns using SQL DATE_FORMAT to standardize the format.
- Categorized data into key attributes like job title, location, department, and termination status.

## Exploratory Data Analysis (EDA)
Key questions explored in this project include:
1. What is the gender breakdown of employees in the company?
2. What is the race/ethnicity breakdown of employees in the company?
3. What is the age distribution of employees in the company?
4. How many employees work at headquarters versus remote locations?
5. What is the average length of employment for employees who have been terminated?
6. How does the gender distribution vary across departments and job titles?
7. What is the distribution of job titles across the company?
8. Which department has the highest turnover rate?
9. What is the distribution of employees across locations by city and state?
10. How has the company's employee count changed over time based on hire and term dates?
11. What is the tenure distribution for each department?

## Data Analysis
### Notable SQL Code
The most interesting part of the analysis was formatting date columns:
```sql
UPDATE hr
SET birthdate = CASE
    WHEN birthdate LIKE '%/%/%' THEN STR_TO_DATE(birthdate, '%m/%d/%Y')
    WHEN hire_date LIKE '%/%/%' THEN STR_TO_DATE(hire_date, '%m/%d/%Y')
 ELSE NULL
END;
```

## Results
- There are more male employees.
- White race is the most dominant while Native Hawaiian and American Indian are the least dominant.
- The youngest employee is 20 years old and the oldest is 57 years old.
- 5 age groups were created (18-24, 25-34, 35-44, 45-54, 55-64). A large number of employees were between 25-34 followed by 35-44 while the smallest group was 55-64.
- A large number of employees work at the headquarters versus remotely.
- The average length of employment for terminated employees is around 8 years.
- The gender distribution across departments is fairly balanced but there are generally more male than female employees.
- The Marketing department has the highest turnover rate followed by Training. The least turn over rate are in the Research and development, Support and Legal departments.
- A large number of employees come from the state of Ohio.
- The net change in employees has increased over the years.
- The average tenure for each department is about 8 years with Legal and Auditing having the highest and Services, Sales and Marketing having the lowest.

## Recommendations
1. Enhance hiring of underrepresented genders and racial groups through targeted recruitment and inclusion initiatives.
2. Focus on Marketing, the department with the highest turnover, by addressing workload and career growth opportunities.
3. Offer more remote options to attract a geographically diverse workforce.
4. Provide leadership training for the majority-aged group (25–44) to ensure future-ready leaders.
5. Support employees aged 55+ with flexible work options and mentorship roles.
6. Leverage Ohio’s large workforce concentration as a regional talent hub.
7. Increase gender balance in male-dominated fields like Engineering and Sales.
8. Offer wellness, flexibility, and rewards to maintain long tenure.

## References





   

