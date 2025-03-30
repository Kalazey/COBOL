       IDENTIFICATION DIVISION.
       PROGRAM-ID. MoveDataNum.
       AUTHOR. Mathieu.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-NB1 PIC 9(4) VALUE 0012.
       01 WS-NB2 PIC 9(2) VALUE ZERO.

       PROCEDURE DIVISION.
           MOVE WS-NB1 TO WS-NB2.
           DISPLAY WS-NB1.
           DISPLAY WS-NB2.

           STOP RUN.
           