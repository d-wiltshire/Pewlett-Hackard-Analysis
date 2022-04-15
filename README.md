# Pewlett-Hackard-Analysis

The purpose of this analysis was to help management understand and prepare for an oncoming wave of retirements from retirement-age employees at a fictional company, Pewlett Hackard. The analysis reviewed employee information and department information (employee numbers, departments, hire dates, titles, etc.) distributed among six datasets that were linked by various keys. The analysis took place using PostgreSQL and pgAdmin 4.

## Results

### First Deliverable

The first deliverable included a Retirement Titles table holding all the titles of employees who were born between January 1, 1952 and December 31, 1955. The DISTINCT ON statement was used to limit titles to the most recent title of each employee. In addition, the COUNT() function was used to create a table that has the number of retirement-age employees by most recent job title. Only current employees were included in the analysis.


![retiring_titles image](https://user-images.githubusercontent.com/100863488/163622816-7dcb7114-45ea-4b10-95d5-d7b6a900c67c.png)


### Second Deliverable

The second deliverable was a mentorship-eligibility table that holds the current employees who were born between January 1, 1965 and December 31, 1965. These would be senior employees who may be good candidates for mentoring by employees considering retirement, in order to help prepare them for more senior roles in the future.



### Major Takeaways

- 72,458 unique current employees may be considering retirement soon, according to this analysis.
- The top category of current titles of individuals in this retirement-eligible group is Senior Engineer, with 25,916 individuals in this category.
- The second highest category of current titles of individuals in this age group is Senior Staff, with 24,926 individuals in this category. The majority of individuals in this age range, therefore, fall into one of these two groups.
- There are more individuals in "senior" roles in this age group than individuals who are not in senior roles. For example, there are 25,916 Senior Engineers, but only 9,285 Engineers and 1,090 Assistant Engineers. This speaks to the level of expertise and institutional memory held by employees in this age group.
- 1,549 employees would be good candidates for mentorship and are included in the second deliverable.



## Summary

### How many roles will need to be filled as the "silver tsunami" begins to make an impact?

72,458 unique current employees may be considering retirement soon, and their roles will need to be filled by younger employees.

### Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?

According to the analysis in the first deliverable, 72,458 unique current employees may be considering retirement soon. This was based on birth dates between January 1, 1952, and December 31, 1955 (four years). According to the analysis in the second deliverable, 1,549 employees would be good candidates for mentorship to replace the 72,458 individuals who may be retiring. The second deliverable was based on birth dates in only one year, but even if we multiply this number by four to approximate the same birth date range, the number of mentorship-ready employees is less than one-tenth of the number of employees who may be retiring soon.

### Provide two additional queries or tables that may provide more insight into the upcoming "silver tsunami."

#### 1. Identifying the department of mentorship-ready employees.

Mentorship-ready employees (Deliverable 2) may not be in the same departments in the same proportions as retiring employees. It would be helpful to compare proportions of retiring employees and mentorship-ready employees by department. To the mentorship_eligibility table (Deliverable 2), I added the department name, and then counted mentorship-ready employees by department.


![mentorship_eligibility_dept_count](https://user-images.githubusercontent.com/100863488/163630560-20226f55-e56d-457c-9760-df63972039e6.png)


#### 2. Identifying the gender of retirement-ready employees. 

I added "gender" to the columns returned for the retirement-eligible group (Deliverable 1) and applied a count. Retirement-ready employees are more likely to be male than female at this company. It would be helpful to compare a similar count of younger employees in order to better understand the ways in which the company culture might shift (or might need to shift) when the retirement-eligible group does retire, and also in order to recruit and retain female employees moving forward. 

![gender](https://user-images.githubusercontent.com/100863488/163622627-ae296147-1199-41f3-8e6a-fba8e184504f.png)

