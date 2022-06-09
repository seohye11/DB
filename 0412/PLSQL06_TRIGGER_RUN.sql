--5번 트리거 이용해 SCOTT의 월급 3000 -> 3500으로 인상
UPDATE emp_trg
SET sal = 3500
WHERE empno = 7788;

UPDATE emp_trg
SET sal = 3600
WHERE empno = 7788;--트리거 화요일 추가 오류(주말 사원정보 수정 불가)