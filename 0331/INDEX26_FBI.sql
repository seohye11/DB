--�Լ� ��� �ε���(function based index)
-- : ���� ����� ���� ������ ������ ����� ����� �ε��� ����
--   WHERE���� ������ ����� �ٸ� ���·� �����ؼ��� �ȵ˴ϴ�
--   WHERE pay + 1000 = 2000; -> WHERE pay = 2000-1000;
--   WHERE ename != 'FORD';

--CREATE INDEX �ε�����
--ON ���̺� �̸�(pay + 1000);

--professor ���̺� pay -> (pay+1000)
CREATE INDEX idx_prof_pay_fbi
ON professor(pay+1000);