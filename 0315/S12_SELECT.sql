--컬럼 별칭
SELECT empno"employee number",
       ename AS "Employee Name",
       sal employee_pay
FROM emp
;

--alias 컬럼에 대한 별칭
--1.empno"employee number"  ->  employee numbe
--2.ename AS "Employee Name"  ->  Employee Name
--3.sal employee_pay  ->  EMPLOYEE PAY