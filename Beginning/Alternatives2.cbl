       IDENTIFICATION DIVISION.
       PROGRAM-ID. Alternatives.
       AUTHOR. Mathieu.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  WS-AGE PIC 9(3).
           88 BEBE       VALUE 0 THRU 3.
           88 ENFANT     VALUE 4 THRU 10. 
           88 ADOLESCENT VALUE 11 THRU 17.
           88 MAJEUR     VALUE 18 THRU 130.
       
       01  WS-MOYENNE PIC 9(3)V99.

       01  CAROUSEL-SIZE PIC 9(3).
           88 ok       VALUE 150 THRU 245.
           88 KO       VALUE 0 THRU 149.
          
       PROCEDURE DIVISION.
           
           MOVE 20 TO WS-AGE.

           EVALUATE TRUE
               WHEN BEBE
                   DISPLAY "Vous etes un bebe."
               WHEN ENFANT
                   DISPLAY "Vous etes un enfant."
               WHEN ADOLESCENT
                   DISPLAY "Vous etes un adolescent."
               WHEN MAJEUR
                   DISPLAY "Vous etes un Majeur."
               WHEN OTHER
                   DISPLAY "Vous etes immortel !"
           END-EVALUATE.

           
           MOVE 15.62 TO WS-MOYENNE.
           IF WS-MOYENNE < 10
               DISPLAY "La moyenne est trop basse."
           ELSE
              IF WS-MOYENNE >= 10 AND WS-MOYENNE < 12
                 DISPLAY "Passable."
              ELSE
                 IF WS-MOYENNE >= 10 AND WS-MOYENNE < 15
                    DISPLAY "Bien."
                 ELSE
                    DISPLAY "Tres Bien !"
                 END-IF
              END-IF
           END-IF.

           
           MOVE 135 TO CAROUSEL-SIZE.
           IF OK THEN
               DISPLAY "Vous pouvez prendre place dans ce manege."
           ELSE
               IF KO
                   DISPLAY "Interdictrion d'acceder au manege !"
               END-IF
           END-IF.


           STOP RUN.
