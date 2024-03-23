-- Active: 1709621644738@@127.0.0.1@5432@ph

SELECT * from employees;

SELECT count(*) from employees;

CREATE Function emp_count() RETURNS INT 
LANGUAGE SQL AS 
$$
	SELECT count(*) from employees;
$$; 

SELECT emp_count ();

CREATE Function delete_employee_by_id(p_emp_id INT) 
RETURNS void 
LANGUAGE SQL AS 
$$
	DELETE from employees WHERE employee_id = p_emp_id;
$$; 


SELECT delete_employee_by_id(30)