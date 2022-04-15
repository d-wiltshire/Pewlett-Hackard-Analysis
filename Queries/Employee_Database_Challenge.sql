--Deliverable 1

SELECT e.emp_no, e.first_name, e.last_name, t.title, t.from_date, t.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;

SELECT * FROM retirement_titles;


-- Use Distinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (rt.emp_no) rt.emp_no, rt.first_name, rt.last_name, rt.title
INTO unique_titles
FROM retirement_titles AS rt
WHERE (rt.to_date = '9999-01-01')
ORDER BY rt.emp_no, rt.to_date DESC;

SELECT * FROM unique_titles;


SELECT COUNT(title), title 
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY COUNT(title) DESC;

SELECT * FROM retiring_titles;


--Deliverable 2
SELECT DISTINCT ON (e.emp_no) e.emp_no, e.first_name, e.last_name, e.birth_date, de.from_date, de.to_date, t.title
INTO mentorship_eligibility
FROM employees as e
INNER JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE (de.to_date = '9999-01-01')
AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no;

SELECT * FROM mentorship_eligibility;



--Additional query 1a
--Find the employee's department for each dept in the mentorship_eligibility table.
SELECT me.emp_no, me.first_name, me.last_name, me.birth_date, me.from_date, me.to_date, me.title, d.dept_name
INTO mentorship_eligibility_dept
FROM mentorship_eligibility as me
INNER JOIN dept_emp as de
ON (me.emp_no = de.emp_no)
INNER JOIN departments as d
ON (de.dept_no = d.dept_no)
ORDER BY d.dept_name;

SELECT * FROM mentorship_eligibility_dept;
--DROP TABLE IF EXISTS mentorship_eligibility_department;

--Additional query 1b
--From the table above, count the number of mentorship-ready employees in each department.
SELECT COUNT(dept_name), dept_name 
INTO mentorship_dept_count
FROM mentorship_eligibility_dept
GROUP BY dept_name
ORDER BY COUNT(dept_name) DESC;

SELECT * FROM mentorship_dept_count;
--DROP TABLE IF EXISTS mentorship_dept_count;

--Additional query 2
--Identify the gender split between current employees of retirement age 
SELECT COUNT(e.gender), e.gender
INTO emp_retiring_gender
FROM employees as e
INNER JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (de.to_date = '9999-01-01')
GROUP BY e.gender;

