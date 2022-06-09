--다중 컬럼 서브쿼리 사용
--pk를 여러 컬럼을 합쳐서 만들었을 경우 한꺼번에 비교하기 위해 사용
SELECT t1.profno,
       t1.name as prof_name,
       TO_CHAR(t1.hiredate,'YYYY-MM-DD') hiredate,
       t2.dname
FROM professor t1, department t2
WHERE t1.deptno = t2.deptno
AND (t1.deptno, t1.hiredate) IN(SELECT deptno,
                                       MIN(hiredate)
                                FROM professor
                                GROUP BY deptno)
ORDER BY hiredate;

