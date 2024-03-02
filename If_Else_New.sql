--1.	Write a Plsql program to find maximum between two numbers.
SET SERVEROUTPUT ON
DECLARE
NUM1 NUMBER:=&NUM1;
NUM2 NUMBER :=&NUM2;
BEGIN
 IF NUM1>NUM2 THEN
  DBMS_OUTPUT.PUT_LINE('NUM1 IS GREATEST '||NUM1);
 ELSE
  DBMS_OUTPUT.PUT_LINE('NUM2 IS GREATEST '||NUM2);
 END IF;
END;
--2.	Write a Plsql program to find maximum between three numbers.
DECLARE
NUM1 NUMBER:=&NUM1;
NUM2 NUMBER:=&NUM2;
NUM3 NUMBER:=&NUM3;
BEGIN
 IF NUM1>NUM2
   THEN 
     IF NUM1>NUM3
      THEN
        DBMS_OUTPUT.PUT_LINE('NUm1 is greatest '||NUM1);
     ELSE
        DBMS_OUTPUT.PUT_LINE('NUM3 IS GREATEST  '||NUM3);
        END IF;
    ELSIF NUM2>NUM3 THEN
     DBMS_OUTPUT.PUT_LINE('NUM2 IS GREATEST '||NUM2);
 ELSE
  DBMS_OUTPUT.PUT_LINE('NUM3 IS GREATEST '||NUM3);
 END IF;
END;
--3.	Write a Plsql program to check whether a number is negative, positive or zero.
DECLARE
NUM1 NUMBER:=&NUM1;
BEGIN
 IF NUM1>0 THEN
  DBMS_OUTPUT.PUT_LINE('THE NUMBER IS POSITIVE '||NUM1);
  ELSIF NUM1=0 THEN
  DBMS_OUTPUT.PUT_LINE('THE NUMBER IS ZERO '||NUM1);
  ELSIF NUM1<0 THEN
  DBMS_OUTPUT.PUT_LINE('THE NUMBER IS NEGATIVE '||NUM1);
 ELSE
   DBMS_OUTPUT.PUT_LINE('INVALID NUMBER '||NUM1);
 END IF;  
END;
--4.Write a Plsql program to check whether a number is divisible by 5 and 11 or not.
DECLARE
NUM1 NUMBER:=&NO1;
BEGIN
 IF MOD(NUM1,5)=0 AND MOD(NUM1,11)=0 THEN
   DBMS_OUTPUT.PUT_LINE('THE NUMBER IS DIVISIBLE  BY BOTH 5 AND 11 '||NUM1);
  ELSIF MOD(NUM1,5)!=0 AND MOD(NUM1,11)=0 THEN
  DBMS_OUTPUT.PUT_LINE('THE NUMBER IS DIVISIBLE BY 11 BUT NOT BY 5'||NUM1);
  ELSIF MOD(NUM1,5)=0 AND MOD(NUM1,11)!=0 THEN
  DBMS_OUTPUT.PUT_LINE('THE NUMBER IS DIVISIBLE BY 5 BUT NOT BY 11 '||NUM1);
ELSE
 DBMS_OUTPUT.PUT_LINE('INVALID NUMBER '||NUM1);
END IF; 
END;

--5.	Write a Plsql program to check whether a number is even or odd.
DECLARE
NUM1 NUMBER:=&NO1;
BEGIN
 IF MOD(NUM1,2)=0 THEN
  DBMS_OUTPUT.PUT_LINE('EVEN NUMBER '||NUM1);
 ELSE
 DBMS_OUTPUT.PUT_LINE('ODD NUMBER '||NUM1);
END IF;
END;
--6.	Write a Plsql program to check whether a year is leap year or not.
DECLARE
YEAR NUMBER:=&YEAR;
BEGIN
 IF MOD(YEAR,4)=0 OR MOD(YEAR,400)=0  AND MOD(YEAR,100)!=0 THEN
  DBMS_OUTPUT.PUT_LINE('LEAP YEAR '||YEAR);
 ELSE
 DBMS_OUTPUT.PUT_LINE('NOT LEAP YEAR '||YEAR);
  END IF;
END;
--7.	Write a Plsql program to check whether a character is alphabet or not.
DECLARE
NUM1 CHAR:='&TEXT'; 
BEGIN
  IF ASCII(NUM1) BETWEEN ASCII('A') AND ASCII('Z') OR
     ASCII(NUM1) BETWEEN ASCII('a') AND ASCII('z') THEN
  DBMS_OUTPUT.PUT_LINE('ALPHABET '||NUM1);
  ELSE
   DBMS_OUTPUT.PUT_LINE('NOT ALPHABET '||NUM1);
  END IF;
END;
--8.	Write a Plsql program to input any alphabet and check whether it is vowel or consonant.
DECLARE
TEXT1 VARCHAR2(1):='&TEXT1';
BEGIN
 IF TEXT1 IN ('A','E','I','O','U') THEN
  DBMS_OUTPUT.PUT_LINE('VOWELS '||TEXT1);
 ELSE
 DBMS_OUTPUT.PUT_LINE('CONSONENT '||TEXT1);
 END IF;
END;
--9.	Write a Plsql program to input any character and check whether it is alphabet, digit or special character.
DECLARE
 TEXT1 VARCHAR2(1):=UPPER('&TEXT1');
BEGIN
 IF REGEXP_LIKE (TEXT1,'[[:alpha:]]') THEN
   DBMS_OUTPUT.PUT_LINE('ITS A APHABET '||TEXT1);
  ELSIF REGEXP_LIKE(TEXT1,'[[:digit:]]') THEN
   DBMS_OUTPUT.PUT_LINE('ITS A DIGIT '||TEXT1);
 ELSE
   DBMS_OUTPUT.PUT_LINE('ITS A SPECIAL CHARACTER '||TEXT1);
   END IF;
END;
--10.	Write a Plsql program to check whether a character is uppercase or lowercase alphabet.
DECLARE
TEXT1 CHAR:='&TEXT1';
BEGIN
  IF TEXT1 BETWEEN 'A' AND 'Z' THEN
   DBMS_OUTPUT.PUT_LINE('UPPER CASE '||TEXT1);
   ELSIF TEXT1 BETWEEN 'a' AND 'z' THEN
    DBMS_OUTPUT.PUT_LINE('LOWER CASE '||TEXT1);
  ELSE
   DBMS_OUTPUT.PUT_LINE('INVALID ENTRY '||TEXT1);
   END IF;
END;
--11.	Write a Plsql program to input week number and print week day.
DECLARE
WEEK_NUMBER NUMBER:=&WEEKNUM;
WEEK_DAY VARCHAR2(20);
BEGIN
 CASE WEEK_NUMBER
  WHEN 1 THEN WEEK_DAY:='MONDAY';
  WHEN 2 THEN WEEK_DAY:='TUESDAY';
  WHEN 3 THEN WEEK_DAY:='WEDNESDAY';
  WHEN 4 THEN WEEK_DAY:='THRUSDAY';
  WHEN 5 THEN WEEK_DAY:='FRIDAY';
  WHEN 6 THEN WEEK_DAY:='SATURDAY';
  WHEN 7 THEN WEEK_DAY:='SUNDAY';
 END CASE;
 DBMS_OUTPUT.PUT_LINE(WEEK_NUMBER||' '|| WEEK_DAY);
END;
--12.	Write a Plsql program to input month number and print number of days in that month.
DECLARE
    MONTHNUMBER NUMBER := &MONTHNUMBERR;
BEGIN
    IF MONTHNUMBER IN (1, 3, 5, 7, 8, 10, 12) THEN
        DBMS_OUTPUT.PUT_LINE('Number of days --->'||MONTHNUMBER||' 31');
    ELSIF MONTHNUMBER = 2 THEN
        DBMS_OUTPUT.PUT_LINE('Number of days --->'||MONTHNUMBER||' 28 or 29');
    ELSIF MONTHNUMBER IN (4, 6, 9, 11) THEN
        DBMS_OUTPUT.PUT_LINE('Number of days --->'||MONTHNUMBER||' 30');
    ELSE
        DBMS_OUTPUT.PUT_LINE('INVALID ENTRY');
    END IF;
END;


--13.	Write a Plsql program to count total number of notes in given amount. 800 1,2,5,10,20,50,100
DECLARE
    amount NUMBER := 800; -- Replace with the desired amount
    notes_count NUMBER;
BEGIN
    notes_count := 0;

    -- Count 100 notes
    notes_count := notes_count + FLOOR(amount / 100);
    amount := amount - (notes_count * 100);

    -- Count 50 notes
    notes_count := notes_count + FLOOR(amount / 50);
    amount := amount - (notes_count * 50);

    -- Count 20 notes
    notes_count := notes_count + FLOOR(amount / 20);
    amount := amount - (notes_count * 20);

    -- Count 10 notes
    notes_count := notes_count + FLOOR(amount / 10);
    amount := amount - (notes_count * 10);

    -- Count 5 notes
    notes_count := notes_count + FLOOR(amount / 5);
    amount := amount - (notes_count * 5);

    -- Count 2 notes
    notes_count := notes_count + FLOOR(amount / 2);
    amount := amount - (notes_count * 2);

    -- Count 1 notes
    notes_count := notes_count + amount;

    DBMS_OUTPUT.PUT_LINE('Total number of notes: ' || notes_count);
END;



--14.	Write a Plsql program to input angles of a triangle and check whether triangle is valid or not.
DECLARE
ANG1 NUMBER:=&ANG1;
ANG2 NUMBER:=&ANG2;
ANG3 NUMBER:=&ANG3;
TOTAL NUMBER;
BEGIN
 TOTAL:=ANG1+ANG2+ANG3;
 IF TOTAL=180 AND ANG1>0 AND ANG2>0 AND ANG3>0 THEN
  DBMS_OUTPUT.PUT_LINE('ITS A  VALID TRIANGLE');
 ELSE
 DBMS_OUTPUT.PUT_LINE('ITS NOT A VALID TRIANGLE');
 END IF;
END;
--15.	Write a Plsql program to input all sides of a triangle and check whether triangle is valid or not.
DECLARE
SIDE1 NUMBER:=&SIDE1;
SIDE2 NUMBER:=&SIDE2;
SIDE3 NUMBER:=&SIDE3;
BEGIN
 IF(SIDE1+SIDE2>SIDE3) AND(SIDE2+SIDE3>SIDE1) AND(SIDE1+SIDE3>SIDE2) AND
  (SIDE1>0) AND (SIDE2>0) AND (SIDE3>0) THEN
  DBMS_OUTPUT.PUT_LINE('ITS A TRIANGLE ');
ELSE
 DBMS_OUTPUT.PUT_LINE('ITS NOT A TRIANGLE');
END IF;
END;
--16.	Write a Plsql program to check whether the triangle is equilateral, isosceles or scalene triangle.
DECLARE
SIDE1 NUMBER:=&SIDE1;
SIDE2 NUMBER:=&SIDE2;
SIDE3 NUMBER:=&SIDE3;
BEGIN
 IF (SIDE1=SIDE2) AND (SIDE2=SIDE3) AND (SIDE3=SIDE1) THEN
  DBMS_OUTPUT.PUT_LINE('EQUILATERAL TRIANGLE ');
 ELSIF (SIDE1=SIDE2) OR(SIDE2=SIDE3) OR (SIDE3=SIDE1) THEN
  DBMS_OUTPUT.PUT_LINE('ISOSCELES TRIANGLE ');
 ELSE
  DBMS_OUTPUT.PUT_LINE('SCALEN TRIANGLE ');
END IF; 
END;
--17.	Write a Plsql program to find all roots of a quadratic equation.
--18.	Write a Plsql program to calculate profit or loss.
DECLARE
SELLING_PRICE NUMBER:=&SP;
COST_PRICE NUMBER:=&CP;
PROFIT_LOSS NUMBER;
BEGIN
PROFIT_LOSS:=SELLING_PRICE-COST_PRICE;
 IF  SELLING_PRICE>COST_PRICE THEN
  DBMS_OUTPUT.PUT_LINE('PROFIT '||PROFIT_LOSS);
  ELSIF SELLING_PRICE<COST_PRICE THEN
   DBMS_OUTPUT.PUT_LINE('LOSS '||PROFIT_LOSS);
 ELSE 
   DBMS_OUTPUT.PUT_LINE('INVALID ENTRY');
   END IF;
END;

--19.	Write a Plsql program to input marks of five subjects Physics, Chemistry, Biology, Mathematics and Computer. Calculate percentage and grade according to following:
--Percentage >= 90% : Grade A
--Percentage >= 80% : Grade B
--Percentage >= 70% : Grade C
--Percentage >= 60% : Grade D
--Percentage >= 40% : Grade E
--Percentage < 40% : Grade F
DECLARE
PHY NUMBER:=&PHY;
CHEM NUMBER:=&CHEM;
BIO NUMBER:=&BIO;
MATH NUMBER:=&MATH;
TOTAL_MARKS NUMBER;
PERCENTAGE FLOAT;
BEGIN 
 TOTAL_MARKS:=(PHY+CHEM+BIO+MATH);
 PERCENTAGE:=(TOTAL_MARKS/400)*100;
 IF  PERCENTAGE>=90 THEN
  DBMS_OUTPUT.PUT_LINE('GRADE A '||PERCENTAGE);
 ELSIF PERCENTAGE>=80 THEN
 DBMS_OUTPUT.PUT_LINE('GRADE B '||PERCENTAGE);
 
  ELSIF PERCENTAGE>=70 THEN
 DBMS_OUTPUT.PUT_LINE('GRADE C '||PERCENTAGE);
 
  ELSIF PERCENTAGE>=60 THEN
 DBMS_OUTPUT.PUT_LINE('GRADE D '||PERCENTAGE);
  ELSIF PERCENTAGE>=40 THEN
 DBMS_OUTPUT.PUT_LINE('GRADE E '||PERCENTAGE);
 ELSIF PERCENTAGE<40 THEN
 DBMS_OUTPUT.PUT_LINE('GRADE F '||PERCENTAGE);
 END IF;
END;


--20.	Write a Plsql program to input basic salary of an employee and calculate its Gross salary according to following:
--Basic Salary <=  10000 : HRA = 20%, DA = 80%
--Basic Salary <= 20000 : HRA = 25%, DA = 90%
--Basic Salary > 20000 : HRA = 30%, DA = 95%

DECLARE
BASIC_SALARY NUMBER:=&BASIC_SAL;
BEGIN
 IF BASIC_SALARY <=10000 THEN 
  DBMS_OUTPUT.PUT_LINE((BASIC_SALARY*0.20)||'----->HRA ');
  ELSE
     IF BASIC_SALARY <=20000 THEN 
  DBMS_OUTPUT.PUT_LINE((BASIC_SALARY*0.25)||'----->HRA ');
  ELSE 
    IF BASIC_SALARY >10000 THEN 
  DBMS_OUTPUT.PUT_LINE((BASIC_SALARY*0.30)||'----->HRA ');
 
END IF;
END IF;
END IF;
END;





--21.Write a Plsql program to input electricity unit charges and calculate total electricity bill according to the given condition:
--For first 50 units Rs. 0.50/unit
--For next 100 units Rs. 0.75/unit
--For next 100 units Rs. 1.20/unit
--For unit above 250 Rs. 1.50/unit
--	An additional surcharge of 20% is added to the bill



