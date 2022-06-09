--������������ �Ϻκи� ����ȭ�ϱ�
-- : ���� ���� ���� �� Ư�� �κ��� ������ �� �ʿ䰡 ���� ���

--������ ������ �⺻ ���� :ename�� jones�� ����� �������� ������ ���� �ʰڴ�
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
ORDER SIBLINGS BY ename --���� �����̸� �̸������� ����
;