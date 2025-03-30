       IDENTIFICATION DIVISION.
       PROGRAM-ID. MoveDataNumSigne.
       AUTHOR. Mathieu.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-NB-SIGNE PIC S9(4) COMP-3 VALUE -123.
       01 WS-NB-UNSIGNE PIC 9(3) VALUE ZERO.

       PROCEDURE DIVISION.
           MOVE WS-NB-SIGNE TO WS-NB-UNSIGNE.
           DISPLAY WS-NB-SIGNE.
           DISPLAY WS-NB-UNSIGNE.

           STOP RUN.
           