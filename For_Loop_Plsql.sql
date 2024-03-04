--1.	Write a plsql program to print all natural numbers from 1 to n. - using while loop

--Natural numbers are a set of positive integers 
--starting from 1 and extending indefinitely.
SET SERVEROUTPUT ON;
DECLARE
  n NUMBER := 10; -- You can change the value of n as needed
  i NUMBER := 1;
BEGIN
  WHILE i <= n 
  LOOP
    DBMS_OUTPUT.PUT_LINE('Natural Number: ' || i);
    i := i + 1;
  END LOOP;
END;


--2.	Write a plsql program to print all natural numbers in reverse (from n to 1). - using while loop
--3.	Write a plsql program to print all alphabets from a to z. - using while loop
--4.	Write a plsql program to print all even numbers between 1 to 100. - using while loop
--5.	Write a plsql program to print all odd number between 1 to 100.
--6.	Write a plsql program to find sum of all natural numbers between 1 to n.
--7.	Write a plsql program to find sum of all even numbers between 1 to n.
--8.	Write a plsql program to find sum of all odd numbers between 1 to n.
--9.	Write a plsql program to print multiplication table of any number.
--10.	Write a plsql program to count number of digits in a number.
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
--33.	Write a plsql program to print Fibonacci series up to n terms.
--34.	Write a plsql program to print Pascal triangle upto n rows.











-----------------------------------------
----------------------SUM OF ALL EVEN NUMBER-------------------------
SET SERVEROUTPUT ON
DECLARE
NUM1 NUMBER := &N1;
SUM1 NUMBER := 0;
BEGIN
FOR I IN 1..NUM1 LOOP
IF MOD(I,2) = 0
THEN 
SUM1 := SUM1 + I;
END IF;
END LOOP;
DBMS_OUTPUT.PUT_LINE(SUM1);
END;


