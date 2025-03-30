       IDENTIFICATION DIVISION.
       PROGRAM-ID. Loops.
       AUTHOR. Mathieu.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       
       01  WS-CPT PIC 9 VALUE 0.

       PROCEDURE DIVISION.
           PERFORM 7 TIMES
               DISPLAY "Le COBOL c'est genial !"
           END-PERFORM.


           PERFORM 1000-TT-PRINCIPAL-DEB
              THRU 1000-TT-PRINCIPAL-FIN.

           PERFORM 9999-FIN-PROGRAMME-DEB
              THRU 9999-FIN-PROGRAMME-FIN.
           
       1000-TT-PRINCIPAL-DEB.
           DISPLAY 'HELLO WORLD'.

       1000-TT-PRINCIPAL-FIN.
           EXIT.

       9999-FIN-PROGRAMME-DEB.
           DISPLAY '*------------------------------------------------*'
           DISPLAY '*      FIN NORMALE DU PROGRAMME HELLOWORLD        '
           DISPLAY '*------------------------------------------------*'.
       
       9999-FIN-PROGRAMME-FIN.
           EXIT.


           PERFORM 8000-AFFICHAGE-DEB
              THRU 8000-AFFICHAGE-FIN
             UNTIL WS-CPT > 3.

           DISPLAY "-------------------------------------------------".
           DISPLAY "-------------------------------------------------".
           DISPLAY "REMISE a 0 du compteur WS-CPT.". 
           MOVE 0 TO WS-CPT.
           PERFORM UNTIL WS-CPT > 3
               DISPLAY "J'APPRENDS A UTILISER LES BOUCLES WITH UNTIL."
               DISPLAY "WS-CPT: " WS-CPT
               ADD 1 TO WS-CPT
           END-PERFORM
           
           DISPLAY "-------------------------------------------------".
           DISPLAY "-------------------------------------------------".
           DISPLAY "REMISE a 0 du compteur WS-CPT.". 
           MOVE 0 TO WS-CPT.
           PERFORM VARYING WS-CPT FROM 1 BY 1 UNTIL WS-CPT > 3
               DISPLAY "J'APPRENDS A UTILISER LES BOUCLES VARYING."
               DISPLAY "WS-CPT: " WS-CPT
           END-PERFORM

           STOP RUN.

       8000-AFFICHAGE-DEB.
           DISPLAY "J'APPRENDS A UTILISER LES BOUCLES TRHU UNTIL."
           DISPLAY "WS-CPT: " WS-CPT.
           ADD 1 TO WS-CPT.
       8000-AFFICHAGE-FIN.
           EXIT.
