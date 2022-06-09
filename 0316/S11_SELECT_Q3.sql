SELECT empno AS EMPLOYEE_NO,
       ename AS EMPLOYEE_NAME,
       job AS MANAGEER,
       sal  AS SALARY,
       comm AS COMMISSION,
       deptno AS DEPARTMENT_NO 
FROM EMP
ORDER BY deptno DESC, ename ASC
/