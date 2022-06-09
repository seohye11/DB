--삭제 테이블 쓰레기 통에서 복구
--1) flashback확인
SELECT object_name,
       original_name,
       createtime
FROM recyclebin;

--2) 복원
FLASHBACK TABLE "BIN$uHlKO5txRBitIUKAsEfxUg==$0" TO BEFORE DROP;
--Flashback을(를) 성공했습니다.

SELECT * FROM emp_hw;