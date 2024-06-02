/* ==========================
    Data- Employee
     Left join
  ===========================

------------------------
  Live BigQuery Example
------------------------ */
--left connect  two tables with simliar id of both sides.

SELECT  
employee.name as employee_name,
employee.role as employee_role,
department.name as department_name
FROM `project-143-415413.employee.departments_t` as department
left join  
`project-143-415413.employee.employee_t` as employee 
on 
employee.department_id = department.department_id