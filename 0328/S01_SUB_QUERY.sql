--SUB QUERY : �ϳ��� ���� �ȿ� �� �ٸ� �ϳ��� ������ ��� �ִ� ��
--SUB QUERY�κ��� where�� ������ �����ʿ� ��ġ�ؾ� �ϸ� �ݵ�� ��ȣ�� ����� ��
--Ư���� ���(top-n�м���)�� �����ϰ�� sub query���� order by���� �� �� ����
--������ sub query�� ���� �� sub query�� ���� �����ڸ� �� �����ؾ� ��
--SELECT select_list
--FROM TABLE �Ǵ� VIEW
--WHERE ���� ������ (SELECT SELECT_LIST
--                  FROM table
--                  WHERE ����);

SELECT ename,
       comm
FROM emp
WHERE comm < (SELECT comm
              FROM emp
              WHERE ename = 'WARD');
              
--SUB QUERY�� ����
--���� �� SUB QUERY(Single row sub query) =, <>, >, <, >=, <=