--스칼라 서브 쿼리(Scalar Sub query)
-- : SELECT 절에 오는 서브 쿼리로 한 번에 결과 1행씩 반환
--SUB QUERY는 오는 위치에 따라 그 이름이 다르다
--1. SELECT(sub query) : 스칼라 서브쿼리
--2. FROM(sub query) : Inline 뷰
--3. WHERE(sub query) : SUB QUERY

SELECT t1.name,
       (SELECT dname
        FROM dept2 t2
        WHERE t1.deptno = t2.dcode) "DNAME"
FROM emp2 t1
;

--join
SELECT t1.name,
       t2.dname "DNAME"
FROM emp2 t1, dept2 t2
WHERE t1.deptno = t2.dcode
;

-- 1. Main Query 를 수행한 후 Scalar Sub Query 에 필요한 값을 제공합니다.
--
-- 2. Scalar Sub Query 를 수행하기 위해 필요한 데이터가 들어있는 블록을 메모리로 로딩합니다.
--
-- 3. Main Query 에서 주어진 조건을 가지고 필요한 값을 찾습니다.
--   그리고 이 결과를 메모리에 입력 값 과 출력 값으로 메모리 내의 query execution cache 라는
--   곳에 저장 해 둡니다. 여기서 입력 값은 Main Query 에서 주어진 값이고 출력값은 Scalar 
--   Sub Query 를 수행 후 나온 결과값입니다.
--   이 값을 저장하는 캐쉬 값을 지정하는 파라미터는 _query_execution_cache_max_size 입니다.
--
--4. 다음 조건이 Main Query 에서 Scalar Sub Query 로 들어오면 해쉬 함수를 이용해서 해당
--   값이 캐쉬에 존재하는 지 찾고 있으면 즉시 결과 값을 출력하고 없으면 다시 블록을 엑세스 
--   해서 해당 값을 찾은 후 다시 메모리에 캐쉬 해 둡니다. 
--
--5. Main Query 가 끝날 때까지 반복합니다.