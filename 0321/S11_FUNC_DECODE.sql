--DECODE함수 : JAVA언어 등에서 사용중인 분기문인 if문 오라클로 가져온 함수
-- 오라클 전용 함수
--DECODE(A,B,'1',NULL) A가 B이면 '1', 마지막NULL생략가능

SELECT deptno,
       name,
       DECODE(deptno, 101, 'Compuer Emgineering','NULL') AS DNAME
FROM professor
;
