--1.PRINT TABLE OF 23
SET SERVEROUTPUT ON
DECLARE
NUM1 NUMBER :=&NUM1;   
i NUMBER:=1;
RSLT NUMBER; 
BEGIN 
WHILE i<11 LOOP     --1<11
 RSLT:=NUM1*i;
 DBMS_OUTPUT.PUT_LINE(RSLT);
 i:=i+1;
 END LOOP;
END;

-----------------------------------------------------------------------------