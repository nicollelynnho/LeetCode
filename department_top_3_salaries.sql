/*A company's executives are interested in seeing who earns the most money in each of the company's departments. A high earner in a department is an employee who has a salary in the top three unique salaries for that department.

Write an SQL query to find the employees who are high earners in each of the departments.

Return the result table in any order.*/

Select
   t2.name as 'Department',
   Employee.name as 'Employee',
   t2.salary as 'Salary' 
From
   (
      Select
         * 
      from
         (
            Select
               Employee.departmentId,
               Employee.salary,
               Rank() over (partition by Employee.departmentId 
            order by
               Employee.salary desc) as 'rank' 
            from
               Employee 
            Group by
               Employee.departmentId,
               Employee.salary
         )
         t1 
         inner join
            Department 
            on Department.id = t1.departmentId 
   )
   t2 
   inner join
      Employee 
      on t2.Salary = Employee.salary 
      and t2.Id = Employee.departmentId 
where
   t2.rank <= 3
