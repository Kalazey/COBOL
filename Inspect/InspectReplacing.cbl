       IDENTIFICATION DIVISION.
       PROGRAM-ID. InspectReplacing.
       AUTHOR. Mathieu.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 CHAINE        PIC X(40) VALUE 'Bonjour, je suis un Coboliste'.
       01 TXT-RECHERCHER PIC X(11) VALUE 'Coboliste'.
       01 TXT-REPLACE PIC X(11) VALUE 'Programmeur'.

       PROCEDURE DIVISION.
           DISPLAY 'Texte original: ' CHAINE.

           INSPECT CHAINE REPLACING ALL TXT-RECHERCHER
                                    BY TXT-REPLACE.

           DISPLAY 'Texte modifie: ' CHAINE.

           STOP RUN.
            