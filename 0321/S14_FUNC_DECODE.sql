--DECODE(A,B,DECODE(C,D,'1',NULL))
--(DECODE 함수 안에 DECODE함수 중첩)
--A가 B이고 C가 D를 만족하면 '1', C가 D가 아닐 경우 NULL

--if(deptno == 101) {
--    if(name ----== 'Audie Murphy') {
--        'Best!'
--    } else {
--        null
--    }
--}

--professor 테이블에서 교수의 이름과 부서번호를 출력하고 101 번 부서 중에서 이름이 "Audie Murphy" 
--교수에게 "BEST!" 라고 출력하고 101번 부서 중에서 이름이 "Audie Murphy" 교수가 아닌 나머지에는 NULL 값을 출력하세요. 
--만약 101 번 외 다른 학과에 "Audie Murphy" 교수가 있어도 "BEST!" 가 출력되면 안됩니다.

SELECT deptno,
       name,
       DECODE(deptno,101,
       DECODE(name,'Audie Murphy','BEST!',NULL)) "NESTED_DECODE"
FROM professor
;