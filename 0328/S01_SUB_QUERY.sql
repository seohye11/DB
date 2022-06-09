--SUB QUERY : 하나의 쿼리 안에 또 다른 하나의 쿼리가 담겨 있는 것
--SUB QUERY부분은 where절 연산자 오른쪽에 위치해야 하면 반드시 괄호로 묶어야 함
--특별한 경우(top-n분석등)를 제외하고는 sub query절에 order by절이 올 수 없음
--단일행 sub query와 다중 행 sub query에 따라 연산자를 잘 선택해야 함
--SELECT select_list
--FROM TABLE 또는 VIEW
--WHERE 조건 연산자 (SELECT SELECT_LIST
--                  FROM table
--                  WHERE 조건);

SELECT ename,
       comm
FROM emp
WHERE comm < (SELECT comm
              FROM emp
              WHERE ename = 'WARD');
              
--SUB QUERY의 종류
--단일 행 SUB QUERY(Single row sub query) =, <>, >, <, >=, <=