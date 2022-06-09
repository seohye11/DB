--��ȣ ���� sub query
--main query���� sub query �� �ְ� sub query ������ �� �� ����� �ٽ� main query�� ��ȯ

--SELECT select_list
--FROM TABLE �Ǵ� VIEW
--WHERE ���� ������ (SELECT SELECT_LIST
--                  FROM table
--                  WHERE ����);

--Emp2 ���̺��� ��ȸ�ؼ� ������ �߿��� �ڽ��� ������ ��տ����� ���ų� ���� �޴� 
--������� �̸��� ����, ���� ������ ����ϼ���.

SELECT t1.name,
       t1.position,
       TO_CHAR(t1.pay,'$999,999,999') as salary
FROM emp2 t1
WHERE t1.pay >= (SELECT AVG(NVL(t2.pay,0))
                 FROM emp2 t2
                 WHERE t1.position = t2.position);