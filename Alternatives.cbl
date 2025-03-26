       identification DIVISION.
       PROGRAM-ID. Alternatives.
       AUTHOR. Mathieu.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  WS-AGE PIC 9(3).
       
       PROCEDURE DIVISION.

           MOVE 25 TO WS-AGE.
           IF WS-AGE >= 18 then
               DISPLAY "Vous etes majeur !"
           END-IF.

           
           MOVE 16 TO WS-AGE.
           IF WS-AGE >= 18 THEN
               DISPLAY "Vous etes majeur !"
           ELSE
               DISPLAY "Vous etes mineur !"
           END-IF.

           MOVE 42 TO WS-AGE.
           EVALUATE WS-AGE
               WHEN 0 THRU 3
                   DISPLAY "Vous etes un bebe."
               WHEN 4 THRU 10
                   DISPLAY "Vous etes un enfant."
               WHEN 11 THRU 17
                   DISPLAY "Vous etes un adolescent."
               WHEN 18 THRU 130
                   DISPLAY "Vous etes un Majeur."
               WHEN OTHER
                   DISPLAY "Vous etes immortel !"
           END-EVALUATE.
           
           STOP RUN.
