--계층구조에서 일부분만 계층화하기
-- : 계층 구조 전개 시 특정 부분은 전개를 할 필요가 없는 경우

--계층형 쿼리의 기본 구조 :ename이 jones인 사원은 계층구조 전개를 하지 않겠다
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
           AND ename <> 'JONES'
ORDER SIBLINGS BY ename --같은 레벨이면 이름순으로 정렬
;