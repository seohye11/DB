--계층형 쿼리의 기본 구조
SELECT empno,
       ename,
       job,
       mgr,
       level,
       LPAD(' ',(LEVEL-1)*2,' ')|| ename AS depth_ename,
       SYS_CONNECT_BY_PATH(ename,'-') AS ename_list
FROM emp
START WITH mgr IS NULL
CONNECT BY PRIOR empno = mgr 
ORDER SIBLINGS BY ename --같은 레벨이면 이름순으로 정렬
;