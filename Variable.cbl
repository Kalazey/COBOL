       IDENTIFICATION DIVISION.
       PROGRAM-ID. Variable.
       AUTHOR. Mathieu.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01  USERS.
           05  UTIL-ETAT-CIVIL.
               10 FIRSTNAME PIC X(20).
               10 LASTNAME PIC X(20).
           05  BIRTHDATE.
               10 DAY-BD PIC 9(2).
               10 BD-HOURS.
                   15  HOURS PIC 9(2).
                   15  MINUTES PIC 9(2).
                   15  SECONDES PIC 9(2).
               10 MONTH-DB PIC X(10).
               10 YEARS-DB PIC 9(4).
       
       01  WS-DESCRIPTION.
           05 WS-GROUP-A.
               10 WS-F1 PIC 9(2) VALUE 14.
               10 WS-F2 PIC 9(2) VALUE 20.
           05 WS-GROUP-B.
               10 WS-C1 PIC X(2) VALUE 'LM'.
               10 WS-C2 PIC X(2) VALUE 'RM'.
       
       66  WS-R RENAMES WS-F2 THRU WS-C2.

       01  AGE PIC 99.
           88 MAJEUR VALUE 18.

       01  WS-GENRE PIC X.
           88 FEMME VALUE "F".
           88 HOMME VALUE "H".

       01  SOLDE PIC S9(4).
       
       01  WS-VARIABLES.
           05 WS-VAR1 PIC 9(9)     USAGE COMP-3.
           05 WS-VAR2 PIC 9(5)V99  COMP-3.
           05 WS-VAR3 PIC 9(3)V99  PACKED-DECIMAL.
           05 WS-VAR4 PIC 9(3)V99  BINARY.

       01  WS-SALARY1 PIC ZZZ9.
       01  WS-SALARY2 PIC ***9.
       01  WS-SALARY3 PIC 9999.99.
       01  WS-SALARY4 PIC ZZZ9.99.
       01  WS-SALARY5 PIC 9B999.99.
       01  WS-SALARY6 PIC ZZBZZ9.99.


       01  WS-SOLDE1 PIC +++B++9.99.
       01  WS-SOLDE2 PIC +++B++9.99.
       01  WS-SOLDE3 PIC ---B--9.99.
       01  WS-SOLDE4 PIC ---B--9.99.

       PROCEDURE DIVISION.
           DISPLAY "Réarrangement des variables : " WS-R.

           MOVE "F" to WS-GENRE.
           SET HOMME TO TRUE.

           IF FEMME
               DISPLAY "Vous êtes une femme"
           ELSE IF HOMME
                   DISPLAY "Vous êtes un homme"
           END-IF.


           MOVE +1698 TO SOLDE.
           DISPLAY SOLDE.

           MOVE 159 TO WS-SALARY1.
           MOVE 159 TO WS-SALARY2.
           DISPLAY WS-SALARY1.
           DISPLAY WS-SALARY2.

           MOVE ZERO TO WS-SALARY1.
           MOVE ZERO TO WS-SALARY2.
           DISPLAY WS-SALARY1.
           DISPLAY WS-SALARY2.


           MOVE ZERO TO WS-SALARY3.
           MOVE ZERO TO WS-SALARY4.
           DISPLAY WS-SALARY3.
           DISPLAY WS-SALARY4.

           MOVE 1596.99 TO WS-SALARY5.
           MOVE 1788.56 TO WS-SALARY6.
           DISPLAY WS-SALARY5.
           DISPLAY WS-SALARY6.

           MOVE +1699.99 TO WS-SOLDE1.
           MOVE -1699.99 TO WS-SOLDE2.

           MOVE +1699.99 TO WS-SOLDE3.
           MOVE -1699.99 TO WS-SOLDE4.

           DISPLAY WS-SOLDE1.
           DISPLAY WS-SOLDE2.
           DISPLAY WS-SOLDE3.
           DISPLAY WS-SOLDE4.

           STOP RUN.
