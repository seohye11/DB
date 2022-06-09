--계층형 쿼리(Hierarchical Query)
-- : 데이터를 조회할 때 상하위 관계를 가진 데이터들 조회에 사용

--계층형 쿼리 주의사항
--1) CONNECT BY절에는 Sub query가 올 수 없다
--2) 대량의 데이터가 있을 경우 시간이 오래 걸릴 수 있으므로 
--   start with, connect bt, where에는 인덱스가 설정되어 있어야 함
--3) 부분범위 처리기법을 계층형 쿼리에서는 사용할 수 없다

SELECT LPAD(ename, LEVEL * 4, '*'),
       LEVEL
FROM emp
CONNECT BY PRIOR empno = mgr --연결조건
START WITH empno = 7839;     --시작조건

SELECT LPAD(ename, LEVEL * 4, '*'),
       LEVEL
FROM emp
CONNECT BY empno = PRIOR mgr
START WITH empno = 7839;

--PRIOR위치 중요 : 해당 키워드가 설정되어 있는 컬럼에서 바로 
--                이전데이터를 찾아라 값을 찾는데 사용
--CONNECT BY PRIOR 자식 컬럼 : 부모 -> 자식
--CONNECT BY PRIOR 부모 컬럼 : 자식 -> 부모