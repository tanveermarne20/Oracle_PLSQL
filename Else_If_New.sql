--1.	Write a Plsql program to print day of week name 
SET SERVEROUTPUT ON;
DECLARE
    v_day_name VARCHAR2(20);
BEGIN
    SELECT TO_CHAR(SYSDATE, 'Day') INTO v_day_name FROM DUAL;
    DBMS_OUTPUT.PUT_LINE('Today is ' || v_day_name);
END;


--2.	Write a Plsql program print total number of days in a month using switch case.
SET SERVEROUTPUT ON;
DECLARE
v_alphabet CHAR(1);
BEGIN
    v_alphabet := UPPER(SUBSTR('&v_alphabet', 1, 1));

    IF v_alphabet IN ('A', 'E', 'I', 'O', 'U') THEN
        DBMS_OUTPUT.PUT_LINE(v_alphabet || ' is a Vowel.');
    ELSIF (v_alphabet >= 'A' AND v_alphabet <= 'Z') THEN
        DBMS_OUTPUT.PUT_LINE(v_alphabet || ' is a Consonant.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Invalid input. Please enter a valid alphabet.');
    END IF;
END;

--4.	Write a Plsql program to find maximum between two numbers.
SET SERVEROUTPUT ON
DECLARE
NUM1 NUMBER:=&NUM1;
NUM2 NUMBER:=&NUM3;
BEGIN
 IF NUM1>NUM2 THEN
 DBMS_OUTPUT.PUT_LINE('NUMBER 1 IS GREATEST '||NUM1);
  ELSIF NUM2>NUM1 THEN
   DBMS_OUTPUT.PUT_LINE('NUMBER 2 IS GREATEST '||NUM2);
ELSE
 DBMS_OUTPUT.PUT_LINE('NUMBER IS INVALID');
  END IF;
END;
--5.	Write a Plsql program to check whether a number is even or odd.
DECLARE
NUM1 NUMBER:=&NUM1;
BEGIN
  IF MOD(NUM1,2)=0 THEN
   DBMS_OUTPUT.PUT_LINE(' EVEN NUMBER '||NUM1);
  ELSIF MOD(NUM1,2)!=0 THEN
     DBMS_OUTPUT.PUT_LINE(' ODD NUMBER '||NUM1);
  
END IF;
END;
--6.	Write a Plsql program to check whether a number is positive, negative or zero.
DECLARE
NUM1 NUMBER:=&NUM1;
BEGIN
 IF NUM1>0 THEN
    DBMS_OUTPUT.PUT_LINE(' POSITIVE NUMBER '||NUM1);
  ELSIF NUM1=0 THEN
     DBMS_OUTPUT.PUT_LINE('NUMBER  ZERO '||NUM1);
   ELSIF NUM1<0 THEN
      DBMS_OUTPUT.PUT_LINE(' NUMBER NEGATIVE '||NUM1);
 ELSE
    DBMS_OUTPUT.PUT_LINE(' INVALID NUMBER '||NUM1);
END IF;
END;



