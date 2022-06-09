--1. Professor 테이블과 department 테이블을 조인하여 교수번호와 교수이름, 
--소속 학과이름을 조회하는 view 를 생성하세요. 
--View 이름은 v_prof_dept2 로 하세요.

CREATE OR REPLACE VIEW v_prof_dept2
AS(SELECT t1.profno,
          t1.name,
          t2.dname
   FROM professor t1, department t2
   WHERE t1.deptno = t2.deptno)
WITH READ ONLY--읽기 전용 뷰
;

SELECT * FROM v_prof_dept2;