--SELECT * 
--FROM emp
--WHERE sal >= 2000
--AND sal <= 3000
--;

--SELECT * 
--FROM emp
--WHERE sal BETWEEN 2000 AND 3000
--;

--급여가 2000~3000 사이가 아닌 사원들
SELECT * 
FROM emp
WHERE sal NOT BETWEEN 2000 AND 3000
;