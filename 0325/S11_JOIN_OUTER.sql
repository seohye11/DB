--OUTER JOIN : EQUI,NONE EQUI�� ��ȸ�Ϸ��� �����͵��� JOIN�� �����ϴ�
--��� ���̺� �����Ͱ� �����ϴ� ��쿡�� ��� ���� ���
--�ݴ�� OUTER JOIN�� �� �� ���̺��� �����Ͱ� �ְ� �ٸ� �� �� ���̺���
--�����Ͱ� ���� ���, �����Ͱ� �ִ� �� ������ ��� ����ϴ� ���

--Student ���̺�� Professor ���̺��� Join�Ͽ� �л��̸��� �������� �̸��� 
--����ϼ���. �� ���������� �������� ���� �л��� ��ܵ� �Բ� ����ϼ���.

--oracle outer join
--where �������� ������ ���� �ʿ� (+)
SELECT t1.name as stud_name,
       t2.name as prof_name
FROM student t1, professor t2
WHERE t1.profno = t2.profno(+)
;

--ANSI outer join
--�������ǿ� �����Ͱ� �ִ� ���� ����Ű�� ��
SELECT t1.name as stud_name,
       t2.name as prof_name
FROM student t1 LEFT OUTER JOIN professor t2
ON t1.profno = t2.profno
;