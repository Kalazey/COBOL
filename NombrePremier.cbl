       IDENTIFICATION DIVISION.
       PROGRAM-ID. NombrePremier.
       AUTHOR. Mathieu.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  WS-USER-NUMBER          PIC 9(3) VALUE ZERO.
       01  WS-ENT-DIVIDER          PIC 9(3) VALUE ZERO.
       01  WS-Remainder-division   PIC 9(3) VALUE ZERO.
       01  WS-RESULT               PIC 9(3) VALUE ZERO.

       PROCEDURE DIVISION.
           
           PERFORM COLLECT-NUMBER.
           PERFORM MAIN-TREATMENT.
           PERFORM DISPLAY-TREATMENT.

           STOP RUN.

       COLLECT-NUMBER.
           DISPLAY "Veuillez entrer un entier naturel: ".
           ACCEPT WS-USER-NUMBER.
       
       MAIN-TREATMENT.
           MOVE 2 TO WS-ENT-DIVIDER.
           PERFORM UNTIL WS-ENT-DIVIDER >= WS-USER-NUMBER
             DIVIDE WS-USER-NUMBER BY WS-ENT-DIVIDER GIVING WS-RESULT 
               REMAINDER WS-Remainder-division
               IF WS-Remainder-division = 0 then
                 DISPLAY "Ce n'est pas un nombre entier"
                 STOP run
               END-IF
             ADD 1 TO WS-ENT-DIVIDER
           END-PERFORM.
           

       DISPLAY-TREATMENT.
           IF WS-USER-NUMBER = WS-ENT-DIVIDER then
             DISPLAY "C'est un nombre premier"
           END-IF.
