# Pewlett-Hackard-Analysis

The purpose of this analysis was to help management understand and prepare for an oncoming wave of retirements from retirement-age employees at a fictional company, Pewlett Hackard. The analysis reviewed employee information and department information (employee numbers, departments, hire dates, titles, etc.) distributed among six datasets that were linked by various keys. The analysis took place using PostgreSQL and pgAdmin 4.

## Results

### First Deliverable

The first deliverable included a Retirement Titles table holding all the titles of employees who were born between January 1, 1952 and December 31, 1955. The DISTINCT ON statement was used to limit titles to the most recent title of each employee. In addition, the COUNT() function was used to create a table that has the number of retirement-age employees by most recent job title. Only current employees were included in the analysis.

Four bullet points with info:
- 72,458 unique individuals fall into this age range and may be considering retirement soon.
- The top category of current titles of individuals in this age group is Senior Engineer, with 25,916 individuals in this category.
- The second highest category of current titles of individuals in this age group is Senior Staff, with 24,926 individuals in this category. The majority of individuals in this age range, therefore, fall into one of these two groups.


### Second Deliverable

The second deliverable was a mentorship-eligibility table that holds the current employees who were born between January 1, 1965 and December 31, 1965. These would be senior employees who may be good candidates for mentoring by employees considering retirement, in order to help prepare them for more senior roles in the future.

Four bullet points with info:


## Summary

### How many roles will need to be filled as the "silver tsunami" begins to make an impact?

### Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?


### Provide two additional queries or tables that may provide more insight into the upcoming "silver tsunami."
