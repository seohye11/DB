--SELECT ename || job
--FROM emp
--;

--SELECT ename || job
--FROM emp
--;

SELECT ename || q'[ 's job is ]' ||job "NAME AND JOB"
FROM emp
;