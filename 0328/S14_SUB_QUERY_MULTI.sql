--상호 연관 sub query
--main query값을 sub query 에 주고 sub query 수행한 후 그 결과를 다시 main query로 반환

--SELECT select_list
--FROM TABLE 또는 VIEW
--WHERE 조건 연산자 (SELECT SELECT_LIST
--                  FROM table
--                  WHERE 조건);

--Emp2 테이블을 조회해서 직원들 중에서 자신의 직급의 평균연봉과 같거나 많이 받는 
--사람들의 이름과 직급, 현재 연봉을 출력하세요.

SELECT t1.name,
       t1.position,
       TO_CHAR(t1.pay,'$999,999,999') as salary
FROM emp2 t1
WHERE t1.pay >= (SELECT AVG(NVL(t2.pay,0))
                 FROM emp2 t2
                 WHERE t1.position = t2.position);