SET SERVEROUTPUT ON
DECLARE
EMPNO NUMBER:=20;
BEGIN
DBMS_OUTPUT.PUT_LINE('EMPNO IS '||EMPNO);
END;

DECLARE
EMPNO NUMBER:=100;
BEGIN
DBMS_OUTPUT.PUT_LINE('EMP NO IS '|| EMPNO);
END;



DECLARE
EMPNO NUMBER;          --WE HAVE DECLARE HERE A VARIABLE
BEGIN
EMPNO:=1500;           --WE HAVE INITIALIZE A VARIABLE HERE
DBMS_OUTPUT.PUT_LINE('EMP NO'||EMPNO);
END;



DECLARE 
EMPNAME VARCHAR2(10):='RAJ';
BEGIN
DBMS_OUTPUT.PUT_LINE('EMP NAME IS '||EMPNAME);
END;


DECLARE
EMPNAME VARCHAR2(10):='HEMANT';
EMPSAL NUMBER(7):=85000;
EMPAGE VARCHAR2(2):=25;
BEGIN
DBMS_OUTPUT.PUT_LINE('EMPLOYEE NAME= '||EMPNAME);
DBMS_OUTPUT.PUT_LINE('EMPLOYEE AGE=  '||EMPAGE);
DBMS_OUTPUT.PUT_LINE('EMPLOYEE SALARY= '||EMPSAL);
END;



DECLARE 
STUDNAME VARCHAR2(10);
BEGIN
 STUDNAME:='Rakesh';
 DBMS_OUTPUT.PUT_LINE('STUDENT NAME IS  '||UPPER(STUDNAME));
END; 

DECLARE 
EMPNAME VARCHAR2(40);
EMPCITY VARCHAR2(40);
EMPSTATE VARCHAR2(30);
BEGIN
 EMPNAME:='Rahul';
 EMPCITY:='NASHIK';
 EMPSTATE:='MAHARASHTRA';
DBMS_OUTPUT.PUT_LINE('EMP NAME IS '||UPPER(EMPNAME));
DBMS_OUTPUT.PUT_LINE('EMP CITY IS '||LOWER(EMPCITY));
DBMS_OUTPUT.PUT_LINE('EMP STATE IS '||INITCAP(EMPSTATE));
END;

DECLARE
EMPNAME VARCHAR2(20);
EMPSTATE VARCHAR2(10);
BEGIN
EMPNAME:='AJAY';
EMPSTATE:='KARNATAKA';
DBMS_OUTPUT.PUT_LINE('EMP NAME IS '||EMPNAME);
END;



DECLARE 
DW NUMBER(10):=10;
BEGIN
DBMS_OUTPUT.PUT_LINE('THE VALUES OF D IS '||TO_CHAR(DW));
END;










SET SERVEROUTPUT ON
DECLARE
EMPNAME VARCHAR2(10);
BEGIN
EMPNAME :='RAKESH';
DBMS_OUTPUT.PUT_LINE('EMPNAME IS '||EMPNAME);
END;



