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

SELECT delete_employee_by_id (30);

CREATE Procedure remove_emp_var() 
LANGUAGE plpgsql AS 
$$
DECLARE
	test_var INT;
	BEGIN
	SELECT employee_id INTO test_var
	from employees
	WHERE
	    employee_id = 28;
	DELETE from employees
	WHERE
	    employee_id = test_var;
END
$$; 

CALL remove_emp_var ();



CREATE Procedure remove_emp_by_id(p_emp_id INT) 
LANGUAGE plpgsql AS 
$$
DECLARE
	test_var INT;
	BEGIN
	SELECT employee_id INTO test_var
	from employees
	WHERE
	    employee_id = p_emp_id;
	DELETE from employees
	WHERE
	    employee_id = test_var;


        RAISE NOTICE 'Employee Removed Successfully!';
END
$$; 


CALL remove_emp_by_id(27);