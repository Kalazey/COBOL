       IDENTIFICATION DIVISION.
       PROGRAM-ID. MoveDataAlphanumCaract.
       AUTHOR. Mathieu.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-TEXT-ORIGINAL PIC X(10) VALUE 'Bonjour'.
       01 WS-TEXT-COPIE PIC X(10).

       PROCEDURE DIVISION.
           MOVE LOW-VALUES TO WS-TEXT-ORIGINAL(8:3)
           MOVE WS-TEXT-ORIGINAL TO WS-TEXT-COPIE

           DISPLAY 'Original: ' WS-TEXT-ORIGINAL.
           DISPLAY 'Copie: ' WS-TEXT-COPIE.

           STOP RUN.
