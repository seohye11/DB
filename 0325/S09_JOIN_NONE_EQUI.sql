--Customer ���̺�� gift ���̺��� Join�Ͽ� ������ ���ϸ��� ����Ʈ�� 
--��ȸ�� �� �ش� ���ϸ��� ������ ���� �� �ִ� ��ǰ�� ��ȸ�Ͽ� ���� �̸���
--���� �� �ִ� ��ǰ ���� �Ʒ��� ���� ����ϼ���.

--between���ٴ� �������̸� �񱳿����� ���->����ӵ� ���
--oracle join
SELECT t1.gname as gust_name,
       TO_CHAR(t1.point,'999,999,999') as point,
       t2.gname as giff_name
FROM customer t1, gift t2
WHERE t1.point >= t2.g_start 
AND t1.point <= t2.g_end
;

--ANSI join
SELECT t1.gname as gust_name,
       TO_CHAR(t1.point,'999,999,999') as point,
       t2.gname as giff_name
FROM customer t1 JOIN gift t2
ON t1.point >= t2.g_start 
AND t1.point >= t2.g_end
;