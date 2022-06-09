--case�� : decode���� ���������� Ư�� ���ǿ� ���� ��ȯ�� �����͸� ������ �� ���
--���ǰ� ����� '='�� ���
--CASE���� WHEN���1 THEN���1
--         WHEN���2 THEN���2
--         WHEN���3 THEN���3 
--         ELSE���4
--END "�÷���"

--Student ���̺��� �����Ͽ� deptno1 �� 201 ���� �л��� �̸��� ��ȭ��ȣ, ���� ���� ����ϼ���. 
--�� ������ȣ�� 02 �� "SEOUL", 031 �̸� "GYEONGGI", 051 �̸� "BUSAN", 
--052 �̸� "ULSAN", 055 �̸� "GYEONGNAM", �������� "ETC" �� ǥ���ϼ���.

SELECT name,
       tel,
       CASE(SUBSTR(tel,1,INSTR(tel,')')-1)) WHEN'02'THEN'SOEUL'
                                            WHEN'031'THEN'GYEONGGL'
                                            WHEN'051'THEN'BUSAN'
                                            WHEN'052'THEN'ULSAN'
                                            WHEN'052'THEN'GUEONGNAM'
                                            ELSE'ETC'
       END AS LOC02,
       DECODE(SUBSTR(tel,1,INSTR(tel,')')-1),'02','SEOUL',
                                            '031','GYEONGGI',
                                            '051','BUSAN',
                                            '052','ULSAN',
                                            '055','GYEONGNAM','ETC') AS LOC
FROM student
WHERE deptno1 = 201
;