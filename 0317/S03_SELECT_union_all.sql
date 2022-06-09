-- UNION ALL : 집합의 결과를 합쳐서 출력, 중복값을 제거하지 않는다 정렬없음
SELECT studno, name, deptno1,1
FROM student
WHERE deptno1 = 101
UNION ALL
SELECT profno, name, deptno,2
FROM professor
WHERE deptno = 101
;