--XMLAGG XML�Լ� : ����� 4,000����Ʈ�� �Ѵ� ��� ����� ���� �� �ִٸ�
--�� ���´� VARCHAR2, CLOB reurn varchar2�� ���
--XMLELEMENT : <NAME>,SMITH</NAME>
--XMLAGG : <NAME>,CLARK</NAME><NAME>,KING</NAME><NAME>,MILLER</NAME>


SELECT deptno,
       SUBSTR(XMLAGG(XMLELEMENT(name,',',ename)ORDER BY hiredate)
       .EXTRACT('//text()').getStringVal(),2)
       as "xml_ename"  
FROM emp
GROUP BY deptno
;