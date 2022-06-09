--XMLAGG XML함수 : 저장된 4,000바이트가 넘는 출력 결과가 나올 수 있다면
--그 형태는 VARCHAR2, CLOB reurn varchar2인 경우
--XMLELEMENT : <NAME>,SMITH</NAME>
--XMLAGG : <NAME>,CLARK</NAME><NAME>,KING</NAME><NAME>,MILLER</NAME>


SELECT deptno,
       SUBSTR(XMLAGG(XMLELEMENT(name,',',ename)ORDER BY hiredate)
       .EXTRACT('//text()').getStringVal(),2)
       as "xml_ename"  
FROM emp
GROUP BY deptno
;