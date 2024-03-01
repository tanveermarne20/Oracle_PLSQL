--1.PRINT TABLE OF 23
SET SERVEROUTPUT ON
DECLARE
NUM1 NUMBER :=&NO1;
i NUMBER:=1;
RSLT NUMBER;
BEGIN 
  LOOP
   RSLT:=NUM1*i;
   DBMS_OUTPUT.PUT_LINE(RSLT);
   i:=i+1;
   EXIT WHEN i=11;
  END LOOP;
END;


--------------------------------------------------------------------------
DECLARE
NUM1 NUMBER :=&NO1;
P NUMBER :=1;
RSLT NUMBER;
BEGIN
 LOOP
    RSLT:=NUM1*P;    --23*1 ,23*2 , 23*3, 23*10
   DBMS_OUTPUT.PUT_LINE(RSLT); 
   P:=P+1;
  EXIT WHEN P=11; 
 END LOOP;
END;
----------------------------------------------------
DECLARE
NUM1 NUMBER:=&NO1;
J NUMBER:=1;
RSLT NUMBER;
BEGIN
LOOP
  RSLT:=NUM1*J;
  DBMS_OUTPUT.PUT_LINE(RSLT);
  J:=J+1;  
  EXIT WHEN J=11;
  END LOOP;
END;
------------------------------------------------------------------------
--02.PRINT EVEN NUMBERS FROM 1 TO 100

DECLARE
NUM1 NUMBER:=1;
BEGIN 
LOOP
 IF MOD(NUM1,2)=0 THEN
 DBMS_OUTPUT.PUT_LINE(NUM1);
 END IF;
 NUM1:=NUM1+1;
 EXIT WHEN  NUM1>100;
END LOOP;
END;
--------------------------------------------------------------------------------

SET SERVEROUTPUT ON
DECLARE
 NUM1 NUMBER:=&NUM1;
 B NUMBER:=1;
 RSLT NUMBER;
BEGIN 
  LOOP
    RSLT:=NUM1*B;          --25*1
    DBMS_OUTPUT.PUT_LINE(RSLT);  --25
   B:=B+1;                          --1+1 --->2
   EXIT WHEN B=11;                   --2=11  --true 
  END LOOP;
END;


