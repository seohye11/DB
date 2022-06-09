INSERT INTO emp_hw (empno
                    ,ename
                    ,job
                    ,mgr
                    ,hiredate
                    ,sal
                    ,comm
                    ,deptno
                    ,remark
)SELECT empno
        ,ename
        ,job
         ,mgr
         ,hiredate
         ,sal
        ,comm
        ,deptno
        ,null as remark 
FROM emp;

SELECT * FROM emp_hw;
