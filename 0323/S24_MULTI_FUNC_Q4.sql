SELECT DECODE(comm,NULL,'x','o') AS EXIST_COMM,
       COUNT(*) AS CNT
FROM emp
GROUP BY DECODE(comm,NULL,'x','o')
ORDER BY DECODE(comm,NULL,'x','o') DESC
;

--Ǯ��
SELECT EXIST_COMM, COUNT(*)
FROM(
    SELECT CASE WHEN comm IS NOT NULL THEN 'o'
             ELSE 'x'
         END AS EXIST_COMM
    FROM emp
)
GROUP BY EXIST_COMM
;