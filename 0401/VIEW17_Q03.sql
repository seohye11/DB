--3. Student 테이블과 department 테이블을 사용하여 학과이름 , 학과별 최대키 , 
--학과별로 가장 키가 큰 학생들의 이름과 키 를 Inline View 를 사용하여 아래와 같이 출력하세요.

SELECT A.dname,
       A.max_height,
       B.name,
       B.height
FROM (SELECT t2.deptno,
             t2.dname,
             MAX(t1.height) AS max_height
      FROM student t1 INNER JOIN department t2
      ON t1.deptno1 = t2.deptno
      GROUP BY t2.deptno, t2.dname)A JOIN student B
ON a.deptno = b.deptno1
AND a.max_height = b.height
;

SELECT * FROM student;