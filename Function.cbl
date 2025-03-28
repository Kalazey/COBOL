       IDENTIFICATION DIVISION.
       PROGRAM-ID. Mathieu.
       AUTHOR. Mathieu.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  Chaine1 PIC X(06) VALUE "QUARTZ".
       01  Chaine2 PIC X(20) VALUE "ORNITHORYNQUE".
       01  NBR-CH1 PIC 9(02) VALUE 0.
       01  NBR-CH2 PIC 9(02) VALUE 0.


       01  NBR1 PIC 9(02) VALUE 77.
       01  NBR2 PIC 9(02) VALUE 48.
       01  NBR3 PIC 9(02) VALUE 11.
       01  NBR4 PIC 9(02) VALUE 15.
       01  NBR5 PIC 9(02) VALUE 21.

       01  WS-MIN PIC 9(02).
       01  WS-MAX PIC 9(02).
       01  WS-SOMME PIC 9(03).


       01  Counter PIC X(02).
       01  Counter2 PIC 9(02).


       01  STR1 PIC X(29) VALUE "CETTE PHRASE EST EN MAJUSCULE".
       01  STR2 PIC X(29) VALUE "cette phrase est en minuscule".
       01  MODIF-STR1 PIC x(29).
       01  MODIF-STR2 PIC x(29).



       PROCEDURE DIVISION.
           COMPUTE NBR-CH1 = FUNCTION LENGTH (Chaine1).
           INSPECT Chaine2 TALLYING NBR-CH2 FOR CHARACTERS BEFORE SPACE

           DISPLAY "Chaine 1 <" NBR-CH1 ">".
           DISPLAY "Chaine 2 <" NBR-CH2 ">".



           COMPUTE WS-MIN = FUNCTION MIN (NBR1 NBR2 NBR3 NBR4 NBR5)
           COMPUTE WS-MAX = FUNCTION MAX (NBR1 NBR2 NBR3 NBR4 NBR5)
           COMPUTE WS-SOMME = FUNCTION SUM (NBR1 NBR2 NBR3 NBR4 NBR5)
           
           DISPLAY "MIN: <" WS-MIN ">".
           DISPLAY "MAX: <" WS-MAX ">".
           DISPLAY "SUM: <" WS-SOMME ">".



           MOVE 07 TO Counter.
           COMPUTE Counter2 = FUNCTION NUMVAL (Counter).
           ADD 1 TO Counter2.
           DISPLAY "COUNTER2: " Counter2.


           MOVE FUNCTION LOWER-CASE (STR1) TO MODIF-STR1.
           MOVE FUNCTION UPPER-CASE (STR2) TO MODIF-STR2.
           DISPLAY "STR1: " MODIF-STR1.
           DISPLAY "STR1: " MODIF-STR2.
           

           STOP RUN.
