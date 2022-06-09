--Student 테이블을 사용하여 제 1 전공 (deptno1) 이 101 번인 학과 학생들의 이름과 주민번호, 
--성별을 출력하되 성별은 주민번호(jumin) 컬럼을 이용하여 7번째 숫자가 1일 경우 "  남자" , 
--2일 경우 "여자  " 로 출력하세요.

SELECT name,
       jumin,
       deptno1,
       DECODE(SUBSTR(jumin,7,1),'1','MAN','WOMEN') AS "Gender"
FROM student
WHERE deptno1 = 101
;