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

--6.Write a Plsql program to find sum of all natural numbers between 1 to n.
--Natural numbers are a set of positive integers starting from 1 and continuing indefinitely
SET SERVEROUTPUT ON
DECLARE
  NO1 NUMBER := &NO1;
  SUM1 NUMBER := 0;
  I NUMBER := 1;
BEGIN
  WHILE I <= NO1 LOOP            --1<=30 ,2<=30
    SUM1 := SUM1 + I;             --0+1+2
    I := I + 1;                     --1+1=2, 2+1
  END LOOP;
  DBMS_OUTPUT.PUT_LINE(SUM1);
END;

--7.	Write a Plsql program to find sum of all even numbers between 1 to n.
SET SERVEROUTPUT ON
DECLARE
NUM1 NUMBER:=&NUM1;
U NUMBER:=1;
SUM1 NUMBER :=0;
BEGIN
   WHILE (U<=NUM1)  LOOP 
      IF MOD(U,2)=0 THEN    
          SUM1:=SUM1+U;
          END IF;
           U:=U+1;
   END LOOP;
   DBMS_OUTPUT.PUT_LINE(SUM1);
END;




--8.	Write a Plsql program to find sum of all odd numbers between 1 to n.
--9.	Write a Plsql program to print multiplication table of any number.
--10.	Write a Plsql program to count number of digits in a number.
--11.	Write a plsql program to find first and last digit of a number.
--12.	Write a plsql program to find sum of first and last digit of a number.
--13.	Write a plsql program to swap first and last digits of a number.
--14.	Write a plsql program to calculate sum of digits of a number.
--15.	Write a plsql program to calculate product of digits of a number.
--16.	Write a plsql program to enter a number and print its reverse.
--17.	Write a plsql program to check whether a number is palindrome or not.
--18.	Write a plsql program to find frequency of each digit in a given integer.
--19.	Write a plsql program to enter a number and print it in words.
--20.	Write a plsql program to find power of a number using for loop.
--21.	Write a plsql program to find all factors of a number.
--22.	Write a plsql program to calculate factorial of a number.
--23.	Write a plsql program to check whether a number is Prime number or not.
--24.	Write a plsql program to print all Prime numbers between 1 to n.
--25.	Write a plsql program to find sum of all prime numbers between 1 to n.
--26.	Write a plsql program to find all prime factors of a number.
--27.	Write a plsql program to check whether a number is Armstrong number or not.
--28.	Write a plsql program to print all Armstrong numbers between 1 to n.
--29.	Write a plsql program to check whether a number is Perfect number or not.
--30.	Write a plsql program to print all Perfect numbers between 1 to n.
--31.	Write a plsql program to check whether a number is Strong number or not.
--32.	Write a plsql program to print all Strong numbers between 1 to n.
SET SERVEROUTPUT ON

DECLARE
   N NUMBER := &NO1; -- Enter the value of N
   i NUMBER;
   num NUMBER;
   digit NUMBER;
   factorial NUMBER;
   sum_factorials NUMBER;
   
   FUNCTION factorial_func(num NUMBER) RETURN NUMBER IS
      result NUMBER := 1;
   BEGIN
      FOR i IN 1..num LOOP
         result := result * i;
      END LOOP;
      RETURN result;
   END factorial_func;

BEGIN
   DBMS_OUTPUT.PUT_LINE('Strong numbers between 1 and ' || N || ':');

   FOR num IN 1..N LOOP
      i := num;
      sum_factorials := 0;

      WHILE i > 0 LOOP
         digit := i MOD 10;
         factorial := factorial_func(digit);
         sum_factorials := sum_factorials + factorial;
         i := TRUNC(i / 10);
      END LOOP;

      IF num = sum_factorials THEN
         DBMS_OUTPUT.PUT_LINE(num);
      END IF;
   END LOOP;
END;

--33.	Write a plsql program to print Fibonacci series up to n terms.

--34.	Write a plsql program to print Pascal triangle upto n rows.

-------------------------******************---------------------------------------


--PRINT ALL NATURAL NOS FROM 1 TO N
SET SERVEROUTPUT ON
DECLARE
N NUMBER:=&NTH;
P NUMBER:=1;
BEGIN
   WHILE (P<=N)  LOOP                   --1<=20
         DBMS_OUTPUT.PUT_LINE(P);           --1
         P:=P+1;                               --1+1=2
   END LOOP;
END;


--PRINT TABLE OF 23
SET SERVEROUTPUT ON
DECLARE
 NUM1 NUMBER:=&NUM1;
 P NUMBER:=1;
 RSLT NUMBER;
BEGIN
     LOOP
          RSLT:=NUM1*P;                ---25*1    
          DBMS_OUTPUT.PUT_LINE(RSLT);        --25
          P:=P+1;
          EXIT WHEN P=11;           
     END LOOP;
END;

-----------------------------------------------------
SET SERVEROUTPUT ON
DECLARE
 NUM1 NUMBER:=&NUM1; 
I NUMBER:=1;
RSLT NUMBER;
BEGIN
   WHILE (I<11)  LOOP
      RSLT:=NUM1*I;
      DBMS_OUTPUT.PUT_LINE(RSLT);
      I:=I+1;
   END LOOP;
END;

--PRINT NUMBER OF 89 USING WHILE LOOP

SET SERVEROUTPUT ON
DECLARE
 NUM1 NUMBER:=&NO1;
 P NUMBER :=1;
 RSLT NUMBER;
BEGIN
   WHILE (P<11)  LOOP
     RSLT:=NUM1*P;
     DBMS_OUTPUT.PUT_LINE(RSLT);
      P:=P+1; 
   END LOOP;
END;



SET SERVEROUTPUT ON
DECLARE
 NUM1 NUMBER:=&NUM1;
 P NUMBER:=1;
 RSLT NUMBER;
BEGIN
   LOOP
         RSLT:=NUM1*P;
          DBMS_OUTPUT.PUT_LINE(RSLT);
            P:=P+1;
            EXIT WHEN P=11;
   END LOOP;
END;

----------------------------------------------------------------
--PRINT TABLE OF 96 USING BASIC LOOP

SET SERVEROUTPUT ON
DECLARE
NUM1 NUMBER:=&NO1;
M NUMBER:=1;
RSLT NUMBER;
BEGIN
   LOOP
        RSLT:=NUM1*M;                    --96*1;
        DBMS_OUTPUT.PUT_LINE(RSLT);             --96
         M:=M+1;                                  --1+1=2
         EXIT WHEN M=11;
   END LOOP;
END;







-----------------------------------------------------------------------
--PRINT NATURAL NUMBER FROM 1 TO N
SET SERVEROUTPUT ON
DECLARE
N NUMBER:=&NTH;
K NUMBER:=1;
BEGIN
     WHILE (K<=N)  LOOP
             DBMS_OUTPUT.PUT_LINE(K);
     END LOOP;
       
END;








