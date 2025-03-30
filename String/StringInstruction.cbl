       IDENTIFICATION DIVISION.
       PROGRAM-ID. StringInstruction.
       AUTHOR. Mathieu.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 SALUTATION   PIC X(20).
       01 ZONE1        PIC X(7) VALUE 'Bonjour'.
       01 ZONE2        PIC X(13) VALUE 'tout le monde'.
       01 POINTEUR     PIC 9(2).


       PROCEDURE DIVISION.

       MOVE 1 TO POINTEUR.

       STRING ZONE1 SPACE ZONE2
         DELIMITED BY SIZE
         INTO SALUTATION
         WITH POINTER POINTEUR
         ON OVERFLOW 
           DISPLAY "La chaine de caracteres est trop longues !"
         NOT ON OVERFLOW
           DISPLAY SALUTATION
       END-STRING.

       DISPLAY SALUTATION.
       STOP RUN.
       
