--1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.--

select employee_name, monthly_salary
from employees join employees_salary
on employees.id = employees_salary.employee_id 
join salary 
on salary_id = salary.id;

--2. Вывести всех работников у которых ЗП меньше 2000.--

select employee_name, monthly_salary
from employees join employees_salary
on employees.id = employees_salary.employee_id 
join salary 
on salary_id = salary.id
where monthly_salary < 2000;

--3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)--

select employee_name, monthly_salary
from employees right join employees_salary
on employees.id = employees_salary.employee_id 
join salary 
on salary_id = salary.id 
where employee_name is null;

--4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)--

select employee_name, monthly_salary
from employees right join employees_salary
on employees.id = employees_salary.employee_id 
join salary 
on salary_id = salary.id 
where employee_name is null and monthly_salary <2000;

--5. Найти всех работников кому не начислена ЗП.--

select employee_name, monthly_salary
from employees_salary right join employees 
on employees_salary.employee_id = employees.id 
left join salary 
on salary_id = salary.id 
where monthly_salary is null;

--6. Вывести всех работников с названиями их должности.--

select employee_name, role_name
from employees join roles_employees
on employees.id = roles_employees.employee_id
join roles 
on role_id = roles.id;

--7. Вывести имена и должность только Java разработчиков.--

select employee_name, role_name
from employees join roles_employees
on employees.id = roles_employees.employee_id
join roles 
on role_id = roles.id
where role_name like '%Java_developer';

--8. Вывести имена и должность только Python разработчиков.--

select employee_name, role_name
from employees join roles_employees
on employees.id = roles_employees.employee_id
join roles 
on role_id = roles.id
where role_name like '%Python%';

--9. Вывести имена и должность всех QA инженеров.--

select employee_name, role_name
from employees join roles_employees
on employees.id = roles_employees.employee_id
join roles 
on role_id = roles.id
where role_name like '%QA%';

--10. Вывести имена и должность ручных QA инженеров.--

select employee_name, role_name
from employees join roles_employees
on employees.id = roles_employees.employee_id
join roles 
on role_id = roles.id
where role_name like '%Manual_QA%';

--11. Вывести имена и должность автоматизаторов QA--

select employee_name, role_name
from employees join roles_employees
on employees.id = roles_employees.employee_id
join roles 
on role_id = roles.id
where role_name like '%Automation_QA%';

--12. Вывести имена и зарплаты Junior специалистов--

select employee_name, role_name, monthly_salary
from employees_salary join employees
on employees_salary.employee_id  = employees.id
join salary 
on employees_salary.salary_id = salary.id
full join roles_employees
on employees_salary.employee_id = roles_employees.employee_id
join roles on roles_employees.role_id = roles.id
where role_name like 'Junior%';

--13. Вывести имена и зарплаты Middle специалистов--

select employee_name, role_name, monthly_salary
from employees_salary join employees
on employees_salary.employee_id  = employees.id
join salary 
on employees_salary.salary_id = salary.id
right join roles_employees
on employees_salary.employee_id = roles_employees.employee_id
join roles 
on roles_employees.role_id = roles.id
where role_name like 'Middle%';

--14. Вывести имена и зарплаты Senior специалистов--

select employee_name, role_name, monthly_salary
from employees_salary join employees
on employees_salary.employee_id  = employees.id
join salary 
on employees_salary.salary_id = salary.id
right join roles_employees
on employees_salary.employee_id = roles_employees.employee_id
join roles 
on roles_employees.role_id = roles.id
where role_name like 'Senior%';

--15. Вывести зарплаты Java разработчиков--

select role_name, monthly_salary
from employees_salary join salary
on salary_id = salary.id 
join roles_employees
on employees_salary.employee_id = roles_employees.employee_id
join roles 
on roles_employees.employee_id = roles.id
where role_name like '%Java_developer';

--16. Вывести зарплаты Python разработчиков-- 

select role_name, monthly_salary
from employees_salary join salary
on salary_id = salary.id 
join roles_employees
on employees_salary.employee_id = roles_employees.employee_id
join roles 
on roles_employees.employee_id = roles.id
where role_name like '%Python_developer';

--17. Вывести имена и зарплаты Junior Python разработчиков--

select employee_name, role_name, monthly_salary
from employees_salary join employees
on employees_salary.employee_id  = employees.id
join salary 
on employees_salary.salary_id = salary.id
join roles_employees
on employees_salary.employee_id = roles_employees.employee_id
join roles 
on roles_employees.role_id = roles.id
where role_name like 'Junior_Python_developer';

--18. Вывести имена и зарплаты Middle JS разработчиков--

select employee_name, role_name, monthly_salary
from employees_salary join employees
on employees_salary.employee_id  = employees.id
join salary 
on employees_salary.salary_id = salary.id
join roles_employees
on employees_salary.employee_id = roles_employees.employee_id
join roles 
on roles_employees.role_id = roles.id
where role_name like 'Middle_JavaScript_developer';

--19. Вывести имена и зарплаты Senior Java разработчиков--

select employee_name, role_name, monthly_salary
from employees_salary join employees
on employees_salary.employee_id  = employees.id
join salary 
on employees_salary.salary_id = salary.id
join roles_employees
on employees_salary.employee_id = roles_employees.employee_id
join roles 
on roles_employees.role_id = roles.id
where role_name like 'Senior_Java_developer';

--20. Вывести зарплаты Junior QA инженеров--

select role_name, monthly_salary
from employees_salary join salary
on salary_id = salary.id 
join roles_employees
on employees_salary.employee_id = roles_employees.employee_id
join roles 
on roles_employees.employee_id = roles.id
where role_name like 'Junior%QA_engineer';

--21. Вывести среднюю зарплату всех Junior специалистов--

select avg (monthly_salary)
from employees_salary join salary
on salary_id = salary.id 
join roles_employees
on employees_salary.employee_id = roles_employees.employee_id
join roles 
on roles_employees.employee_id = roles.id
where role_name like 'Junior%';

--22. Вывести сумму зарплат JS разработчиков--

select sum (monthly_salary)
from employees_salary join salary 
on salary_id = salary.id
join roles_employees
on employees_salary.employee_id = roles_employees.employee_id
join roles
on roles_employees.role_id = roles.id
where role_name like '%JavaScript_developer';

--23. Вывести минимальную ЗП QA инженеров--

select min (monthly_salary)
from employees_salary join salary 
on salary_id = salary.id
join roles_employees
on employees_salary.employee_id = roles_employees.employee_id
join roles
on roles_employees.role_id = roles.id
where role_name like '%QA_engineer';

--24. Вывести максимальную ЗП QA инженеров--

select max (monthly_salary)
from employees_salary join salary 
on salary_id = salary.id
join roles_employees
on employees_salary.employee_id = roles_employees.employee_id
join roles
on roles_employees.role_id = roles.id
where role_name like '%QA_engineer';

--25. Вывести количество QA инженеров--

select count(role_name)
from roles join roles_employees
on roles.id = role_id
where role_name like '%QA_engineer';

--26. Вывести количество Middle специалистов.--

select count(role_name)
from roles join roles_employees
on roles.id = role_id
where role_name like 'Middle%';

--27. Вывести количество разработчиков--

select count(role_name)
from roles join roles_employees
on roles.id = role_id
where role_name like '%developer';

--28. Вывести фонд (сумму) зарплаты разработчиков.--

select sum (monthly_salary)
from employees_salary join salary 
on salary_id = salary.id
join roles_employees
on employees_salary.employee_id = roles_employees.employee_id
join roles
on roles_employees.role_id = roles.id
where role_name like '%developer';

--29. Вывести имена, должности и ЗП всех специалистов по возрастанию--

select employee_name, role_name, monthly_salary
from employees_salary join employees
on employees_salary.employee_id  = employees.id
join salary 
on employees_salary.salary_id = salary.id
join roles_employees
on employees_salary.employee_id = roles_employees.employee_id
join roles on roles_employees.role_id = roles.id
order by monthly_salary;

--30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300--

select employee_name, role_name, monthly_salary
from employees_salary join employees
on employees_salary.employee_id  = employees.id
join salary 
on employees_salary.salary_id = salary.id
join roles_employees
on employees_salary.employee_id = roles_employees.employee_id
join roles on roles_employees.role_id = roles.id
where monthly_salary between 1700 and 2300
order by monthly_salary;


--31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300--

select employee_name, role_name, monthly_salary
from employees_salary join employees
on employees_salary.employee_id  = employees.id
join salary 
on employees_salary.salary_id = salary.id
join roles_employees
on employees_salary.employee_id = roles_employees.employee_id
join roles on roles_employees.role_id = roles.id
where monthly_salary < 2300
order by monthly_salary;

--32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000--

select employee_name, role_name, monthly_salary
from employees_salary join employees
on employees_salary.employee_id  = employees.id
join salary 
on employees_salary.salary_id = salary.id
join roles_employees
on employees_salary.employee_id = roles_employees.employee_id
join roles on roles_employees.role_id = roles.id
where monthly_salary  in (1100, 1500, 2000)
order by monthly_salary;

