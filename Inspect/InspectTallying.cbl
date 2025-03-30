       IDENTIFICATION DIVISION.
       PROGRAM-ID. InspectTallying.
       AUTHOR. Mathieu.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 CHAINE-SOURCE    PIC X(50) value 
                         'APPRENEZ A PROGRAMMER EN COBOL AVEC AISANCE'.
       01 CARACTERE        PIC X     VALUE 'A'.
       01 COMPTEUR         PIC 9(3)  VALUE ZERO.

       PROCEDURE DIVISION.
           PERFORM COMPTAGE
           DISPLAY "Le Caractere " CARACTERE " apparait "
                                   COMPTEUR " fois dans la chaine."
           

           STOP RUN.
       
       COMPTAGE.
           INSPECT CHAINE-SOURCE TALLYING COMPTEUR
                                 FOR ALL CARACTERE.

