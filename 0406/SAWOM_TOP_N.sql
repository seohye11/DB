SELECT *
FROM sawon;

TRUNCATE TABLE sawon;--������ ����

INSERT INTO sawon
SELECT LPAD(ROWNUM,4,0) AS empno,
'pckw'||LPAD(ROWNUM,4,0) AS ename,
SYSDATE - ROWNUM AS hiredate,
DECODE(MOD(ROWNUM,2),0,10,20) AS deptno
FROM dual
CONNECT BY LEVEL <= 9000;

COMMIT;

SELECT COUNT(*) FROM sawon;

SELECT tt1.rnum AS num,
       tt1.empno,
       tt1.ename,
       TO_CHAR(tt1.hiredate,'YYYY/MM/DD') AS hiredate,
       tt1.deptno
FROM(
    SELECT ROWNUM AS rnum, t1.*
    FROM( SELECT *
        FROM sawon
        ORDER BY hiredate DESC)t1--����
    WHERE ROWNUM <= (&PAGE_SIZE*(&PAGE_NUM-1)+&PAGE_SIZE))tt1
WHERE rnum >= &PAGE_SIZE*(&PAGE_NUM-1)+1
;
--PAGE_SIZE, PAGE_NUM
--���۹�ȣ : 1,11,21,31..-> &PAGE_SIZE*(&PAGE_NUM-1)+1
--����ȣ : 10,20,30,40..-> &PAGE_SIZE*(&PAGE_NUM-1)+&PAGE_SIZE

SELECT COUNT(*)
FROM sawon
ORDER BY hiredate DESC;--����

SELECT A.*,B.*
FROM(
SELECT tt1.rnum AS num,
       tt1.empno,
       tt1.ename,
       TO_CHAR(tt1.hiredate,'YYYY/MM/DD') AS hiredate,
       tt1.deptno
FROM(
    SELECT ROWNUM AS rnum, t1.*
    FROM( SELECT *
        FROM sawon
        ORDER BY hiredate DESC)t1--����
    WHERE ROWNUM <= 10)tt1
WHERE rnum >= 1)A
CROSS JOIN
(
SELECT COUNT(*) AS total_cnt
FROM sawon
ORDER BY hiredate DESC)B;