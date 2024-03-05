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


--1.PRINT TABLE OF 23
SET SERVEROUTPUT ON
DECLARE
NUM1 NUMBER:=&NO1;
P NUMBER:=1;
RSLT NUMBER;
BEGIN
LOOP
 RSLT:=NUM1*P;
DBMS_OUTPUT.PUT_LINE(RSLT);
 p:=p+1;
  EXIT WHEN P=11;
 END LOOP;
END;

--============================================
DECLARE
NUM1 NUMBER:=&NO1;
k NUMBER:=1;
RSLT NUMBER;
BEGIN
 LOOP
     RSLT:=NUM1*k;
     DBMS_OUTPUT.PUT_LINE(RSLT);
     k:=k+1;
     EXIT WHEN k=11;
  END LOOP;
END;

--=====================================================
--PRINT TABLE OF 98
DECLARE
 NUM1 NUMBER:=&NO1;
 Q NUMBER:=1;
 RSLT NUMBER;
BEGIN
   LOOP
    RSLT:=NUM1*Q;            --98*1
    DBMS_OUTPUT.PUT_LINE(RSLT);   --98
   Q:=Q+1;
   EXIT WHEN Q=11;
   END LOOP;
END;


--==========================================
DECLARE
NUM1 NUMBER:=&NO1;
W NUMBER:=1;
RSLT NUMBER;
BEGIN
  LOOP
        RSLT:=NUM1*W;
        DBMS_OUTPUT.PUT_LINE(RSLT);
        W:=W+1;
        EXIT WHEN W=11;              --WHEN CODITION BECOMES TRUE IT WILL EXIT
  END LOOP;
END;
-------------------------------------------------------------------------
--PRINT TABLE OF 45
DECLARE
 NUM1 NUMBER:=&NO1;
 E NUMBER:=1;
 RSLT NUMBER;
BEGIN
LOOP
 RSLT:=NUM1*E;
 DBMS_OUTPUT.PUT_LINE(RSLT);
 E:=E+1;
 EXIT WHEN E=11;
 END LOOP;
END;



--==============================
--PRINT TABLE OF 88
DECLARE
 NUM1 NUMBER:=&NO1;
 R NUMBER:=1;
 RESULT NUMBER;
BEGIN
 LOOP
   RESULT:=NUM1*R;
   DBMS_OUTPUT.PUT_LINE(RESULT);
   R:=R+1;
   EXIT WHEN R=11;
 END LOOP;
END;

--==========================================================
SET SERVEROUTPUT ON
DECLARE
NUM1 NUMBER:=&NUM1;
D NUMBER:=1;
RSLT NUMBER;
BEGIN                   
 LOOP
    RSLT:=NUM1*D;            --25*1
    DBMS_OUTPUT.PUT_LINE(RSLT);   --25
    D:=D+1;                            --1+1
   EXIT WHEN D=11;
  END LOOP;
END;

--=======================================================================
--PRINT TABLE OF 56 USING BASIC LOOP
SET SERVEROUTPUT ON
DECLARE
NUM1 NUMBER:=&NO1;
L NUMBER:=1;
RSLT NUMBER;
BEGIN
 LOOP
     RSLT:=NUM1*L;
     DBMS_OUTPUT.PUT_LINE(RSLT);
     L:=L+1;
     EXIT WHEN L=11;
  END LOOP;
END;
 
 

------------------------------------------------
----------------------------------------------




