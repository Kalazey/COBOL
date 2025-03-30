       IDENTIFICATION DIVISION.
       PROGRAM-ID. UnstringAdvanced.
       AUTHOR. Mathieu.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 DateEntree       PIC X(19) VALUE "23 Mars, 2023".
       01 DayOnly          PIC 9(02).
       01 MonthOnly        PIC X(04).
       01 YearOnly         PIC 9(04).
       01 DelimiterD.
         05 Demiliter-a    PIC X(02).
         05 Demiliter-b    PIC X(02).
         05 Demiliter-c    PIC X(02).
       01 CounterD.
         05 Counter-a      PIC 9(02).
         05 Counter-b      PIC 9(02).
         05 Counter-c      PIC 9(02).


       PROCEDURE DIVISION.

           UNSTRING DateEntree
             DELIMITED BY ALL " " OR ", "
             INTO DayOnly DELIMITER IN Demiliter-a COUNT IN Counter-a
                  MonthOnly DELIMITER IN Demiliter-b COUNT IN Counter-b
                  YearOnly DELIMITER IN Demiliter-c COUNT IN Counter-c

           DISPLAY "DAY: " DayOnly " (delimiteur: -" Demiliter-a
                                      "-, Counter: " Counter-a ")". 
           DISPLAY "MONTH: " MonthOnly " (delimiteur: -" Demiliter-b
                                      "-, Counter: " Counter-b ")".  
           DISPLAY "YEAR: " YearOnly " (delimiteur: -" Demiliter-c
                                      "-, Counter: " Counter-c ")".  
           
           STOP RUN.
