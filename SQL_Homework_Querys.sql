--List the following details of each employee: employee number, 
--last name, first name, gender, and salary.

CREATE VIEW Emp_sal AS
select "Employees".emp_no,
"Employees".first_name,
"Employees".last_name,
"Employees".gender,
"Salaries".salary
from "Employees"
left outer join "Salaries" on
"Employees".emp_no = "Salaries".emp_no;

select * from Emp_sal;


--List employees who were hired in 1986.

select * from "Employees"
where hire_date like '1986%';


--List the manager of each department with the following information: department number, 
--department name, the manager's employee number, 
--last name, first name, and start and end employment dates.

create view Mang_info as

select DP."Dept_no", DP."Dept_name", DM."emp_no", EM."last_name", EM."first_name", 
DM."from_date", DM."to_date"
from "Departments" DP
inner join "Dept_Mang" DM on DM."dept_no" = DP."Dept_no"
inner join "Employees" EM on EM.emp_no = DM.emp_no;

select * from Mang_info;



--List the department of each employee with the following information: employee number, 
--last name, first name, and department name.
create view Emp_Dept as

select EM.emp_no, EM.last_name, EM.first_name, DP."Dept_name" 
from "Employees" EM
inner join "Dept_Emp" DE on DE.emp_no = Em.emp_no
inner join "Departments" DP on DP."Dept_no"= DE."dept_no";

select * from Emp_Dept;

--List all employees whose first name is "Hercules" and last names begin with "B."

create view hurk_emp as
select * from "Employees"
where first_name = 'Hercules' and last_name like 'B%';


--List all employees in the Sales department, including their employee number, 
--last name, first name, and department name.
	
select * from Emp_Dept
where "Dept_name" = 'Sales';
	
--List all employees in the Sales and Development departments, including their employee number, 
--last name, first name, and department name.
	
select * from Emp_Dept
where "Dept_name" = 'Sales'
or "Dept_name" = 'Development';

--In descending order, list the frequency count of employee last names, i.e., how many 
--employees share each last name.

select last_name, count(*)
from "Employees"
group by last_name
order by count desc;
