--==========================IF ELSE PROGRAMS========================================
--01.
SET SERVEROUTPUT ON
DECLARE
 BANK_BAL NUMBER:=25000;
 AMT NUMBER:=&AMT;
 REMAINING_BANK_BALANCE NUMBER;
 
BEGIN
 IF BANK_BAL>AMT
  THEN
   REMAINING_BANK_BALANCE:=BANK_BAL-AMT;
 DBMS_OUTPUT.PUT_LINE('AVAILABLE'||REMAINING_BANK_BALANCE);
 ELSE
 DBMS_OUTPUT.PUT_LINE('INSUFFICIENT');
 END IF;
END;
--=========================================================================
--02.FIND MAXIMUM BETWEEN TWO NUMBER;

DECLARE
NUM1 NUMBER:=&NUM1;
NUM2 NUMBER:=&NUM2;
BEGIN
 IF NUM1>NUM2
 THEN
 DBMS_OUTPUT.PUT_LINE('GREATEST NUMBER IS '||NUM1);
 ELSE
 DBMS_OUTPUT.PUT_LINE('GREATEST NUMBER IS '||NUM2);
 END IF;
END;
--========================================================
--02.2.	Write PROGRAM to find maximum between three numbers.
DECLARE
    NUM1 NUMBER := &NUM1;
    NUM2 NUMBER := &NUM2;
    NUM3 NUMBER := &NUM3;
BEGIN
    IF NUM1 > NUM2 AND NUM1 > NUM3 THEN
        DBMS_OUTPUT.PUT_LINE('NUM1 IS GREATEST ' || NUM1);
    ELSIF NUM2 > NUM1 AND NUM2 > NUM3 THEN
        DBMS_OUTPUT.PUT_LINE('NUM2 IS GREATEST ' || NUM2);
    ELSIF NUM3 > NUM1 AND NUM3 > NUM2 THEN
        DBMS_OUTPUT.PUT_LINE('NUM3 IS GREATEST ' || NUM3);
    ELSE
        DBMS_OUTPUT.PUT_LINE('All numbers are equal.');
    END IF;
END;
-----------------------------------------------------------------------------
DECLARE
NUM1 NUMBER:=&NUM1;
NUM2 NUMBER :=&NUM2;
NUM3 NUMBER :=&NUM3;
BEGIN
 IF NUM1>NUM2 AND NUM1>NUM3 THEN
 DBMS_OUTPUT.PUT_LINE('NUM1 IS GREATEST '||NUM1);
 ELSE
    IF NUM2>NUM1 AND NUM2>NUM3 THEN
    DBMS_OUTPUT.PUT_LINE('NUM2 IS GREATEST '||NUM2);
    ELSE
       IF NUM3>NUM1 AND NUM3>NUM1 THEN
       DBMS_OUTPUT.PUT_LINE('NUM3 IS GREATEST '||NUM3);
  END IF;
  END IF;
  END IF;
END;






--===============================================================================
--4.Write a  program to check whether a number is even or odd.
DECLARE
  NUM1 NUMBER := &NUM1;
BEGIN
  IF MOD(NUM1,2) = 0 THEN
    DBMS_OUTPUT.PUT_LINE('THE NUMBER IS EVEN ' || NUM1);
  ELSE
    DBMS_OUTPUT.PUT_LINE('THE NUMBER IS ODD ' || NUM1);
  END IF;
END;

--==========================================================================
--5.	Write a PYTHON program to check whether a year is leap year or not.
DECLARE
YEAR NUMBER :=&YEAR;
BEGIN
 IF MOD(YEAR,4)=0 AND MOD(YEAR,100)!=0 OR MOD(YEAR,400)=0 THEN
 DBMS_OUTPUT.PUT_LINE('THE YEAR IS LEAP YEAR '||YEAR);
 ELSE
 DBMS_OUTPUT.PUT_LINE('THE YEAR IS NOT LEAP YEAR '||YEAR);
END IF;
END;

--========================================================================
--6.Write a  program to check whether a character is uppercase or lowercase alphabet.
--------------------------------------------------------------------------
DECLARE
TEXT CHAR(30):='&TEXT'; 
BEGIN
 IF TEXT BETWEEN 'A' AND 'Z' THEN
 DBMS_OUTPUT.PUT_LINE('THE TEXT IS UPPER CASE '||TEXT);
 ELSE
  IF TEXT BETWEEN 'a' AND 'z' THEN
   DBMS_OUTPUT.PUT_LINE('THE TEXT IS LOWER CASE '||TEXT);
END IF;
END IF;
END;



--7.Write a program to calculate profit or loss.

DECLARE
SELLING_PRICE NUMBER:=&SELLING_PRICE;
COST_PRICE NUMBER :=&COST_PRICE;
PROFIT_LOSS NUMBER;
BEGIN
PROFIT_LOSS:=SELLING_PRICE-COST_PRICE;
 IF PROFIT_LOSS>0 THEN 
 DBMS_OUTPUT.PUT_LINE('PROFIT '||PROFIT_LOSS);
 ELSIF PROFIT_LOSS<0 THEN
  DBMS_OUTPUT.PUT_LINE('LOSS '||PROFIT_LOSS);
ELSE
  DBMS_OUTPUT.PUT_LINE('NO PRO/NO LOSS '||PROFIT_LOSS);
END IF;
END;


-----------------------------------------
DECLARE
SELLING_PRICE NUMBER :=&SELLING_PRICE;
COST_PRICE NUMBER :=&COST_PRICE;
PROFIT_LOSS NUMBER;
BEGIN
PROFIT_LOSS:=SELLING_PRICE-COST_PRICE;
      IF PROFIT_LOSS>0 THEN
            DBMS_OUTPUT.PUT_LINE('PROFIT '||PROFIT_LOSS);
            
 ELSE
 
  IF PROFIT_LOSS<0 THEN
  DBMS_OUTPUT.PUT_LINE('LOSS '||PROFIT_LOSS);
END IF;
END IF;
END;

--=============================================================================
--15.Write a  program to input angles of a triangle and check whether triangle 
--is valid or not.
DECLARE
ANG1 NUMBER :=&ANG1;
ANG2 NUMBER :=&ANG2;
ANG3 NUMBER :=&ANG3;
BEGIN
 IF (ANG1+ANG2+ANG3)=180 THEN
  DBMS_OUTPUT.PUT_LINE('IT IS A TRAINGLE ');
 ELSE
    DBMS_OUTPUT.PUT_LINE('IT IS A NOT TRAINGLE ');  
END IF;
END;


--19.	Write a  program IN plsql  to input marks of five subjects
--Physics, Chemistry, Biology, Mathematics and Computer. 
--Calculate percentage and grade according to following:
--Percentage >= 90% : Grade A
--Percentage >= 80% : Grade B
--Percentage >= 70% : Grade C
--Percentage >= 60% : Grade D
--Percentage >= 40% : Grade E
--Percentage < 40% : Grade F
SET SERVEROUTPUT ON

DECLARE
    PHY NUMBER := &PHY;
    BIO NUMBER := &BIO;
    MATH NUMBER := &MATH;
    COMPUTER NUMBER := &COMPUTER;
    TOTAL_MARKS NUMBER;
    PERCENTAGE NUMBER;
BEGIN
    TOTAL_MARKS := PHY + BIO + MATH + COMPUTER;
    PERCENTAGE := (TOTAL_MARKS / 400) * 100;

    IF PERCENTAGE >= 90 THEN
        DBMS_OUTPUT.PUT_LINE('GRADE A ' || PERCENTAGE);
    ELSIF PERCENTAGE >= 80 THEN
        DBMS_OUTPUT.PUT_LINE('GRADE B ' || PERCENTAGE);
    ELSIF PERCENTAGE >= 70 THEN
        DBMS_OUTPUT.PUT_LINE('GRADE C ' || PERCENTAGE);
    ELSIF PERCENTAGE >= 60 THEN
        DBMS_OUTPUT.PUT_LINE('GRADE D ' || PERCENTAGE);
    ELSIF PERCENTAGE >= 40 THEN
        DBMS_OUTPUT.PUT_LINE('GRADE E ' || PERCENTAGE);
    ELSE
        DBMS_OUTPUT.PUT_LINE('GRADE F ' || PERCENTAGE);
    END IF;
END;


--11.	Write a  program to input week number and print week day.
SET SERVEROUTPUT ON
DECLARE
    week_number NUMBER;
    day_of_week VARCHAR2(20);
BEGIN
    week_number := TO_NUMBER(&week_number_input);

    CASE week_number
        WHEN 1 THEN day_of_week := 'Monday';
        WHEN 2 THEN day_of_week := 'Tuesday';
        WHEN 3 THEN day_of_week := 'Wednesday';
        WHEN 4 THEN day_of_week := 'Thursday';
        WHEN 5 THEN day_of_week := 'Friday';
        WHEN 6 THEN day_of_week := 'Saturday';
        WHEN 7 THEN day_of_week := 'Sunday';
        ELSE day_of_week := 'Invalid week number';
    END CASE;

    DBMS_OUTPUT.PUT_LINE('Day of the week for week ' || week_number || ': ' || day_of_week);
END;
--=========================================================================
--12.	Write a  program to input month number and print number 
--of days in that month.
DECLARE
    month_number NUMBER;
    days_in_month NUMBER;
BEGIN
    month_number := TO_NUMBER(&month_number_input);
    IF month_number IN (1, 3, 5, 7, 8, 10, 12) THEN
        days_in_month := 31;
    ELSIF month_number IN (4, 6, 9, 11) THEN
        days_in_month := 30;
    ELSIF month_number = 2 THEN
        days_in_month := 28; 
    ELSE
        DBMS_OUTPUT.PUT_LINE('Invalid month number.');
        RETURN;
    END IF;
    DBMS_OUTPUT.PUT_LINE('Number of days in month ' || month_number || ': ' || days_in_month);
END;


--===========================================================================
--16.Write a  program to check whether the triangle is equilateral, isosceles or scalene triangle.

DECLARE
SIDE1 NUMBER :=&SIDE1;
SIDE2 NUMBER :=&SIDE2;
SIDE3 NUMBER :=&SIDE3;
BEGIN
   IF SIDE1=SIDE2 AND SIDE1=SIDE3 THEN
   DBMS_OUTPUT.PUT_LINE('EQUILATERAL TRIANGLE');
   ELSIF SIDE1=SIDE2 OR SIDE1=SIDE3 OR SIDE2=SIDE3 THEN
    DBMS_OUTPUT.PUT_LINE('ISOCELES TRIANGLE');
  ELSE
   DBMS_OUTPUT.PUT_LINE(' SCALENE TRIANGLE');
END IF;
END;

--==========================================================================

