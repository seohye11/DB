--student ���̺��� �Ʒ��� ���� 1������ 101���� �л����� �̸��� �ֹ��� 
--����ϵ� �ֹ��� �� 7�ڸ��� '-'�� '/'�� ǥ��
SELECT name,
       jumin,
       REPLACE(jumin,SUBSTR(jumin,7),'-/-/-/-') "REPLACE"
FROM student
WHERE deptno1 = 101
;