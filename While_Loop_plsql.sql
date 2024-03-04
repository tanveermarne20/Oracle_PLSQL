-----------------------------------------------------------------------------
SET SERVEROUTPUT ON
DECLARE
 NUM1 NUMBER:=&NO1;
 i NUMBER:=1;
 RSLT NUMBER;
BEGIN 
    WHILE i<11   LOOP   --1<11
     RSLT:=NUM1*i;    --45*1
      DBMS_OUTPUT.PUT_LINE(RSLT);
      i:=i+1;
     END LOOP;
END;
--------------------------------------
SET SERVEROUTPUT ON
DECLARE
 NUM1 NUMBER:=&NO1;
 RSLT NUMBER:=1;
 P NUMBER:=1;
BEGIN
  WHILE p<11 LOOP
     RSLT:=NUM1*P;
     DBMS_OUTPUT.PUT_LINE(RSLT);
     p:=p+1;
  END LOOP;
END;
--------------------------------------------------------------------
--PRINT TABLE OF 45 USING WHILE LOOP;
SET SERVEROUTPUT ON
DECLARE
 NUM1 NUMBER:=&NO1;
 i NUMBER:=1;
BEGIN
    WHILE(i<11)  LOOP     ---IF THE CONDITION IS TRUE ,THAN COMPILER GOES INSIDE THE LOOP
      RSLT:=NUM1*i;    --56*1  
     DBMS_OUTPUT.PUT_LINE(RSLT);  --56
      i:=i+1;                   --1+1=2
    END LOOP;
END;

----------------------------------------------------------
SET SERVEROUTPUT ON
DECLARE
 NUM1 NUMBER:=&NO1;
 Q NUMBER:=1;
 RSLT NUMBER;
BEGIN
     WHILE (Q<11)   LOOP    ---IF GIVEN CONDITION IS TRUE THAN COMPILER ENTERS IN LOOP
         RSLT:=NUM1*Q;    --20*1=20
         DBMS_OUTPUT.PUT_LINE(RSLT);
          Q:=Q+1;
     END LOOP;
END;
---------------------------------------------
SET SERVEROUTPUT ON
DECLARE
 NUM1 NUMBER:=&NO1;
 W NUMBER:=1;
BEGIN
 WHILE (W<11) LOOP    ---IF CONDITION IS TRUE THAN GO INSIDE LOOP
    RSLT:=NUM1*W;    ----25*1
     DBMS_OUTPUT.PUT_LINE(RSLT);   --25
     W:=W+1;
 END LOOP;
END;

------------------------WHILE LOOP PROGRAMS--------------------------
-----------------------------------------------------------------------------------------------------4th March----------------------------------------
--1.	Write a Plsql program to print all natural numbers from 1 to n. - using while loop
SET SERVEROUTPUT ON
DECLARE
  N NUMBER:=&NUMER;
  Y NUMBER:=1;
BEGIN
   WHILE (Y<=N) LOOP                     --1<=30,   2<=30,   3<=30
        DBMS_OUTPUT.PUT_LINE(Y);          --1 ,2 ,3
        Y:=Y+1;                            --1+1=2       2+1=3 ,   3+1=4
    END LOOP;
END;
--2.	Write a Plsql program to print all natural numbers in reverse (from n to 1). - using while loop
SET SERVEROUTPUT ON
DECLARE
n NUMBER := &n; 
i NUMBER := n;  
BEGIN
    WHILE i >= 1 LOOP                        --30>=1                
        DBMS_OUTPUT.PUT_LINE(i);           --- 30
        i := i - 1;                        -- 30-1=29
    END LOOP;
END;


--3.	Write a Plsql program to print all alphabets from a to z. - using while loop
SET SERVEROUTPUT ON
DECLARE
ALPHA CHAR(1):='A';
BEGIN
 WHILE (ALPHA<='Z') LOOP
        DBMS_OUTPUT.PUT_LINE(ALPHA);
        ALPHA:=CHR(ASCII(ALPHA)+1);
END LOOP;
END;
--4.	Write a Plsql program to print all even numbers between 1 to 100. - using while loop
SET SERVEROUTPUT ON
DECLARE 
NUM NUMBER:=1;
BEGIN
   WHILE (NUM<=100)   LOOP
     IF MOD(NUM,2)=0 THEN
     DBMS_OUTPUT.PUT_LINE(NUM);
     END IF;
     NUM:=NUM+1;
   END LOOP;
END;


--5.	Write a Plsql program to print all odd number between 1 to 100.
SET SERVEROUTPUT ON
DECLARE
 F NUMBER:=1;
BEGIN
 WHILE (F<=100) LOOP
    IF MOD(F,2)=1 THEN
     DBMS_OUTPUT.PUT_LINE(F);
   END IF;
   F:=F+1;
 END LOOP;
END;




