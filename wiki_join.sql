CREATE TABLE department
(
 DepartmentID INT Primary key,
 DepartmentName VARCHAR(20)
);
--exists (select * from t1);

CREATE TABLE employee
(
 LastName VARCHAR(20),
 DepartmentID INT references department(DepartmentID)
);

INSERT INTO department VALUES(31, 'Sales');
INSERT INTO department VALUES(33, 'Engineering');
INSERT INTO department VALUES(34, 'Clerical');
INSERT INTO department VALUES(35, 'Marketing');

INSERT INTO employee VALUES('Rafferty', 31);
INSERT INTO employee VALUES('Jones', 33);
INSERT INTO employee VALUES('Heisenberg', 33);
INSERT INTO employee VALUES('Robinson', 34);
INSERT INTO employee VALUES('Smith', 34);
INSERT INTO employee VALUES('Williams', NULL);

SELECT *
FROM employee CROSS JOIN department;
SELECT *
FROM employee, department;

SELECT employee.LastName, employee.DepartmentID, department.DepartmentName 
FROM employee 
INNER JOIN department ON
employee.DepartmentID = department.DepartmentID;

SELECT employee.LastName, employee.DepartmentID, department.DepartmentName 
FROM employee, department 
where
employee.DepartmentID = department.DepartmentID;
select * from employee;
select * from department;
SELECT *
FROM employee JOIN department
  ON employee.DepartmentID = department.DepartmentID;
SELECT *
FROM employee INNER JOIN department USING (DepartmentID);
SELECT *
FROM employee NATURAL JOIN department;
SELECT *
FROM employee 
LEFT OUTER JOIN department ON employee.DepartmentID = department.DepartmentID;
SELECT lastname, employee.departmentid as departmentId, departmentname
FROM employee 
LEFT OUTER JOIN department ON employee.DepartmentID = department.DepartmentID;

/*
 * -- SQL Error [42601]: ERROR: syntax error at or near ")"
SELECT *
FROM employee, department
WHERE employee.DepartmentID = department.DepartmentID(+);

-- SQL Error [42883]: ERROR: operator does not exist: integer *= integer
SELECT *
FROM employee, department
WHERE employee.DepartmentID *= department.DepartmentID;

-- SQL Error [42601]: ERROR: syntax error at or near "department"
SELECT *
FROM employee, OUTER department
WHERE employee.DepartmentID = department.DepartmentID;
*/
SELECT *
FROM employee RIGHT OUTER JOIN department
  ON employee.DepartmentID = department.DepartmentID;
SELECT *
FROM employee FULL OUTER JOIN department
  ON employee.DepartmentID = department.DepartmentID;
 
select * from t1 as col11 
union 
select * from t2 as col12;

select * from t1 as col11 
intersect 
select * from t2 as col12;

select * from t1 as col11
where exists (select * from t1 as col11);

select * from t1 as col11
where not exists (select * from t1 as col11);

SELECT * FROM employee;

SELECT F.EmployeeID, F.LastName, S.EmployeeID, S.LastName, F.Country
FROM Employee F INNER JOIN Employee S ON F.Country = S.Country
WHERE F.EmployeeID < S.EmployeeID
ORDER BY F.EmployeeID, S.EmployeeID;

SELECT city, max(temp_lo)
    FROM weather
    GROUP BY city;
   
SELECT city as c, max(temp_lo) as a
    FROM weather
    where city = 'Hayward'
    GROUP BY city
    HAVING (max(temp_lo) < 40) and (min(temp_lo) > 0) and city = 'Hayward';
   
select city from (select * from weather) as newtable where not (city = 'fake');
select city from (select * from weather) as newtable where (city like '%');
select city from (select * from weather) as newtable where (city like 'S%');
select city from (select * from weather) as newtable where (city not like 'S%');
select city from (select * from weather) as newtable where not (city  like 'S%');
select city from (select * from weather) as newtable where not not (city  like 'S%');

drop table prefilled_table;
-- create table prefilled_table (a varchar(10)) as select * from t1;
--replace VIEW v AS SELECT t1.col1 as c1, t2.col1 as c2 FROM t1, t2;












 
 



