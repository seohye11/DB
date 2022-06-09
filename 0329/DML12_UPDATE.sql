--1ºÐº¹½À p.279
SELECT *
FROM emp_temp
WHERE sal <= 2500;

UPDATE EMP_TEMP
    SET COMM = 50
WHERE sal <= 2500;

COMMIT;