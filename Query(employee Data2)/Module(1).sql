/* ==========================
    Data- Employee
     Join
  ===========================

------------------------
  Live BigQuery Example
------------------------ */
--join connect  two tables with simliar id of both sides.

SELECT  
employee.name as employee_name,
employee.role as employee_role,
department.name as department_name
FROM `employee.departments_t` as department
 join  
`employee.employee_t` as employee 
on 
employee.department_id = department.department_id