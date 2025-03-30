       IDENTIFICATION DIVISION.
       PROGRAM-ID. MoveCorresponding.
       AUTHOR. Mathieu.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-EMPLOYE-1.
          05 FIRSTNAME PIC X(20).
          05 LASNAME   PIC X(20).
          05 AGE       PIC 9(03).

       01 WS-EMPLOYE-2.
          05 FIRSTNAME PIC X(25).
          05 LASNAME   PIC X(25).
          05 ADRESSE   PIC X(50).
       PROCEDURE DIVISION.
           MOVE corresponding WS-EMPLOYE-1 TO WS-EMPLOYE-2

           STOP RUN.
           