       IDENTIFICATION DIVISION.
       PROGRAM-ID. InspectConverting.
       AUTHOR. Mathieu.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 CHAINE PIC X(8) VALUE '1234ABCD'.

       PROCEDURE DIVISION.
           DISPLAY 'Chaine originale: ' CHAINE.

           INSPECT CHAINE CONVERTING "ABCD" TO "EFGH".

           DISPLAY 'Chaine modifie: ' CHAINE.

           STOP RUN.

