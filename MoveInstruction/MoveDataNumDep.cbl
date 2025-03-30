       IDENTIFICATION DIVISION.
       PROGRAM-ID. MoveDataNumDep.
       AUTHOR. Mathieu.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-NB1 PIC 9(5) VALUE 12345.
       01 WS-NB2 PIC 9(3) VALUE ZEROS.
       01 WS-NB1-LENGTH PIC 9.
       01 WS-NB2-LENGTH PIC 9.

       PROCEDURE DIVISION.
           COMPUTE WS-NB1-LENGTH = function LENGTH(WS-NB1).
           COMPUTE WS-NB2-LENGTH = function LENGTH(WS-NB2).

           IF WS-NB1-LENGTH > WS-NB2-LENGTH
               DISPLAY 'La variable de destination est trop petite'
           ELSE
               MOVE WS-NB1 TO WS-NB2
               DISPLAY WS-NB1
               DISPLAY WS-NB2
           END-IF

           STOP RUN.
           